; ModuleID = 'XSLTEngineImpl.cpp'
source_filename = "XSLTEngineImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathFunctionTable" = type { ptr, [36 x ptr], ptr }
%"class.xalanc_1_10::XSLTEngineImpl" = type { %"class.xalanc_1_10::XSLTProcessor", %"class.xalanc_1_10::PrefixResolver", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::ProblemListenerDefault", ptr, ptr, i8, i8, ptr, %"class.xalanc_1_10::XalanVector.2", i64, %"class.xalanc_1_10::XalanVector.3", ptr, ptr, ptr, ptr, %"class.xalanc_1_10::OutputContextStack", %"class.xalanc_1_10::XalanNamespacesStack", %"class.xalanc_1_10::AttributeListImpl", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.9", i8, %"class.xalanc_1_10::XPathConstructionContextDefault" }
%"class.xalanc_1_10::XSLTProcessor" = type { ptr }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::OutputContextStack" = type { %"class.xalanc_1_10::XalanDeque", %"struct.xalanc_1_10::XalanDequeIterator", i64 }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.4", %"class.xalanc_1_10::XalanVector.4" }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator" = type { ptr, i64 }
%"class.xalanc_1_10::XalanNamespacesStack" = type { %"class.xalanc_1_10::XalanDeque.5", %"struct.xalanc_1_10::XalanDequeIterator.7", %"struct.xalanc_1_10::XalanDequeIterator.7", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::XalanDeque.5" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.6", %"class.xalanc_1_10::XalanVector.6" }
%"class.xalanc_1_10::XalanVector.6" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator.7" = type { ptr, i64 }
%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector.8", %"class.xalanc_1_10::XalanVector.8" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.8" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.9" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContextDefault" = type { %"class.xalanc_1_10::XPathConstructionContext", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringCache" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.10", %"class.xalanc_1_10::XalanVector.10", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.10" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator.11", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.11" = type { ptr, i16, %"class.xalanc_1_10::XalanList.12" }
%"class.xalanc_1_10::XalanList.12" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::TopLevelArg" = type { %"class.xalanc_1_10::XalanQNameByValue", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XObjectPtr" }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XSLTResultTarget" = type { %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, ptr }
%"class.xalanc_1_10::FormatterListener" = type { %"class.xercesc_2_7::DocumentHandler", ptr, i32, i32 }
%"class.xercesc_2_7::DocumentHandler" = type { ptr }
%"class.xalanc_1_10::StylesheetRoot" = type { %"class.xalanc_1_10::Stylesheet", %"class.xalanc_1_10::XalanDOMString", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, %"class.xalanc_1_10::XalanVector.44", i8, %"class.xalanc_1_10::XalanVector.25", ptr, ptr, ptr, i8, i8, i32, i8, i64, %"class.xalanc_1_10::XalanMap.45" }
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.15", %"class.xalanc_1_10::XalanVector.16", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.17", i64, %"class.xalanc_1_10::XalanDeque.18", %"class.xalanc_1_10::XalanDeque.20", i8, %"class.xalanc_1_10::XalanMap.22", ptr, %"class.xalanc_1_10::XalanVector.25", %"class.xalanc_1_10::XalanMap.26", %"class.xalanc_1_10::XalanVector.31", double, %"class.xalanc_1_10::XalanMap.32", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.35", %"class.xalanc_1_10::XalanMap.32", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.35", %"class.xalanc_1_10::XalanVector.35", %"class.xalanc_1_10::XalanVector.35", %"class.xalanc_1_10::XalanVector.35", %"class.xalanc_1_10::XalanVector.35", %"class.xalanc_1_10::XalanVector.35", i64, %"class.xalanc_1_10::XalanVector.36", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.15" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.16" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.17" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.18" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.19", %"class.xalanc_1_10::XalanVector.19" }
%"class.xalanc_1_10::XalanVector.19" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.20" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.21", %"class.xalanc_1_10::XalanVector.21" }
%"class.xalanc_1_10::XalanVector.21" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.22" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanList.23", %"class.xalanc_1_10::XalanVector.24", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.23" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.24" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.26" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.27", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.29", %"class.xalanc_1_10::XalanList.29", %"class.xalanc_1_10::XalanVector.30", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to.27" = type { i8 }
%"class.xalanc_1_10::XalanList.29" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.30" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.31" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.32" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.33", %"class.xalanc_1_10::XalanList.33", %"class.xalanc_1_10::XalanVector.34", i64, i64 }
%"class.xalanc_1_10::XalanList.33" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.34" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.35" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.36" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.37", %"class.xalanc_1_10::XalanVector.38", %"class.xalanc_1_10::XalanVector.9", %"class.xalanc_1_10::XalanMap.39" }
%"class.xalanc_1_10::XalanVector.37" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.38" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.39" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.42", %"class.xalanc_1_10::XalanList.42", %"class.xalanc_1_10::XalanVector.43", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList.42" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.43" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.44" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.25" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.45" = type { %"struct.xalanc_1_10::XalanHashMemberPointer", %"struct.xalanc_1_10::pointer_equal.46", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.48", %"class.xalanc_1_10::XalanList.48", %"class.xalanc_1_10::XalanVector.49", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberPointer" = type { i8 }
%"struct.xalanc_1_10::pointer_equal.46" = type { i8 }
%"class.xalanc_1_10::XalanList.48" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.49" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ElementPrefixResolverProxy" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XPathExecutionContextDefault" = type { %"class.xalanc_1_10::XPathExecutionContext", ptr, ptr, %"class.xalanc_1_10::XalanVector.63", %"class.xalanc_1_10::XalanVector.64", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanObjectCache", %"class.xalanc_1_10::XalanDOMStringCache", %"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache", %"class.xalanc_1_10::XalanQNameByValue" }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::XalanVector.63" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.64" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectCache" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr", %"struct.xalanc_1_10::DeleteFunctor", %"class.xalanc_1_10::ClearCacheResetFunctor", %"class.xalanc_1_10::XalanVector.66" }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"class.xalanc_1_10::ClearCacheResetFunctor" = type { i8 }
%"class.xalanc_1_10::XalanVector.66" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.63" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::StylesheetHandler" = type { %"class.xalanc_1_10::FormatterListener", ptr, ptr, %"class.xalanc_1_10::XalanElemEmptyAllocator", %"class.xalanc_1_10::XalanElemTextAllocator", %"class.xalanc_1_10::XalanVector.58", %"class.xalanc_1_10::XalanVector.58", ptr, %"class.xalanc_1_10::StylesheetHandler::LastPoppedHolder", i8, i8, i8, [5 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0", i64, %"class.xalanc_1_10::XalanSet", %"class.xalanc_1_10::XalanVector.62" }
%"class.xalanc_1_10::XalanElemEmptyAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.50" }
%"class.xalanc_1_10::ReusableArenaAllocator.50" = type <{ %"class.xalanc_1_10::ArenaAllocator.51", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.51" = type { ptr, i16, %"class.xalanc_1_10::XalanList.52" }
%"class.xalanc_1_10::XalanList.52" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTextAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.54" }
%"class.xalanc_1_10::ReusableArenaAllocator.54" = type <{ %"class.xalanc_1_10::ArenaAllocator.55", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.55" = type { ptr, i16, %"class.xalanc_1_10::XalanList.56" }
%"class.xalanc_1_10::XalanList.56" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.58" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::StylesheetHandler::LastPoppedHolder" = type { ptr, ptr }
%"class.xalanc_1_10::XalanSet" = type { %"class.xalanc_1_10::XalanMap.59" }
%"class.xalanc_1_10::XalanMap.59" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.27", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.60", %"class.xalanc_1_10::XalanList.60", %"class.xalanc_1_10::XalanVector.61", i64, i64 }
%"class.xalanc_1_10::XalanList.60" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.61" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.62" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::FormatterTreeWalker" = type { %"class.xalanc_1_10::TreeWalker", ptr, ptr }
%"class.xalanc_1_10::TreeWalker" = type { ptr }
%"class.xalanc_1_10::XalanAutoPtr.70" = type { ptr }
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xercesc_2_7::XMLURL" = type <{ ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::ElemTemplateElement" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16, [6 x i8] }>
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.71", i32, %"class.xalanc_1_10::XalanVector.72", i32, ptr, %"class.xalanc_1_10::XalanVector.73" }
%"class.xalanc_1_10::XalanVector.71" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.72" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.73" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::GenerateEvent" = type { i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", i32, i32, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr }
%"class.xalanc_1_10::XalanVector.74" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::OutputContextStack::OutputContext" = type <{ ptr, %"class.xalanc_1_10::AttributeListImpl", %"class.xalanc_1_10::XalanDOMString", i8, i8, [6 x i8] }>
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::FunctionCurrent" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::FunctionDocument" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionElementAvailable" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionFunctionAvailable" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionFormatNumber" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionGenerateID" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionKey" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::FunctionSystemProperty" = type { %"class.xalanc_1_10::Function", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::FunctionUnparsedEntityURI" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanNamespace" = type { %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_ = comdat any

$_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERKNS_14XalanDOMStringES3_bPKN11xercesc_2_77LocatorE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1014XSLTEngineImpl25setPendingElementNameImplEPKt = comdat any

$_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry21getPrefixForNamespaceERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1014XalanNamespace6getURIEv = comdat any

$_ZNK11xalanc_1_1014XalanNamespace9getPrefixEv = comdat any

$_ZN11xalanc_1_1022isPrefixUsedOrDeclaredERKNS_14XalanDOMStringEjPKtj = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_14XSLTEngineImpl24FindStringPointerFunctorEEEET_SB_SB_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1011TopLevelArgEPS4_EET0_T_S9_S8_ = comdat any

$_ZN11xalanc_1_1017XalanQNameByValueaSERKS0_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011TopLevelArgES5_EET0_T_S7_S6_ = comdat any

@_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1014XSLTEngineImplE = dso_local unnamed_addr constant { [39 x ptr], [6 x ptr] } { [39 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1014XSLTEngineImplE, ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1014XSLTEngineImplD0Ev, ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl22getSourceTreeFromInputERKNS_15XSLTInputSourceE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getStylesheetRootEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl17setStylesheetRootEPKNS_14StylesheetRootE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl19setExecutionContextEPNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl21resolveTopLevelParamsERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl19getXMLParserLiaisonEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl23getUniqueNamespaceValueERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringENS_10XObjectPtrE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl20getFormatterListenerEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl20setFormatterListenerEPNS_17FormatterListenerE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl16addTraceListenerEPNS_13TraceListenerE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl19removeTraceListenerEPNS_13TraceListenerE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl17fireGenerateEventERKNS_13GenerateEventE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl14fireTraceEventERKNS_11TracerEventE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl15fireSelectEventERKNS_14SelectionEventE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl15getTraceSelectsEv, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl11traceSelectERNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementERKNS_15NodeRefListBaseEPKNS_5XPathE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl24setQuietConflictWarningsEb, ptr @_ZN11xalanc_1_1014XSLTEngineImpl20setDiagnosticsOutputEPNS_11PrintWriterE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl7messageERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl4warnERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl5errorERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl15setTraceSelectsEb, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl6getURIEv], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xalanc_1_1014XSLTEngineImplE, ptr @_ZThn8_N11xalanc_1_1014XSLTEngineImplD1Ev, ptr @_ZThn8_N11xalanc_1_1014XSLTEngineImplD0Ev, ptr @_ZThn8_NK11xalanc_1_1014XSLTEngineImpl21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZThn8_NK11xalanc_1_1014XSLTEngineImpl6getURIEv] }, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl20s_stylesheetNodeNameE = dso_local local_unnamed_addr constant ptr @_ZL20s_stylesheetNodeName, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl19s_piTokenizerStringE = dso_local local_unnamed_addr constant ptr @_ZL19s_piTokenizerString, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl12s_typeStringE = dso_local local_unnamed_addr constant ptr @_ZL12s_typeString, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl18s_typeValueString1E = dso_local local_unnamed_addr constant ptr @_ZL18s_typeValueString1, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl18s_typeValueString2E = dso_local local_unnamed_addr constant ptr @_ZL18s_typeValueString2, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl18s_typeValueString3E = dso_local local_unnamed_addr constant ptr @_ZL18s_typeValueString3, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl18s_typeValueString4E = dso_local local_unnamed_addr constant ptr @_ZL18s_typeValueString4, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl12s_hrefStringE = dso_local local_unnamed_addr constant ptr @_ZL12s_hrefString, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@.str = private unnamed_addr constant [4 x i8] c"id(\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"//*[@id='\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"']\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"//*[@name='\00", align 1
@_ZTIN11xalanc_1_1022XSLTProcessorExceptionE = external constant ptr
@_ZN11xalanc_1_10L8theDummyE = internal constant i16 0, align 2
@.str.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"*|text(), (default select), \00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c" selected\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c", mode = {\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants14ATTRTYPE_CDATAE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants20ELEMNAME_HTML_STRINGE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl23s_uniqueNamespacePrefixE = dso_local local_unnamed_addr constant ptr @_ZL23s_uniqueNamespacePrefix, align 8
@_ZN11xalanc_1_1018XPathFunctionTable9s_currentE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable10s_documentE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable5s_keyE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE = external constant [0 x i16], align 2
@_ZL17s_XSLNameSpaceURL = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL19s_XalanNamespaceURL = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL23s_uniqueNamespacePrefix = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL20s_stylesheetNodeName = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL12s_typeString = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL12s_hrefString = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL19s_piTokenizerString = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL18s_typeValueString1 = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL18s_typeValueString2 = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL18s_typeValueString3 = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZL18s_typeValueString4 = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl17s_XSLNameSpaceURLE = dso_local local_unnamed_addr constant ptr @_ZL17s_XSLNameSpaceURL, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl19s_XalanNamespaceURLE = dso_local local_unnamed_addr constant ptr @_ZL19s_XalanNamespaceURL, align 8
@.str.22 = private unnamed_addr constant [37 x i8] c"http://www.w3.org/1999/XSL/Transform\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"http://xml.apache.org/xalan\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c"ns\00", align 1
@.str.25 = private unnamed_addr constant [15 x i8] c"xml-stylesheet\00", align 1
@.str.26 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@_ZN11xalanc_1_109Constants13ATTRNAME_HREFE = external local_unnamed_addr constant ptr, align 8
@.str.27 = private unnamed_addr constant [4 x i8] c" \09=\00", align 1
@.str.28 = private unnamed_addr constant [9 x i8] c"text/xml\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"text/xsl\00", align 1
@.str.30 = private unnamed_addr constant [16 x i8] c"application/xml\00", align 1
@.str.31 = private unnamed_addr constant [21 x i8] c"application/xml+xslt\00", align 1
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1014XSLTEngineImplE = dso_local constant [32 x i8] c"N11xalanc_1_1014XSLTEngineImplE\00", align 1
@_ZTIN11xalanc_1_1013XSLTProcessorE = external constant ptr
@_ZTIN11xalanc_1_1014PrefixResolverE = external constant ptr
@_ZTIN11xalanc_1_1014XSLTEngineImplE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1014XSLTEngineImplE, i32 0, i32 2, ptr @_ZTIN11xalanc_1_1013XSLTProcessorE, i64 2, ptr @_ZTIN11xalanc_1_1014PrefixResolverE, i64 2050 }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_105XPath11s_functionsE = external global %"class.xalanc_1_10::XPathFunctionTable", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XSLTEngineImpl.cpp, ptr null }]

@_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE
@_ZN11xalanc_1_1014XSLTEngineImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #2 comdat align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #26
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  tail call void @_ZN11xalanc_1_1013XSLTProcessorC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  invoke void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %52, !prof !158

9:                                                ; preds = %7
  store ptr getelementptr inbounds ({ [39 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1014XSLTEngineImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !159
  store ptr getelementptr inbounds ({ [39 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1014XSLTEngineImplE, i64 0, inrange i32 1, i64 2), ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %11 unwind label %54, !prof !158

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %13 unwind label %56, !prof !158

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 4
  store ptr %6, ptr %14, align 8, !tbaa !162
  %15 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 5
  store ptr %5, ptr %15, align 8, !tbaa !162
  %16 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 6
  %17 = invoke noundef ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %18 unwind label %58, !prof !158

18:                                               ; preds = %13
  store ptr %1, ptr %16, align 8, !tbaa !165
  %19 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 6, i32 0, i32 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !167
  %20 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7
  store ptr %1, ptr %20, align 8, !tbaa !168
  %21 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 1
  %22 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  store ptr %1, ptr %22, align 8, !tbaa !171
  %23 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %23, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null)
          to label %25 unwind label %60, !prof !158

25:                                               ; preds = %18
  %26 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 10
  store ptr %24, ptr %26, align 8, !tbaa !173
  %27 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  store ptr null, ptr %27, align 8, !tbaa !215
  %28 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 12
  store i8 0, ptr %28, align 8, !tbaa !216
  %29 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 13
  store i8 1, ptr %29, align 1, !tbaa !217
  %30 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 14
  store ptr null, ptr %30, align 8, !tbaa !218
  %31 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15
  store ptr %1, ptr %31, align 8, !tbaa !219
  %32 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 1
  %33 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %32, i8 0, i64 32, i1 false)
  store ptr %1, ptr %33, align 8, !tbaa !220
  %34 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17, i32 1
  %35 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 18
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, i8 0, i64 24, i1 false)
  store ptr %2, ptr %35, align 8, !tbaa !162
  %36 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  store ptr %3, ptr %36, align 8, !tbaa !162
  %37 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 20
  store ptr %4, ptr %37, align 8, !tbaa !162
  %38 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  store ptr null, ptr %38, align 8, !tbaa !221
  %39 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22
  invoke void @_ZN11xalanc_1_1018OutputContextStackC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %39, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %40 unwind label %62, !prof !158

40:                                               ; preds = %25
  %41 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  invoke void @_ZN11xalanc_1_1020XalanNamespacesStackC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %41, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %42 unwind label %64, !prof !158

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 24
  invoke void @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %43, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %44 unwind label %66, !prof !158

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 25
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %45, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %46 unwind label %68, !prof !158

46:                                               ; preds = %44
  %47 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26
  store ptr %1, ptr %47, align 8, !tbaa !222
  %48 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26, i32 1
  %49 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(25) %48, i8 0, i64 25, i1 false)
  invoke void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %49, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %50 unwind label %70, !prof !158

50:                                               ; preds = %46
  invoke void @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(104) %39, ptr noundef null)
          to label %51 unwind label %72, !prof !158

51:                                               ; preds = %50
  ret void

52:                                               ; preds = %7
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %92

54:                                               ; preds = %9
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %90

56:                                               ; preds = %11
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %88

58:                                               ; preds = %13
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %86

60:                                               ; preds = %18
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %84

62:                                               ; preds = %25
  %63 = landingpad { ptr, i32 }
          cleanup
  br label %82

64:                                               ; preds = %40
  %65 = landingpad { ptr, i32 }
          cleanup
  br label %80

66:                                               ; preds = %42
  %67 = landingpad { ptr, i32 }
          cleanup
  br label %78

68:                                               ; preds = %44
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %76

70:                                               ; preds = %46
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %74

72:                                               ; preds = %50
  %73 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %49) #26
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi { ptr, i32 } [ %73, %72 ], [ %71, %70 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %47) #26
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %45) #26
  br label %76

76:                                               ; preds = %74, %68
  %77 = phi { ptr, i32 } [ %75, %74 ], [ %69, %68 ]
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %43) #26
  br label %78

78:                                               ; preds = %76, %66
  %79 = phi { ptr, i32 } [ %77, %76 ], [ %67, %66 ]
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStackD1Ev(ptr noundef nonnull align 8 dereferenceable(144) %41) #26
  br label %80

80:                                               ; preds = %78, %64
  %81 = phi { ptr, i32 } [ %79, %78 ], [ %65, %64 ]
  tail call void @_ZN11xalanc_1_1018OutputContextStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %39) #26
  br label %82

82:                                               ; preds = %80, %62
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %63, %62 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #26
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #26
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %24) #26
  br label %84

84:                                               ; preds = %82, %60
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %61, %60 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #26
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #26
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %16) #26
  br label %86

86:                                               ; preds = %84, %58
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %59, %58 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #26
  br label %88

88:                                               ; preds = %86, %56
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %57, %56 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  br label %90

90:                                               ; preds = %88, %54
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %55, %54 ]
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  br label %92

92:                                               ; preds = %90, %52
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %53, %52 ]
  tail call void @_ZN11xalanc_1_1013XSLTProcessorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  resume { ptr, i32 } %93
}

declare void @_ZN11xalanc_1_1013XSLTProcessorC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014PrefixResolverC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1018OutputContextStackC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1020XalanNamespacesStackC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1031XPathConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !223 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !224
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !225

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !226
  %8 = load ptr, ptr %0, align 8, !tbaa !222
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !227

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #27
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020XalanNamespacesStackD1Ev(ptr noundef nonnull align 8 dereferenceable(144)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018OutputContextStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !228
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5, !prof !158

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !229
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !230
  %10 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011TopLevelArgD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %13) #26
  %14 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !231

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !229
  %18 = load ptr, ptr %0, align 8, !tbaa !220
  %19 = load ptr, ptr %18, align 8, !tbaa !159
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %17)
          to label %22 unwind label %23

22:                                               ; preds = %16, %1
  ret void

23:                                               ; preds = %16
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #27
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !234 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !235
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !236

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !237
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #27
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !238
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !239

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !240
  %8 = load ptr, ptr %0, align 8, !tbaa !171
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !241

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #27
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !242 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !243
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !244

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !245
  %8 = load ptr, ptr %0, align 8, !tbaa !168
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !246

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #27
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !234 {
  %2 = load ptr, ptr %0, align 8, !tbaa !165
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false, !prof !236
  br i1 %7, label %8, label %16, !prof !236

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !159
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5) #26, !prof !247
  %11 = load ptr, ptr %0, align 8, !tbaa !165
  %12 = load ptr, ptr %4, align 8, !tbaa !167
  %13 = load ptr, ptr %11, align 8, !tbaa !159
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17, !prof !248

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #27
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1013XSLTProcessorD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #4 align 2 !prof !234 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !230
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %14, label %5, !prof !236

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17, i32 3
  br label %7

7:                                                ; preds = %5, %7
  %8 = load i64, ptr %2, align 8, !tbaa !230
  %9 = add i64 %8, -1
  store i64 %9, ptr %2, align 8, !tbaa !230
  %10 = load ptr, ptr %6, align 8, !tbaa !229
  %11 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %10, i64 %9
  tail call void @_ZN11xalanc_1_1011TopLevelArgD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %11) #26
  %12 = load i64, ptr %2, align 8, !tbaa !230
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %7, !llvm.loop !249

14:                                               ; preds = %7, %1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !250
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %19, label %18, !prof !236

18:                                               ; preds = %14
  store i64 0, ptr %15, align 8, !tbaa !250
  br label %19

19:                                               ; preds = %18, %14
  %20 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !251
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %24, label %23, !prof !236

23:                                               ; preds = %19
  store i64 0, ptr %20, align 8, !tbaa !251
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  store ptr null, ptr %25, align 8, !tbaa !215
  %26 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22
  tail call void @_ZN11xalanc_1_1018OutputContextStack5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %26)
  tail call void @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(104) %26, ptr noundef null)
  %27 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  %28 = load ptr, ptr %27, align 8, !tbaa !252
  %29 = load ptr, ptr %28, align 8, !tbaa !159
  %30 = getelementptr inbounds ptr, ptr %29, i64 10
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(8) %28), !prof !253
  %32 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !254
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33), !prof !255
  %37 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !256
  %39 = load ptr, ptr %38, align 8, !tbaa !159
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(16) %38), !prof !257
  %42 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 20
  %43 = load ptr, ptr %42, align 8, !tbaa !258
  %44 = load ptr, ptr %43, align 8, !tbaa !159
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(8) %43), !prof !259
  %47 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack5clearEv(ptr noundef nonnull align 8 dereferenceable(144) %47)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26, i32 1
  %49 = load i64, ptr %48, align 8, !tbaa !260
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %52, label %51, !prof !236

51:                                               ; preds = %24
  store i64 0, ptr %48, align 8, !tbaa !260
  br label %52

52:                                               ; preds = %51, %24
  %53 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  store i8 0, ptr %53, align 8, !tbaa !261
  %54 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28
  tail call void @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(248) %54)
  ret void
}

declare void @_ZN11xalanc_1_1018OutputContextStack5resetEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1020XalanNamespacesStack5clearEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImplD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  store ptr getelementptr inbounds ({ [39 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1014XSLTEngineImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !159
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [39 x ptr], [6 x ptr] }, ptr @_ZTVN11xalanc_1_1014XSLTEngineImplE, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !159
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
          to label %3 unwind label %18, !prof !158

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28
  tail call void @_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %4) #26
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 25
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #26
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 24
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %7) #26
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStackD1Ev(ptr noundef nonnull align 8 dereferenceable(144) %8) #26
  %9 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22
  tail call void @_ZN11xalanc_1_1018OutputContextStackD1Ev(ptr noundef nonnull align 8 dereferenceable(104) %9) #26
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  %11 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #26
  %12 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #26
  %13 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #26
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #26
  %15 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %15) #26
  %16 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #26
  %17 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #26
  tail call void @_ZN11xalanc_1_1014PrefixResolverD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #26
  tail call void @_ZN11xalanc_1_1013XSLTProcessorD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #26
  ret void

18:                                               ; preds = %1
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #27
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !156 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #26
  tail call void @_ZSt9terminatev() #27
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !156 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1014XSLTEngineImplD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %2) #26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImplD0Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #2 align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1014XSLTEngineImplD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #26
  tail call void @_ZdlPv(ptr noundef %0) #28
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xalanc_1_1014XSLTEngineImplD0Ev(ptr noundef %0) unnamed_addr #8 align 2 !prof !156 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xalanc_1_1014XSLTEngineImplD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %2) #26
  tail call void @_ZdlPv(ptr noundef %2) #28
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = alloca %"class.xalanc_1_10::StringTokenizer", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #26
  %11 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %5, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !262
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %13 = load ptr, ptr %2, align 8, !tbaa !159
  %14 = getelementptr inbounds ptr, ptr %13, i64 5
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(41) %2)
          to label %17 unwind label %21, !prof !264

17:                                               ; preds = %6
  %18 = icmp eq ptr %16, null
  br i1 %18, label %19, label %23, !prof !239

19:                                               ; preds = %17
  %20 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 135)
          to label %33 unwind label %21

21:                                               ; preds = %31, %29, %28, %23, %19, %6
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %343

23:                                               ; preds = %17
  %24 = load ptr, ptr %2, align 8, !tbaa !159
  %25 = getelementptr inbounds ptr, ptr %24, i64 5
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(41) %2)
          to label %28 unwind label %21, !prof !264

28:                                               ; preds = %23
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, i32 noundef -1)
          to label %29 unwind label %21, !prof !158

29:                                               ; preds = %28
  %30 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %27)
          to label %31 unwind label %21, !prof !158

31:                                               ; preds = %29
  %32 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %27, i32 noundef %30)
          to label %33 unwind label %21, !prof !158

33:                                               ; preds = %19, %31
  %34 = load ptr, ptr %0, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 7
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %38 unwind label %127, !prof !265

38:                                               ; preds = %33
  %39 = load ptr, ptr %0, align 8, !tbaa !159
  %40 = getelementptr inbounds ptr, ptr %39, i64 4
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %43 unwind label %127, !prof !266

43:                                               ; preds = %38
  %44 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  store ptr %42, ptr %44, align 8, !tbaa !215
  %45 = icmp ne ptr %37, null
  %46 = icmp eq ptr %42, null
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %273, !prof !239

48:                                               ; preds = %43
  %49 = load ptr, ptr %37, align 8, !tbaa !159
  %50 = getelementptr inbounds ptr, ptr %49, i64 7
  %51 = load ptr, ptr %50, align 8
  %52 = invoke noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %53 unwind label %129

53:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #26
  %54 = load ptr, ptr %11, align 8, !tbaa !262
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %54)
          to label %55 unwind label %131

55:                                               ; preds = %53
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #26
  %56 = load ptr, ptr %11, align 8, !tbaa !262
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %56)
          to label %57 unwind label %133

57:                                               ; preds = %55
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  br label %61

61:                                               ; preds = %57, %163
  %62 = phi i8 [ %164, %163 ], [ 0, %57 ]
  %63 = phi ptr [ %168, %163 ], [ %52, %57 ]
  %64 = icmp ne ptr %63, null
  %65 = and i8 %62, 1
  %66 = icmp eq i8 %65, 0
  %67 = select i1 %64, i1 %66, i1 false
  %68 = load i32, ptr %58, align 8
  %69 = icmp eq i32 %68, 0
  %70 = select i1 %67, i1 %69, i1 false
  br i1 %70, label %71, label %169

71:                                               ; preds = %61
  %72 = load ptr, ptr %63, align 8, !tbaa !159
  %73 = getelementptr inbounds ptr, ptr %72, i64 4
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef i32 %74(ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %76 unwind label %135

76:                                               ; preds = %71
  %77 = icmp eq i32 %75, 7
  br i1 %77, label %78, label %163

78:                                               ; preds = %76
  %79 = load ptr, ptr %63, align 8, !tbaa !159
  %80 = getelementptr inbounds ptr, ptr %79, i64 2
  %81 = load ptr, ptr %80, align 8
  %82 = invoke noundef nonnull align 8 dereferenceable(36) ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %83 unwind label %137

83:                                               ; preds = %78
  %84 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %82, ptr noundef nonnull align 8 dereferenceable(36) @_ZL20s_stylesheetNodeName)
          to label %85 unwind label %137

85:                                               ; preds = %83
  br i1 %84, label %86, label %163

86:                                               ; preds = %85
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %10) #26
  %87 = load ptr, ptr %63, align 8, !tbaa !159
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  %90 = invoke noundef nonnull align 8 dereferenceable(36) ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %91 unwind label %139

91:                                               ; preds = %86
  invoke void @_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringES3_b(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(36) %90, ptr noundef nonnull align 8 dereferenceable(36) @_ZL19s_piTokenizerString, i1 noundef zeroext false)
          to label %92 unwind label %139

92:                                               ; preds = %91, %126
  %93 = phi i8 [ 1, %126 ], [ %62, %91 ]
  %94 = and i8 %93, 1
  %95 = icmp eq i8 %94, 0
  br label %96

96:                                               ; preds = %152, %92
  %97 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %98 unwind label %141

98:                                               ; preds = %96
  br i1 %97, label %99, label %158

99:                                               ; preds = %98
  %100 = load i32, ptr %58, align 8
  %101 = icmp eq i32 %100, 0
  %102 = select i1 %95, i1 true, i1 %101
  br i1 %102, label %103, label %158

103:                                              ; preds = %99
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %104 unwind label %141

104:                                              ; preds = %103
  %105 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_typeString)
          to label %106 unwind label %141

106:                                              ; preds = %104
  br i1 %105, label %107, label %145

107:                                              ; preds = %106
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %108 unwind label %141

108:                                              ; preds = %107
  %109 = load i32, ptr %60, align 8, !tbaa !267
  %110 = icmp ugt i32 %109, 2
  br i1 %110, label %111, label %152

111:                                              ; preds = %108
  %112 = add i32 %109, -1
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %112, i32 noundef 1)
          to label %113 unwind label %143

113:                                              ; preds = %111
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 0, i32 noundef 1)
          to label %114 unwind label %143

114:                                              ; preds = %113
  %115 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString1)
          to label %116 unwind label %143

116:                                              ; preds = %114
  br i1 %115, label %126, label %117

117:                                              ; preds = %116
  %118 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString2)
          to label %119 unwind label %143

119:                                              ; preds = %117
  br i1 %118, label %126, label %120

120:                                              ; preds = %119
  %121 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString3)
          to label %122 unwind label %143

122:                                              ; preds = %120
  br i1 %121, label %126, label %123

123:                                              ; preds = %122
  %124 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString4)
          to label %125 unwind label %143

125:                                              ; preds = %123
  br i1 %124, label %126, label %152

126:                                              ; preds = %125, %122, %119, %116
  br label %92, !llvm.loop !268

127:                                              ; preds = %307, %38, %33
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %343

129:                                              ; preds = %48
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %343

131:                                              ; preds = %53
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %271

133:                                              ; preds = %55
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %256

135:                                              ; preds = %163, %71
  %136 = landingpad { ptr, i32 }
          cleanup
  br label %241

137:                                              ; preds = %83, %78
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %241

139:                                              ; preds = %91, %86
  %140 = landingpad { ptr, i32 }
          cleanup
  br label %161

141:                                              ; preds = %145, %104, %148, %107, %103, %96
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %159

143:                                              ; preds = %123, %120, %117, %114, %113, %111
  %144 = landingpad { ptr, i32 }
          cleanup
  br label %159

145:                                              ; preds = %106
  %146 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_hrefString)
          to label %147 unwind label %141

147:                                              ; preds = %145
  br i1 %146, label %148, label %152

148:                                              ; preds = %147
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %149 unwind label %141

149:                                              ; preds = %148
  %150 = load i32, ptr %59, align 8, !tbaa !267
  %151 = icmp ugt i32 %150, 2
  br i1 %151, label %153, label %152

152:                                              ; preds = %149, %153, %108, %125, %147
  br label %96, !llvm.loop !268

153:                                              ; preds = %149
  %154 = add i32 %150, -2
  %155 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 1, i32 noundef %154)
          to label %152 unwind label %156

156:                                              ; preds = %153
  %157 = landingpad { ptr, i32 }
          cleanup
  br label %159

158:                                              ; preds = %99, %98
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #26
  br label %163

159:                                              ; preds = %156, %143, %141
  %160 = phi { ptr, i32 } [ %144, %143 ], [ %142, %141 ], [ %157, %156 ]
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #26
  br label %161

161:                                              ; preds = %159, %139
  %162 = phi { ptr, i32 } [ %160, %159 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %10) #26
  br label %241

163:                                              ; preds = %85, %158, %76
  %164 = phi i8 [ %62, %76 ], [ %93, %158 ], [ %62, %85 ]
  %165 = load ptr, ptr %63, align 8, !tbaa !159
  %166 = getelementptr inbounds ptr, ptr %165, i64 10
  %167 = load ptr, ptr %166, align 8
  %168 = invoke noundef ptr %167(ptr noundef nonnull align 8 dereferenceable(8) %63)
          to label %61 unwind label %135, !llvm.loop !269

169:                                              ; preds = %61
  %170 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %171 = load i32, ptr %170, align 8
  %172 = icmp eq i32 %171, 0
  %173 = select i1 %66, i1 true, i1 %172
  br i1 %173, label %212, label %174

174:                                              ; preds = %169
  %175 = load ptr, ptr %4, align 8, !tbaa !159
  %176 = getelementptr inbounds ptr, ptr %175, i64 5
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef nonnull align 8 dereferenceable(36) ptr %177(ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %179 unwind label %191

179:                                              ; preds = %174
  %180 = load ptr, ptr %1, align 8, !tbaa !159
  %181 = getelementptr inbounds ptr, ptr %180, i64 5
  %182 = load ptr, ptr %181, align 8
  %183 = invoke noundef ptr %182(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %184 unwind label %193

184:                                              ; preds = %179
  %185 = icmp eq ptr %183, null
  br i1 %185, label %202, label %186

186:                                              ; preds = %184
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %178, i32 noundef 0, i32 noundef -1)
          to label %187 unwind label %193

187:                                              ; preds = %186
  %188 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %183)
          to label %189 unwind label %193

189:                                              ; preds = %187
  %190 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %178, ptr noundef nonnull %183, i32 noundef %188)
          to label %202 unwind label %193

191:                                              ; preds = %174
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %241

193:                                              ; preds = %189, %187, %186, %202, %179
  %194 = landingpad { ptr, i32 }
          cleanup
  %195 = load ptr, ptr %4, align 8, !tbaa !159
  %196 = getelementptr inbounds ptr, ptr %195, i64 6
  %197 = load ptr, ptr %196, align 8
  %198 = invoke noundef zeroext i1 %197(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(36) %178)
          to label %241 unwind label %199

199:                                              ; preds = %193
  %200 = landingpad { ptr, i32 }
          catch ptr null
  %201 = extractvalue { ptr, i32 } %200, 0
  call void @__clang_call_terminate(ptr %201) #27
  unreachable

202:                                              ; preds = %189, %184
  %203 = invoke noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl22getStylesheetFromPIURLERKNS_14XalanDOMStringERNS_9XalanNodeES3_bRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(36) %178, i1 noundef zeroext true, ptr noundef nonnull align 8 dereferenceable(16) %4)
          to label %204 unwind label %193

204:                                              ; preds = %202
  %205 = load ptr, ptr %4, align 8, !tbaa !159
  %206 = getelementptr inbounds ptr, ptr %205, i64 6
  %207 = load ptr, ptr %206, align 8
  %208 = invoke noundef zeroext i1 %207(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(36) %178)
          to label %212 unwind label %209

209:                                              ; preds = %204
  %210 = landingpad { ptr, i32 }
          catch ptr null
  %211 = extractvalue { ptr, i32 } %210, 0
  call void @__clang_call_terminate(ptr %211) #27
  unreachable

212:                                              ; preds = %204, %169
  %213 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %214 = load i64, ptr %213, align 8, !tbaa !270
  %215 = icmp eq i64 %214, 0
  br i1 %215, label %226, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %218 = load ptr, ptr %217, align 8, !tbaa !271
  %219 = load ptr, ptr %9, align 8, !tbaa !272
  %220 = load ptr, ptr %219, align 8, !tbaa !159
  %221 = getelementptr inbounds ptr, ptr %220, i64 3
  %222 = load ptr, ptr %221, align 8
  invoke void %222(ptr noundef nonnull align 8 dereferenceable(8) %219, ptr noundef %218)
          to label %226 unwind label %223

223:                                              ; preds = %216
  %224 = landingpad { ptr, i32 }
          catch ptr null
  %225 = extractvalue { ptr, i32 } %224, 0
  call void @__clang_call_terminate(ptr %225) #27
  unreachable

226:                                              ; preds = %212, %216
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #26
  %227 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %228 = load i64, ptr %227, align 8, !tbaa !270
  %229 = icmp eq i64 %228, 0
  br i1 %229, label %240, label %230

230:                                              ; preds = %226
  %231 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %232 = load ptr, ptr %231, align 8, !tbaa !271
  %233 = load ptr, ptr %8, align 8, !tbaa !272
  %234 = load ptr, ptr %233, align 8, !tbaa !159
  %235 = getelementptr inbounds ptr, ptr %234, i64 3
  %236 = load ptr, ptr %235, align 8
  invoke void %236(ptr noundef nonnull align 8 dereferenceable(8) %233, ptr noundef %232)
          to label %240 unwind label %237

237:                                              ; preds = %230
  %238 = landingpad { ptr, i32 }
          catch ptr null
  %239 = extractvalue { ptr, i32 } %238, 0
  call void @__clang_call_terminate(ptr %239) #27
  unreachable

240:                                              ; preds = %226, %230
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #26
  br label %273

241:                                              ; preds = %191, %193, %137, %161, %135
  %242 = phi { ptr, i32 } [ %136, %135 ], [ %162, %161 ], [ %138, %137 ], [ %192, %191 ], [ %194, %193 ]
  %243 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %244 = load i64, ptr %243, align 8, !tbaa !270
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %256, label %246

246:                                              ; preds = %241
  %247 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %248 = load ptr, ptr %247, align 8, !tbaa !271
  %249 = load ptr, ptr %9, align 8, !tbaa !272
  %250 = load ptr, ptr %249, align 8, !tbaa !159
  %251 = getelementptr inbounds ptr, ptr %250, i64 3
  %252 = load ptr, ptr %251, align 8
  invoke void %252(ptr noundef nonnull align 8 dereferenceable(8) %249, ptr noundef %248)
          to label %256 unwind label %253

253:                                              ; preds = %246
  %254 = landingpad { ptr, i32 }
          catch ptr null
  %255 = extractvalue { ptr, i32 } %254, 0
  call void @__clang_call_terminate(ptr %255) #27
  unreachable

256:                                              ; preds = %246, %241, %133
  %257 = phi { ptr, i32 } [ %134, %133 ], [ %242, %241 ], [ %242, %246 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #26
  %258 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %259 = load i64, ptr %258, align 8, !tbaa !270
  %260 = icmp eq i64 %259, 0
  br i1 %260, label %271, label %261

261:                                              ; preds = %256
  %262 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %263 = load ptr, ptr %262, align 8, !tbaa !271
  %264 = load ptr, ptr %8, align 8, !tbaa !272
  %265 = load ptr, ptr %264, align 8, !tbaa !159
  %266 = getelementptr inbounds ptr, ptr %265, i64 3
  %267 = load ptr, ptr %266, align 8
  invoke void %267(ptr noundef nonnull align 8 dereferenceable(8) %264, ptr noundef %263)
          to label %271 unwind label %268

268:                                              ; preds = %261
  %269 = landingpad { ptr, i32 }
          catch ptr null
  %270 = extractvalue { ptr, i32 } %269, 0
  call void @__clang_call_terminate(ptr %270) #27
  unreachable

271:                                              ; preds = %261, %256, %131
  %272 = phi { ptr, i32 } [ %132, %131 ], [ %257, %256 ], [ %257, %261 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #26
  br label %343

273:                                              ; preds = %240, %43
  %274 = load ptr, ptr %44, align 8, !tbaa !215
  %275 = icmp eq ptr %274, null
  br i1 %275, label %276, label %306, !prof !239

276:                                              ; preds = %273
  %277 = load ptr, ptr %5, align 8, !tbaa !159
  %278 = getelementptr inbounds ptr, ptr %277, i64 23
  %279 = load ptr, ptr %278, align 8
  %280 = invoke noundef nonnull align 8 dereferenceable(36) ptr %279(ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %281 unwind label %295

281:                                              ; preds = %276
  %282 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %280, i32 noundef 124)
          to label %283 unwind label %297

283:                                              ; preds = %281
  %284 = load ptr, ptr %0, align 8, !tbaa !159
  %285 = getelementptr inbounds ptr, ptr %284, i64 32
  %286 = load ptr, ptr %285, align 8
  invoke void %286(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %282, ptr noundef null, ptr noundef null)
          to label %287 unwind label %297

287:                                              ; preds = %283
  %288 = load ptr, ptr %5, align 8, !tbaa !159
  %289 = getelementptr inbounds ptr, ptr %288, i64 24
  %290 = load ptr, ptr %289, align 8
  %291 = invoke noundef zeroext i1 %290(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %280)
          to label %328 unwind label %292

292:                                              ; preds = %287
  %293 = landingpad { ptr, i32 }
          catch ptr null
  %294 = extractvalue { ptr, i32 } %293, 0
  call void @__clang_call_terminate(ptr %294) #27
  unreachable

295:                                              ; preds = %276
  %296 = landingpad { ptr, i32 }
          cleanup
  br label %343

297:                                              ; preds = %283, %281
  %298 = landingpad { ptr, i32 }
          cleanup
  %299 = load ptr, ptr %5, align 8, !tbaa !159
  %300 = getelementptr inbounds ptr, ptr %299, i64 24
  %301 = load ptr, ptr %300, align 8
  %302 = invoke noundef zeroext i1 %301(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %280)
          to label %343 unwind label %303

303:                                              ; preds = %297
  %304 = landingpad { ptr, i32 }
          catch ptr null
  %305 = extractvalue { ptr, i32 } %304, 0
  call void @__clang_call_terminate(ptr %305) #27
  unreachable

306:                                              ; preds = %273
  br i1 %45, label %307, label %328, !prof !158

307:                                              ; preds = %306
  %308 = load ptr, ptr %5, align 8, !tbaa !159
  %309 = getelementptr inbounds ptr, ptr %308, i64 55
  %310 = load ptr, ptr %309, align 8
  invoke void %310(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %274)
          to label %311 unwind label %127, !prof !273

311:                                              ; preds = %307
  %312 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %3, i64 0, i32 4
  %313 = load ptr, ptr %312, align 8, !tbaa !274
  %314 = icmp eq ptr %313, null
  br i1 %314, label %323, label %315, !prof !158

315:                                              ; preds = %311
  %316 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %313, i64 0, i32 1
  %317 = load ptr, ptr %316, align 8, !tbaa !276
  %318 = icmp eq ptr %317, null
  br i1 %318, label %319, label %323

319:                                              ; preds = %315
  %320 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %320, ptr %316, align 8, !tbaa !276
  br label %323

321:                                              ; preds = %323
  %322 = landingpad { ptr, i32 }
          cleanup
  br label %343

323:                                              ; preds = %319, %315, %311
  %324 = load ptr, ptr %44, align 8, !tbaa !215
  %325 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %324, i64 0, i32 14
  %326 = load i8, ptr %325, align 8, !tbaa !281, !range !327, !noundef !328
  %327 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  store i8 %326, ptr %327, align 8, !tbaa !261
  invoke void @_ZNK11xalanc_1_1014StylesheetRoot7processEPNS_9XalanNodeERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(2064) %324, ptr noundef nonnull %37, ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %328 unwind label %321, !prof !158

328:                                              ; preds = %287, %323, %306
  %329 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %330 = load i64, ptr %329, align 8, !tbaa !270
  %331 = icmp eq i64 %330, 0
  br i1 %331, label %342, label %332, !prof !239

332:                                              ; preds = %328
  %333 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %334 = load ptr, ptr %333, align 8, !tbaa !271
  %335 = load ptr, ptr %7, align 8, !tbaa !272
  %336 = load ptr, ptr %335, align 8, !tbaa !159
  %337 = getelementptr inbounds ptr, ptr %336, i64 3
  %338 = load ptr, ptr %337, align 8
  invoke void %338(ptr noundef nonnull align 8 dereferenceable(8) %335, ptr noundef %334)
          to label %342 unwind label %339, !prof !241

339:                                              ; preds = %332
  %340 = landingpad { ptr, i32 }
          catch ptr null
  %341 = extractvalue { ptr, i32 } %340, 0
  call void @__clang_call_terminate(ptr %341) #27
  unreachable

342:                                              ; preds = %328, %332
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #26
  ret void

343:                                              ; preds = %295, %297, %127, %321, %271, %129, %21
  %344 = phi { ptr, i32 } [ %22, %21 ], [ %322, %321 ], [ %128, %127 ], [ %272, %271 ], [ %130, %129 ], [ %296, %295 ], [ %298, %297 ]
  %345 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %346 = load i64, ptr %345, align 8, !tbaa !270
  %347 = icmp eq i64 %346, 0
  br i1 %347, label %358, label %348

348:                                              ; preds = %343
  %349 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %350 = load ptr, ptr %349, align 8, !tbaa !271
  %351 = load ptr, ptr %7, align 8, !tbaa !272
  %352 = load ptr, ptr %351, align 8, !tbaa !159
  %353 = getelementptr inbounds ptr, ptr %352, i64 3
  %354 = load ptr, ptr %353, align 8
  invoke void %354(ptr noundef nonnull align 8 dereferenceable(8) %351, ptr noundef %350)
          to label %358 unwind label %355

355:                                              ; preds = %348
  %356 = landingpad { ptr, i32 }
          catch ptr null
  %357 = extractvalue { ptr, i32 } %356, 0
  call void @__clang_call_terminate(ptr %357) #27
  unreachable

358:                                              ; preds = %343, %348
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #26
  resume { ptr, i32 } %344
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3)
  ret ptr %4
}

declare void @_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringES3_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl22getStylesheetFromPIURLERKNS_14XalanDOMStringERNS_9XalanNodeES3_bRNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, i1 noundef zeroext %4, ptr noundef nonnull align 8 dereferenceable(16) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %7 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  %8 = alloca %"class.xalanc_1_10::XPathExecutionContextDefault", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %10 = alloca %"class.xalanc_1_10::NodeRefList", align 8
  %11 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %12 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %13 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  %14 = alloca %"class.xalanc_1_10::StylesheetHandler", align 8
  %15 = alloca %"class.xalanc_1_10::FormatterTreeWalker", align 8
  %16 = alloca %"class.xalanc_1_10::StylesheetHandler", align 8
  %17 = alloca %"class.xalanc_1_10::XalanAutoPtr.70", align 8
  %18 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %5, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !329
  %21 = load ptr, ptr %5, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(16) %5)
  %25 = load ptr, ptr %5, align 8, !tbaa !159
  %26 = getelementptr inbounds ptr, ptr %25, i64 5
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %29 unwind label %79

29:                                               ; preds = %6
  %30 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_104trimERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %31 unwind label %83

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %28, i64 0, i32 1
  %33 = load i32, ptr %32, align 8, !tbaa !267
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %53, label %35

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %28, i64 0, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !330
  %38 = icmp eq i64 %37, 0
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %28, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8
  %41 = select i1 %38, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %40
  br label %42

42:                                               ; preds = %45, %35
  %43 = phi ptr [ %41, %35 ], [ %46, %45 ]
  %44 = load i16, ptr %43, align 2, !tbaa !331
  switch i16 %44, label %45 [
    i16 35, label %47
    i16 0, label %47
  ]

45:                                               ; preds = %42
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  br label %42, !llvm.loop !332

47:                                               ; preds = %42, %42
  %48 = ptrtoint ptr %43 to i64
  %49 = ptrtoint ptr %41 to i64
  %50 = sub i64 %48, %49
  %51 = lshr exact i64 %50, 1
  %52 = trunc i64 %51 to i32
  br label %53

53:                                               ; preds = %47, %31
  %54 = phi i32 [ %52, %47 ], [ 0, %31 ]
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %509

56:                                               ; preds = %53
  %57 = load ptr, ptr %5, align 8, !tbaa !159
  %58 = getelementptr inbounds ptr, ptr %57, i64 5
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef nonnull align 8 dereferenceable(36) ptr %59(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %61 unwind label %87

61:                                               ; preds = %56
  %62 = icmp eq ptr %28, %60
  br i1 %62, label %68, label %63

63:                                               ; preds = %61
  %64 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %60, ptr noundef nonnull align 8 dereferenceable(32) %28)
          to label %65 unwind label %89

65:                                               ; preds = %63
  %66 = load i32, ptr %32, align 8, !tbaa !267
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %60, i64 0, i32 1
  store i32 %66, ptr %67, align 8, !tbaa !267
  br label %68

68:                                               ; preds = %65, %61
  %69 = load ptr, ptr %2, align 8, !tbaa !159
  %70 = getelementptr inbounds ptr, ptr %69, i64 4
  %71 = load ptr, ptr %70, align 8
  %72 = invoke noundef i32 %71(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %73 unwind label %91

73:                                               ; preds = %68
  switch i32 %72, label %95 [
    i32 9, label %74
    i32 1, label %139
  ]

74:                                               ; preds = %73
  %75 = load ptr, ptr %2, align 8, !tbaa !159
  %76 = getelementptr inbounds ptr, ptr %75, i64 38
  %77 = load ptr, ptr %76, align 8
  %78 = invoke noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %139 unwind label %93

79:                                               ; preds = %6
  %80 = landingpad { ptr, i32 }
          cleanup
  %81 = extractvalue { ptr, i32 } %80, 0
  %82 = extractvalue { ptr, i32 } %80, 1
  br label %668

83:                                               ; preds = %29
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = extractvalue { ptr, i32 } %84, 0
  %86 = extractvalue { ptr, i32 } %84, 1
  br label %658

87:                                               ; preds = %56
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %505

89:                                               ; preds = %63
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %496

91:                                               ; preds = %68
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %496

93:                                               ; preds = %74
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %496

95:                                               ; preds = %73
  %96 = load ptr, ptr %2, align 8, !tbaa !159
  %97 = getelementptr inbounds ptr, ptr %96, i64 5
  %98 = load ptr, ptr %97, align 8
  %99 = invoke noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %100 unwind label %107

100:                                              ; preds = %95
  %101 = load ptr, ptr %99, align 8, !tbaa !159
  %102 = getelementptr inbounds ptr, ptr %101, i64 4
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef i32 %103(ptr noundef nonnull align 8 dereferenceable(8) %99)
          to label %105 unwind label %107

105:                                              ; preds = %100
  %106 = icmp eq i32 %104, 1
  br i1 %106, label %139, label %109

107:                                              ; preds = %100, %95
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %496

109:                                              ; preds = %105
  %110 = load ptr, ptr %5, align 8, !tbaa !159
  %111 = getelementptr inbounds ptr, ptr %110, i64 5
  %112 = load ptr, ptr %111, align 8
  %113 = invoke noundef nonnull align 8 dereferenceable(36) ptr %112(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %114 unwind label %128

114:                                              ; preds = %109
  %115 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %113, i32 noundef 129, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %116 unwind label %130

116:                                              ; preds = %114
  %117 = load ptr, ptr %0, align 8, !tbaa !159
  %118 = getelementptr inbounds ptr, ptr %117, i64 32
  %119 = load ptr, ptr %118, align 8
  invoke void %119(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %115, ptr noundef null, ptr noundef null)
          to label %120 unwind label %130

120:                                              ; preds = %116
  %121 = load ptr, ptr %5, align 8, !tbaa !159
  %122 = getelementptr inbounds ptr, ptr %121, i64 6
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef zeroext i1 %123(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %113)
          to label %139 unwind label %125

125:                                              ; preds = %120
  %126 = landingpad { ptr, i32 }
          catch ptr null
  %127 = extractvalue { ptr, i32 } %126, 0
  tail call void @__clang_call_terminate(ptr %127) #27
  unreachable

128:                                              ; preds = %109
  %129 = landingpad { ptr, i32 }
          cleanup
  br label %496

130:                                              ; preds = %116, %114
  %131 = landingpad { ptr, i32 }
          cleanup
  %132 = load ptr, ptr %5, align 8, !tbaa !159
  %133 = getelementptr inbounds ptr, ptr %132, i64 6
  %134 = load ptr, ptr %133, align 8
  %135 = invoke noundef zeroext i1 %134(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %113)
          to label %496 unwind label %136

136:                                              ; preds = %130
  %137 = landingpad { ptr, i32 }
          catch ptr null
  %138 = extractvalue { ptr, i32 } %137, 0
  tail call void @__clang_call_terminate(ptr %138) #27
  unreachable

139:                                              ; preds = %120, %105, %73, %74
  %140 = phi ptr [ %78, %74 ], [ %2, %73 ], [ %99, %105 ], [ null, %120 ]
  %141 = load ptr, ptr %5, align 8, !tbaa !159
  %142 = getelementptr inbounds ptr, ptr %141, i64 5
  %143 = load ptr, ptr %142, align 8
  %144 = invoke noundef nonnull align 8 dereferenceable(36) ptr %143(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %145 unwind label %258

145:                                              ; preds = %139
  %146 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str)
          to label %147 unwind label %260

147:                                              ; preds = %145
  %148 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull @.str, i32 noundef %146)
          to label %149 unwind label %260

149:                                              ; preds = %147
  %150 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 1
  %151 = load i64, ptr %150, align 8, !tbaa !330
  %152 = icmp eq i64 %151, 0
  %153 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 3
  %154 = load ptr, ptr %153, align 8
  %155 = select i1 %152, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %154
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %60, i64 0, i32 1
  %157 = load i32, ptr %156, align 8, !tbaa !267
  %158 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef %155, i32 noundef %157)
          to label %159 unwind label %260

159:                                              ; preds = %149
  %160 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.1)
          to label %161 unwind label %260

161:                                              ; preds = %159
  %162 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull @.str.1, i32 noundef %160)
          to label %163 unwind label %260

163:                                              ; preds = %161
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #26
  %164 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  %165 = load ptr, ptr %164, align 8, !tbaa !252
  %166 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 20
  %167 = load ptr, ptr %166, align 8, !tbaa !258
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef %140, ptr noundef nonnull align 8 dereferenceable(8) %165, ptr noundef nonnull align 8 dereferenceable(8) %167, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %168 unwind label %262

168:                                              ; preds = %163
  call void @llvm.lifetime.start.p0(i64 432, ptr nonnull %8) #26
  %169 = load ptr, ptr %164, align 8, !tbaa !252
  %170 = load ptr, ptr %166, align 8, !tbaa !258
  %171 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !256
  invoke void @_ZN11xalanc_1_1028XPathExecutionContextDefaultC1ERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(432) %8, ptr noundef nonnull align 8 dereferenceable(8) %169, ptr noundef nonnull align 8 dereferenceable(8) %170, ptr noundef nonnull align 8 dereferenceable(16) %172, ptr noundef nonnull %2, ptr noundef null, ptr noundef nonnull %7)
          to label %173 unwind label %264

173:                                              ; preds = %168
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #26
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %9, ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %174 unwind label %266

174:                                              ; preds = %173
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #26
  %175 = load ptr, ptr %9, align 8, !tbaa !333
  %176 = load ptr, ptr %175, align 8, !tbaa !159
  %177 = getelementptr inbounds ptr, ptr %176, i64 13
  %178 = load ptr, ptr %177, align 8
  %179 = invoke noundef nonnull align 8 dereferenceable(8) ptr %178(ptr noundef nonnull align 8 dereferenceable(24) %175)
          to label %180 unwind label %268

180:                                              ; preds = %174
  invoke void @_ZN11xalanc_1_1011NodeRefListC1ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %179, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %181 unwind label %268

181:                                              ; preds = %180
  %182 = invoke noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %183 unwind label %270

183:                                              ; preds = %181
  %184 = icmp eq i32 %182, 0
  br i1 %184, label %185, label %318

185:                                              ; preds = %183
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %144, i32 noundef 0, i32 noundef -1)
          to label %186 unwind label %270

186:                                              ; preds = %185
  %187 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.2)
          to label %188 unwind label %270

188:                                              ; preds = %186
  %189 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull @.str.2, i32 noundef %187)
          to label %190 unwind label %270

190:                                              ; preds = %188
  %191 = load i64, ptr %150, align 8, !tbaa !330
  %192 = icmp eq i64 %191, 0
  %193 = load ptr, ptr %153, align 8
  %194 = select i1 %192, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %193
  %195 = load i32, ptr %156, align 8, !tbaa !267
  %196 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef %194, i32 noundef %195)
          to label %197 unwind label %270

197:                                              ; preds = %190
  %198 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.3)
          to label %199 unwind label %270

199:                                              ; preds = %197
  %200 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull @.str.3, i32 noundef %198)
          to label %201 unwind label %270

201:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #26
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %11, ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %202 unwind label %272

202:                                              ; preds = %201
  %203 = load ptr, ptr %11, align 8, !tbaa !333
  %204 = load ptr, ptr %203, align 8, !tbaa !159
  %205 = getelementptr inbounds ptr, ptr %204, i64 13
  %206 = load ptr, ptr %205, align 8
  %207 = invoke noundef nonnull align 8 dereferenceable(8) ptr %206(ptr noundef nonnull align 8 dereferenceable(24) %203)
          to label %208 unwind label %274

208:                                              ; preds = %202
  %209 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %207)
          to label %210 unwind label %274

210:                                              ; preds = %208
  %211 = invoke noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %212 unwind label %274

212:                                              ; preds = %210
  %213 = icmp eq i32 %211, 0
  br i1 %213, label %214, label %304

214:                                              ; preds = %212
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %144, i32 noundef 0, i32 noundef -1)
          to label %215 unwind label %274

215:                                              ; preds = %214
  %216 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.4)
          to label %217 unwind label %274

217:                                              ; preds = %215
  %218 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull @.str.4, i32 noundef %216)
          to label %219 unwind label %274

219:                                              ; preds = %217
  %220 = load i64, ptr %150, align 8, !tbaa !330
  %221 = icmp eq i64 %220, 0
  %222 = load ptr, ptr %153, align 8
  %223 = select i1 %221, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %222
  %224 = load i32, ptr %156, align 8, !tbaa !267
  %225 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef %223, i32 noundef %224)
          to label %226 unwind label %274

226:                                              ; preds = %219
  %227 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.3)
          to label %228 unwind label %274

228:                                              ; preds = %226
  %229 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull @.str.3, i32 noundef %227)
          to label %230 unwind label %274

230:                                              ; preds = %228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #26
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %12, ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %144, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %231 unwind label %276

231:                                              ; preds = %230
  %232 = load ptr, ptr %12, align 8, !tbaa !333
  %233 = load ptr, ptr %232, align 8, !tbaa !159
  %234 = getelementptr inbounds ptr, ptr %233, i64 13
  %235 = load ptr, ptr %234, align 8
  %236 = invoke noundef nonnull align 8 dereferenceable(8) ptr %235(ptr noundef nonnull align 8 dereferenceable(24) %232)
          to label %237 unwind label %278

237:                                              ; preds = %231
  %238 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %236)
          to label %239 unwind label %278

239:                                              ; preds = %237
  %240 = invoke noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %241 unwind label %278

241:                                              ; preds = %239
  %242 = icmp eq i32 %240, 0
  br i1 %242, label %243, label %290

243:                                              ; preds = %241
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #26
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringERNS_21XPathExecutionContextE(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %60, ptr noundef nonnull align 8 dereferenceable(24) %8)
          to label %244 unwind label %280

244:                                              ; preds = %243
  %245 = load ptr, ptr %13, align 8, !tbaa !333
  %246 = load ptr, ptr %245, align 8, !tbaa !159
  %247 = getelementptr inbounds ptr, ptr %246, i64 13
  %248 = load ptr, ptr %247, align 8
  %249 = invoke noundef nonnull align 8 dereferenceable(8) ptr %248(ptr noundef nonnull align 8 dereferenceable(24) %245)
          to label %250 unwind label %282

250:                                              ; preds = %244
  %251 = invoke noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef nonnull align 8 dereferenceable(8) %249)
          to label %252 unwind label %282

252:                                              ; preds = %250
  %253 = load ptr, ptr %13, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %253)
          to label %257 unwind label %254

254:                                              ; preds = %252
  %255 = landingpad { ptr, i32 }
          catch ptr null
  %256 = extractvalue { ptr, i32 } %255, 0
  call void @__clang_call_terminate(ptr %256) #27
  unreachable

257:                                              ; preds = %252
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #26
  br label %290

258:                                              ; preds = %139
  %259 = landingpad { ptr, i32 }
          cleanup
  br label %496

260:                                              ; preds = %161, %159, %149, %147, %145
  %261 = landingpad { ptr, i32 }
          cleanup
  br label %487

262:                                              ; preds = %163
  %263 = landingpad { ptr, i32 }
          cleanup
  br label %485

264:                                              ; preds = %168
  %265 = landingpad { ptr, i32 }
          cleanup
  br label %483

266:                                              ; preds = %173
  %267 = landingpad { ptr, i32 }
          cleanup
  br label %481

268:                                              ; preds = %180, %174
  %269 = landingpad { ptr, i32 }
          cleanup
  br label %475

270:                                              ; preds = %199, %197, %190, %188, %186, %185, %318, %181
  %271 = landingpad { ptr, i32 }
          cleanup
  br label %473

272:                                              ; preds = %201
  %273 = landingpad { ptr, i32 }
          cleanup
  br label %316

274:                                              ; preds = %228, %226, %219, %217, %215, %214, %210, %208, %202
  %275 = landingpad { ptr, i32 }
          cleanup
  br label %310

276:                                              ; preds = %230
  %277 = landingpad { ptr, i32 }
          cleanup
  br label %302

278:                                              ; preds = %239, %237, %231
  %279 = landingpad { ptr, i32 }
          cleanup
  br label %296

280:                                              ; preds = %243
  %281 = landingpad { ptr, i32 }
          cleanup
  br label %288

282:                                              ; preds = %250, %244
  %283 = landingpad { ptr, i32 }
          cleanup
  %284 = load ptr, ptr %13, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %284)
          to label %288 unwind label %285

285:                                              ; preds = %282
  %286 = landingpad { ptr, i32 }
          catch ptr null
  %287 = extractvalue { ptr, i32 } %286, 0
  call void @__clang_call_terminate(ptr %287) #27
  unreachable

288:                                              ; preds = %282, %280
  %289 = phi { ptr, i32 } [ %281, %280 ], [ %283, %282 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #26
  br label %296

290:                                              ; preds = %257, %241
  %291 = load ptr, ptr %12, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %291)
          to label %295 unwind label %292

292:                                              ; preds = %290
  %293 = landingpad { ptr, i32 }
          catch ptr null
  %294 = extractvalue { ptr, i32 } %293, 0
  call void @__clang_call_terminate(ptr %294) #27
  unreachable

295:                                              ; preds = %290
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #26
  br label %304

296:                                              ; preds = %288, %278
  %297 = phi { ptr, i32 } [ %289, %288 ], [ %279, %278 ]
  %298 = load ptr, ptr %12, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %298)
          to label %302 unwind label %299

299:                                              ; preds = %296
  %300 = landingpad { ptr, i32 }
          catch ptr null
  %301 = extractvalue { ptr, i32 } %300, 0
  call void @__clang_call_terminate(ptr %301) #27
  unreachable

302:                                              ; preds = %296, %276
  %303 = phi { ptr, i32 } [ %277, %276 ], [ %297, %296 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #26
  br label %310

304:                                              ; preds = %295, %212
  %305 = load ptr, ptr %11, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %305)
          to label %309 unwind label %306

306:                                              ; preds = %304
  %307 = landingpad { ptr, i32 }
          catch ptr null
  %308 = extractvalue { ptr, i32 } %307, 0
  call void @__clang_call_terminate(ptr %308) #27
  unreachable

309:                                              ; preds = %304
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  br label %318

310:                                              ; preds = %302, %274
  %311 = phi { ptr, i32 } [ %303, %302 ], [ %275, %274 ]
  %312 = load ptr, ptr %11, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %312)
          to label %316 unwind label %313

313:                                              ; preds = %310
  %314 = landingpad { ptr, i32 }
          catch ptr null
  %315 = extractvalue { ptr, i32 } %314, 0
  call void @__clang_call_terminate(ptr %315) #27
  unreachable

316:                                              ; preds = %310, %272
  %317 = phi { ptr, i32 } [ %273, %272 ], [ %311, %310 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #26
  br label %473

318:                                              ; preds = %309, %183
  %319 = invoke noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(40) %10)
          to label %320 unwind label %270

320:                                              ; preds = %318
  %321 = icmp eq i32 %319, 0
  br i1 %321, label %322, label %352

322:                                              ; preds = %320
  %323 = load ptr, ptr %5, align 8, !tbaa !159
  %324 = getelementptr inbounds ptr, ptr %323, i64 5
  %325 = load ptr, ptr %324, align 8
  %326 = invoke noundef nonnull align 8 dereferenceable(36) ptr %325(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %327 unwind label %341

327:                                              ; preds = %322
  %328 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %326, i32 noundef 129, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %329 unwind label %343

329:                                              ; preds = %327
  %330 = load ptr, ptr %0, align 8, !tbaa !159
  %331 = getelementptr inbounds ptr, ptr %330, i64 32
  %332 = load ptr, ptr %331, align 8
  invoke void %332(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %328, ptr noundef null, ptr noundef null)
          to label %333 unwind label %343

333:                                              ; preds = %329
  %334 = load ptr, ptr %5, align 8, !tbaa !159
  %335 = getelementptr inbounds ptr, ptr %334, i64 6
  %336 = load ptr, ptr %335, align 8
  %337 = invoke noundef zeroext i1 %336(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %326)
          to label %352 unwind label %338

338:                                              ; preds = %333
  %339 = landingpad { ptr, i32 }
          catch ptr null
  %340 = extractvalue { ptr, i32 } %339, 0
  call void @__clang_call_terminate(ptr %340) #27
  unreachable

341:                                              ; preds = %322
  %342 = landingpad { ptr, i32 }
          cleanup
  br label %473

343:                                              ; preds = %329, %327
  %344 = landingpad { ptr, i32 }
          cleanup
  %345 = load ptr, ptr %5, align 8, !tbaa !159
  %346 = getelementptr inbounds ptr, ptr %345, i64 6
  %347 = load ptr, ptr %346, align 8
  %348 = invoke noundef zeroext i1 %347(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %326)
          to label %473 unwind label %349

349:                                              ; preds = %343
  %350 = landingpad { ptr, i32 }
          catch ptr null
  %351 = extractvalue { ptr, i32 } %350, 0
  call void @__clang_call_terminate(ptr %351) #27
  unreachable

352:                                              ; preds = %333, %320
  %353 = invoke noundef ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj(ptr noundef nonnull align 8 dereferenceable(40) %10, i32 noundef 0)
          to label %354 unwind label %369

354:                                              ; preds = %352
  %355 = load ptr, ptr %353, align 8, !tbaa !159
  %356 = getelementptr inbounds ptr, ptr %355, i64 4
  %357 = load ptr, ptr %356, align 8
  %358 = invoke noundef i32 %357(ptr noundef nonnull align 8 dereferenceable(8) %353)
          to label %359 unwind label %369

359:                                              ; preds = %354
  %360 = icmp eq i32 %358, 1
  br i1 %360, label %361, label %421

361:                                              ; preds = %359
  br i1 %4, label %362, label %373

362:                                              ; preds = %361
  %363 = load ptr, ptr %5, align 8, !tbaa !159
  %364 = getelementptr inbounds ptr, ptr %363, i64 9
  %365 = load ptr, ptr %364, align 8
  %366 = invoke noundef ptr %365(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %24)
          to label %367 unwind label %371

367:                                              ; preds = %362
  %368 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  store ptr %366, ptr %368, align 8, !tbaa !215
  br label %382

369:                                              ; preds = %354, %352
  %370 = landingpad { ptr, i32 }
          cleanup
  br label %473

371:                                              ; preds = %362
  %372 = landingpad { ptr, i32 }
          cleanup
  br label %405

373:                                              ; preds = %361
  %374 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %375 = load ptr, ptr %374, align 8, !tbaa !215
  %376 = load ptr, ptr %5, align 8, !tbaa !159
  %377 = getelementptr inbounds ptr, ptr %376, i64 11
  %378 = load ptr, ptr %377, align 8
  %379 = invoke noundef ptr %378(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(2064) %375, ptr noundef nonnull align 8 dereferenceable(36) %24)
          to label %382 unwind label %380

380:                                              ; preds = %373
  %381 = landingpad { ptr, i32 }
          cleanup
  br label %405

382:                                              ; preds = %373, %367
  %383 = phi ptr [ null, %367 ], [ %20, %373 ]
  %384 = phi ptr [ null, %367 ], [ %379, %373 ]
  %385 = phi ptr [ %366, %367 ], [ %379, %373 ]
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %14) #26
  invoke void @_ZN11xalanc_1_1017StylesheetHandlerC1ERNS_10StylesheetERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(592) %14, ptr noundef nonnull align 8 dereferenceable(1504) %385, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %386 unwind label %395

386:                                              ; preds = %382
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %15) #26
  invoke void @_ZN11xalanc_1_1019FormatterTreeWalkerC1ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %387 unwind label %397

387:                                              ; preds = %386
  invoke void @_ZN11xalanc_1_1017StylesheetHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(592) %14)
          to label %388 unwind label %399

388:                                              ; preds = %387
  invoke void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull %353)
          to label %389 unwind label %399

389:                                              ; preds = %388
  invoke void @_ZN11xalanc_1_1017StylesheetHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(592) %14)
          to label %390 unwind label %399

390:                                              ; preds = %389
  %391 = load ptr, ptr %385, align 8, !tbaa !159
  %392 = getelementptr inbounds ptr, ptr %391, i64 4
  %393 = load ptr, ptr %392, align 8
  invoke void %393(ptr noundef nonnull align 8 dereferenceable(1504) %385, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %394 unwind label %399

394:                                              ; preds = %390
  call void @_ZN11xalanc_1_1019FormatterTreeWalkerD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #26
  call void @_ZN11xalanc_1_1017StylesheetHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(592) %14) #26
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %14) #26
  br label %451

395:                                              ; preds = %382
  %396 = landingpad { ptr, i32 }
          cleanup
  br label %403

397:                                              ; preds = %386
  %398 = landingpad { ptr, i32 }
          cleanup
  br label %401

399:                                              ; preds = %390, %389, %388, %387
  %400 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1019FormatterTreeWalkerD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %15) #26
  br label %401

401:                                              ; preds = %399, %397
  %402 = phi { ptr, i32 } [ %400, %399 ], [ %398, %397 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %15) #26
  call void @_ZN11xalanc_1_1017StylesheetHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(592) %14) #26
  br label %403

403:                                              ; preds = %401, %395
  %404 = phi { ptr, i32 } [ %402, %401 ], [ %396, %395 ]
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %14) #26
  br label %405

405:                                              ; preds = %403, %380, %371
  %406 = phi ptr [ %383, %403 ], [ null, %371 ], [ null, %380 ]
  %407 = phi ptr [ %384, %403 ], [ null, %371 ], [ null, %380 ]
  %408 = phi { ptr, i32 } [ %404, %403 ], [ %372, %371 ], [ %381, %380 ]
  %409 = icmp ne ptr %406, null
  %410 = icmp ne ptr %407, null
  %411 = and i1 %409, %410
  br i1 %411, label %412, label %473

412:                                              ; preds = %405
  %413 = load ptr, ptr %407, align 8, !tbaa !159
  %414 = load ptr, ptr %413, align 8
  call void %414(ptr noundef nonnull align 8 dereferenceable(1504) %407) #26
  %415 = load ptr, ptr %406, align 8, !tbaa !159
  %416 = getelementptr inbounds ptr, ptr %415, i64 3
  %417 = load ptr, ptr %416, align 8
  invoke void %417(ptr noundef nonnull align 8 dereferenceable(8) %406, ptr noundef nonnull %407)
          to label %473 unwind label %418

418:                                              ; preds = %412
  %419 = landingpad { ptr, i32 }
          catch ptr null
  %420 = extractvalue { ptr, i32 } %419, 0
  call void @__clang_call_terminate(ptr %420) #27
  unreachable

421:                                              ; preds = %359
  %422 = load ptr, ptr %5, align 8, !tbaa !159
  %423 = getelementptr inbounds ptr, ptr %422, i64 5
  %424 = load ptr, ptr %423, align 8
  %425 = invoke noundef nonnull align 8 dereferenceable(36) ptr %424(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %426 unwind label %440

426:                                              ; preds = %421
  %427 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %425, i32 noundef 130, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %428 unwind label %442

428:                                              ; preds = %426
  %429 = load ptr, ptr %0, align 8, !tbaa !159
  %430 = getelementptr inbounds ptr, ptr %429, i64 32
  %431 = load ptr, ptr %430, align 8
  invoke void %431(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %427, ptr noundef null, ptr noundef null)
          to label %432 unwind label %442

432:                                              ; preds = %428
  %433 = load ptr, ptr %5, align 8, !tbaa !159
  %434 = getelementptr inbounds ptr, ptr %433, i64 6
  %435 = load ptr, ptr %434, align 8
  %436 = invoke noundef zeroext i1 %435(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %425)
          to label %451 unwind label %437

437:                                              ; preds = %432
  %438 = landingpad { ptr, i32 }
          catch ptr null
  %439 = extractvalue { ptr, i32 } %438, 0
  call void @__clang_call_terminate(ptr %439) #27
  unreachable

440:                                              ; preds = %421
  %441 = landingpad { ptr, i32 }
          cleanup
  br label %473

442:                                              ; preds = %428, %426
  %443 = landingpad { ptr, i32 }
          cleanup
  %444 = load ptr, ptr %5, align 8, !tbaa !159
  %445 = getelementptr inbounds ptr, ptr %444, i64 6
  %446 = load ptr, ptr %445, align 8
  %447 = invoke noundef zeroext i1 %446(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %425)
          to label %473 unwind label %448

448:                                              ; preds = %442
  %449 = landingpad { ptr, i32 }
          catch ptr null
  %450 = extractvalue { ptr, i32 } %449, 0
  call void @__clang_call_terminate(ptr %450) #27
  unreachable

451:                                              ; preds = %432, %394
  %452 = phi ptr [ %385, %394 ], [ null, %432 ]
  call void @_ZN11xalanc_1_1011NodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #26
  %453 = load ptr, ptr %9, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %453)
          to label %457 unwind label %454

454:                                              ; preds = %451
  %455 = landingpad { ptr, i32 }
          catch ptr null
  %456 = extractvalue { ptr, i32 } %455, 0
  call void @__clang_call_terminate(ptr %456) #27
  unreachable

457:                                              ; preds = %451
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @_ZN11xalanc_1_1028XPathExecutionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(432) %8) #26
  call void @llvm.lifetime.end.p0(i64 432, ptr nonnull %8) #26
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #26
  %458 = load ptr, ptr %5, align 8, !tbaa !159
  %459 = getelementptr inbounds ptr, ptr %458, i64 6
  %460 = load ptr, ptr %459, align 8
  %461 = invoke noundef zeroext i1 %460(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %144)
          to label %465 unwind label %462

462:                                              ; preds = %457
  %463 = landingpad { ptr, i32 }
          catch ptr null
  %464 = extractvalue { ptr, i32 } %463, 0
  call void @__clang_call_terminate(ptr %464) #27
  unreachable

465:                                              ; preds = %457
  %466 = load ptr, ptr %5, align 8, !tbaa !159
  %467 = getelementptr inbounds ptr, ptr %466, i64 6
  %468 = load ptr, ptr %467, align 8
  %469 = invoke noundef zeroext i1 %468(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %640 unwind label %470

470:                                              ; preds = %465
  %471 = landingpad { ptr, i32 }
          catch ptr null
  %472 = extractvalue { ptr, i32 } %471, 0
  call void @__clang_call_terminate(ptr %472) #27
  unreachable

473:                                              ; preds = %343, %440, %442, %405, %412, %341, %369, %316, %270
  %474 = phi { ptr, i32 } [ %271, %270 ], [ %317, %316 ], [ %370, %369 ], [ %342, %341 ], [ %408, %412 ], [ %408, %405 ], [ %441, %440 ], [ %443, %442 ], [ %344, %343 ]
  call void @_ZN11xalanc_1_1011NodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #26
  br label %475

475:                                              ; preds = %473, %268
  %476 = phi { ptr, i32 } [ %474, %473 ], [ %269, %268 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #26
  %477 = load ptr, ptr %9, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %477)
          to label %481 unwind label %478

478:                                              ; preds = %475
  %479 = landingpad { ptr, i32 }
          catch ptr null
  %480 = extractvalue { ptr, i32 } %479, 0
  call void @__clang_call_terminate(ptr %480) #27
  unreachable

481:                                              ; preds = %475, %266
  %482 = phi { ptr, i32 } [ %267, %266 ], [ %476, %475 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #26
  call void @_ZN11xalanc_1_1028XPathExecutionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(432) %8) #26
  br label %483

483:                                              ; preds = %481, %264
  %484 = phi { ptr, i32 } [ %482, %481 ], [ %265, %264 ]
  call void @llvm.lifetime.end.p0(i64 432, ptr nonnull %8) #26
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #26
  br label %485

485:                                              ; preds = %483, %262
  %486 = phi { ptr, i32 } [ %484, %483 ], [ %263, %262 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #26
  br label %487

487:                                              ; preds = %260, %485
  %488 = phi { ptr, i32 } [ %486, %485 ], [ %261, %260 ]
  %489 = load ptr, ptr %5, align 8, !tbaa !159
  %490 = getelementptr inbounds ptr, ptr %489, i64 6
  %491 = load ptr, ptr %490, align 8
  %492 = invoke noundef zeroext i1 %491(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %144)
          to label %496 unwind label %493

493:                                              ; preds = %487
  %494 = landingpad { ptr, i32 }
          catch ptr null
  %495 = extractvalue { ptr, i32 } %494, 0
  call void @__clang_call_terminate(ptr %495) #27
  unreachable

496:                                              ; preds = %89, %107, %93, %91, %130, %128, %487, %258
  %497 = phi { ptr, i32 } [ %90, %89 ], [ %94, %93 ], [ %92, %91 ], [ %108, %107 ], [ %129, %128 ], [ %131, %130 ], [ %259, %258 ], [ %488, %487 ]
  %498 = load ptr, ptr %5, align 8, !tbaa !159
  %499 = getelementptr inbounds ptr, ptr %498, i64 6
  %500 = load ptr, ptr %499, align 8
  %501 = invoke noundef zeroext i1 %500(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %505 unwind label %502

502:                                              ; preds = %496
  %503 = landingpad { ptr, i32 }
          catch ptr null
  %504 = extractvalue { ptr, i32 } %503, 0
  call void @__clang_call_terminate(ptr %504) #27
  unreachable

505:                                              ; preds = %496, %87
  %506 = phi { ptr, i32 } [ %88, %87 ], [ %497, %496 ]
  %507 = extractvalue { ptr, i32 } %506, 0
  %508 = extractvalue { ptr, i32 } %506, 1
  br label %658

509:                                              ; preds = %53
  %510 = load ptr, ptr %2, align 8, !tbaa !159
  %511 = getelementptr inbounds ptr, ptr %510, i64 4
  %512 = load ptr, ptr %511, align 8
  %513 = invoke noundef i32 %512(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %514 unwind label %533

514:                                              ; preds = %509
  %515 = icmp eq i32 %513, 9
  br i1 %515, label %521, label %516

516:                                              ; preds = %514
  %517 = load ptr, ptr %2, align 8, !tbaa !159
  %518 = getelementptr inbounds ptr, ptr %517, i64 12
  %519 = load ptr, ptr %518, align 8
  %520 = invoke noundef ptr %519(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %521 unwind label %533

521:                                              ; preds = %514, %516
  %522 = phi ptr [ %520, %516 ], [ %2, %514 ]
  %523 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %524 = load i32, ptr %523, align 8, !tbaa !267
  %525 = icmp eq i32 %524, 0
  br i1 %525, label %526, label %553

526:                                              ; preds = %521
  %527 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  %528 = load ptr, ptr %527, align 8, !tbaa !252
  %529 = load ptr, ptr %528, align 8, !tbaa !159
  %530 = getelementptr inbounds ptr, ptr %529, i64 5
  %531 = load ptr, ptr %530, align 8
  %532 = invoke noundef nonnull align 8 dereferenceable(36) ptr %531(ptr noundef nonnull align 8 dereferenceable(8) %528, ptr noundef %522)
          to label %553 unwind label %537

533:                                              ; preds = %563, %516, %509
  %534 = landingpad { ptr, i32 }
          cleanup
  %535 = extractvalue { ptr, i32 } %534, 0
  %536 = extractvalue { ptr, i32 } %534, 1
  br label %623

537:                                              ; preds = %553, %526
  %538 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %539 = extractvalue { ptr, i32 } %538, 0
  %540 = extractvalue { ptr, i32 } %538, 1
  %541 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #26
  %542 = icmp eq i32 %540, %541
  br i1 %542, label %543, label %623

543:                                              ; preds = %537
  %544 = tail call ptr @__cxa_begin_catch(ptr %539) #26
  invoke void @__cxa_end_catch()
          to label %545 unwind label %555

545:                                              ; preds = %553, %543
  br i1 %4, label %546, label %563

546:                                              ; preds = %545
  %547 = load ptr, ptr %5, align 8, !tbaa !159
  %548 = getelementptr inbounds ptr, ptr %547, i64 9
  %549 = load ptr, ptr %548, align 8
  %550 = invoke noundef ptr %549(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %551 unwind label %559

551:                                              ; preds = %546
  %552 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  store ptr %550, ptr %552, align 8, !tbaa !215
  br label %567

553:                                              ; preds = %526, %521
  %554 = phi ptr [ %3, %521 ], [ %532, %526 ]
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %554, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %545 unwind label %537

555:                                              ; preds = %543
  %556 = landingpad { ptr, i32 }
          cleanup
  %557 = extractvalue { ptr, i32 } %556, 0
  %558 = extractvalue { ptr, i32 } %556, 1
  br label %623

559:                                              ; preds = %546
  %560 = landingpad { ptr, i32 }
          cleanup
  %561 = extractvalue { ptr, i32 } %560, 0
  %562 = extractvalue { ptr, i32 } %560, 1
  br label %623

563:                                              ; preds = %545
  %564 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %565 = load ptr, ptr %564, align 8, !tbaa !215
  %566 = invoke noundef ptr @_ZN11xalanc_1_1010Stylesheet6createERN11xercesc_2_713MemoryManagerERNS_14StylesheetRootERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(2064) %565, ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %567 unwind label %533

567:                                              ; preds = %563, %551
  %568 = phi ptr [ null, %551 ], [ %566, %563 ]
  %569 = phi ptr [ null, %551 ], [ %20, %563 ]
  %570 = phi ptr [ %550, %551 ], [ %566, %563 ]
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %16) #26
  invoke void @_ZN11xalanc_1_1017StylesheetHandlerC1ERNS_10StylesheetERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(592) %16, ptr noundef nonnull align 8 dereferenceable(1504) %570, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %571 unwind label %601

571:                                              ; preds = %567
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #26
  %572 = load ptr, ptr %5, align 8, !tbaa !159
  %573 = getelementptr inbounds ptr, ptr %572, i64 13
  %574 = load ptr, ptr %573, align 8
  invoke void %574(ptr dead_on_unwind nonnull writable sret(%"class.xalanc_1_10::XalanAutoPtr.70") align 8 %17, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %575 unwind label %603

575:                                              ; preds = %571
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %18) #26
  %576 = load ptr, ptr %17, align 8, !tbaa !335
  %577 = getelementptr inbounds %"class.xercesc_2_7::XMLURL", ptr %576, i64 0, i32 10
  %578 = load ptr, ptr %577, align 8, !tbaa !337
  %579 = icmp eq ptr %578, null
  br i1 %579, label %580, label %581

580:                                              ; preds = %575
  invoke void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81) %576)
          to label %581 unwind label %605

581:                                              ; preds = %580, %575
  %582 = load ptr, ptr %577, align 8, !tbaa !337
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %18, ptr noundef %582, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %583 unwind label %605

583:                                              ; preds = %581
  %584 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 18
  %585 = load ptr, ptr %584, align 8, !tbaa !340
  %586 = load ptr, ptr %585, align 8, !tbaa !159
  %587 = getelementptr inbounds ptr, ptr %586, i64 7
  %588 = load ptr, ptr %587, align 8
  invoke void %588(ptr noundef nonnull align 8 dereferenceable(8) %585, ptr noundef nonnull align 8 dereferenceable(41) %18, ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %589 unwind label %607

589:                                              ; preds = %583
  %590 = load ptr, ptr %570, align 8, !tbaa !159
  %591 = getelementptr inbounds ptr, ptr %590, i64 4
  %592 = load ptr, ptr %591, align 8
  invoke void %592(ptr noundef nonnull align 8 dereferenceable(1504) %570, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %593 unwind label %607

593:                                              ; preds = %589
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %18) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #26
  %594 = load ptr, ptr %17, align 8, !tbaa !335
  %595 = icmp eq ptr %594, null
  br i1 %595, label %600, label %596

596:                                              ; preds = %593
  %597 = load ptr, ptr %594, align 8, !tbaa !159
  %598 = getelementptr inbounds ptr, ptr %597, i64 1
  %599 = load ptr, ptr %598, align 8
  call void %599(ptr noundef nonnull align 8 dereferenceable(81) %594) #26
  br label %600

600:                                              ; preds = %593, %596
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #26
  call void @_ZN11xalanc_1_1017StylesheetHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(592) %16) #26
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %16) #26
  br label %640

601:                                              ; preds = %567
  %602 = landingpad { ptr, i32 }
          cleanup
  br label %619

603:                                              ; preds = %571
  %604 = landingpad { ptr, i32 }
          cleanup
  br label %617

605:                                              ; preds = %580, %581
  %606 = landingpad { ptr, i32 }
          cleanup
  br label %609

607:                                              ; preds = %589, %583
  %608 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %18) #26
  br label %609

609:                                              ; preds = %607, %605
  %610 = phi { ptr, i32 } [ %608, %607 ], [ %606, %605 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %18) #26
  %611 = load ptr, ptr %17, align 8, !tbaa !335
  %612 = icmp eq ptr %611, null
  br i1 %612, label %617, label %613

613:                                              ; preds = %609
  %614 = load ptr, ptr %611, align 8, !tbaa !159
  %615 = getelementptr inbounds ptr, ptr %614, i64 1
  %616 = load ptr, ptr %615, align 8
  call void %616(ptr noundef nonnull align 8 dereferenceable(81) %611) #26
  br label %617

617:                                              ; preds = %613, %609, %603
  %618 = phi { ptr, i32 } [ %604, %603 ], [ %610, %609 ], [ %610, %613 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #26
  call void @_ZN11xalanc_1_1017StylesheetHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(592) %16) #26
  br label %619

619:                                              ; preds = %617, %601
  %620 = phi { ptr, i32 } [ %618, %617 ], [ %602, %601 ]
  %621 = extractvalue { ptr, i32 } %620, 0
  %622 = extractvalue { ptr, i32 } %620, 1
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %16) #26
  br label %623

623:                                              ; preds = %619, %559, %555, %537, %533
  %624 = phi ptr [ %568, %619 ], [ null, %559 ], [ null, %533 ], [ null, %555 ], [ null, %537 ]
  %625 = phi ptr [ %569, %619 ], [ null, %559 ], [ null, %533 ], [ null, %555 ], [ null, %537 ]
  %626 = phi i32 [ %622, %619 ], [ %562, %559 ], [ %536, %533 ], [ %558, %555 ], [ %540, %537 ]
  %627 = phi ptr [ %621, %619 ], [ %561, %559 ], [ %535, %533 ], [ %557, %555 ], [ %539, %537 ]
  %628 = icmp ne ptr %625, null
  %629 = icmp ne ptr %624, null
  %630 = and i1 %629, %628
  br i1 %630, label %631, label %658

631:                                              ; preds = %623
  %632 = load ptr, ptr %624, align 8, !tbaa !159
  %633 = load ptr, ptr %632, align 8
  call void %633(ptr noundef nonnull align 8 dereferenceable(1504) %624) #26
  %634 = load ptr, ptr %625, align 8, !tbaa !159
  %635 = getelementptr inbounds ptr, ptr %634, i64 3
  %636 = load ptr, ptr %635, align 8
  invoke void %636(ptr noundef nonnull align 8 dereferenceable(8) %625, ptr noundef nonnull %624)
          to label %658 unwind label %637

637:                                              ; preds = %631
  %638 = landingpad { ptr, i32 }
          catch ptr null
  %639 = extractvalue { ptr, i32 } %638, 0
  call void @__clang_call_terminate(ptr %639) #27
  unreachable

640:                                              ; preds = %600, %465
  %641 = phi ptr [ %570, %600 ], [ %452, %465 ]
  %642 = load ptr, ptr %5, align 8, !tbaa !159
  %643 = getelementptr inbounds ptr, ptr %642, i64 6
  %644 = load ptr, ptr %643, align 8
  %645 = invoke noundef zeroext i1 %644(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %649 unwind label %646

646:                                              ; preds = %640
  %647 = landingpad { ptr, i32 }
          catch ptr null
  %648 = extractvalue { ptr, i32 } %647, 0
  call void @__clang_call_terminate(ptr %648) #27
  unreachable

649:                                              ; preds = %640
  %650 = load ptr, ptr %5, align 8, !tbaa !159
  %651 = getelementptr inbounds ptr, ptr %650, i64 6
  %652 = load ptr, ptr %651, align 8
  %653 = invoke noundef zeroext i1 %652(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %24)
          to label %657 unwind label %654

654:                                              ; preds = %649
  %655 = landingpad { ptr, i32 }
          catch ptr null
  %656 = extractvalue { ptr, i32 } %655, 0
  call void @__clang_call_terminate(ptr %656) #27
  unreachable

657:                                              ; preds = %649
  ret ptr %641

658:                                              ; preds = %83, %505, %631, %623
  %659 = phi i32 [ %86, %83 ], [ %508, %505 ], [ %626, %631 ], [ %626, %623 ]
  %660 = phi ptr [ %85, %83 ], [ %507, %505 ], [ %627, %631 ], [ %627, %623 ]
  %661 = load ptr, ptr %5, align 8, !tbaa !159
  %662 = getelementptr inbounds ptr, ptr %661, i64 6
  %663 = load ptr, ptr %662, align 8
  %664 = invoke noundef zeroext i1 %663(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %28)
          to label %668 unwind label %665

665:                                              ; preds = %658
  %666 = landingpad { ptr, i32 }
          catch ptr null
  %667 = extractvalue { ptr, i32 } %666, 0
  call void @__clang_call_terminate(ptr %667) #27
  unreachable

668:                                              ; preds = %79, %658
  %669 = phi i32 [ %82, %79 ], [ %659, %658 ]
  %670 = phi ptr [ %81, %79 ], [ %660, %658 ]
  %671 = load ptr, ptr %5, align 8, !tbaa !159
  %672 = getelementptr inbounds ptr, ptr %671, i64 6
  %673 = load ptr, ptr %672, align 8
  %674 = invoke noundef zeroext i1 %673(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %24)
          to label %678 unwind label %675

675:                                              ; preds = %668
  %676 = landingpad { ptr, i32 }
          catch ptr null
  %677 = extractvalue { ptr, i32 } %676, 0
  call void @__clang_call_terminate(ptr %677) #27
  unreachable

678:                                              ; preds = %668
  %679 = insertvalue { ptr, i32 } poison, ptr %670, 0
  %680 = insertvalue { ptr, i32 } %679, i32 %669, 1
  resume { ptr, i32 } %680
}

declare void @_ZNK11xalanc_1_1014StylesheetRoot7processEPNS_9XalanNodeERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef, ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = load ptr, ptr %0, align 8, !tbaa !159
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %57, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !215
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %42

14:                                               ; preds = %10
  %15 = load ptr, ptr %3, align 8, !tbaa !159
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 126)
          to label %20 unwind label %32

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 32
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef null, ptr noundef null)
          to label %24 unwind label %32

24:                                               ; preds = %20
  %25 = load ptr, ptr %3, align 8, !tbaa !159
  %26 = getelementptr inbounds ptr, ptr %25, i64 24
  %27 = load ptr, ptr %26, align 8
  %28 = invoke noundef zeroext i1 %27(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %42 unwind label %29

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #27
  unreachable

32:                                               ; preds = %20, %14
  %33 = landingpad { ptr, i32 }
          cleanup
  %34 = load ptr, ptr %3, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 24
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef zeroext i1 %36(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %41 unwind label %38

38:                                               ; preds = %32
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  tail call void @__clang_call_terminate(ptr %40) #27
  unreachable

41:                                               ; preds = %32
  resume { ptr, i32 } %33

42:                                               ; preds = %24, %10
  %43 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %2, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !274
  %45 = icmp eq ptr %44, null
  br i1 %45, label %52, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !276
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr %51, ptr %47, align 8, !tbaa !276
  br label %52

52:                                               ; preds = %50, %46, %42
  %53 = load ptr, ptr %11, align 8, !tbaa !215
  %54 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %53, i64 0, i32 14
  %55 = load i8, ptr %54, align 8, !tbaa !281, !range !327, !noundef !328
  %56 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  store i8 %55, ptr %56, align 8, !tbaa !261
  tail call void @_ZNK11xalanc_1_1014StylesheetRoot7processEPNS_9XalanNodeERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(2064) %53, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(112) %2, ptr noundef nonnull align 8 dereferenceable(24) %3)
  br label %57

57:                                               ; preds = %52, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #26
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !330
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %2, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %13 = load ptr, ptr %0, align 8, !tbaa !159
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %17 unwind label %18

17:                                               ; preds = %3
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #26
  ret ptr %16

18:                                               ; preds = %3
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %4) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #26
  resume { ptr, i32 } %19
}

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %4 = alloca %"class.xalanc_1_10::StylesheetHandler", align 8
  %5 = alloca %"class.xalanc_1_10::FormatterTreeWalker", align 8
  %6 = load ptr, ptr %1, align 8, !tbaa !159
  %7 = getelementptr inbounds ptr, ptr %6, i64 5
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(41) %1), !prof !264
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !341
  %12 = icmp eq ptr %9, null
  %13 = icmp eq ptr %11, null
  %14 = and i1 %12, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = select i1 %14, i1 %17, i1 false, !prof !239
  br i1 %18, label %133, label %19, !prof !239

19:                                               ; preds = %3
  %20 = load ptr, ptr %2, align 8, !tbaa !159
  %21 = getelementptr inbounds ptr, ptr %20, i64 5
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %2), !prof !344
  %24 = load ptr, ptr %2, align 8, !tbaa !159
  %25 = getelementptr inbounds ptr, ptr %24, i64 10
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(64) %1)
          to label %28 unwind label %57, !prof !345

28:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 592, ptr nonnull %4) #26
  invoke void @_ZN11xalanc_1_1017StylesheetHandlerC1ERNS_10StylesheetERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(592) %4, ptr noundef nonnull align 8 dereferenceable(1504) %27, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %29 unwind label %59, !prof !158

29:                                               ; preds = %28
  br i1 %13, label %93, label %30, !prof !158

30:                                               ; preds = %29
  %31 = load ptr, ptr %11, align 8, !tbaa !159
  %32 = getelementptr inbounds ptr, ptr %31, i64 4
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef i32 %33(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %35 unwind label %61

35:                                               ; preds = %30
  %36 = and i32 %34, -9
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %74, label %38

38:                                               ; preds = %35
  %39 = load ptr, ptr %2, align 8, !tbaa !159
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef nonnull align 8 dereferenceable(36) ptr %41(ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %43 unwind label %63

43:                                               ; preds = %38
  %44 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %42, i32 noundef 127)
          to label %45 unwind label %65

45:                                               ; preds = %43
  %46 = load ptr, ptr %0, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 32
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %44, ptr noundef null, ptr noundef null)
          to label %49 unwind label %65

49:                                               ; preds = %45
  %50 = load ptr, ptr %2, align 8, !tbaa !159
  %51 = getelementptr inbounds ptr, ptr %50, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef zeroext i1 %52(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %107 unwind label %54

54:                                               ; preds = %49
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #27
  unreachable

57:                                               ; preds = %19
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %123

59:                                               ; preds = %28
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %121

61:                                               ; preds = %74, %30
  %62 = landingpad { ptr, i32 }
          cleanup
  br label %119

63:                                               ; preds = %38
  %64 = landingpad { ptr, i32 }
          cleanup
  br label %119

65:                                               ; preds = %45, %43
  %66 = landingpad { ptr, i32 }
          cleanup
  %67 = load ptr, ptr %2, align 8, !tbaa !159
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef zeroext i1 %69(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %119 unwind label %71

71:                                               ; preds = %65
  %72 = landingpad { ptr, i32 }
          catch ptr null
  %73 = extractvalue { ptr, i32 } %72, 0
  call void @__clang_call_terminate(ptr %73) #27
  unreachable

74:                                               ; preds = %35
  %75 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %23, i32 noundef 135)
          to label %76 unwind label %61

76:                                               ; preds = %74
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  %77 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %2, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !329
  invoke void @_ZN11xalanc_1_1019FormatterTreeWalkerC1ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %78)
          to label %79 unwind label %83

79:                                               ; preds = %76
  %80 = icmp eq i32 %34, 9
  br i1 %80, label %81, label %87

81:                                               ; preds = %79
  %82 = invoke noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %11)
          to label %90 unwind label %85

83:                                               ; preds = %76
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %91

85:                                               ; preds = %89, %88, %87, %81
  %86 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1019FormatterTreeWalkerD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  br label %91

87:                                               ; preds = %79
  invoke void @_ZN11xalanc_1_1017StylesheetHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(592) %4)
          to label %88 unwind label %85

88:                                               ; preds = %87
  invoke void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %11)
          to label %89 unwind label %85

89:                                               ; preds = %88
  invoke void @_ZN11xalanc_1_1017StylesheetHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(592) %4)
          to label %90 unwind label %85

90:                                               ; preds = %89, %81
  call void @_ZN11xalanc_1_1019FormatterTreeWalkerD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  br label %107

91:                                               ; preds = %85, %83
  %92 = phi { ptr, i32 } [ %86, %85 ], [ %84, %83 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  br label %119

93:                                               ; preds = %29
  br i1 %12, label %101, label %94, !prof !239

94:                                               ; preds = %93
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %23, i32 noundef 0, i32 noundef -1)
          to label %95 unwind label %99, !prof !158

95:                                               ; preds = %94
  %96 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %9)
          to label %97 unwind label %99, !prof !158

97:                                               ; preds = %95
  %98 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %23, ptr noundef nonnull %9, i32 noundef %96)
          to label %101 unwind label %99, !prof !158

99:                                               ; preds = %97, %95, %94, %107, %101
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %119

101:                                              ; preds = %97, %93
  %102 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 18
  %103 = load ptr, ptr %102, align 8, !tbaa !340
  %104 = load ptr, ptr %103, align 8, !tbaa !159
  %105 = getelementptr inbounds ptr, ptr %104, i64 7
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %107 unwind label %99, !prof !346

107:                                              ; preds = %101, %49, %90
  %108 = load ptr, ptr %27, align 8, !tbaa !159
  %109 = getelementptr inbounds ptr, ptr %108, i64 4
  %110 = load ptr, ptr %109, align 8
  invoke void %110(ptr noundef nonnull align 8 dereferenceable(2064) %27, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %111 unwind label %99, !prof !347

111:                                              ; preds = %107
  call void @_ZN11xalanc_1_1017StylesheetHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(592) %4) #26
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %4) #26
  %112 = load ptr, ptr %2, align 8, !tbaa !159
  %113 = getelementptr inbounds ptr, ptr %112, i64 6
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef zeroext i1 %114(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %23)
          to label %133 unwind label %116, !prof !348

116:                                              ; preds = %111
  %117 = landingpad { ptr, i32 }
          catch ptr null
  %118 = extractvalue { ptr, i32 } %117, 0
  call void @__clang_call_terminate(ptr %118) #27
  unreachable

119:                                              ; preds = %63, %65, %61, %91, %99
  %120 = phi { ptr, i32 } [ %100, %99 ], [ %92, %91 ], [ %62, %61 ], [ %64, %63 ], [ %66, %65 ]
  call void @_ZN11xalanc_1_1017StylesheetHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(592) %4) #26
  br label %121

121:                                              ; preds = %119, %59
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %60, %59 ]
  call void @llvm.lifetime.end.p0(i64 592, ptr nonnull %4) #26
  br label %123

123:                                              ; preds = %57, %121
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %58, %57 ]
  %125 = load ptr, ptr %2, align 8, !tbaa !159
  %126 = getelementptr inbounds ptr, ptr %125, i64 6
  %127 = load ptr, ptr %126, align 8
  %128 = invoke noundef zeroext i1 %127(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(36) %23)
          to label %132 unwind label %129

129:                                              ; preds = %123
  %130 = landingpad { ptr, i32 }
          catch ptr null
  %131 = extractvalue { ptr, i32 } %130, 0
  call void @__clang_call_terminate(ptr %131) #27
  unreachable

132:                                              ; preds = %123
  resume { ptr, i32 } %124

133:                                              ; preds = %111, %3
  %134 = phi ptr [ null, %3 ], [ %27, %111 ]
  ret ptr %134
}

declare void @_ZN11xalanc_1_1017StylesheetHandlerC1ERNS_10StylesheetERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(592), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN11xalanc_1_1019FormatterTreeWalkerC1ERNS_17FormatterListenerERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1010TreeWalker8traverseEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017StylesheetHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

declare void @_ZN11xalanc_1_1010TreeWalker15traverseSubtreeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1017StylesheetHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019FormatterTreeWalkerD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017StylesheetHandlerD1Ev(ptr noundef nonnull align 8 dereferenceable(592)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl22getSourceTreeFromInputERKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTInputSource", ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !341
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %70, !prof !239

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  %9 = getelementptr inbounds ptr, ptr %8, i64 5
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(16) %7)
  %12 = load ptr, ptr %1, align 8, !tbaa !159
  %13 = getelementptr inbounds ptr, ptr %12, i64 5
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %16 unwind label %21

16:                                               ; preds = %6
  %17 = icmp eq ptr %15, null
  br i1 %17, label %37, label %18

18:                                               ; preds = %16
  %19 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %15)
          to label %20 unwind label %23

20:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef nonnull %15, i32 noundef %19, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %37 unwind label %23

21:                                               ; preds = %6
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %60

23:                                               ; preds = %20, %18
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %25 = extractvalue { ptr, i32 } %24, 1
  %26 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #26
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %60

28:                                               ; preds = %23
  %29 = extractvalue { ptr, i32 } %24, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #26
  %31 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull %15)
          to label %32 unwind label %33

32:                                               ; preds = %28
  invoke void @__cxa_end_catch()
          to label %37 unwind label %35

33:                                               ; preds = %28
  %34 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %60 unwind label %72

35:                                               ; preds = %32
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %60

37:                                               ; preds = %20, %32, %16
  %38 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 18
  %39 = load ptr, ptr %38, align 8, !tbaa !340
  %40 = load ptr, ptr %39, align 8, !tbaa !159
  %41 = getelementptr inbounds ptr, ptr %40, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %44 unwind label %58

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  %46 = load ptr, ptr %45, align 8, !tbaa !252
  %47 = load ptr, ptr %46, align 8, !tbaa !159
  %48 = getelementptr inbounds ptr, ptr %47, i64 4
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef %43)
          to label %50 unwind label %58

50:                                               ; preds = %44
  %51 = load ptr, ptr %7, align 8, !tbaa !159
  %52 = getelementptr inbounds ptr, ptr %51, i64 6
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef zeroext i1 %53(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %70 unwind label %55

55:                                               ; preds = %50
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #27
  unreachable

58:                                               ; preds = %44, %37
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %21, %23, %58, %33, %35
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %24, %23 ], [ %22, %21 ], [ %36, %35 ], [ %34, %33 ]
  %62 = load ptr, ptr %7, align 8, !tbaa !159
  %63 = getelementptr inbounds ptr, ptr %62, i64 6
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef zeroext i1 %64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %69 unwind label %66

66:                                               ; preds = %60
  %67 = landingpad { ptr, i32 }
          catch ptr null
  %68 = extractvalue { ptr, i32 } %67, 0
  tail call void @__clang_call_terminate(ptr %68) #27
  unreachable

69:                                               ; preds = %60
  resume { ptr, i32 } %61

70:                                               ; preds = %50, %2
  %71 = phi ptr [ %4, %2 ], [ %43, %50 ]
  ret ptr %71

72:                                               ; preds = %33
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #27
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014XSLTEngineImpl21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

declare noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local noundef ptr @_ZThn8_NK11xalanc_1_1014XSLTEngineImpl21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #11 align 2 !prof !349 {
  %3 = getelementptr inbounds i8, ptr %0, i64 448
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XSLTEngineImpl6getURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #12 align 2 !prof !156 {
  ret ptr @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZThn8_NK11xalanc_1_1014XSLTEngineImpl6getURIEv(ptr nocapture readnone %0) unnamed_addr #12 align 2 !prof !156 {
  ret ptr @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl8parseXMLERKNS_14XalanDOMStringEPN11xercesc_2_715DocumentHandlerEPNS_13XalanDocumentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %6 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !252
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %125

14:                                               ; preds = %4
  %15 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 18
  %16 = load ptr, ptr %15, align 8, !tbaa !340
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 14
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %48

22:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %5) #26
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !330
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %27
  %29 = load ptr, ptr %15, align 8, !tbaa !340
  %30 = load ptr, ptr %29, align 8, !tbaa !159
  %31 = getelementptr inbounds ptr, ptr %30, i64 4
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef nonnull align 8 dereferenceable(8) ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29)
  call void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %5, ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(8) %33)
  %34 = icmp eq ptr %2, null
  %35 = load ptr, ptr %15, align 8, !tbaa !340
  %36 = load ptr, ptr %35, align 8, !tbaa !159
  br i1 %34, label %40, label %37

37:                                               ; preds = %22
  %38 = getelementptr inbounds ptr, ptr %36, i64 7
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(41) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %44 unwind label %46

40:                                               ; preds = %22
  %41 = getelementptr inbounds ptr, ptr %36, i64 6
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(41) %5, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %44 unwind label %46

44:                                               ; preds = %40, %37
  %45 = phi ptr [ %3, %37 ], [ %43, %40 ]
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #26
  br label %115

46:                                               ; preds = %40, %37
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %5) #26
  br label %123

48:                                               ; preds = %14
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %50 = load i64, ptr %49, align 8, !tbaa !330
  %51 = icmp eq i64 %50, 0
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %53 = load ptr, ptr %52, align 8
  %54 = select i1 %51, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %53
  %55 = load ptr, ptr %20, align 8, !tbaa !159
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef null, ptr noundef %54)
  %59 = icmp eq ptr %58, null
  br i1 %59, label %73, label %60

60:                                               ; preds = %48
  %61 = icmp eq ptr %2, null
  %62 = load ptr, ptr %15, align 8, !tbaa !340
  %63 = load ptr, ptr %62, align 8, !tbaa !159
  br i1 %61, label %67, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds ptr, ptr %63, i64 7
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(41) %58, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %103 unwind label %71

67:                                               ; preds = %60
  %68 = getelementptr inbounds ptr, ptr %63, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(8) %62, ptr noundef nonnull align 8 dereferenceable(41) %58, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %103 unwind label %71

71:                                               ; preds = %67, %64
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %109

73:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %6) #26
  %74 = load i64, ptr %49, align 8, !tbaa !330
  %75 = load ptr, ptr %52, align 8
  %76 = load ptr, ptr %15, align 8, !tbaa !340
  %77 = load ptr, ptr %76, align 8, !tbaa !159
  %78 = getelementptr inbounds ptr, ptr %77, i64 4
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef nonnull align 8 dereferenceable(8) ptr %79(ptr noundef nonnull align 8 dereferenceable(8) %76)
          to label %81 unwind label %97

81:                                               ; preds = %73
  %82 = icmp eq i64 %74, 0
  %83 = select i1 %82, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %75
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPKtRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef %83, ptr noundef nonnull align 8 dereferenceable(8) %80)
          to label %84 unwind label %97

84:                                               ; preds = %81
  %85 = icmp eq ptr %2, null
  %86 = load ptr, ptr %15, align 8, !tbaa !340
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  br i1 %85, label %91, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds ptr, ptr %87, i64 7
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %95 unwind label %99

91:                                               ; preds = %84
  %92 = getelementptr inbounds ptr, ptr %87, i64 6
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef nonnull align 8 dereferenceable(41) %6, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
          to label %95 unwind label %99

95:                                               ; preds = %91, %88
  %96 = phi ptr [ %3, %88 ], [ %94, %91 ]
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #26
  br label %103

97:                                               ; preds = %81, %73
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %101

99:                                               ; preds = %91, %88
  %100 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %6) #26
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi { ptr, i32 } [ %100, %99 ], [ %98, %97 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %6) #26
  br label %109

103:                                              ; preds = %67, %64, %95
  %104 = phi ptr [ %96, %95 ], [ %3, %64 ], [ %70, %67 ]
  br i1 %59, label %115, label %105

105:                                              ; preds = %103
  %106 = load ptr, ptr %58, align 8, !tbaa !159
  %107 = getelementptr inbounds ptr, ptr %106, i64 1
  %108 = load ptr, ptr %107, align 8
  call void %108(ptr noundef nonnull align 8 dereferenceable(41) %58) #26
  br label %115

109:                                              ; preds = %101, %71
  %110 = phi { ptr, i32 } [ %72, %71 ], [ %102, %101 ]
  br i1 %59, label %123, label %111

111:                                              ; preds = %109
  %112 = load ptr, ptr %58, align 8, !tbaa !159
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = load ptr, ptr %113, align 8
  call void %114(ptr noundef nonnull align 8 dereferenceable(41) %58) #26
  br label %123

115:                                              ; preds = %105, %103, %44
  %116 = phi ptr [ %45, %44 ], [ %104, %103 ], [ %104, %105 ]
  %117 = icmp eq ptr %116, null
  br i1 %117, label %125, label %118

118:                                              ; preds = %115
  %119 = load ptr, ptr %7, align 8, !tbaa !252
  %120 = load ptr, ptr %119, align 8, !tbaa !159
  %121 = getelementptr inbounds ptr, ptr %120, i64 4
  %122 = load ptr, ptr %121, align 8
  call void %122(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %116)
  br label %125

123:                                              ; preds = %111, %109, %46
  %124 = phi { ptr, i32 } [ %47, %46 ], [ %110, %109 ], [ %110, %111 ]
  resume { ptr, i32 } %124

125:                                              ; preds = %115, %118, %4
  %126 = phi ptr [ %12, %4 ], [ %116, %118 ], [ %116, %115 ]
  ret ptr %126
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl8parseXMLERKN11xercesc_2_711InputSourceEPNS1_15DocumentHandlerEPNS_13XalanDocumentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef %2, ptr noundef readnone %3) local_unnamed_addr #4 align 2 !prof !156 {
  %5 = icmp eq ptr %2, null
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 18
  %7 = load ptr, ptr %6, align 8, !tbaa !340
  %8 = load ptr, ptr %7, align 8, !tbaa !159
  br i1 %5, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds ptr, ptr %8, i64 7
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds ptr, ptr %8, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
  br label %16

16:                                               ; preds = %12, %9
  %17 = phi ptr [ %3, %9 ], [ %15, %12 ]
  ret ptr %17
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_104trimERKNS_14XalanDOMStringERS0_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1028XPathExecutionContextDefaultC1ERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(432), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !254
  %7 = load ptr, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %11 = load ptr, ptr %5, align 8, !tbaa !254
  %12 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 6, i32 0, i32 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !167
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 28
  %15 = load ptr, ptr %3, align 8, !tbaa !159
  %16 = getelementptr inbounds ptr, ptr %15, i64 29
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %19 unwind label %54

19:                                               ; preds = %4
  %20 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 8, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !250
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 8, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !240
  %26 = getelementptr ptr, ptr %25, i64 %21
  %27 = getelementptr ptr, ptr %26, i64 -1
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  br label %29

29:                                               ; preds = %23, %19
  %30 = phi ptr [ %28, %23 ], [ null, %19 ]
  %31 = load ptr, ptr %13, align 8, !tbaa !159
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(129) %10, ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %30, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %34 unwind label %54

34:                                               ; preds = %29
  %35 = load ptr, ptr %3, align 8, !tbaa !159
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %39 unwind label %54

39:                                               ; preds = %34
  %40 = load ptr, ptr %3, align 8, !tbaa !159
  %41 = getelementptr inbounds ptr, ptr %40, i64 29
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %44 unwind label %54

44:                                               ; preds = %39
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %10, ptr noundef %38, ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef nonnull align 8 dereferenceable(24) %3)
          to label %45 unwind label %54

45:                                               ; preds = %44
  %46 = load ptr, ptr %11, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 4
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef zeroext i1 %48(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10, i1 noundef zeroext false)
          to label %53 unwind label %50

50:                                               ; preds = %45
  %51 = landingpad { ptr, i32 }
          catch ptr null
  %52 = extractvalue { ptr, i32 } %51, 0
  tail call void @__clang_call_terminate(ptr %52) #27
  unreachable

53:                                               ; preds = %45
  ret void

54:                                               ; preds = %44, %39, %34, %29, %4
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = icmp eq ptr %10, null
  br i1 %56, label %65, label %57

57:                                               ; preds = %54
  %58 = load ptr, ptr %11, align 8, !tbaa !159
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef zeroext i1 %60(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %10, i1 noundef zeroext false)
          to label %65 unwind label %62

62:                                               ; preds = %57
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #27
  unreachable

65:                                               ; preds = %57, %54
  resume { ptr, i32 } %55
}

declare void @_ZN11xalanc_1_1011NodeRefListC1ERKNS_15NodeRefListBaseERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef i32 @_ZNK11xalanc_1_1011NodeRefList9getLengthEv(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xalanc_1_1011NodeRefListaSERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZNK11xalanc_1_1011NodeRefList4itemEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011NodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XPathExecutionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(432)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 comdat align 2 !prof !156 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !330
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !330
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %9)
  %17 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %15)
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef %9, i32 noundef %16, ptr noundef %15, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1010Stylesheet6createERN11xercesc_2_713MemoryManagerERNS_14StylesheetRootERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getStylesheetRootEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) unnamed_addr #13 align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !215
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl17setStylesheetRootEPKNS_14StylesheetRootE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1000) %0, ptr noundef %1) unnamed_addr #14 align 2 !prof !234 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  store ptr %1, ptr %3, align 8, !tbaa !215
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl19setExecutionContextEPNS_26StylesheetExecutionContextE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1000) %0, ptr noundef %1) unnamed_addr #14 align 2 !prof !234 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  store ptr %1, ptr %3, align 8, !tbaa !221
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) unnamed_addr #15 align 2 !prof !350 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !351
  ret i64 %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl16addTraceListenerEPNS_13TraceListenerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !162
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  br label %7

7:                                                ; preds = %5, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl19removeTraceListenerEPNS_13TraceListenerE(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !162
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !351
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %5, ptr noundef %8, ptr nonnull %3)
  %10 = icmp eq ptr %9, %8
  %11 = getelementptr inbounds ptr, ptr %9, i64 1
  %12 = icmp eq ptr %11, %8
  %13 = select i1 %10, i1 true, i1 %12
  br i1 %13, label %26, label %14

14:                                               ; preds = %2, %22
  %15 = phi ptr [ %24, %22 ], [ %11, %2 ]
  %16 = phi ptr [ %23, %22 ], [ %9, %2 ]
  %17 = load ptr, ptr %15, align 8, !tbaa !162
  %18 = load ptr, ptr %3, align 8, !tbaa !162
  %19 = icmp eq ptr %17, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %14
  store ptr %17, ptr %16, align 8, !tbaa !162
  %21 = getelementptr inbounds ptr, ptr %16, i64 1
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi ptr [ %16, %14 ], [ %21, %20 ]
  %24 = getelementptr inbounds ptr, ptr %15, i64 1
  %25 = icmp eq ptr %24, %8
  br i1 %25, label %26, label %14, !llvm.loop !352

26:                                               ; preds = %22, %2
  %27 = phi ptr [ %9, %2 ], [ %23, %22 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %4, align 8, !tbaa !237
  %30 = load i64, ptr %6, align 8, !tbaa !351
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  %32 = icmp eq ptr %31, %28
  br i1 %32, label %37, label %33

33:                                               ; preds = %26
  %34 = ptrtoint ptr %28 to i64
  %35 = ptrtoint ptr %31 to i64
  %36 = sub i64 %35, %34
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %27, ptr nonnull align 8 %28, i64 %36, i1 false)
  br label %37

37:                                               ; preds = %26, %33
  %38 = load i64, ptr %6, align 8, !tbaa !351
  %39 = add i64 %38, -1
  store i64 %39, ptr %6, align 8, !tbaa !351
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl17fireGenerateEventERKNS_13GenerateEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !351
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %15, %9 ], [ %4, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(144) %1)
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !llvm.loop !353

17:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl15fireSelectEventERKNS_14SelectionEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !351
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %15, %9 ], [ %4, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 %1)
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !llvm.loop !354

17:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl14fireTraceEventERKNS_11TracerEventE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !237
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 15, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !351
  %7 = getelementptr inbounds ptr, ptr %4, i64 %6
  %8 = icmp eq i64 %6, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2, %9
  %10 = phi ptr [ %15, %9 ], [ %4, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = load ptr, ptr %11, align 8, !tbaa !159
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 1 %1)
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  %16 = icmp eq ptr %15, %7
  br i1 %16, label %17, label %9, !llvm.loop !355

17:                                               ; preds = %9, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XSLTEngineImpl15getTraceSelectsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) unnamed_addr #13 align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 12
  %3 = load i8, ptr %2, align 8, !tbaa !216, !range !327, !noundef !328
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl15setTraceSelectsEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1000) %0, i1 noundef zeroext %1) unnamed_addr #14 align 2 !prof !156 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 12
  store i8 %3, ptr %4, align 8, !tbaa !216
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !329
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !250
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %5
  %13 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !240
  %15 = getelementptr ptr, ptr %14, i64 %10
  %16 = getelementptr ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !162
  br label %18

18:                                               ; preds = %12, %5
  %19 = phi ptr [ %17, %12 ], [ null, %5 ]
  %20 = icmp eq ptr %19, null
  %21 = icmp ne ptr %4, null
  %22 = and i1 %21, %20
  br i1 %22, label %23, label %30

23:                                               ; preds = %18
  %24 = load ptr, ptr %4, align 8, !tbaa !159
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(322) %4)
          to label %30 unwind label %28

28:                                               ; preds = %76, %67, %64, %51, %49, %48, %99, %91, %69, %58, %53, %40, %33, %23
  %29 = landingpad { ptr, i32 }
          cleanup
  br label %117

30:                                               ; preds = %23, %18
  %31 = phi ptr [ %19, %18 ], [ %27, %23 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %63, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %38 unwind label %28

38:                                               ; preds = %33
  %39 = icmp eq ptr %37, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %38
  %41 = load ptr, ptr %31, align 8, !tbaa !159
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %45 unwind label %28

45:                                               ; preds = %40, %38
  %46 = phi ptr [ %37, %38 ], [ %44, %40 ]
  %47 = icmp eq ptr %46, null
  br i1 %47, label %53, label %48

48:                                               ; preds = %45
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 0, i32 noundef -1)
          to label %49 unwind label %28

49:                                               ; preds = %48
  %50 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %46)
          to label %51 unwind label %28

51:                                               ; preds = %49
  %52 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %46, i32 noundef %50)
          to label %53 unwind label %28

53:                                               ; preds = %51, %45
  %54 = load ptr, ptr %31, align 8, !tbaa !159
  %55 = getelementptr inbounds ptr, ptr %54, i64 4
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef i64 %56(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %58 unwind label %28

58:                                               ; preds = %53
  %59 = load ptr, ptr %31, align 8, !tbaa !159
  %60 = getelementptr inbounds ptr, ptr %59, i64 5
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef i64 %61(ptr noundef nonnull align 8 dereferenceable(8) %31)
          to label %82 unwind label %28

63:                                               ; preds = %30
  br i1 %21, label %64, label %82

64:                                               ; preds = %63
  %65 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplateElement", ptr %4, i64 0, i32 9
  %66 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %67 unwind label %28

67:                                               ; preds = %64
  %68 = invoke noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32) %65)
          to label %69 unwind label %28

69:                                               ; preds = %67
  %70 = load ptr, ptr %4, align 8, !tbaa !159
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  %73 = invoke noundef nonnull align 8 dereferenceable(36) ptr %72(ptr noundef nonnull align 8 dereferenceable(322) %4)
          to label %74 unwind label %28

74:                                               ; preds = %69
  %75 = icmp eq ptr %73, %6
  br i1 %75, label %82, label %76

76:                                               ; preds = %74
  %77 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %73)
          to label %78 unwind label %28

78:                                               ; preds = %76
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %73, i64 0, i32 1
  %80 = load i32, ptr %79, align 8, !tbaa !267
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  store i32 %80, ptr %81, align 8, !tbaa !267
  br label %82

82:                                               ; preds = %78, %74, %58, %63
  %83 = phi ptr [ null, %63 ], [ %46, %58 ], [ null, %74 ], [ null, %78 ]
  %84 = phi i64 [ -1, %63 ], [ %57, %58 ], [ %66, %74 ], [ %66, %78 ]
  %85 = phi i64 [ -1, %63 ], [ %62, %58 ], [ %68, %74 ], [ %68, %78 ]
  %86 = trunc i64 %85 to i32
  %87 = trunc i64 %84 to i32
  %88 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 10
  %89 = load ptr, ptr %88, align 8, !tbaa !173
  %90 = icmp eq ptr %89, null
  br i1 %90, label %95, label %91

91:                                               ; preds = %82
  %92 = load ptr, ptr %89, align 8, !tbaa !159
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  invoke void %94(ptr noundef nonnull align 8 dereferenceable(8) %89, i32 noundef 2, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %83, i32 noundef %87, i32 noundef %86)
          to label %95 unwind label %28

95:                                               ; preds = %82, %91
  %96 = icmp eq i32 %2, 2
  br i1 %96, label %97, label %102

97:                                               ; preds = %95
  %98 = call ptr @__cxa_allocate_exception(i64 104) #26
  invoke void @_ZN11xalanc_1_1022XSLTProcessorExceptionC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_ii(ptr noundef nonnull align 8 dereferenceable(104) %98, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %87, i32 noundef %86)
          to label %99 unwind label %100

99:                                               ; preds = %97
  invoke void @__cxa_throw(ptr nonnull %98, ptr nonnull @_ZTIN11xalanc_1_1022XSLTProcessorExceptionE, ptr nonnull @_ZN11xalanc_1_1022XSLTProcessorExceptionD1Ev) #29
          to label %133 unwind label %28

100:                                              ; preds = %97
  %101 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %98) #26
  br label %117

102:                                              ; preds = %95
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %104 = load i64, ptr %103, align 8, !tbaa !270
  %105 = icmp eq i64 %104, 0
  br i1 %105, label %116, label %106

106:                                              ; preds = %102
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !271
  %109 = load ptr, ptr %6, align 8, !tbaa !272
  %110 = load ptr, ptr %109, align 8, !tbaa !159
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8
  invoke void %112(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef %108)
          to label %116 unwind label %113

113:                                              ; preds = %106
  %114 = landingpad { ptr, i32 }
          catch ptr null
  %115 = extractvalue { ptr, i32 } %114, 0
  call void @__clang_call_terminate(ptr %115) #27
  unreachable

116:                                              ; preds = %102, %106
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #26
  ret void

117:                                              ; preds = %100, %28
  %118 = phi { ptr, i32 } [ %29, %28 ], [ %101, %100 ]
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %120 = load i64, ptr %119, align 8, !tbaa !270
  %121 = icmp eq i64 %120, 0
  br i1 %121, label %132, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !271
  %125 = load ptr, ptr %6, align 8, !tbaa !272
  %126 = load ptr, ptr %125, align 8, !tbaa !159
  %127 = getelementptr inbounds ptr, ptr %126, i64 3
  %128 = load ptr, ptr %127, align 8
  invoke void %128(ptr noundef nonnull align 8 dereferenceable(8) %125, ptr noundef %124)
          to label %132 unwind label %129

129:                                              ; preds = %122
  %130 = landingpad { ptr, i32 }
          catch ptr null
  %131 = extractvalue { ptr, i32 } %130, 0
  call void @__clang_call_terminate(ptr %131) #27
  unreachable

132:                                              ; preds = %117, %122
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #26
  resume { ptr, i32 } %118

133:                                              ; preds = %99
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl7messageERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 0, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = load ptr, ptr %3, align 8, !tbaa !159
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %11 = icmp eq ptr %10, null
  %12 = select i1 %11, ptr @_ZN11xalanc_1_10L8theDummyE, ptr %10
  %13 = load ptr, ptr %3, align 8, !tbaa !159
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i64 %15(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %17 = load ptr, ptr %3, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i64 %19(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !173
  %23 = icmp eq ptr %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %5
  %25 = trunc i64 %16 to i32
  %26 = trunc i64 %20 to i32
  %27 = load ptr, ptr %22, align 8, !tbaa !159
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef 2, i32 noundef %2, ptr noundef %4, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %12, i32 noundef %25, i32 noundef %26)
  br label %30

30:                                               ; preds = %24, %5
  %31 = icmp eq i32 %2, 2
  br i1 %31, label %32, label %63

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !329
  %35 = tail call ptr @__cxa_allocate_exception(i64 104) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #26
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull %12, ptr noundef nonnull align 8 dereferenceable(8) %34, i32 noundef -1)
          to label %36 unwind label %40

36:                                               ; preds = %32
  %37 = trunc i64 %16 to i32
  %38 = trunc i64 %20 to i32
  invoke void @_ZN11xalanc_1_1022XSLTProcessorExceptionC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_ii(ptr noundef nonnull align 8 dereferenceable(104) %35, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef %37, i32 noundef %38)
          to label %39 unwind label %42

39:                                               ; preds = %36
  invoke void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xalanc_1_1022XSLTProcessorExceptionE, ptr nonnull @_ZN11xalanc_1_1022XSLTProcessorExceptionD1Ev) #29
          to label %64 unwind label %42

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %58

42:                                               ; preds = %39, %36
  %43 = phi i1 [ false, %39 ], [ true, %36 ]
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %46 = load i64, ptr %45, align 8, !tbaa !270
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %42
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !271
  %51 = load ptr, ptr %6, align 8, !tbaa !272
  %52 = load ptr, ptr %51, align 8, !tbaa !159
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef %50)
          to label %58 unwind label %55

55:                                               ; preds = %48
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  call void @__clang_call_terminate(ptr %57) #27
  unreachable

58:                                               ; preds = %48, %42, %40
  %59 = phi { ptr, i32 } [ %41, %40 ], [ %44, %42 ], [ %44, %48 ]
  %60 = phi i1 [ true, %40 ], [ %43, %42 ], [ %43, %48 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #26
  br i1 %60, label %61, label %62

61:                                               ; preds = %58
  call void @__cxa_free_exception(ptr %35) #26
  br label %62

62:                                               ; preds = %61, %58
  resume { ptr, i32 } %59

63:                                               ; preds = %30
  ret void

64:                                               ; preds = %39
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_ii(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022XSLTProcessorExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKtRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !156 {
  %5 = icmp eq ptr %3, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %4
  %7 = load ptr, ptr %3, align 8, !tbaa !159
  %8 = getelementptr inbounds ptr, ptr %7, i64 4
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(322) %3)
  br label %11

11:                                               ; preds = %4, %6
  %12 = phi ptr [ %10, %6 ], [ null, %4 ]
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %2)
  br label %16

15:                                               ; preds = %11
  tail call void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, ptr noundef %2, ptr noundef %3)
  br label %16

16:                                               ; preds = %15, %14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl4warnERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 2, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl5errorERKNS_14XalanDOMStringERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZNK11xalanc_1_1014XSLTEngineImpl7problemERKNS_14XalanDOMStringENS_15ProblemListener15eClassificationERKN11xercesc_2_77LocatorEPKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl20setDiagnosticsOutputEPNS_11PrintWriterE(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 14
  store ptr %1, ptr %3, align 8, !tbaa !218
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !173
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl24setQuietConflictWarningsEb(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(1000) %0, i1 noundef zeroext %1) unnamed_addr #14 align 2 !prof !156 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 13
  store i8 %3, ptr %4, align 1, !tbaa !217
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18setDocumentLocatorEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(1000) %0, ptr nocapture noundef readnone %1) local_unnamed_addr #12 align 2 !prof !156 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1014XSLTEngineImpl11traceSelectERNS_26StylesheetExecutionContextERKNS_19ElemTemplateElementERKNS_15NodeRefListBaseEPKNS_5XPathE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(322) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef readonly %4) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !218
  %10 = icmp eq ptr %9, null
  br i1 %10, label %271, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !159
  %13 = getelementptr inbounds ptr, ptr %12, i64 23
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %16 = load ptr, ptr %2, align 8, !tbaa !159
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr %18(ptr noundef nonnull align 8 dereferenceable(322) %2)
          to label %20 unwind label %48

20:                                               ; preds = %11
  %21 = icmp eq ptr %19, %15
  br i1 %21, label %28, label %22

22:                                               ; preds = %20
  %23 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %19)
          to label %24 unwind label %48

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %19, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !267
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %15, i64 0, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !267
  br label %28

28:                                               ; preds = %24, %20
  %29 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.5)
          to label %30 unwind label %48

30:                                               ; preds = %28
  %31 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull @.str.5, i32 noundef %29)
          to label %32 unwind label %48

32:                                               ; preds = %30
  %33 = icmp eq ptr %4, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xalanc_1_10::XPathExpression", ptr %4, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !356
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !330
  %39 = icmp eq i64 %38, 0
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %36, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = select i1 %39, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %41
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %36, i64 0, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !267
  %45 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %42, i32 noundef %44)
          to label %46 unwind label %48

46:                                               ; preds = %34
  %47 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.6)
          to label %52 unwind label %48

48:                                               ; preds = %52, %50, %46, %34, %30, %28, %22, %11
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %261

50:                                               ; preds = %32
  %51 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.7)
          to label %52 unwind label %48

52:                                               ; preds = %46, %50
  %53 = phi ptr [ @.str.7, %50 ], [ @.str.6, %46 ]
  %54 = phi i32 [ %51, %50 ], [ %47, %46 ]
  %55 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull %53, i32 noundef %54)
          to label %56 unwind label %48

56:                                               ; preds = %52
  %57 = load ptr, ptr %1, align 8, !tbaa !159
  %58 = getelementptr inbounds ptr, ptr %57, i64 23
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef nonnull align 8 dereferenceable(36) ptr %59(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %61 unwind label %189

61:                                               ; preds = %56
  %62 = load ptr, ptr %3, align 8, !tbaa !159
  %63 = getelementptr inbounds ptr, ptr %62, i64 3
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef i32 %64(ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %66 unwind label %191

66:                                               ; preds = %61
  %67 = zext i32 %65 to i64
  %68 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %67, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %69 unwind label %191

69:                                               ; preds = %66
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !330
  %72 = icmp eq i64 %71, 0
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %60, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = select i1 %72, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %74
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %60, i64 0, i32 1
  %77 = load i32, ptr %76, align 8, !tbaa !267
  %78 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %75, i32 noundef %77)
          to label %79 unwind label %191

79:                                               ; preds = %69
  %80 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.8)
          to label %81 unwind label %191

81:                                               ; preds = %79
  %82 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef nonnull @.str.8, i32 noundef %80)
          to label %83 unwind label %191

83:                                               ; preds = %81
  %84 = load ptr, ptr %1, align 8, !tbaa !159
  %85 = getelementptr inbounds ptr, ptr %84, i64 56
  %86 = load ptr, ptr %85, align 8
  %87 = invoke noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %88 unwind label %193

88:                                               ; preds = %83
  %89 = icmp eq ptr %87, null
  br i1 %89, label %231, label %90

90:                                               ; preds = %88
  %91 = load ptr, ptr %87, align 8, !tbaa !159
  %92 = getelementptr inbounds ptr, ptr %91, i64 3
  %93 = load ptr, ptr %92, align 8
  %94 = invoke noundef nonnull align 8 dereferenceable(36) ptr %93(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %95 unwind label %193

95:                                               ; preds = %90
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %94, i64 0, i32 1
  %97 = load i32, ptr %96, align 8, !tbaa !267
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %95
  %100 = load ptr, ptr %87, align 8, !tbaa !159
  %101 = getelementptr inbounds ptr, ptr %100, i64 2
  %102 = load ptr, ptr %101, align 8
  %103 = invoke noundef nonnull align 8 dereferenceable(36) ptr %102(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %104 unwind label %193

104:                                              ; preds = %99
  %105 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %103, i64 0, i32 1
  %106 = load i32, ptr %105, align 8, !tbaa !267
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %231, label %108

108:                                              ; preds = %95, %104
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #26
  %109 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %1, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !262
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull @.str.9, ptr noundef nonnull align 8 dereferenceable(8) %110, i32 noundef -1)
          to label %111 unwind label %195

111:                                              ; preds = %108
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !330
  %114 = icmp eq i64 %113, 0
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %116 = load ptr, ptr %115, align 8
  %117 = select i1 %114, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %116
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %119 = load i32, ptr %118, align 8, !tbaa !267
  %120 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %117, i32 noundef %119)
          to label %121 unwind label %197

121:                                              ; preds = %111
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %123 = load i64, ptr %122, align 8, !tbaa !270
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %134, label %125

125:                                              ; preds = %121
  %126 = load ptr, ptr %115, align 8, !tbaa !271
  %127 = load ptr, ptr %6, align 8, !tbaa !272
  %128 = load ptr, ptr %127, align 8, !tbaa !159
  %129 = getelementptr inbounds ptr, ptr %128, i64 3
  %130 = load ptr, ptr %129, align 8
  invoke void %130(ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef %126)
          to label %134 unwind label %131

131:                                              ; preds = %125
  %132 = landingpad { ptr, i32 }
          catch ptr null
  %133 = extractvalue { ptr, i32 } %132, 0
  call void @__clang_call_terminate(ptr %133) #27
  unreachable

134:                                              ; preds = %121, %125
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #26
  %135 = load ptr, ptr %87, align 8, !tbaa !159
  %136 = getelementptr inbounds ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  %138 = invoke noundef nonnull align 8 dereferenceable(36) ptr %137(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %139 unwind label %193

139:                                              ; preds = %134
  %140 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %138, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !330
  %142 = icmp eq i64 %141, 0
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %138, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = select i1 %142, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %144
  %146 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %138, i64 0, i32 1
  %147 = load i32, ptr %146, align 8, !tbaa !267
  %148 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %145, i32 noundef %147)
          to label %149 unwind label %193

149:                                              ; preds = %139
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #26
  %150 = load ptr, ptr %109, align 8, !tbaa !262
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str.10, ptr noundef nonnull align 8 dereferenceable(8) %150, i32 noundef -1)
          to label %151 unwind label %213

151:                                              ; preds = %149
  %152 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !330
  %154 = icmp eq i64 %153, 0
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %156 = load ptr, ptr %155, align 8
  %157 = select i1 %154, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %156
  %158 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %159 = load i32, ptr %158, align 8, !tbaa !267
  %160 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %157, i32 noundef %159)
          to label %161 unwind label %215

161:                                              ; preds = %151
  %162 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %163 = load i64, ptr %162, align 8, !tbaa !270
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %174, label %165

165:                                              ; preds = %161
  %166 = load ptr, ptr %155, align 8, !tbaa !271
  %167 = load ptr, ptr %7, align 8, !tbaa !272
  %168 = load ptr, ptr %167, align 8, !tbaa !159
  %169 = getelementptr inbounds ptr, ptr %168, i64 3
  %170 = load ptr, ptr %169, align 8
  invoke void %170(ptr noundef nonnull align 8 dereferenceable(8) %167, ptr noundef %166)
          to label %174 unwind label %171

171:                                              ; preds = %165
  %172 = landingpad { ptr, i32 }
          catch ptr null
  %173 = extractvalue { ptr, i32 } %172, 0
  call void @__clang_call_terminate(ptr %173) #27
  unreachable

174:                                              ; preds = %161, %165
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #26
  %175 = load ptr, ptr %87, align 8, !tbaa !159
  %176 = getelementptr inbounds ptr, ptr %175, i64 2
  %177 = load ptr, ptr %176, align 8
  %178 = invoke noundef nonnull align 8 dereferenceable(36) ptr %177(ptr noundef nonnull align 8 dereferenceable(8) %87)
          to label %179 unwind label %193

179:                                              ; preds = %174
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %178, i64 0, i32 1
  %181 = load i64, ptr %180, align 8, !tbaa !330
  %182 = icmp eq i64 %181, 0
  %183 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %178, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8
  %185 = select i1 %182, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %184
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %178, i64 0, i32 1
  %187 = load i32, ptr %186, align 8, !tbaa !267
  %188 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %185, i32 noundef %187)
          to label %231 unwind label %193

189:                                              ; preds = %56
  %190 = landingpad { ptr, i32 }
          cleanup
  br label %261

191:                                              ; preds = %81, %79, %69, %66, %61
  %192 = landingpad { ptr, i32 }
          cleanup
  br label %252

193:                                              ; preds = %179, %139, %99, %90, %231, %174, %134, %83
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %252

195:                                              ; preds = %108
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %211

197:                                              ; preds = %111
  %198 = landingpad { ptr, i32 }
          cleanup
  %199 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %200 = load i64, ptr %199, align 8, !tbaa !270
  %201 = icmp eq i64 %200, 0
  br i1 %201, label %211, label %202

202:                                              ; preds = %197
  %203 = load ptr, ptr %115, align 8, !tbaa !271
  %204 = load ptr, ptr %6, align 8, !tbaa !272
  %205 = load ptr, ptr %204, align 8, !tbaa !159
  %206 = getelementptr inbounds ptr, ptr %205, i64 3
  %207 = load ptr, ptr %206, align 8
  invoke void %207(ptr noundef nonnull align 8 dereferenceable(8) %204, ptr noundef %203)
          to label %211 unwind label %208

208:                                              ; preds = %202
  %209 = landingpad { ptr, i32 }
          catch ptr null
  %210 = extractvalue { ptr, i32 } %209, 0
  call void @__clang_call_terminate(ptr %210) #27
  unreachable

211:                                              ; preds = %202, %197, %195
  %212 = phi { ptr, i32 } [ %196, %195 ], [ %198, %197 ], [ %198, %202 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #26
  br label %252

213:                                              ; preds = %149
  %214 = landingpad { ptr, i32 }
          cleanup
  br label %229

215:                                              ; preds = %151
  %216 = landingpad { ptr, i32 }
          cleanup
  %217 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %218 = load i64, ptr %217, align 8, !tbaa !270
  %219 = icmp eq i64 %218, 0
  br i1 %219, label %229, label %220

220:                                              ; preds = %215
  %221 = load ptr, ptr %155, align 8, !tbaa !271
  %222 = load ptr, ptr %7, align 8, !tbaa !272
  %223 = load ptr, ptr %222, align 8, !tbaa !159
  %224 = getelementptr inbounds ptr, ptr %223, i64 3
  %225 = load ptr, ptr %224, align 8
  invoke void %225(ptr noundef nonnull align 8 dereferenceable(8) %222, ptr noundef %221)
          to label %229 unwind label %226

226:                                              ; preds = %220
  %227 = landingpad { ptr, i32 }
          catch ptr null
  %228 = extractvalue { ptr, i32 } %227, 0
  call void @__clang_call_terminate(ptr %228) #27
  unreachable

229:                                              ; preds = %220, %215, %213
  %230 = phi { ptr, i32 } [ %214, %213 ], [ %216, %215 ], [ %216, %220 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #26
  br label %252

231:                                              ; preds = %179, %104, %88
  %232 = load ptr, ptr %8, align 8, !tbaa !218
  %233 = load ptr, ptr %232, align 8, !tbaa !159
  %234 = getelementptr inbounds ptr, ptr %233, i64 27
  %235 = load ptr, ptr %234, align 8
  invoke void %235(ptr noundef nonnull align 8 dereferenceable(24) %232, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %236 unwind label %193

236:                                              ; preds = %231
  %237 = load ptr, ptr %1, align 8, !tbaa !159
  %238 = getelementptr inbounds ptr, ptr %237, i64 24
  %239 = load ptr, ptr %238, align 8
  %240 = invoke noundef zeroext i1 %239(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %244 unwind label %241

241:                                              ; preds = %236
  %242 = landingpad { ptr, i32 }
          catch ptr null
  %243 = extractvalue { ptr, i32 } %242, 0
  call void @__clang_call_terminate(ptr %243) #27
  unreachable

244:                                              ; preds = %236
  %245 = load ptr, ptr %1, align 8, !tbaa !159
  %246 = getelementptr inbounds ptr, ptr %245, i64 24
  %247 = load ptr, ptr %246, align 8
  %248 = invoke noundef zeroext i1 %247(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %271 unwind label %249

249:                                              ; preds = %244
  %250 = landingpad { ptr, i32 }
          catch ptr null
  %251 = extractvalue { ptr, i32 } %250, 0
  call void @__clang_call_terminate(ptr %251) #27
  unreachable

252:                                              ; preds = %191, %229, %211, %193
  %253 = phi { ptr, i32 } [ %192, %191 ], [ %194, %193 ], [ %230, %229 ], [ %212, %211 ]
  %254 = load ptr, ptr %1, align 8, !tbaa !159
  %255 = getelementptr inbounds ptr, ptr %254, i64 24
  %256 = load ptr, ptr %255, align 8
  %257 = invoke noundef zeroext i1 %256(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %60)
          to label %261 unwind label %258

258:                                              ; preds = %252
  %259 = landingpad { ptr, i32 }
          catch ptr null
  %260 = extractvalue { ptr, i32 } %259, 0
  call void @__clang_call_terminate(ptr %260) #27
  unreachable

261:                                              ; preds = %48, %252, %189
  %262 = phi { ptr, i32 } [ %49, %48 ], [ %190, %189 ], [ %253, %252 ]
  %263 = load ptr, ptr %1, align 8, !tbaa !159
  %264 = getelementptr inbounds ptr, ptr %263, i64 24
  %265 = load ptr, ptr %264, align 8
  %266 = invoke noundef zeroext i1 %265(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(36) %15)
          to label %270 unwind label %267

267:                                              ; preds = %261
  %268 = landingpad { ptr, i32 }
          catch ptr null
  %269 = extractvalue { ptr, i32 } %268, 0
  call void @__clang_call_terminate(ptr %269) #27
  unreachable

270:                                              ; preds = %261
  resume { ptr, i32 } %262

271:                                              ; preds = %244, %5
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !234 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !362
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !363
  %10 = udiv i64 %7, %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !364
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = urem i64 %7, %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !365
  %18 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !367, !range !327, !noundef !328
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %42, !prof !368

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(144) %22)
  %23 = load ptr, ptr %4, align 8, !tbaa !361
  %24 = load i64, ptr %6, align 8, !tbaa !362
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %23, i64 0, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !363
  %27 = udiv i64 %24, %26
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %23, i64 0, i32 2, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !364
  %30 = getelementptr inbounds ptr, ptr %29, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !162
  %32 = urem i64 %24, %26
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %31, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !365
  %35 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %34, i64 %32, i32 3
  store i8 1, ptr %35, align 1, !tbaa !367
  %36 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %34, i64 %32, i32 4
  store i8 0, ptr %36, align 1, !tbaa !367
  %37 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %38 = load i8, ptr %37, align 8, !tbaa !261, !range !327, !noundef !328
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %170, label %40, !prof !158

40:                                               ; preds = %21
  %41 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #26
  store i8 0, ptr %2, align 1, !tbaa !367
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %41, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #26
  br label %170

42:                                               ; preds = %1
  %43 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 4
  %44 = load i8, ptr %43, align 1, !tbaa !367, !range !327, !noundef !328
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %170, label %46, !prof !239

46:                                               ; preds = %42
  %47 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15
  %48 = load ptr, ptr %47, align 8, !tbaa !369
  %49 = load ptr, ptr %48, align 8, !tbaa !159
  %50 = getelementptr inbounds ptr, ptr %49, i64 9
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(24) %48), !prof !371
  %52 = load ptr, ptr %0, align 8, !tbaa !159
  %53 = getelementptr inbounds ptr, ptr %52, i64 18
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef i64 %54(ptr noundef nonnull align 8 dereferenceable(1000) %0), !prof !372
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %156, label %57, !prof !158

57:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #26
  %58 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %59 = load ptr, ptr %58, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(8) %59)
  %60 = load ptr, ptr %0, align 8, !tbaa !159
  %61 = getelementptr inbounds ptr, ptr %60, i64 21
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %63 unwind label %109

63:                                               ; preds = %57
  %64 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !270
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %69 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !271
  %71 = load ptr, ptr %68, align 8, !tbaa !272
  %72 = load ptr, ptr %71, align 8, !tbaa !159
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %70)
          to label %78 unwind label %75

75:                                               ; preds = %67
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  call void @__clang_call_terminate(ptr %77) #27
  unreachable

78:                                               ; preds = %63, %67
  %79 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !270
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %84 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !271
  %86 = load ptr, ptr %83, align 8, !tbaa !272
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %82
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #27
  unreachable

93:                                               ; preds = %78, %82
  %94 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !270
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %99 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !271
  %101 = load ptr, ptr %98, align 8, !tbaa !272
  %102 = load ptr, ptr %101, align 8, !tbaa !159
  %103 = getelementptr inbounds ptr, ptr %102, i64 3
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef %100)
          to label %108 unwind label %105

105:                                              ; preds = %97
  %106 = landingpad { ptr, i32 }
          catch ptr null
  %107 = extractvalue { ptr, i32 } %106, 0
  call void @__clang_call_terminate(ptr %107) #27
  unreachable

108:                                              ; preds = %93, %97
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  br label %156

109:                                              ; preds = %57
  %110 = landingpad { ptr, i32 }
          cleanup
  %111 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !270
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %116 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !271
  %118 = load ptr, ptr %115, align 8, !tbaa !272
  %119 = load ptr, ptr %118, align 8, !tbaa !159
  %120 = getelementptr inbounds ptr, ptr %119, i64 3
  %121 = load ptr, ptr %120, align 8
  invoke void %121(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef %117)
          to label %125 unwind label %122

122:                                              ; preds = %114
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  call void @__clang_call_terminate(ptr %124) #27
  unreachable

125:                                              ; preds = %109, %114
  %126 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !270
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %131 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !271
  %133 = load ptr, ptr %130, align 8, !tbaa !272
  %134 = load ptr, ptr %133, align 8, !tbaa !159
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  invoke void %136(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %132)
          to label %140 unwind label %137

137:                                              ; preds = %129
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #27
  unreachable

140:                                              ; preds = %125, %129
  %141 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !270
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %155, label %144

144:                                              ; preds = %140
  %145 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %146 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %147 = load ptr, ptr %146, align 8, !tbaa !271
  %148 = load ptr, ptr %145, align 8, !tbaa !272
  %149 = load ptr, ptr %148, align 8, !tbaa !159
  %150 = getelementptr inbounds ptr, ptr %149, i64 3
  %151 = load ptr, ptr %150, align 8
  invoke void %151(ptr noundef nonnull align 8 dereferenceable(8) %148, ptr noundef %147)
          to label %155 unwind label %152

152:                                              ; preds = %144
  %153 = landingpad { ptr, i32 }
          catch ptr null
  %154 = extractvalue { ptr, i32 } %153, 0
  call void @__clang_call_terminate(ptr %154) #27
  unreachable

155:                                              ; preds = %140, %144
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  resume { ptr, i32 } %110

156:                                              ; preds = %108, %46
  %157 = load ptr, ptr %4, align 8, !tbaa !361
  %158 = load i64, ptr %6, align 8, !tbaa !362
  %159 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %157, i64 0, i32 1
  %160 = load i64, ptr %159, align 8, !tbaa !363
  %161 = udiv i64 %158, %160
  %162 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %157, i64 0, i32 2, i32 3
  %163 = load ptr, ptr %162, align 8, !tbaa !364
  %164 = getelementptr inbounds ptr, ptr %163, i64 %161
  %165 = load ptr, ptr %164, align 8, !tbaa !162
  %166 = urem i64 %158, %160
  %167 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %165, i64 0, i32 3
  %168 = load ptr, ptr %167, align 8, !tbaa !365
  %169 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %168, i64 %166, i32 3
  store i8 0, ptr %169, align 1, !tbaa !367
  br label %170

170:                                              ; preds = %42, %156, %21, %40
  ret void
}

declare void @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %2 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !363
  %9 = udiv i64 %6, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = urem i64 %6, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 4
  store i8 1, ptr %17, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %18 = load ptr, ptr %3, align 8, !tbaa !361
  %19 = load i64, ptr %5, align 8, !tbaa !362
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %18, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !363
  %22 = udiv i64 %19, %21
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %18, i64 0, i32 2, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !364
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !162
  %27 = urem i64 %19, %21
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %26, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !365
  %30 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %29, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !369
  %32 = load ptr, ptr %31, align 8, !tbaa !159
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(24) %31), !prof !373
  %35 = load ptr, ptr %0, align 8, !tbaa !159
  %36 = getelementptr inbounds ptr, ptr %35, i64 18
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef i64 %37(ptr noundef nonnull align 8 dereferenceable(1000) %0), !prof !372
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %139, label %40, !prof !158

40:                                               ; preds = %1
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %2) #26
  %41 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(144) %2, i32 noundef 2, ptr noundef nonnull align 8 dereferenceable(8) %42)
  %43 = load ptr, ptr %0, align 8, !tbaa !159
  %44 = getelementptr inbounds ptr, ptr %43, i64 21
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %2)
          to label %46 unwind label %92

46:                                               ; preds = %40
  %47 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 6, i32 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !270
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 6
  %52 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 6, i32 0, i32 3
  %53 = load ptr, ptr %52, align 8, !tbaa !271
  %54 = load ptr, ptr %51, align 8, !tbaa !272
  %55 = load ptr, ptr %54, align 8, !tbaa !159
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %53)
          to label %61 unwind label %58

58:                                               ; preds = %50
  %59 = landingpad { ptr, i32 }
          catch ptr null
  %60 = extractvalue { ptr, i32 } %59, 0
  call void @__clang_call_terminate(ptr %60) #27
  unreachable

61:                                               ; preds = %46, %50
  %62 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 5, i32 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !270
  %64 = icmp eq i64 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %61
  %66 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 5
  %67 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 5, i32 0, i32 3
  %68 = load ptr, ptr %67, align 8, !tbaa !271
  %69 = load ptr, ptr %66, align 8, !tbaa !272
  %70 = load ptr, ptr %69, align 8, !tbaa !159
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  invoke void %72(ptr noundef nonnull align 8 dereferenceable(8) %69, ptr noundef %68)
          to label %76 unwind label %73

73:                                               ; preds = %65
  %74 = landingpad { ptr, i32 }
          catch ptr null
  %75 = extractvalue { ptr, i32 } %74, 0
  call void @__clang_call_terminate(ptr %75) #27
  unreachable

76:                                               ; preds = %61, %65
  %77 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 2, i32 0, i32 2
  %78 = load i64, ptr %77, align 8, !tbaa !270
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %91, label %80

80:                                               ; preds = %76
  %81 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 2
  %82 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 2, i32 0, i32 3
  %83 = load ptr, ptr %82, align 8, !tbaa !271
  %84 = load ptr, ptr %81, align 8, !tbaa !272
  %85 = load ptr, ptr %84, align 8, !tbaa !159
  %86 = getelementptr inbounds ptr, ptr %85, i64 3
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef %83)
          to label %91 unwind label %88

88:                                               ; preds = %80
  %89 = landingpad { ptr, i32 }
          catch ptr null
  %90 = extractvalue { ptr, i32 } %89, 0
  call void @__clang_call_terminate(ptr %90) #27
  unreachable

91:                                               ; preds = %76, %80
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #26
  br label %139

92:                                               ; preds = %40
  %93 = landingpad { ptr, i32 }
          cleanup
  %94 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 6, i32 0, i32 2
  %95 = load i64, ptr %94, align 8, !tbaa !270
  %96 = icmp eq i64 %95, 0
  br i1 %96, label %108, label %97

97:                                               ; preds = %92
  %98 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 6
  %99 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 6, i32 0, i32 3
  %100 = load ptr, ptr %99, align 8, !tbaa !271
  %101 = load ptr, ptr %98, align 8, !tbaa !272
  %102 = load ptr, ptr %101, align 8, !tbaa !159
  %103 = getelementptr inbounds ptr, ptr %102, i64 3
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef %100)
          to label %108 unwind label %105

105:                                              ; preds = %97
  %106 = landingpad { ptr, i32 }
          catch ptr null
  %107 = extractvalue { ptr, i32 } %106, 0
  call void @__clang_call_terminate(ptr %107) #27
  unreachable

108:                                              ; preds = %92, %97
  %109 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 5, i32 0, i32 2
  %110 = load i64, ptr %109, align 8, !tbaa !270
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %123, label %112

112:                                              ; preds = %108
  %113 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 5
  %114 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 5, i32 0, i32 3
  %115 = load ptr, ptr %114, align 8, !tbaa !271
  %116 = load ptr, ptr %113, align 8, !tbaa !272
  %117 = load ptr, ptr %116, align 8, !tbaa !159
  %118 = getelementptr inbounds ptr, ptr %117, i64 3
  %119 = load ptr, ptr %118, align 8
  invoke void %119(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef %115)
          to label %123 unwind label %120

120:                                              ; preds = %112
  %121 = landingpad { ptr, i32 }
          catch ptr null
  %122 = extractvalue { ptr, i32 } %121, 0
  call void @__clang_call_terminate(ptr %122) #27
  unreachable

123:                                              ; preds = %108, %112
  %124 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 2, i32 0, i32 2
  %125 = load i64, ptr %124, align 8, !tbaa !270
  %126 = icmp eq i64 %125, 0
  br i1 %126, label %138, label %127

127:                                              ; preds = %123
  %128 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 2
  %129 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %2, i64 0, i32 2, i32 0, i32 3
  %130 = load ptr, ptr %129, align 8, !tbaa !271
  %131 = load ptr, ptr %128, align 8, !tbaa !272
  %132 = load ptr, ptr %131, align 8, !tbaa !159
  %133 = getelementptr inbounds ptr, ptr %132, i64 3
  %134 = load ptr, ptr %133, align 8
  invoke void %134(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef %130)
          to label %138 unwind label %135

135:                                              ; preds = %127
  %136 = landingpad { ptr, i32 }
          catch ptr null
  %137 = extractvalue { ptr, i32 } %136, 0
  call void @__clang_call_terminate(ptr %137) #27
  unreachable

138:                                              ; preds = %123, %127
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %2) #26
  resume { ptr, i32 } %93

139:                                              ; preds = %91, %1
  %140 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %141 = load i8, ptr %140, align 8, !tbaa !261, !range !327, !noundef !328
  %142 = icmp eq i8 %141, 0
  br i1 %142, label %147, label %143, !prof !158

143:                                              ; preds = %139
  %144 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 1
  %145 = load i64, ptr %144, align 8, !tbaa !251
  %146 = add i64 %145, -1
  store i64 %146, ptr %144, align 8, !tbaa !251
  br label %147

147:                                              ; preds = %143, %139
  %148 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  call void @_ZN11xalanc_1_1020XalanNamespacesStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(144) %148)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !prof !374 {
  %2 = alloca i8, align 1
  %3 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !362
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !363
  %10 = udiv i64 %7, %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !364
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = urem i64 %7, %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !365
  %18 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 3
  %19 = load i8, ptr %18, align 1, !tbaa !367, !range !327, !noundef !328
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %131, label %21, !prof !375

21:                                               ; preds = %1
  %22 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 2
  %23 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 2, i32 1
  %24 = load i32, ptr %23, align 8, !tbaa !267
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %131, label %26, !prof !368

26:                                               ; preds = %21
  %27 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !215
  %29 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %28, i64 0, i32 12
  %30 = load i32, ptr %29, align 8, !tbaa !376
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %131, !prof !158

32:                                               ; preds = %26
  %33 = load ptr, ptr @_ZN11xalanc_1_109Constants20ELEMNAME_HTML_STRINGE, align 8, !tbaa !162
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %33, i64 0, i32 1
  %35 = load i32, ptr %34, align 8, !tbaa !267
  %36 = icmp eq i32 %24, %35
  br i1 %36, label %37, label %131, !prof !158

37:                                               ; preds = %32
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !330
  %40 = icmp eq i64 %39, 0
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %22, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8
  %43 = select i1 %40, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %42, !prof !239
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %33, i64 0, i32 1
  %45 = load i64, ptr %44, align 8, !tbaa !330
  %46 = icmp eq i64 %45, 0
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %33, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = select i1 %46, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %48, !prof !239
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef %43, ptr noundef %49, i32 noundef %24)
  br i1 %50, label %51, label %131, !prof !158

51:                                               ; preds = %37
  %52 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XSLTEngineImpl29pendingAttributesHasDefaultNSEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br i1 %52, label %131, label %53, !prof !239

53:                                               ; preds = %51
  %54 = load ptr, ptr %4, align 8, !tbaa !361
  %55 = load i64, ptr %6, align 8, !tbaa !362
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %54, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !363
  %58 = udiv i64 %55, %57
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %54, i64 0, i32 2, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !364
  %61 = getelementptr inbounds ptr, ptr %60, i64 %58
  %62 = load ptr, ptr %61, align 8, !tbaa !162
  %63 = urem i64 %55, %57
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %62, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !365
  %66 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %65, i64 %63
  %67 = load ptr, ptr %66, align 8, !tbaa !369
  %68 = getelementptr inbounds %"class.xalanc_1_10::FormatterListener", ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !377
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %131, !prof !158

71:                                               ; preds = %53
  %72 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %73 = load ptr, ptr %72, align 8, !tbaa !221
  %74 = load ptr, ptr %67, align 8, !tbaa !159
  %75 = getelementptr inbounds ptr, ptr %74, i64 15
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(24) %67), !prof !378
  %78 = load ptr, ptr %67, align 8, !tbaa !159
  %79 = getelementptr inbounds ptr, ptr %78, i64 18
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef nonnull align 8 dereferenceable(36) ptr %80(ptr noundef nonnull align 8 dereferenceable(24) %67), !prof !379
  %82 = load ptr, ptr %67, align 8, !tbaa !159
  %83 = getelementptr inbounds ptr, ptr %82, i64 19
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef nonnull align 8 dereferenceable(36) ptr %84(ptr noundef nonnull align 8 dereferenceable(24) %67), !prof !380
  %86 = load ptr, ptr %67, align 8, !tbaa !159
  %87 = getelementptr inbounds ptr, ptr %86, i64 16
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef nonnull align 8 dereferenceable(36) ptr %88(ptr noundef nonnull align 8 dereferenceable(24) %67), !prof !381
  %90 = load ptr, ptr %67, align 8, !tbaa !159
  %91 = getelementptr inbounds ptr, ptr %90, i64 17
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef nonnull align 8 dereferenceable(36) ptr %92(ptr noundef nonnull align 8 dereferenceable(24) %67), !prof !382
  %94 = load ptr, ptr %27, align 8, !tbaa !215
  %95 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %94, i64 0, i32 2
  %96 = load i32, ptr %95, align 8, !tbaa !383
  %97 = icmp ne i32 %96, 1
  %98 = load ptr, ptr %67, align 8, !tbaa !159
  %99 = getelementptr inbounds ptr, ptr %98, i64 20
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef i32 %100(ptr noundef nonnull align 8 dereferenceable(24) %67), !prof !384
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %108, !prof !239

103:                                              ; preds = %71
  %104 = load ptr, ptr %67, align 8, !tbaa !159
  %105 = getelementptr inbounds ptr, ptr %104, i64 20
  %106 = load ptr, ptr %105, align 8
  %107 = tail call noundef i32 %106(ptr noundef nonnull align 8 dereferenceable(24) %67)
  br label %108

108:                                              ; preds = %71, %103
  %109 = phi i32 [ %107, %103 ], [ 0, %71 ]
  %110 = load ptr, ptr %73, align 8, !tbaa !159
  %111 = getelementptr inbounds ptr, ptr %110, i64 127
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(24) %73, ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef nonnull align 8 dereferenceable(36) %81, ptr noundef nonnull align 8 dereferenceable(36) %85, ptr noundef nonnull align 8 dereferenceable(36) %89, ptr noundef nonnull align 8 dereferenceable(36) %93, i1 noundef zeroext %97, i32 noundef %109, i1 noundef zeroext true, i1 noundef zeroext false), !prof !385
  %114 = load ptr, ptr %4, align 8, !tbaa !361
  %115 = load i64, ptr %6, align 8, !tbaa !362
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %114, i64 0, i32 1
  %117 = load i64, ptr %116, align 8, !tbaa !363
  %118 = udiv i64 %115, %117
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %114, i64 0, i32 2, i32 3
  %120 = load ptr, ptr %119, align 8, !tbaa !364
  %121 = getelementptr inbounds ptr, ptr %120, i64 %118
  %122 = load ptr, ptr %121, align 8, !tbaa !162
  %123 = urem i64 %115, %117
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %122, i64 0, i32 3
  %125 = load ptr, ptr %124, align 8, !tbaa !365
  %126 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %125, i64 %123
  store ptr %113, ptr %126, align 8, !tbaa !162
  %127 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %128 = load i8, ptr %127, align 8, !tbaa !261, !range !327, !noundef !328
  %129 = icmp eq i8 %128, 0
  br i1 %129, label %131, label %130, !prof !158

130:                                              ; preds = %108
  store i8 0, ptr %127, align 8, !tbaa !261
  br label %131

131:                                              ; preds = %32, %53, %130, %108, %26, %51, %37, %21, %1
  %132 = load ptr, ptr %4, align 8, !tbaa !361
  %133 = load i64, ptr %6, align 8, !tbaa !362
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %132, i64 0, i32 1
  %135 = load i64, ptr %134, align 8, !tbaa !363
  %136 = udiv i64 %133, %135
  %137 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %132, i64 0, i32 2, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !364
  %139 = getelementptr inbounds ptr, ptr %138, i64 %136
  %140 = load ptr, ptr %139, align 8, !tbaa !162
  %141 = urem i64 %133, %135
  %142 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %140, i64 0, i32 3
  %143 = load ptr, ptr %142, align 8, !tbaa !365
  %144 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %143, i64 %141, i32 3
  %145 = load i8, ptr %144, align 1, !tbaa !367, !range !327, !noundef !328
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %152, label %147, !prof !375

147:                                              ; preds = %131
  %148 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %143, i64 %141, i32 4
  %149 = load i8, ptr %148, align 1, !tbaa !367, !range !327, !noundef !328
  %150 = icmp eq i8 %149, 0
  br i1 %150, label %152, label %151, !prof !368

151:                                              ; preds = %147
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br label %152

152:                                              ; preds = %151, %147, %131
  %153 = load ptr, ptr %4, align 8, !tbaa !361
  %154 = load i64, ptr %6, align 8, !tbaa !362
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %153, i64 0, i32 1
  %156 = load i64, ptr %155, align 8, !tbaa !363
  %157 = udiv i64 %154, %156
  %158 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %153, i64 0, i32 2, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !364
  %160 = getelementptr inbounds ptr, ptr %159, i64 %157
  %161 = load ptr, ptr %160, align 8, !tbaa !162
  %162 = urem i64 %154, %156
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %161, i64 0, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !365
  %165 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %164, i64 %162, i32 2
  %166 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %164, i64 %162, i32 2, i32 1
  %167 = load i32, ptr %166, align 8, !tbaa !267
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %320, label %169, !prof !386

169:                                              ; preds = %152
  %170 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %164, i64 %162, i32 4
  %171 = load i8, ptr %170, align 1, !tbaa !367, !range !327, !noundef !328
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %320, label %173, !prof !387

173:                                              ; preds = %169
  %174 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %175 = load i8, ptr %174, align 8, !tbaa !261, !range !327, !noundef !328
  %176 = icmp eq i8 %175, 0
  br i1 %176, label %181, label %177, !prof !388

177:                                              ; preds = %173
  %178 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %2) #26
  %179 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XSLTEngineImpl17isCDataResultElemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %165)
  %180 = zext i1 %179 to i8
  store i8 %180, ptr %2, align 1, !tbaa !367
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %178, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %2) #26
  br label %181

181:                                              ; preds = %177, %173
  %182 = load ptr, ptr %4, align 8, !tbaa !361
  %183 = load i64, ptr %6, align 8, !tbaa !362
  %184 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %182, i64 0, i32 1
  %185 = load i64, ptr %184, align 8, !tbaa !363
  %186 = udiv i64 %183, %185
  %187 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %182, i64 0, i32 2, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !364
  %189 = getelementptr inbounds ptr, ptr %188, i64 %186
  %190 = load ptr, ptr %189, align 8, !tbaa !162
  %191 = urem i64 %183, %185
  %192 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %190, i64 0, i32 3
  %193 = load ptr, ptr %192, align 8, !tbaa !365
  %194 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %193, i64 %191, i32 1
  %195 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %193, i64 %191
  %196 = load ptr, ptr %195, align 8, !tbaa !369
  %197 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %165, i64 0, i32 1
  %198 = load i64, ptr %197, align 8, !tbaa !330
  %199 = icmp eq i64 %198, 0
  %200 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %165, i64 0, i32 3
  %201 = load ptr, ptr %200, align 8
  %202 = select i1 %199, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %201, !prof !387
  %203 = load ptr, ptr %196, align 8, !tbaa !159
  %204 = getelementptr inbounds ptr, ptr %203, i64 10
  %205 = load ptr, ptr %204, align 8
  call void %205(ptr noundef nonnull align 8 dereferenceable(24) %196, ptr noundef %202, ptr noundef nonnull align 8 dereferenceable(8) %194), !prof !389
  %206 = load ptr, ptr %0, align 8, !tbaa !159
  %207 = getelementptr inbounds ptr, ptr %206, i64 18
  %208 = load ptr, ptr %207, align 8
  %209 = call noundef i64 %208(ptr noundef nonnull align 8 dereferenceable(1000) %0), !prof !390
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %310, label %211, !prof !388

211:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #26
  %212 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %213 = load ptr, ptr %212, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef 3, ptr noundef nonnull align 8 dereferenceable(8) %213, ptr noundef nonnull align 8 dereferenceable(36) %165, ptr noundef nonnull %194)
  %214 = load ptr, ptr %0, align 8, !tbaa !159
  %215 = getelementptr inbounds ptr, ptr %214, i64 21
  %216 = load ptr, ptr %215, align 8
  invoke void %216(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %217 unwind label %263

217:                                              ; preds = %211
  %218 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %219 = load i64, ptr %218, align 8, !tbaa !270
  %220 = icmp eq i64 %219, 0
  br i1 %220, label %232, label %221

221:                                              ; preds = %217
  %222 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %223 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %224 = load ptr, ptr %223, align 8, !tbaa !271
  %225 = load ptr, ptr %222, align 8, !tbaa !272
  %226 = load ptr, ptr %225, align 8, !tbaa !159
  %227 = getelementptr inbounds ptr, ptr %226, i64 3
  %228 = load ptr, ptr %227, align 8
  invoke void %228(ptr noundef nonnull align 8 dereferenceable(8) %225, ptr noundef %224)
          to label %232 unwind label %229

229:                                              ; preds = %221
  %230 = landingpad { ptr, i32 }
          catch ptr null
  %231 = extractvalue { ptr, i32 } %230, 0
  call void @__clang_call_terminate(ptr %231) #27
  unreachable

232:                                              ; preds = %217, %221
  %233 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %234 = load i64, ptr %233, align 8, !tbaa !270
  %235 = icmp eq i64 %234, 0
  br i1 %235, label %247, label %236

236:                                              ; preds = %232
  %237 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %238 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %239 = load ptr, ptr %238, align 8, !tbaa !271
  %240 = load ptr, ptr %237, align 8, !tbaa !272
  %241 = load ptr, ptr %240, align 8, !tbaa !159
  %242 = getelementptr inbounds ptr, ptr %241, i64 3
  %243 = load ptr, ptr %242, align 8
  invoke void %243(ptr noundef nonnull align 8 dereferenceable(8) %240, ptr noundef %239)
          to label %247 unwind label %244

244:                                              ; preds = %236
  %245 = landingpad { ptr, i32 }
          catch ptr null
  %246 = extractvalue { ptr, i32 } %245, 0
  call void @__clang_call_terminate(ptr %246) #27
  unreachable

247:                                              ; preds = %232, %236
  %248 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %249 = load i64, ptr %248, align 8, !tbaa !270
  %250 = icmp eq i64 %249, 0
  br i1 %250, label %262, label %251

251:                                              ; preds = %247
  %252 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %253 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %254 = load ptr, ptr %253, align 8, !tbaa !271
  %255 = load ptr, ptr %252, align 8, !tbaa !272
  %256 = load ptr, ptr %255, align 8, !tbaa !159
  %257 = getelementptr inbounds ptr, ptr %256, i64 3
  %258 = load ptr, ptr %257, align 8
  invoke void %258(ptr noundef nonnull align 8 dereferenceable(8) %255, ptr noundef %254)
          to label %262 unwind label %259

259:                                              ; preds = %251
  %260 = landingpad { ptr, i32 }
          catch ptr null
  %261 = extractvalue { ptr, i32 } %260, 0
  call void @__clang_call_terminate(ptr %261) #27
  unreachable

262:                                              ; preds = %247, %251
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  br label %310

263:                                              ; preds = %211
  %264 = landingpad { ptr, i32 }
          cleanup
  %265 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %266 = load i64, ptr %265, align 8, !tbaa !270
  %267 = icmp eq i64 %266, 0
  br i1 %267, label %279, label %268

268:                                              ; preds = %263
  %269 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %270 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %271 = load ptr, ptr %270, align 8, !tbaa !271
  %272 = load ptr, ptr %269, align 8, !tbaa !272
  %273 = load ptr, ptr %272, align 8, !tbaa !159
  %274 = getelementptr inbounds ptr, ptr %273, i64 3
  %275 = load ptr, ptr %274, align 8
  invoke void %275(ptr noundef nonnull align 8 dereferenceable(8) %272, ptr noundef %271)
          to label %279 unwind label %276

276:                                              ; preds = %268
  %277 = landingpad { ptr, i32 }
          catch ptr null
  %278 = extractvalue { ptr, i32 } %277, 0
  call void @__clang_call_terminate(ptr %278) #27
  unreachable

279:                                              ; preds = %263, %268
  %280 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %281 = load i64, ptr %280, align 8, !tbaa !270
  %282 = icmp eq i64 %281, 0
  br i1 %282, label %294, label %283

283:                                              ; preds = %279
  %284 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %285 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %286 = load ptr, ptr %285, align 8, !tbaa !271
  %287 = load ptr, ptr %284, align 8, !tbaa !272
  %288 = load ptr, ptr %287, align 8, !tbaa !159
  %289 = getelementptr inbounds ptr, ptr %288, i64 3
  %290 = load ptr, ptr %289, align 8
  invoke void %290(ptr noundef nonnull align 8 dereferenceable(8) %287, ptr noundef %286)
          to label %294 unwind label %291

291:                                              ; preds = %283
  %292 = landingpad { ptr, i32 }
          catch ptr null
  %293 = extractvalue { ptr, i32 } %292, 0
  call void @__clang_call_terminate(ptr %293) #27
  unreachable

294:                                              ; preds = %279, %283
  %295 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %296 = load i64, ptr %295, align 8, !tbaa !270
  %297 = icmp eq i64 %296, 0
  br i1 %297, label %309, label %298

298:                                              ; preds = %294
  %299 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %300 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %301 = load ptr, ptr %300, align 8, !tbaa !271
  %302 = load ptr, ptr %299, align 8, !tbaa !272
  %303 = load ptr, ptr %302, align 8, !tbaa !159
  %304 = getelementptr inbounds ptr, ptr %303, i64 3
  %305 = load ptr, ptr %304, align 8
  invoke void %305(ptr noundef nonnull align 8 dereferenceable(8) %302, ptr noundef %301)
          to label %309 unwind label %306

306:                                              ; preds = %298
  %307 = landingpad { ptr, i32 }
          catch ptr null
  %308 = extractvalue { ptr, i32 } %307, 0
  call void @__clang_call_terminate(ptr %308) #27
  unreachable

309:                                              ; preds = %294, %298
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  resume { ptr, i32 } %264

310:                                              ; preds = %262, %181
  %311 = load ptr, ptr %194, align 8, !tbaa !159
  %312 = getelementptr inbounds ptr, ptr %311, i64 9
  %313 = load ptr, ptr %312, align 8
  call void %313(ptr noundef nonnull align 8 dereferenceable(72) %194), !prof !391
  %314 = load i64, ptr %197, align 8, !tbaa !330
  %315 = icmp eq i64 %314, 0
  br i1 %315, label %319, label %316, !prof !387

316:                                              ; preds = %310
  %317 = load i64, ptr %197, align 8, !tbaa !330
  %318 = sub i64 %317, %314
  store i64 %318, ptr %197, align 8, !tbaa !330
  br label %319

319:                                              ; preds = %316, %310
  store i32 0, ptr %166, align 8, !tbaa !267
  br label %320

320:                                              ; preds = %319, %169, %152
  ret void
}

declare void @_ZN11xalanc_1_1020XalanNamespacesStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, i32 noundef %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !prof !392 {
  %8 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices20s_XMLNamespacePrefixE, align 8, !tbaa !162
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %8)
  br i1 %9, label %150, label %10, !prof !393

10:                                               ; preds = %7
  %11 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !162
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %11)
  br i1 %12, label %13, label %44, !prof !393

13:                                               ; preds = %10
  %14 = load ptr, ptr %0, align 8, !tbaa !159
  %15 = getelementptr inbounds ptr, ptr %14, i64 35
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
  %18 = icmp eq i32 %4, 0
  %19 = icmp eq ptr %17, null
  br i1 %18, label %37, label %20

20:                                               ; preds = %13
  br i1 %19, label %33, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 0, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !267
  %24 = icmp eq i32 %23, %4
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 0, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !330
  %28 = icmp eq i64 %27, 0
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %17, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8
  %31 = select i1 %28, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %30
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %31, ptr noundef %3, i32 noundef %4)
  br i1 %32, label %128, label %33

33:                                               ; preds = %21, %25, %20
  br i1 %5, label %36, label %34

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %35, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE, ptr noundef %3, i32 noundef %4)
  br label %128

36:                                               ; preds = %33
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl33reportDuplicateNamespaceNodeErrorERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE, ptr noundef %6)
  br label %128

37:                                               ; preds = %13
  br i1 %19, label %128, label %38

38:                                               ; preds = %37
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %17, i64 0, i32 1
  %40 = load i32, ptr %39, align 8, !tbaa !267
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %128, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %43, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE, ptr noundef %3, i32 noundef 0)
  br label %128

44:                                               ; preds = %10
  %45 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !162
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !330
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50, !prof !393
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !267
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %45, i64 0, i32 1
  %55 = load i64, ptr %54, align 8, !tbaa !330
  %56 = icmp eq i64 %55, 0
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %45, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8
  %59 = select i1 %56, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %58, !prof !393
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %45, i64 0, i32 1
  %61 = load i32, ptr %60, align 8, !tbaa !267
  %62 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %51, i32 noundef %53, ptr noundef %59, i32 noundef %61)
  br i1 %62, label %63, label %128, !prof !394

63:                                               ; preds = %44
  %64 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %65 = load ptr, ptr %64, align 8, !tbaa !221
  %66 = load ptr, ptr %65, align 8, !tbaa !159
  %67 = getelementptr inbounds ptr, ptr %66, i64 23
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef nonnull align 8 dereferenceable(36) ptr %68(ptr noundef nonnull align 8 dereferenceable(24) %65), !prof !395
  %70 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE, align 8, !tbaa !162
  %71 = load i32, ptr %70, align 4, !tbaa !396
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %69, i32 noundef %71, i32 noundef -1)
          to label %72 unwind label %87, !prof !158

72:                                               ; preds = %63
  %73 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %74 = invoke noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %73, ptr noundef nonnull align 8 dereferenceable(36) %69)
          to label %75 unwind label %89, !prof !158

75:                                               ; preds = %72, %75
  %76 = phi ptr [ %79, %75 ], [ %3, %72 ]
  %77 = load i16, ptr %76, align 2, !tbaa !331
  %78 = icmp eq i16 %77, 0
  %79 = getelementptr inbounds i16, ptr %76, i64 1
  br i1 %78, label %80, label %75, !prof !397, !llvm.loop !398

80:                                               ; preds = %75
  %81 = ptrtoint ptr %76 to i64
  %82 = ptrtoint ptr %3 to i64
  %83 = sub i64 %81, %82
  %84 = lshr exact i64 %83, 1
  %85 = trunc i64 %84 to i32
  %86 = icmp eq ptr %74, null
  br i1 %86, label %107, label %93, !prof !158

87:                                               ; preds = %63
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %118

89:                                               ; preds = %72
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %118

91:                                               ; preds = %107, %97, %108
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %118

93:                                               ; preds = %80
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %74, i64 0, i32 1
  %95 = load i32, ptr %94, align 8, !tbaa !267
  %96 = icmp eq i32 %95, %85
  br i1 %96, label %97, label %106

97:                                               ; preds = %93
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %74, i64 0, i32 1
  %99 = load i64, ptr %98, align 8, !tbaa !330
  %100 = icmp eq i64 %99, 0
  %101 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %74, i64 0, i32 3
  %102 = load ptr, ptr %101, align 8
  %103 = select i1 %100, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %102
  %104 = invoke noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef %103, ptr noundef %3, i32 noundef %85)
          to label %105 unwind label %91

105:                                              ; preds = %97
  br i1 %104, label %109, label %106

106:                                              ; preds = %93, %105
  br i1 %5, label %108, label %107

107:                                              ; preds = %80, %106
  invoke void @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %73, ptr noundef nonnull align 8 dereferenceable(36) %69, ptr noundef %3, i32 noundef %85)
          to label %109 unwind label %91

108:                                              ; preds = %106
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl33reportDuplicateNamespaceNodeErrorERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %69, ptr noundef %6)
          to label %109 unwind label %91

109:                                              ; preds = %107, %108, %105
  %110 = phi i32 [ 1, %105 ], [ 0, %108 ], [ 0, %107 ]
  %111 = load ptr, ptr %65, align 8, !tbaa !159
  %112 = getelementptr inbounds ptr, ptr %111, i64 24
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef zeroext i1 %113(ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(36) %69)
          to label %128 unwind label %115, !prof !399

115:                                              ; preds = %109
  %116 = landingpad { ptr, i32 }
          catch ptr null
  %117 = extractvalue { ptr, i32 } %116, 0
  tail call void @__clang_call_terminate(ptr %117) #27
  unreachable

118:                                              ; preds = %87, %91, %89
  %119 = phi { ptr, i32 } [ %88, %87 ], [ %92, %91 ], [ %90, %89 ]
  %120 = load ptr, ptr %65, align 8, !tbaa !159
  %121 = getelementptr inbounds ptr, ptr %120, i64 24
  %122 = load ptr, ptr %121, align 8
  %123 = invoke noundef zeroext i1 %122(ptr noundef nonnull align 8 dereferenceable(24) %65, ptr noundef nonnull align 8 dereferenceable(36) %69)
          to label %127 unwind label %124

124:                                              ; preds = %118
  %125 = landingpad { ptr, i32 }
          catch ptr null
  %126 = extractvalue { ptr, i32 } %125, 0
  tail call void @__clang_call_terminate(ptr %126) #27
  unreachable

127:                                              ; preds = %118
  resume { ptr, i32 } %119

128:                                              ; preds = %109, %34, %36, %42, %25, %38, %37, %44
  %129 = phi i32 [ 0, %44 ], [ 0, %34 ], [ 0, %36 ], [ 0, %42 ], [ 1, %25 ], [ 1, %38 ], [ 1, %37 ], [ %110, %109 ]
  %130 = and i32 %129, 1
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %150, !prof !400

132:                                              ; preds = %128
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %134 = load i64, ptr %133, align 8, !tbaa !330
  %135 = icmp eq i64 %134, 0
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %137 = load ptr, ptr %136, align 8
  %138 = select i1 %135, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %137, !prof !393
  %139 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRTYPE_CDATAE, align 8, !tbaa !162
  %140 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %139, i64 0, i32 1
  %141 = load i64, ptr %140, align 8, !tbaa !330
  %142 = icmp eq i64 %141, 0
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %139, i64 0, i32 3
  %144 = load ptr, ptr %143, align 8
  %145 = select i1 %142, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %144, !prof !393
  %146 = load ptr, ptr %1, align 8, !tbaa !159
  %147 = getelementptr inbounds ptr, ptr %146, i64 10
  %148 = load ptr, ptr %147, align 8
  %149 = tail call noundef zeroext i1 %148(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %138, ptr noundef %145, ptr noundef %3), !prof !401
  br label %150

150:                                              ; preds = %128, %132, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl33reportDuplicateNamespaceNodeErrorERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !267
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %25

13:                                               ; preds = %3
  %14 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 141)
          to label %27 unwind label %15

15:                                               ; preds = %33, %30, %25, %13
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = load ptr, ptr %5, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 24
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %24 unwind label %21

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #27
  unreachable

24:                                               ; preds = %15
  resume { ptr, i32 } %16

25:                                               ; preds = %3
  %26 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 142, ptr noundef nonnull align 8 dereferenceable(36) %1)
          to label %27 unwind label %15

27:                                               ; preds = %13, %25
  %28 = icmp eq ptr %2, null
  %29 = load ptr, ptr %0, align 8, !tbaa !159
  br i1 %28, label %33, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds ptr, ptr %29, i64 33
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef null)
          to label %36 unwind label %15

33:                                               ; preds = %27
  %34 = getelementptr inbounds ptr, ptr %29, i64 32
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef null, ptr noundef null)
          to label %36 unwind label %15

36:                                               ; preds = %33, %30
  %37 = load ptr, ptr %5, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 24
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %44 unwind label %41

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #27
  unreachable

44:                                               ; preds = %36
  ret void
}

declare void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014XSLTEngineImpl27getResultNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #16 align 2 !prof !402 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XSLTEngineImpl29pendingAttributesHasDefaultNSEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) local_unnamed_addr #4 align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !362
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !363
  %8 = udiv i64 %5, %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !364
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = urem i64 %5, %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !365
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef i32 %19(ptr noundef nonnull align 8 dereferenceable(72) %16), !prof !403
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %44, !prof !404

22:                                               ; preds = %1
  %23 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 1
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 3
  br label %30

26:                                               ; preds = %30
  %27 = add nuw i32 %32, 1
  %28 = icmp ult i32 %27, %20
  %29 = icmp eq i32 %27, %20
  br i1 %29, label %44, label %30, !prof !404, !llvm.loop !405

30:                                               ; preds = %22, %26
  %31 = phi i1 [ %21, %22 ], [ %28, %26 ]
  %32 = phi i32 [ 0, %22 ], [ %27, %26 ]
  %33 = load ptr, ptr %16, align 8, !tbaa !159
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(72) %16, i32 noundef %32), !prof !406
  %37 = load i64, ptr %24, align 8, !tbaa !330
  %38 = icmp eq i64 %37, 0
  %39 = load ptr, ptr %25, align 8
  %40 = select i1 %38, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %39, !prof !239
  %41 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %40)
  %42 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %36)
  %43 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %40, i32 noundef %41, ptr noundef %36, i32 noundef %42)
  br i1 %43, label %44, label %26, !prof !239

44:                                               ; preds = %30, %26, %1
  %45 = phi i1 [ %21, %1 ], [ %31, %30 ], [ %28, %26 ]
  ret i1 %45
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XSLTEngineImpl17isCDataResultElemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %4 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %5 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %6 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !407
  %9 = icmp eq i64 %8, 1
  br i1 %9, label %10, label %174

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !267
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !330
  %17 = icmp eq i64 %16, 0
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8
  %20 = select i1 %17, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19
  br label %21

21:                                               ; preds = %24, %14
  %22 = phi ptr [ %20, %14 ], [ %25, %24 ]
  %23 = load i16, ptr %22, align 2, !tbaa !331
  switch i16 %23, label %24 [
    i16 58, label %26
    i16 0, label %26
  ]

24:                                               ; preds = %21
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  br label %21, !llvm.loop !332

26:                                               ; preds = %21, %21
  %27 = ptrtoint ptr %22 to i64
  %28 = ptrtoint ptr %20 to i64
  %29 = sub i64 %27, %28
  %30 = lshr exact i64 %29, 1
  %31 = trunc i64 %30 to i32
  br label %32

32:                                               ; preds = %10, %26
  %33 = phi i32 [ %31, %26 ], [ 0, %10 ]
  %34 = icmp eq i32 %33, %12
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %37 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %36, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
  %38 = icmp eq ptr %37, null
  %39 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %40 = load ptr, ptr %39, align 8, !tbaa !215
  br i1 %38, label %46, label %41

41:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #26
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %42 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1014StylesheetRoot25isCDATASectionElementNameERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(2064) %40, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %43 unwind label %44

43:                                               ; preds = %41
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  br label %174

44:                                               ; preds = %41
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #26
  br label %172

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #26
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %47 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1014StylesheetRoot25isCDATASectionElementNameERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(2064) %40, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %48 unwind label %49

48:                                               ; preds = %46
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  br label %174

49:                                               ; preds = %46
  %50 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #26
  br label %172

51:                                               ; preds = %32
  %52 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %53 = load ptr, ptr %52, align 8, !tbaa !221
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = getelementptr inbounds ptr, ptr %54, i64 23
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef nonnull align 8 dereferenceable(36) ptr %56(ptr noundef nonnull align 8 dereferenceable(24) %53)
  %58 = load ptr, ptr %52, align 8, !tbaa !221
  %59 = load ptr, ptr %58, align 8, !tbaa !159
  %60 = getelementptr inbounds ptr, ptr %59, i64 23
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef nonnull align 8 dereferenceable(36) ptr %61(ptr noundef nonnull align 8 dereferenceable(24) %58)
          to label %63 unwind label %77

63:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %62, i32 noundef 0, i32 noundef %33)
          to label %64 unwind label %79

64:                                               ; preds = %63
  %65 = add i32 %33, 1
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %57, i32 noundef %65, i32 noundef -1)
          to label %66 unwind label %79

66:                                               ; preds = %64
  %67 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !162
  %68 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %62, ptr noundef nonnull align 8 dereferenceable(36) %67)
          to label %69 unwind label %79

69:                                               ; preds = %66
  br i1 %68, label %70, label %87

70:                                               ; preds = %69
  %71 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %72 = load ptr, ptr %71, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #26
  %73 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !162
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %73, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %74 unwind label %81

74:                                               ; preds = %70
  %75 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1014StylesheetRoot25isCDATASectionElementNameERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(2064) %72, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %76 unwind label %83

76:                                               ; preds = %74
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  br label %137

77:                                               ; preds = %51
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %163

79:                                               ; preds = %66, %64, %63
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %154

81:                                               ; preds = %70
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %85

83:                                               ; preds = %74
  %84 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #26
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %82, %81 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #26
  br label %154

87:                                               ; preds = %69
  %88 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %89 = invoke noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %88, ptr noundef nonnull align 8 dereferenceable(36) %62)
          to label %90 unwind label %112

90:                                               ; preds = %87
  %91 = icmp eq ptr %89, null
  br i1 %91, label %92, label %125

92:                                               ; preds = %90
  %93 = load ptr, ptr %52, align 8, !tbaa !221
  %94 = load ptr, ptr %93, align 8, !tbaa !159
  %95 = getelementptr inbounds ptr, ptr %94, i64 23
  %96 = load ptr, ptr %95, align 8
  %97 = invoke noundef nonnull align 8 dereferenceable(36) ptr %96(ptr noundef nonnull align 8 dereferenceable(24) %93)
          to label %98 unwind label %114

98:                                               ; preds = %92
  %99 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %97, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %62)
          to label %100 unwind label %116

100:                                              ; preds = %98
  %101 = load ptr, ptr %0, align 8, !tbaa !159
  %102 = getelementptr inbounds ptr, ptr %101, i64 32
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %99, ptr noundef null, ptr noundef null)
          to label %104 unwind label %116

104:                                              ; preds = %100
  %105 = load ptr, ptr %93, align 8, !tbaa !159
  %106 = getelementptr inbounds ptr, ptr %105, i64 24
  %107 = load ptr, ptr %106, align 8
  %108 = invoke noundef zeroext i1 %107(ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull align 8 dereferenceable(36) %97)
          to label %137 unwind label %109

109:                                              ; preds = %104
  %110 = landingpad { ptr, i32 }
          catch ptr null
  %111 = extractvalue { ptr, i32 } %110, 0
  tail call void @__clang_call_terminate(ptr %111) #27
  unreachable

112:                                              ; preds = %87
  %113 = landingpad { ptr, i32 }
          cleanup
  br label %154

114:                                              ; preds = %92
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %154

116:                                              ; preds = %100, %98
  %117 = landingpad { ptr, i32 }
          cleanup
  %118 = load ptr, ptr %93, align 8, !tbaa !159
  %119 = getelementptr inbounds ptr, ptr %118, i64 24
  %120 = load ptr, ptr %119, align 8
  %121 = invoke noundef zeroext i1 %120(ptr noundef nonnull align 8 dereferenceable(24) %93, ptr noundef nonnull align 8 dereferenceable(36) %97)
          to label %154 unwind label %122

122:                                              ; preds = %116
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  tail call void @__clang_call_terminate(ptr %124) #27
  unreachable

125:                                              ; preds = %90
  %126 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 11
  %127 = load ptr, ptr %126, align 8, !tbaa !215
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #26
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %89, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %128 unwind label %131

128:                                              ; preds = %125
  %129 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1014StylesheetRoot25isCDATASectionElementNameERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(2064) %127, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %130 unwind label %133

130:                                              ; preds = %128
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  br label %137

131:                                              ; preds = %125
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %135

133:                                              ; preds = %128
  %134 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #26
  br label %135

135:                                              ; preds = %133, %131
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %132, %131 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #26
  br label %154

137:                                              ; preds = %76, %130, %104
  %138 = phi i1 [ %75, %76 ], [ %129, %130 ], [ false, %104 ]
  %139 = load ptr, ptr %58, align 8, !tbaa !159
  %140 = getelementptr inbounds ptr, ptr %139, i64 24
  %141 = load ptr, ptr %140, align 8
  %142 = invoke noundef zeroext i1 %141(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(36) %62)
          to label %146 unwind label %143

143:                                              ; preds = %137
  %144 = landingpad { ptr, i32 }
          catch ptr null
  %145 = extractvalue { ptr, i32 } %144, 0
  call void @__clang_call_terminate(ptr %145) #27
  unreachable

146:                                              ; preds = %137
  %147 = load ptr, ptr %53, align 8, !tbaa !159
  %148 = getelementptr inbounds ptr, ptr %147, i64 24
  %149 = load ptr, ptr %148, align 8
  %150 = invoke noundef zeroext i1 %149(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %174 unwind label %151

151:                                              ; preds = %146
  %152 = landingpad { ptr, i32 }
          catch ptr null
  %153 = extractvalue { ptr, i32 } %152, 0
  call void @__clang_call_terminate(ptr %153) #27
  unreachable

154:                                              ; preds = %79, %85, %135, %112, %116, %114
  %155 = phi { ptr, i32 } [ %86, %85 ], [ %80, %79 ], [ %136, %135 ], [ %113, %112 ], [ %115, %114 ], [ %117, %116 ]
  %156 = load ptr, ptr %58, align 8, !tbaa !159
  %157 = getelementptr inbounds ptr, ptr %156, i64 24
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef zeroext i1 %158(ptr noundef nonnull align 8 dereferenceable(24) %58, ptr noundef nonnull align 8 dereferenceable(36) %62)
          to label %163 unwind label %160

160:                                              ; preds = %154
  %161 = landingpad { ptr, i32 }
          catch ptr null
  %162 = extractvalue { ptr, i32 } %161, 0
  call void @__clang_call_terminate(ptr %162) #27
  unreachable

163:                                              ; preds = %77, %154
  %164 = phi { ptr, i32 } [ %78, %77 ], [ %155, %154 ]
  %165 = load ptr, ptr %53, align 8, !tbaa !159
  %166 = getelementptr inbounds ptr, ptr %165, i64 24
  %167 = load ptr, ptr %166, align 8
  %168 = invoke noundef zeroext i1 %167(ptr noundef nonnull align 8 dereferenceable(24) %53, ptr noundef nonnull align 8 dereferenceable(36) %57)
          to label %172 unwind label %169

169:                                              ; preds = %163
  %170 = landingpad { ptr, i32 }
          catch ptr null
  %171 = extractvalue { ptr, i32 } %170, 0
  call void @__clang_call_terminate(ptr %171) #27
  unreachable

172:                                              ; preds = %163, %44, %49
  %173 = phi { ptr, i32 } [ %45, %44 ], [ %50, %49 ], [ %164, %163 ]
  resume { ptr, i32 } %173

174:                                              ; preds = %146, %48, %43, %2
  %175 = phi i1 [ false, %2 ], [ %42, %43 ], [ %47, %48 ], [ %138, %146 ]
  ret i1 %175
}

declare void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPKNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #16 align 2 !prof !349 {
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(144) %3)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !362
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !363
  %10 = udiv i64 %7, %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !364
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = urem i64 %7, %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !365
  %18 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %18, i32 noundef 0, i32 noundef -1)
  %19 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef %1, i32 noundef %19)
  %21 = load ptr, ptr %4, align 8, !tbaa !361
  %22 = load i64, ptr %6, align 8, !tbaa !362
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %21, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !363
  %25 = udiv i64 %22, %24
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %21, i64 0, i32 2, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !364
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !162
  %30 = urem i64 %22, %24
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %29, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !365
  %33 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %32, i64 %30, i32 4
  store i8 1, ptr %33, align 1, !tbaa !367
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKtRN11xercesc_2_713AttributeListE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %4 = load ptr, ptr %2, align 8, !tbaa !159
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !361
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !362
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %9, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !363
  %14 = udiv i64 %11, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %9, i64 0, i32 2, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !364
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !162
  %19 = urem i64 %11, %13
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %18, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !365
  %22 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %21, i64 %19, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = getelementptr inbounds ptr, ptr %23, i64 9
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(72) %22)
  %26 = icmp eq i32 %7, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %29, %3
  %28 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv(ptr noundef nonnull align 8 dereferenceable(144) %28)
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl25setPendingElementNameImplEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1)
  ret void

29:                                               ; preds = %3, %29
  %30 = phi i32 [ %47, %29 ], [ 0, %3 ]
  %31 = load ptr, ptr %2, align 8, !tbaa !159
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %30)
  %35 = load ptr, ptr %2, align 8, !tbaa !159
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %30)
  %39 = load ptr, ptr %2, align 8, !tbaa !159
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef %30)
  %43 = load ptr, ptr %22, align 8, !tbaa !159
  %44 = getelementptr inbounds ptr, ptr %43, i64 10
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef zeroext i1 %45(ptr noundef nonnull align 8 dereferenceable(72) %22, ptr noundef %34, ptr noundef %38, ptr noundef %42)
  %47 = add nuw i32 %30, 1
  %48 = icmp eq i32 %47, %7
  br i1 %48, label %27, label %29, !llvm.loop !408
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !prof !349 {
  %3 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !362
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !363
  %10 = udiv i64 %7, %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !364
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = urem i64 %7, %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !365
  %18 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15
  %19 = load ptr, ptr %18, align 8, !tbaa !369
  %20 = load ptr, ptr %19, align 8, !tbaa !159
  %21 = getelementptr inbounds ptr, ptr %20, i64 4
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef %1), !prof !409
  %23 = load ptr, ptr %0, align 8, !tbaa !159
  %24 = getelementptr inbounds ptr, ptr %23, i64 18
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i64 %25(ptr noundef nonnull align 8 dereferenceable(1000) %0), !prof !390
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %140, label %28, !prof !388

28:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #26
  %29 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !329
  %31 = load ptr, ptr %4, align 8, !tbaa !361
  %32 = load i64, ptr %6, align 8, !tbaa !362
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %31, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !363
  %35 = udiv i64 %32, %34
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %31, i64 0, i32 2, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !364
  %38 = getelementptr inbounds ptr, ptr %37, i64 %35
  %39 = load ptr, ptr %38, align 8, !tbaa !162
  %40 = urem i64 %32, %34
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %39, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !365
  %43 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %42, i64 %40, i32 1
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef 4, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef nonnull %43)
  %44 = load ptr, ptr %0, align 8, !tbaa !159
  %45 = getelementptr inbounds ptr, ptr %44, i64 21
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %47 unwind label %93

47:                                               ; preds = %28
  %48 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !270
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %53 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !271
  %55 = load ptr, ptr %52, align 8, !tbaa !272
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %54)
          to label %62 unwind label %59

59:                                               ; preds = %51
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  call void @__clang_call_terminate(ptr %61) #27
  unreachable

62:                                               ; preds = %47, %51
  %63 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !270
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %68 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !271
  %70 = load ptr, ptr %67, align 8, !tbaa !272
  %71 = load ptr, ptr %70, align 8, !tbaa !159
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %69)
          to label %77 unwind label %74

74:                                               ; preds = %66
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  call void @__clang_call_terminate(ptr %76) #27
  unreachable

77:                                               ; preds = %62, %66
  %78 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !270
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %83 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !271
  %85 = load ptr, ptr %82, align 8, !tbaa !272
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %81
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #27
  unreachable

92:                                               ; preds = %77, %81
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  br label %140

93:                                               ; preds = %28
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !270
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %100 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !271
  %102 = load ptr, ptr %99, align 8, !tbaa !272
  %103 = load ptr, ptr %102, align 8, !tbaa !159
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef %101)
          to label %109 unwind label %106

106:                                              ; preds = %98
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = extractvalue { ptr, i32 } %107, 0
  call void @__clang_call_terminate(ptr %108) #27
  unreachable

109:                                              ; preds = %93, %98
  %110 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !270
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %115 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !271
  %117 = load ptr, ptr %114, align 8, !tbaa !272
  %118 = load ptr, ptr %117, align 8, !tbaa !159
  %119 = getelementptr inbounds ptr, ptr %118, i64 3
  %120 = load ptr, ptr %119, align 8
  invoke void %120(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef %116)
          to label %124 unwind label %121

121:                                              ; preds = %113
  %122 = landingpad { ptr, i32 }
          catch ptr null
  %123 = extractvalue { ptr, i32 } %122, 0
  call void @__clang_call_terminate(ptr %123) #27
  unreachable

124:                                              ; preds = %109, %113
  %125 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !270
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %130 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !271
  %132 = load ptr, ptr %129, align 8, !tbaa !272
  %133 = load ptr, ptr %132, align 8, !tbaa !159
  %134 = getelementptr inbounds ptr, ptr %133, i64 3
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %131)
          to label %139 unwind label %136

136:                                              ; preds = %128
  %137 = landingpad { ptr, i32 }
          catch ptr null
  %138 = extractvalue { ptr, i32 } %137, 0
  call void @__clang_call_terminate(ptr %138) #27
  unreachable

139:                                              ; preds = %124, %128
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  resume { ptr, i32 } %94

140:                                              ; preds = %92, %2
  %141 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  call void @_ZN11xalanc_1_1020XalanNamespacesStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(144) %141)
  %142 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %143 = load i8, ptr %142, align 8, !tbaa !261, !range !327, !noundef !328
  %144 = icmp eq i8 %143, 0
  br i1 %144, label %149, label %145, !prof !388

145:                                              ; preds = %140
  %146 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !251
  %148 = add i64 %147, -1
  store i64 %148, ptr %146, align 8, !tbaa !251
  br label %149

149:                                              ; preds = %145, %140
  ret void
}

declare void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtPNS2_13AttributeListE(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #16 align 2 !prof !410 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !362
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !363
  %11 = udiv i64 %8, %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !364
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = urem i64 %8, %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !365
  %19 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %18, i64 %16, i32 4
  store i8 1, ptr %19, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %21 = load i8, ptr %20, align 8, !tbaa !261, !range !327, !noundef !328
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %57, label %23, !prof !411

23:                                               ; preds = %4
  %24 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !245
  %26 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !251
  %28 = getelementptr i8, ptr %25, i64 %27
  %29 = getelementptr i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !367, !range !327, !noundef !328
  %31 = icmp eq i8 %30, 0
  br i1 %31, label %57, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %5, align 8, !tbaa !361
  %34 = load i64, ptr %7, align 8, !tbaa !362
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %33, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !363
  %37 = udiv i64 %34, %36
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %33, i64 0, i32 2, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !364
  %40 = getelementptr inbounds ptr, ptr %39, i64 %37
  %41 = load ptr, ptr %40, align 8, !tbaa !162
  %42 = urem i64 %34, %36
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %41, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !365
  %45 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %44, i64 %42
  %46 = load ptr, ptr %45, align 8, !tbaa !369
  %47 = zext i32 %2 to i64
  %48 = getelementptr inbounds i16, ptr %1, i64 %47
  %49 = load ptr, ptr %46, align 8, !tbaa !159
  %50 = getelementptr inbounds ptr, ptr %49, i64 13
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(24) %46, ptr noundef %48, i32 noundef %3)
  %52 = load ptr, ptr %0, align 8, !tbaa !159
  %53 = getelementptr inbounds ptr, ptr %52, i64 18
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef i64 %54(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %84, label %82

57:                                               ; preds = %4, %23
  %58 = load ptr, ptr %5, align 8, !tbaa !361
  %59 = load i64, ptr %7, align 8, !tbaa !362
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %58, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !363
  %62 = udiv i64 %59, %61
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %58, i64 0, i32 2, i32 3
  %64 = load ptr, ptr %63, align 8, !tbaa !364
  %65 = getelementptr inbounds ptr, ptr %64, i64 %62
  %66 = load ptr, ptr %65, align 8, !tbaa !162
  %67 = urem i64 %59, %61
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %66, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !365
  %70 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %69, i64 %67
  %71 = load ptr, ptr %70, align 8, !tbaa !369
  %72 = zext i32 %2 to i64
  %73 = getelementptr inbounds i16, ptr %1, i64 %72
  %74 = load ptr, ptr %71, align 8, !tbaa !159
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef %73, i32 noundef %3), !prof !412
  %77 = load ptr, ptr %0, align 8, !tbaa !159
  %78 = getelementptr inbounds ptr, ptr %77, i64 18
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef i64 %79(ptr noundef nonnull align 8 dereferenceable(1000) %0), !prof !413
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %84, label %82, !prof !411

82:                                               ; preds = %57, %32
  %83 = phi i1 [ true, %32 ], [ false, %57 ]
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %83)
  br label %84

84:                                               ; preds = %82, %57, %32
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %6 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %6) #26
  %7 = select i1 %4, i32 10, i32 5
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj(ptr noundef nonnull align 8 dereferenceable(144) %6, i32 noundef %7, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %10 = load ptr, ptr %0, align 8, !tbaa !159
  %11 = getelementptr inbounds ptr, ptr %10, i64 21
  %12 = load ptr, ptr %11, align 8
  invoke void %12(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %6)
          to label %13 unwind label %59

13:                                               ; preds = %5
  %14 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 6, i32 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !270
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 6
  %19 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 6, i32 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !271
  %21 = load ptr, ptr %18, align 8, !tbaa !272
  %22 = load ptr, ptr %21, align 8, !tbaa !159
  %23 = getelementptr inbounds ptr, ptr %22, i64 3
  %24 = load ptr, ptr %23, align 8
  invoke void %24(ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef %20)
          to label %28 unwind label %25

25:                                               ; preds = %17
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  call void @__clang_call_terminate(ptr %27) #27
  unreachable

28:                                               ; preds = %13, %17
  %29 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 5, i32 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !270
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %43, label %32

32:                                               ; preds = %28
  %33 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 5
  %34 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 5, i32 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !271
  %36 = load ptr, ptr %33, align 8, !tbaa !272
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %28, %32
  %44 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 2, i32 0, i32 2
  %45 = load i64, ptr %44, align 8, !tbaa !270
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %58, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 2
  %49 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 2, i32 0, i32 3
  %50 = load ptr, ptr %49, align 8, !tbaa !271
  %51 = load ptr, ptr %48, align 8, !tbaa !272
  %52 = load ptr, ptr %51, align 8, !tbaa !159
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef %50)
          to label %58 unwind label %55

55:                                               ; preds = %47
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  call void @__clang_call_terminate(ptr %57) #27
  unreachable

58:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #26
  ret void

59:                                               ; preds = %5
  %60 = landingpad { ptr, i32 }
          cleanup
  %61 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 6, i32 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !270
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %75, label %64

64:                                               ; preds = %59
  %65 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 6
  %66 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 6, i32 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !271
  %68 = load ptr, ptr %65, align 8, !tbaa !272
  %69 = load ptr, ptr %68, align 8, !tbaa !159
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %67)
          to label %75 unwind label %72

72:                                               ; preds = %64
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #27
  unreachable

75:                                               ; preds = %59, %64
  %76 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 5, i32 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !270
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %90, label %79

79:                                               ; preds = %75
  %80 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 5
  %81 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 5, i32 0, i32 3
  %82 = load ptr, ptr %81, align 8, !tbaa !271
  %83 = load ptr, ptr %80, align 8, !tbaa !272
  %84 = load ptr, ptr %83, align 8, !tbaa !159
  %85 = getelementptr inbounds ptr, ptr %84, i64 3
  %86 = load ptr, ptr %85, align 8
  invoke void %86(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef %82)
          to label %90 unwind label %87

87:                                               ; preds = %79
  %88 = landingpad { ptr, i32 }
          catch ptr null
  %89 = extractvalue { ptr, i32 } %88, 0
  call void @__clang_call_terminate(ptr %89) #27
  unreachable

90:                                               ; preds = %75, %79
  %91 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 2, i32 0, i32 2
  %92 = load i64, ptr %91, align 8, !tbaa !270
  %93 = icmp eq i64 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %90
  %95 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 2
  %96 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %6, i64 0, i32 2, i32 0, i32 3
  %97 = load ptr, ptr %96, align 8, !tbaa !271
  %98 = load ptr, ptr %95, align 8, !tbaa !272
  %99 = load ptr, ptr %98, align 8, !tbaa !159
  %100 = getelementptr inbounds ptr, ptr %99, i64 3
  %101 = load ptr, ptr %100, align 8
  invoke void %101(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef %97)
          to label %105 unwind label %102

102:                                              ; preds = %94
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #27
  unreachable

105:                                              ; preds = %90, %94
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %6) #26
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #16 align 2 !prof !414 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !363
  %9 = udiv i64 %6, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = urem i64 %6, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 4
  store i8 1, ptr %17, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %18 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %19 = load i8, ptr %18, align 8, !tbaa !261, !range !327, !noundef !328
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %50, label %21, !prof !415

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !245
  %24 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !251
  %26 = getelementptr i8, ptr %23, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !367, !range !327, !noundef !328
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %50, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %3, align 8, !tbaa !361
  %32 = load i64, ptr %5, align 8, !tbaa !362
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %31, i64 0, i32 1
  %34 = load i64, ptr %33, align 8, !tbaa !363
  %35 = udiv i64 %32, %34
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %31, i64 0, i32 2, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !364
  %38 = getelementptr inbounds ptr, ptr %37, i64 %35
  %39 = load ptr, ptr %38, align 8, !tbaa !162
  %40 = urem i64 %32, %34
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %39, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !365
  %43 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %42, i64 %40
  %44 = load ptr, ptr %43, align 8, !tbaa !369
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %44, i64 105, i64 0)
  %45 = load ptr, ptr %0, align 8, !tbaa !159
  %46 = getelementptr inbounds ptr, ptr %45, i64 18
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef i64 %47(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %72, label %70

50:                                               ; preds = %2, %21
  %51 = load ptr, ptr %3, align 8, !tbaa !361
  %52 = load i64, ptr %5, align 8, !tbaa !362
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %51, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !363
  %55 = udiv i64 %52, %54
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %51, i64 0, i32 2, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !364
  %58 = getelementptr inbounds ptr, ptr %57, i64 %55
  %59 = load ptr, ptr %58, align 8, !tbaa !162
  %60 = urem i64 %52, %54
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %59, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !365
  %63 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %62, i64 %60
  %64 = load ptr, ptr %63, align 8, !tbaa !369
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %64, i64 17, i64 0)
  %65 = load ptr, ptr %0, align 8, !tbaa !159
  %66 = getelementptr inbounds ptr, ptr %65, i64 18
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef i64 %67(ptr noundef nonnull align 8 dereferenceable(1000) %0), !prof !416
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %72, label %70, !prof !415

70:                                               ; preds = %50, %30
  %71 = phi i1 [ true, %30 ], [ false, %50 ]
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventERKNS_9XalanNodeEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %71)
  br label %72

72:                                               ; preds = %70, %50, %30
  ret void
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), i64, i64) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventERKNS_9XalanNodeEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #26
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %4)
          to label %7 unwind label %30

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !330
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !267
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %13, i32 noundef 0, i32 noundef %15, i1 noundef zeroext %2)
          to label %16 unwind label %30

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !270
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %29, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %11, align 8, !tbaa !271
  %22 = load ptr, ptr %4, align 8, !tbaa !272
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %22, ptr noundef %21)
          to label %29 unwind label %26

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #27
  unreachable

29:                                               ; preds = %16, %20
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #26
  ret void

30:                                               ; preds = %7, %3
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !270
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !271
  %38 = load ptr, ptr %4, align 8, !tbaa !272
  %39 = load ptr, ptr %38, align 8, !tbaa !159
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %37)
          to label %45 unwind label %42

42:                                               ; preds = %35
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #27
  unreachable

45:                                               ; preds = %30, %35
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #26
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !363
  %9 = udiv i64 %6, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = urem i64 %6, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 4
  store i8 1, ptr %17, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %18 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 27
  %19 = load i8, ptr %18, align 8, !tbaa !261, !range !327, !noundef !328
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %54, label %21

21:                                               ; preds = %2
  %22 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !245
  %24 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 7, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !251
  %26 = getelementptr i8, ptr %23, i64 %25
  %27 = getelementptr i8, ptr %26, i64 -1
  %28 = load i8, ptr %27, align 1, !tbaa !367, !range !327, !noundef !328
  %29 = icmp eq i8 %28, 0
  br i1 %29, label %54, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %1, align 8, !tbaa !333
  %32 = load ptr, ptr %3, align 8, !tbaa !361
  %33 = load i64, ptr %5, align 8, !tbaa !362
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %32, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !363
  %36 = udiv i64 %33, %35
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %32, i64 0, i32 2, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !364
  %39 = getelementptr inbounds ptr, ptr %38, i64 %36
  %40 = load ptr, ptr %39, align 8, !tbaa !162
  %41 = urem i64 %33, %35
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %40, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !365
  %44 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %43, i64 %41
  %45 = load ptr, ptr %44, align 8, !tbaa !369
  %46 = load ptr, ptr %31, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 9
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef nonnull align 8 dereferenceable(24) %45, i64 105, i64 0)
  %49 = load ptr, ptr %0, align 8, !tbaa !159
  %50 = getelementptr inbounds ptr, ptr %49, i64 18
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef i64 %51(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %93, label %78

54:                                               ; preds = %2, %21
  %55 = load ptr, ptr %1, align 8, !tbaa !333
  %56 = load ptr, ptr %3, align 8, !tbaa !361
  %57 = load i64, ptr %5, align 8, !tbaa !362
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %56, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !363
  %60 = udiv i64 %57, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %56, i64 0, i32 2, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !364
  %63 = getelementptr inbounds ptr, ptr %62, i64 %60
  %64 = load ptr, ptr %63, align 8, !tbaa !162
  %65 = urem i64 %57, %59
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %64, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8, !tbaa !365
  %68 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %67, i64 %65
  %69 = load ptr, ptr %68, align 8, !tbaa !369
  %70 = load ptr, ptr %55, align 8, !tbaa !159
  %71 = getelementptr inbounds ptr, ptr %70, i64 9
  %72 = load ptr, ptr %71, align 8
  tail call void %72(ptr noundef nonnull align 8 dereferenceable(24) %55, ptr noundef nonnull align 8 dereferenceable(24) %69, i64 17, i64 0)
  %73 = load ptr, ptr %0, align 8, !tbaa !159
  %74 = getelementptr inbounds ptr, ptr %73, i64 18
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %93, label %78

78:                                               ; preds = %54, %30
  %79 = phi i1 [ true, %30 ], [ false, %54 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !333
  %81 = load ptr, ptr %80, align 8, !tbaa !159
  %82 = getelementptr inbounds ptr, ptr %81, i64 8
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef nonnull align 8 dereferenceable(36) ptr %83(ptr noundef nonnull align 8 dereferenceable(24) %80)
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %84, i64 0, i32 1
  %86 = load i64, ptr %85, align 8, !tbaa !330
  %87 = icmp eq i64 %86, 0
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %84, i64 0, i32 3
  %89 = load ptr, ptr %88, align 8
  %90 = select i1 %87, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %89
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %84, i64 0, i32 1
  %92 = load i32, ptr %91, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %90, i32 noundef 0, i32 noundef %92, i1 noundef zeroext %79)
  br label %93

93:                                               ; preds = %78, %54, %30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventERKNS_10XObjectPtrEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 !prof !156 {
  %4 = load ptr, ptr %1, align 8, !tbaa !333
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !330
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = select i1 %11, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %14, i32 noundef 0, i32 noundef %16, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl13charactersRawEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 !prof !156 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !362
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !363
  %11 = udiv i64 %8, %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !364
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = urem i64 %8, %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !365
  %19 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %18, i64 %16, i32 4
  store i8 1, ptr %19, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %20 = load ptr, ptr %5, align 8, !tbaa !361
  %21 = load i64, ptr %7, align 8, !tbaa !362
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %20, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !363
  %24 = udiv i64 %21, %23
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %20, i64 0, i32 2, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !364
  %27 = getelementptr inbounds ptr, ptr %26, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  %29 = urem i64 %21, %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %28, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !365
  %32 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %31, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !369
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 11
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef %1, i32 noundef %3)
  %37 = load ptr, ptr %0, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 18
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef i64 %39(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %4
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i1 noundef zeroext false)
  br label %43

43:                                               ; preds = %42, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl13charactersRawERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !363
  %9 = udiv i64 %6, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = urem i64 %6, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 4
  store i8 1, ptr %17, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %18 = load ptr, ptr %3, align 8, !tbaa !361
  %19 = load i64, ptr %5, align 8, !tbaa !362
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %18, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !363
  %22 = udiv i64 %19, %21
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %18, i64 0, i32 2, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !364
  %25 = getelementptr inbounds ptr, ptr %24, i64 %22
  %26 = load ptr, ptr %25, align 8, !tbaa !162
  %27 = urem i64 %19, %21
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %26, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !365
  %30 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %29, i64 %27
  %31 = load ptr, ptr %30, align 8, !tbaa !369
  tail call void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %31, i64 89, i64 0)
  %32 = load ptr, ptr %0, align 8, !tbaa !159
  %33 = getelementptr inbounds ptr, ptr %32, i64 18
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i64 %34(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventERKNS_9XalanNodeEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext false)
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl13charactersRawERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !363
  %9 = udiv i64 %6, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = urem i64 %6, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 4
  store i8 1, ptr %17, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %18 = load ptr, ptr %1, align 8, !tbaa !333
  %19 = load ptr, ptr %3, align 8, !tbaa !361
  %20 = load i64, ptr %5, align 8, !tbaa !362
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %19, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !363
  %23 = udiv i64 %20, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %19, i64 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !364
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !162
  %28 = urem i64 %20, %22
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !365
  %31 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %30, i64 %28
  %32 = load ptr, ptr %31, align 8, !tbaa !369
  %33 = load ptr, ptr %18, align 8, !tbaa !159
  %34 = getelementptr inbounds ptr, ptr %33, i64 9
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %32, i64 89, i64 0)
  %36 = load ptr, ptr %0, align 8, !tbaa !159
  %37 = getelementptr inbounds ptr, ptr %36, i64 18
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i64 %38(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %55, label %41

41:                                               ; preds = %2
  %42 = load ptr, ptr %1, align 8, !tbaa !333
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = getelementptr inbounds ptr, ptr %43, i64 8
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef nonnull align 8 dereferenceable(36) ptr %45(ptr noundef nonnull align 8 dereferenceable(24) %42)
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %46, i64 0, i32 1
  %48 = load i64, ptr %47, align 8, !tbaa !330
  %49 = icmp eq i64 %48, 0
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %46, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8
  %52 = select i1 %49, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %51
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %46, i64 0, i32 1
  %54 = load i32, ptr %53, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %52, i32 noundef 0, i32 noundef %54, i1 noundef zeroext false)
  br label %55

55:                                               ; preds = %41, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) local_unnamed_addr #4 align 2 !prof !156 {
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !362
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !363
  %8 = udiv i64 %5, %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !364
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = urem i64 %5, %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !365
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !369
  %18 = load ptr, ptr %17, align 8, !tbaa !159
  %19 = getelementptr inbounds ptr, ptr %18, i64 7
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(24) %17)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !362
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !363
  %11 = udiv i64 %8, %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !364
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = urem i64 %8, %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !365
  %19 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %18, i64 %16, i32 4
  store i8 1, ptr %19, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %20 = load ptr, ptr %5, align 8, !tbaa !361
  %21 = load i64, ptr %7, align 8, !tbaa !362
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %20, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !363
  %24 = udiv i64 %21, %23
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %20, i64 0, i32 2, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !364
  %27 = getelementptr inbounds ptr, ptr %26, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  %29 = urem i64 %21, %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %28, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !365
  %32 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %31, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !369
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef %1, i32 noundef %2)
  %37 = load ptr, ptr %0, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 18
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef i64 %39(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %141, label %42

42:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #26
  %43 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj(ptr noundef nonnull align 8 dereferenceable(144) %4, i32 noundef 6, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %1, i32 noundef 0, i32 noundef %2)
  %45 = load ptr, ptr %0, align 8, !tbaa !159
  %46 = getelementptr inbounds ptr, ptr %45, i64 21
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %4)
          to label %48 unwind label %94

48:                                               ; preds = %42
  %49 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !270
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6
  %54 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !271
  %56 = load ptr, ptr %53, align 8, !tbaa !272
  %57 = load ptr, ptr %56, align 8, !tbaa !159
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %55)
          to label %63 unwind label %60

60:                                               ; preds = %52
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  call void @__clang_call_terminate(ptr %62) #27
  unreachable

63:                                               ; preds = %48, %52
  %64 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !270
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5
  %69 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !271
  %71 = load ptr, ptr %68, align 8, !tbaa !272
  %72 = load ptr, ptr %71, align 8, !tbaa !159
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %70)
          to label %78 unwind label %75

75:                                               ; preds = %67
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  call void @__clang_call_terminate(ptr %77) #27
  unreachable

78:                                               ; preds = %63, %67
  %79 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !270
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2
  %84 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !271
  %86 = load ptr, ptr %83, align 8, !tbaa !272
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %82
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #27
  unreachable

93:                                               ; preds = %78, %82
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #26
  br label %141

94:                                               ; preds = %42
  %95 = landingpad { ptr, i32 }
          cleanup
  %96 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !270
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6
  %101 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !271
  %103 = load ptr, ptr %100, align 8, !tbaa !272
  %104 = load ptr, ptr %103, align 8, !tbaa !159
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef %102)
          to label %110 unwind label %107

107:                                              ; preds = %99
  %108 = landingpad { ptr, i32 }
          catch ptr null
  %109 = extractvalue { ptr, i32 } %108, 0
  call void @__clang_call_terminate(ptr %109) #27
  unreachable

110:                                              ; preds = %94, %99
  %111 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !270
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5
  %116 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !271
  %118 = load ptr, ptr %115, align 8, !tbaa !272
  %119 = load ptr, ptr %118, align 8, !tbaa !159
  %120 = getelementptr inbounds ptr, ptr %119, i64 3
  %121 = load ptr, ptr %120, align 8
  invoke void %121(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef %117)
          to label %125 unwind label %122

122:                                              ; preds = %114
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  call void @__clang_call_terminate(ptr %124) #27
  unreachable

125:                                              ; preds = %110, %114
  %126 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !270
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2
  %131 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !271
  %133 = load ptr, ptr %130, align 8, !tbaa !272
  %134 = load ptr, ptr %133, align 8, !tbaa !159
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  invoke void %136(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %132)
          to label %140 unwind label %137

137:                                              ; preds = %129
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #27
  unreachable

140:                                              ; preds = %125, %129
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #26
  resume { ptr, i32 } %95

141:                                              ; preds = %93, %3
  ret void
}

declare void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !362
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !363
  %11 = udiv i64 %8, %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !364
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = urem i64 %8, %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !365
  %19 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %18, i64 %16, i32 4
  store i8 1, ptr %19, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %20 = load ptr, ptr %5, align 8, !tbaa !361
  %21 = load i64, ptr %7, align 8, !tbaa !362
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %20, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !363
  %24 = udiv i64 %21, %23
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %20, i64 0, i32 2, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !364
  %27 = getelementptr inbounds ptr, ptr %26, i64 %24
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  %29 = urem i64 %21, %23
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %28, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !365
  %32 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %31, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !369
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 6
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef %1, ptr noundef %2)
  %37 = load ptr, ptr %0, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 18
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef i64 %39(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %141, label %42

42:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %4) #26
  %43 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_(ptr noundef nonnull align 8 dereferenceable(144) %4, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %1, ptr noundef %2)
  %45 = load ptr, ptr %0, align 8, !tbaa !159
  %46 = getelementptr inbounds ptr, ptr %45, i64 21
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %4)
          to label %48 unwind label %94

48:                                               ; preds = %42
  %49 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !270
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6
  %54 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !271
  %56 = load ptr, ptr %53, align 8, !tbaa !272
  %57 = load ptr, ptr %56, align 8, !tbaa !159
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  invoke void %59(ptr noundef nonnull align 8 dereferenceable(8) %56, ptr noundef %55)
          to label %63 unwind label %60

60:                                               ; preds = %52
  %61 = landingpad { ptr, i32 }
          catch ptr null
  %62 = extractvalue { ptr, i32 } %61, 0
  call void @__clang_call_terminate(ptr %62) #27
  unreachable

63:                                               ; preds = %48, %52
  %64 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !270
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5
  %69 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 3
  %70 = load ptr, ptr %69, align 8, !tbaa !271
  %71 = load ptr, ptr %68, align 8, !tbaa !272
  %72 = load ptr, ptr %71, align 8, !tbaa !159
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  invoke void %74(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %70)
          to label %78 unwind label %75

75:                                               ; preds = %67
  %76 = landingpad { ptr, i32 }
          catch ptr null
  %77 = extractvalue { ptr, i32 } %76, 0
  call void @__clang_call_terminate(ptr %77) #27
  unreachable

78:                                               ; preds = %63, %67
  %79 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !270
  %81 = icmp eq i64 %80, 0
  br i1 %81, label %93, label %82

82:                                               ; preds = %78
  %83 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2
  %84 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 3
  %85 = load ptr, ptr %84, align 8, !tbaa !271
  %86 = load ptr, ptr %83, align 8, !tbaa !272
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %82
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #27
  unreachable

93:                                               ; preds = %78, %82
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #26
  br label %141

94:                                               ; preds = %42
  %95 = landingpad { ptr, i32 }
          cleanup
  %96 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 2
  %97 = load i64, ptr %96, align 8, !tbaa !270
  %98 = icmp eq i64 %97, 0
  br i1 %98, label %110, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6
  %101 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 6, i32 0, i32 3
  %102 = load ptr, ptr %101, align 8, !tbaa !271
  %103 = load ptr, ptr %100, align 8, !tbaa !272
  %104 = load ptr, ptr %103, align 8, !tbaa !159
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  invoke void %106(ptr noundef nonnull align 8 dereferenceable(8) %103, ptr noundef %102)
          to label %110 unwind label %107

107:                                              ; preds = %99
  %108 = landingpad { ptr, i32 }
          catch ptr null
  %109 = extractvalue { ptr, i32 } %108, 0
  call void @__clang_call_terminate(ptr %109) #27
  unreachable

110:                                              ; preds = %94, %99
  %111 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 2
  %112 = load i64, ptr %111, align 8, !tbaa !270
  %113 = icmp eq i64 %112, 0
  br i1 %113, label %125, label %114

114:                                              ; preds = %110
  %115 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5
  %116 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 5, i32 0, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !271
  %118 = load ptr, ptr %115, align 8, !tbaa !272
  %119 = load ptr, ptr %118, align 8, !tbaa !159
  %120 = getelementptr inbounds ptr, ptr %119, i64 3
  %121 = load ptr, ptr %120, align 8
  invoke void %121(ptr noundef nonnull align 8 dereferenceable(8) %118, ptr noundef %117)
          to label %125 unwind label %122

122:                                              ; preds = %114
  %123 = landingpad { ptr, i32 }
          catch ptr null
  %124 = extractvalue { ptr, i32 } %123, 0
  call void @__clang_call_terminate(ptr %124) #27
  unreachable

125:                                              ; preds = %110, %114
  %126 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 2
  %127 = load i64, ptr %126, align 8, !tbaa !270
  %128 = icmp eq i64 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %125
  %130 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2
  %131 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %4, i64 0, i32 2, i32 0, i32 3
  %132 = load ptr, ptr %131, align 8, !tbaa !271
  %133 = load ptr, ptr %130, align 8, !tbaa !272
  %134 = load ptr, ptr %133, align 8, !tbaa !159
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  invoke void %136(ptr noundef nonnull align 8 dereferenceable(8) %133, ptr noundef %132)
          to label %140 unwind label %137

137:                                              ; preds = %129
  %138 = landingpad { ptr, i32 }
          catch ptr null
  %139 = extractvalue { ptr, i32 } %138, 0
  call void @__clang_call_terminate(ptr %139) #27
  unreachable

140:                                              ; preds = %125, %129
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %4) #26
  resume { ptr, i32 } %95

141:                                              ; preds = %93, %3
  ret void
}

declare void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtS6_(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl7commentEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !362
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !363
  %10 = udiv i64 %7, %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !364
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = urem i64 %7, %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !365
  %18 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 4
  store i8 1, ptr %18, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %19 = load ptr, ptr %4, align 8, !tbaa !361
  %20 = load i64, ptr %6, align 8, !tbaa !362
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %19, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !363
  %23 = udiv i64 %20, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %19, i64 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !364
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !162
  %28 = urem i64 %20, %22
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !365
  %31 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %30, i64 %28
  %32 = load ptr, ptr %31, align 8, !tbaa !369
  %33 = load ptr, ptr %32, align 8, !tbaa !159
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef %1)
  %36 = load ptr, ptr %0, align 8, !tbaa !159
  %37 = getelementptr inbounds ptr, ptr %36, i64 18
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i64 %38(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %140, label %41

41:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #26
  %42 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef 8, ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %1)
  %44 = load ptr, ptr %0, align 8, !tbaa !159
  %45 = getelementptr inbounds ptr, ptr %44, i64 21
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %47 unwind label %93

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !270
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %53 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !271
  %55 = load ptr, ptr %52, align 8, !tbaa !272
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %54)
          to label %62 unwind label %59

59:                                               ; preds = %51
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  call void @__clang_call_terminate(ptr %61) #27
  unreachable

62:                                               ; preds = %47, %51
  %63 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !270
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %68 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !271
  %70 = load ptr, ptr %67, align 8, !tbaa !272
  %71 = load ptr, ptr %70, align 8, !tbaa !159
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %69)
          to label %77 unwind label %74

74:                                               ; preds = %66
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  call void @__clang_call_terminate(ptr %76) #27
  unreachable

77:                                               ; preds = %62, %66
  %78 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !270
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %83 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !271
  %85 = load ptr, ptr %82, align 8, !tbaa !272
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %81
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #27
  unreachable

92:                                               ; preds = %77, %81
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  br label %140

93:                                               ; preds = %41
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !270
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %100 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !271
  %102 = load ptr, ptr %99, align 8, !tbaa !272
  %103 = load ptr, ptr %102, align 8, !tbaa !159
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef %101)
          to label %109 unwind label %106

106:                                              ; preds = %98
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = extractvalue { ptr, i32 } %107, 0
  call void @__clang_call_terminate(ptr %108) #27
  unreachable

109:                                              ; preds = %93, %98
  %110 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !270
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %115 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !271
  %117 = load ptr, ptr %114, align 8, !tbaa !272
  %118 = load ptr, ptr %117, align 8, !tbaa !159
  %119 = getelementptr inbounds ptr, ptr %118, i64 3
  %120 = load ptr, ptr %119, align 8
  invoke void %120(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef %116)
          to label %124 unwind label %121

121:                                              ; preds = %113
  %122 = landingpad { ptr, i32 }
          catch ptr null
  %123 = extractvalue { ptr, i32 } %122, 0
  call void @__clang_call_terminate(ptr %123) #27
  unreachable

124:                                              ; preds = %109, %113
  %125 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !270
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %130 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !271
  %132 = load ptr, ptr %129, align 8, !tbaa !272
  %133 = load ptr, ptr %132, align 8, !tbaa !159
  %134 = getelementptr inbounds ptr, ptr %133, i64 3
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %131)
          to label %139 unwind label %136

136:                                              ; preds = %128
  %137 = landingpad { ptr, i32 }
          catch ptr null
  %138 = extractvalue { ptr, i32 } %137, 0
  call void @__clang_call_terminate(ptr %138) #27
  unreachable

139:                                              ; preds = %124, %128
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  resume { ptr, i32 } %94

140:                                              ; preds = %92, %2
  ret void
}

declare void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(144), i32 noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !361
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !362
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !363
  %10 = udiv i64 %7, %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %5, i64 0, i32 2, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !364
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !162
  %15 = urem i64 %7, %9
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %14, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !365
  %18 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %15, i32 4
  store i8 1, ptr %18, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %19 = load ptr, ptr %4, align 8, !tbaa !361
  %20 = load i64, ptr %6, align 8, !tbaa !362
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %19, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !363
  %23 = udiv i64 %20, %22
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %19, i64 0, i32 2, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !364
  %26 = getelementptr inbounds ptr, ptr %25, i64 %23
  %27 = load ptr, ptr %26, align 8, !tbaa !162
  %28 = urem i64 %20, %22
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %27, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !365
  %31 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %30, i64 %28
  %32 = load ptr, ptr %31, align 8, !tbaa !369
  %33 = load ptr, ptr %32, align 8, !tbaa !159
  %34 = getelementptr inbounds ptr, ptr %33, i64 14
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef %1)
  %36 = load ptr, ptr %0, align 8, !tbaa !159
  %37 = getelementptr inbounds ptr, ptr %36, i64 18
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i64 %38(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %140, label %41

41:                                               ; preds = %2
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %3) #26
  %42 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(144) %3, i32 noundef 9, ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %1)
  %44 = load ptr, ptr %0, align 8, !tbaa !159
  %45 = getelementptr inbounds ptr, ptr %44, i64 21
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %3)
          to label %47 unwind label %93

47:                                               ; preds = %41
  %48 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %49 = load i64, ptr %48, align 8, !tbaa !270
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %62, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %53 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !271
  %55 = load ptr, ptr %52, align 8, !tbaa !272
  %56 = load ptr, ptr %55, align 8, !tbaa !159
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  invoke void %58(ptr noundef nonnull align 8 dereferenceable(8) %55, ptr noundef %54)
          to label %62 unwind label %59

59:                                               ; preds = %51
  %60 = landingpad { ptr, i32 }
          catch ptr null
  %61 = extractvalue { ptr, i32 } %60, 0
  call void @__clang_call_terminate(ptr %61) #27
  unreachable

62:                                               ; preds = %47, %51
  %63 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %64 = load i64, ptr %63, align 8, !tbaa !270
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %77, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %68 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !271
  %70 = load ptr, ptr %67, align 8, !tbaa !272
  %71 = load ptr, ptr %70, align 8, !tbaa !159
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %69)
          to label %77 unwind label %74

74:                                               ; preds = %66
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  call void @__clang_call_terminate(ptr %76) #27
  unreachable

77:                                               ; preds = %62, %66
  %78 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %79 = load i64, ptr %78, align 8, !tbaa !270
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %92, label %81

81:                                               ; preds = %77
  %82 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %83 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %84 = load ptr, ptr %83, align 8, !tbaa !271
  %85 = load ptr, ptr %82, align 8, !tbaa !272
  %86 = load ptr, ptr %85, align 8, !tbaa !159
  %87 = getelementptr inbounds ptr, ptr %86, i64 3
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(8) %85, ptr noundef %84)
          to label %92 unwind label %89

89:                                               ; preds = %81
  %90 = landingpad { ptr, i32 }
          catch ptr null
  %91 = extractvalue { ptr, i32 } %90, 0
  call void @__clang_call_terminate(ptr %91) #27
  unreachable

92:                                               ; preds = %77, %81
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  br label %140

93:                                               ; preds = %41
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 2
  %96 = load i64, ptr %95, align 8, !tbaa !270
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %109, label %98

98:                                               ; preds = %93
  %99 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6
  %100 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 6, i32 0, i32 3
  %101 = load ptr, ptr %100, align 8, !tbaa !271
  %102 = load ptr, ptr %99, align 8, !tbaa !272
  %103 = load ptr, ptr %102, align 8, !tbaa !159
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  invoke void %105(ptr noundef nonnull align 8 dereferenceable(8) %102, ptr noundef %101)
          to label %109 unwind label %106

106:                                              ; preds = %98
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = extractvalue { ptr, i32 } %107, 0
  call void @__clang_call_terminate(ptr %108) #27
  unreachable

109:                                              ; preds = %93, %98
  %110 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 2
  %111 = load i64, ptr %110, align 8, !tbaa !270
  %112 = icmp eq i64 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %109
  %114 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5
  %115 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 5, i32 0, i32 3
  %116 = load ptr, ptr %115, align 8, !tbaa !271
  %117 = load ptr, ptr %114, align 8, !tbaa !272
  %118 = load ptr, ptr %117, align 8, !tbaa !159
  %119 = getelementptr inbounds ptr, ptr %118, i64 3
  %120 = load ptr, ptr %119, align 8
  invoke void %120(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef %116)
          to label %124 unwind label %121

121:                                              ; preds = %113
  %122 = landingpad { ptr, i32 }
          catch ptr null
  %123 = extractvalue { ptr, i32 } %122, 0
  call void @__clang_call_terminate(ptr %123) #27
  unreachable

124:                                              ; preds = %109, %113
  %125 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 2
  %126 = load i64, ptr %125, align 8, !tbaa !270
  %127 = icmp eq i64 %126, 0
  br i1 %127, label %139, label %128

128:                                              ; preds = %124
  %129 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2
  %130 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %3, i64 0, i32 2, i32 0, i32 3
  %131 = load ptr, ptr %130, align 8, !tbaa !271
  %132 = load ptr, ptr %129, align 8, !tbaa !272
  %133 = load ptr, ptr %132, align 8, !tbaa !159
  %134 = getelementptr inbounds ptr, ptr %133, i64 3
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef %131)
          to label %139 unwind label %136

136:                                              ; preds = %128
  %137 = landingpad { ptr, i32 }
          catch ptr null
  %138 = extractvalue { ptr, i32 } %137, 0
  call void @__clang_call_terminate(ptr %138) #27
  unreachable

139:                                              ; preds = %124, %128
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %3) #26
  resume { ptr, i32 } %94

140:                                              ; preds = %92, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl5cdataEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = alloca %"class.xalanc_1_10::GenerateEvent", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !361
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !362
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %7, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !363
  %12 = udiv i64 %9, %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %7, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !364
  %15 = getelementptr inbounds ptr, ptr %14, i64 %12
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = urem i64 %9, %11
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %16, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !365
  %20 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %19, i64 %17, i32 4
  store i8 1, ptr %20, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %21 = load ptr, ptr %6, align 8, !tbaa !361
  %22 = load i64, ptr %8, align 8, !tbaa !362
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %21, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !363
  %25 = udiv i64 %22, %24
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %21, i64 0, i32 2, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !364
  %28 = getelementptr inbounds ptr, ptr %27, i64 %25
  %29 = load ptr, ptr %28, align 8, !tbaa !162
  %30 = urem i64 %22, %24
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %29, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !365
  %33 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %32, i64 %30
  %34 = load ptr, ptr %33, align 8, !tbaa !369
  %35 = load ptr, ptr %34, align 8, !tbaa !159
  %36 = getelementptr inbounds ptr, ptr %35, i64 13
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef %1, i32 noundef %3)
  %38 = load ptr, ptr %0, align 8, !tbaa !159
  %39 = getelementptr inbounds ptr, ptr %38, i64 18
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef i64 %40(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %142, label %43

43:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %5) #26
  %44 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1013GenerateEventC1ENS0_9EventTypeERN11xercesc_2_713MemoryManagerEPKtjj(ptr noundef nonnull align 8 dereferenceable(144) %5, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %1, i32 noundef %2, i32 noundef %3)
  %46 = load ptr, ptr %0, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 21
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(144) %5)
          to label %49 unwind label %95

49:                                               ; preds = %43
  %50 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 6, i32 0, i32 2
  %51 = load i64, ptr %50, align 8, !tbaa !270
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 6
  %55 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 6, i32 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !271
  %57 = load ptr, ptr %54, align 8, !tbaa !272
  %58 = load ptr, ptr %57, align 8, !tbaa !159
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %56)
          to label %64 unwind label %61

61:                                               ; preds = %53
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #27
  unreachable

64:                                               ; preds = %49, %53
  %65 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 5, i32 0, i32 2
  %66 = load i64, ptr %65, align 8, !tbaa !270
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %64
  %69 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 5
  %70 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 5, i32 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !271
  %72 = load ptr, ptr %69, align 8, !tbaa !272
  %73 = load ptr, ptr %72, align 8, !tbaa !159
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %71)
          to label %79 unwind label %76

76:                                               ; preds = %68
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #27
  unreachable

79:                                               ; preds = %64, %68
  %80 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 2, i32 0, i32 2
  %81 = load i64, ptr %80, align 8, !tbaa !270
  %82 = icmp eq i64 %81, 0
  br i1 %82, label %94, label %83

83:                                               ; preds = %79
  %84 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 2
  %85 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 2, i32 0, i32 3
  %86 = load ptr, ptr %85, align 8, !tbaa !271
  %87 = load ptr, ptr %84, align 8, !tbaa !272
  %88 = load ptr, ptr %87, align 8, !tbaa !159
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %83
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #27
  unreachable

94:                                               ; preds = %79, %83
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #26
  br label %142

95:                                               ; preds = %43
  %96 = landingpad { ptr, i32 }
          cleanup
  %97 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 6, i32 0, i32 2
  %98 = load i64, ptr %97, align 8, !tbaa !270
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 6
  %102 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 6, i32 0, i32 3
  %103 = load ptr, ptr %102, align 8, !tbaa !271
  %104 = load ptr, ptr %101, align 8, !tbaa !272
  %105 = load ptr, ptr %104, align 8, !tbaa !159
  %106 = getelementptr inbounds ptr, ptr %105, i64 3
  %107 = load ptr, ptr %106, align 8
  invoke void %107(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %103)
          to label %111 unwind label %108

108:                                              ; preds = %100
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  call void @__clang_call_terminate(ptr %110) #27
  unreachable

111:                                              ; preds = %95, %100
  %112 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 5, i32 0, i32 2
  %113 = load i64, ptr %112, align 8, !tbaa !270
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %126, label %115

115:                                              ; preds = %111
  %116 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 5
  %117 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 5, i32 0, i32 3
  %118 = load ptr, ptr %117, align 8, !tbaa !271
  %119 = load ptr, ptr %116, align 8, !tbaa !272
  %120 = load ptr, ptr %119, align 8, !tbaa !159
  %121 = getelementptr inbounds ptr, ptr %120, i64 3
  %122 = load ptr, ptr %121, align 8
  invoke void %122(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef %118)
          to label %126 unwind label %123

123:                                              ; preds = %115
  %124 = landingpad { ptr, i32 }
          catch ptr null
  %125 = extractvalue { ptr, i32 } %124, 0
  call void @__clang_call_terminate(ptr %125) #27
  unreachable

126:                                              ; preds = %111, %115
  %127 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 2, i32 0, i32 2
  %128 = load i64, ptr %127, align 8, !tbaa !270
  %129 = icmp eq i64 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %126
  %131 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 2
  %132 = getelementptr inbounds %"class.xalanc_1_10::GenerateEvent", ptr %5, i64 0, i32 2, i32 0, i32 3
  %133 = load ptr, ptr %132, align 8, !tbaa !271
  %134 = load ptr, ptr %131, align 8, !tbaa !272
  %135 = load ptr, ptr %134, align 8, !tbaa !159
  %136 = getelementptr inbounds ptr, ptr %135, i64 3
  %137 = load ptr, ptr %136, align 8
  invoke void %137(ptr noundef nonnull align 8 dereferenceable(8) %134, ptr noundef %133)
          to label %141 unwind label %138

138:                                              ; preds = %130
  %139 = landingpad { ptr, i32 }
          catch ptr null
  %140 = extractvalue { ptr, i32 } %139, 0
  call void @__clang_call_terminate(ptr %140) #27
  unreachable

141:                                              ; preds = %126, %130
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %5) #26
  resume { ptr, i32 } %96

142:                                              ; preds = %94, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl21checkDefaultNamespaceERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 align 2 !prof !156 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !267
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %25, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !330
  %10 = icmp eq i64 %9, 0
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8
  %13 = select i1 %10, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %12
  br label %14

14:                                               ; preds = %17, %7
  %15 = phi ptr [ %13, %7 ], [ %18, %17 ]
  %16 = load i16, ptr %15, align 2, !tbaa !331
  switch i16 %16, label %17 [
    i16 58, label %19
    i16 0, label %19
  ]

17:                                               ; preds = %14
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  br label %14, !llvm.loop !332

19:                                               ; preds = %14, %14
  %20 = ptrtoint ptr %15 to i64
  %21 = ptrtoint ptr %13 to i64
  %22 = sub i64 %20, %21
  %23 = lshr exact i64 %22, 1
  %24 = trunc i64 %23 to i32
  br label %25

25:                                               ; preds = %3, %19
  %26 = phi i32 [ %24, %19 ], [ 0, %3 ]
  %27 = icmp eq i32 %26, %5
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %29, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %28
  %33 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %30)
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !162
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERKNS_14XalanDOMStringES3_bPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %35, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext false, ptr noundef null)
  br label %36

36:                                               ; preds = %28, %32, %34, %25
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERKNS_14XalanDOMStringES3_bPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #16 comdat align 2 !prof !392 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !361
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !362
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %7, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !363
  %12 = udiv i64 %9, %11
  %13 = urem i64 %9, %11
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %7, i64 0, i32 2, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !364
  %16 = getelementptr inbounds ptr, ptr %15, i64 %12
  %17 = load ptr, ptr %16, align 8, !tbaa !162
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %17, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !365
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !330
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = select i1 %22, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %24, !prof !393
  br label %26

26:                                               ; preds = %26, %5
  %27 = phi ptr [ %25, %5 ], [ %30, %26 ]
  %28 = load i16, ptr %27, align 2, !tbaa !331
  %29 = icmp eq i16 %28, 0
  %30 = getelementptr inbounds i16, ptr %27, i64 1
  br i1 %29, label %31, label %26, !prof !417, !llvm.loop !398

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %19, i64 %13, i32 1
  %33 = ptrtoint ptr %27 to i64
  %34 = ptrtoint ptr %25 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  %37 = trunc i64 %36 to i32
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(72) %32, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %25, i32 noundef %37, i1 noundef zeroext %3, ptr noundef %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl21warnCopyTextNodesOnlyEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %5 = load ptr, ptr %4, align 8, !tbaa !221
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %5)
  %10 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 131)
          to label %11 unwind label %17

11:                                               ; preds = %3
  %12 = icmp eq ptr %2, null
  %13 = load ptr, ptr %0, align 8, !tbaa !159
  br i1 %12, label %27, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds ptr, ptr %13, i64 31
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %1)
          to label %30 unwind label %17

17:                                               ; preds = %27, %14, %3
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load ptr, ptr %5, align 8, !tbaa !159
  %20 = getelementptr inbounds ptr, ptr %19, i64 24
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %26 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #27
  unreachable

26:                                               ; preds = %17
  resume { ptr, i32 } %18

27:                                               ; preds = %11
  %28 = getelementptr inbounds ptr, ptr %13, i64 30
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef %1, ptr noundef null)
          to label %30 unwind label %17

30:                                               ; preds = %27, %14
  %31 = load ptr, ptr %5, align 8, !tbaa !159
  %32 = getelementptr inbounds ptr, ptr %31, i64 24
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %38 unwind label %35

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #27
  unreachable

38:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl17cloneToResultTreeERKNS_9XalanNodeEbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !156 {
  %5 = load ptr, ptr %1, align 8, !tbaa !159
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef i32 %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq i32 %8, 11
  br i1 %9, label %10, label %11

10:                                               ; preds = %4
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl24outputResultTreeFragmentERKNS_21XalanDocumentFragmentEbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, ptr noundef %3)
  br label %88

11:                                               ; preds = %4
  %12 = icmp ne i32 %8, 3
  %13 = and i1 %12, %2
  br i1 %13, label %14, label %15

14:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl21warnCopyTextNodesOnlyEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %1, ptr noundef %3)
  br label %88

15:                                               ; preds = %11, %85
  %16 = phi ptr [ %78, %85 ], [ %1, %11 ]
  %17 = phi i32 [ %86, %85 ], [ %8, %11 ]
  %18 = icmp eq i32 %17, 2
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br label %20

20:                                               ; preds = %19, %15
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl17cloneToResultTreeERKNS_9XalanNodeENS1_8NodeTypeEbbbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %16, i32 noundef %17, i1 noundef zeroext false, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %3)
  %21 = load ptr, ptr %16, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 7
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %16)
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %76

26:                                               ; preds = %20, %72
  %27 = phi ptr [ %74, %72 ], [ %16, %20 ]
  %28 = phi i32 [ %73, %72 ], [ %17, %20 ]
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load ptr, ptr %27, align 8, !tbaa !159
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef nonnull align 8 dereferenceable(36) ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %34, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !330
  %37 = icmp eq i64 %36, 0
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %34, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8
  %40 = select i1 %37, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %39
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %40)
  br label %41

41:                                               ; preds = %30, %26
  %42 = icmp eq ptr %27, %1
  br i1 %42, label %76, label %43

43:                                               ; preds = %41
  %44 = load ptr, ptr %27, align 8, !tbaa !159
  %45 = getelementptr inbounds ptr, ptr %44, i64 10
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %72

49:                                               ; preds = %43
  %50 = load ptr, ptr %27, align 8, !tbaa !159
  %51 = getelementptr inbounds ptr, ptr %50, i64 5
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %27)
  %54 = load ptr, ptr %53, align 8, !tbaa !159
  %55 = getelementptr inbounds ptr, ptr %54, i64 4
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef i32 %56(ptr noundef nonnull align 8 dereferenceable(8) %53)
  %58 = icmp eq ptr %53, %1
  br i1 %58, label %59, label %72

59:                                               ; preds = %49
  %60 = icmp eq i32 %57, 1
  br i1 %60, label %61, label %76

61:                                               ; preds = %59
  %62 = load ptr, ptr %53, align 8, !tbaa !159
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef nonnull align 8 dereferenceable(36) ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %53)
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %65, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !330
  %68 = icmp eq i64 %67, 0
  %69 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %65, i64 0, i32 3
  %70 = load ptr, ptr %69, align 8
  %71 = select i1 %68, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %70
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %71)
  br label %76

72:                                               ; preds = %49, %43
  %73 = phi i32 [ %57, %49 ], [ %28, %43 ]
  %74 = phi ptr [ %53, %49 ], [ %27, %43 ]
  %75 = icmp eq ptr %47, null
  br i1 %75, label %26, label %76, !llvm.loop !418

76:                                               ; preds = %72, %41, %20, %59, %61
  %77 = phi i32 [ %57, %61 ], [ %57, %59 ], [ %17, %20 ], [ %28, %41 ], [ %73, %72 ]
  %78 = phi ptr [ null, %61 ], [ null, %59 ], [ %24, %20 ], [ null, %41 ], [ %47, %72 ]
  %79 = icmp eq ptr %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %78, align 8, !tbaa !159
  %82 = getelementptr inbounds ptr, ptr %81, i64 4
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef i32 %83(ptr noundef nonnull align 8 dereferenceable(8) %78)
  br label %85

85:                                               ; preds = %80, %76
  %86 = phi i32 [ %84, %80 ], [ %77, %76 ]
  %87 = icmp eq ptr %78, null
  br i1 %87, label %88, label %15, !llvm.loop !419

88:                                               ; preds = %85, %14, %10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl24outputResultTreeFragmentERKNS_21XalanDocumentFragmentEbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !156 {
  %5 = load ptr, ptr %1, align 8, !tbaa !159
  %6 = getelementptr inbounds ptr, ptr %5, i64 7
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %92, %4
  ret void

11:                                               ; preds = %4, %92
  %12 = phi ptr [ %96, %92 ], [ %8, %4 ]
  %13 = load ptr, ptr %12, align 8, !tbaa !159
  %14 = getelementptr inbounds ptr, ptr %13, i64 4
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %17 = icmp ne i32 %16, 3
  %18 = and i1 %17, %2
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl21warnCopyTextNodesOnlyEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %12, ptr noundef %3)
  br label %92

20:                                               ; preds = %11, %89
  %21 = phi i32 [ %90, %89 ], [ %16, %11 ]
  %22 = phi ptr [ %82, %89 ], [ %12, %11 ]
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl17cloneToResultTreeERKNS_9XalanNodeENS1_8NodeTypeEbbbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i32 noundef %21, i1 noundef zeroext true, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef %3)
  %23 = load ptr, ptr %22, align 8, !tbaa !159
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22)
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %80

28:                                               ; preds = %20, %76
  %29 = phi i32 [ %78, %76 ], [ %21, %20 ]
  %30 = phi ptr [ %77, %76 ], [ %22, %20 ]
  %31 = icmp eq i32 %29, 1
  br i1 %31, label %32, label %43

32:                                               ; preds = %28
  %33 = load ptr, ptr %30, align 8, !tbaa !159
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef nonnull align 8 dereferenceable(36) ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %30)
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %36, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !330
  %39 = icmp eq i64 %38, 0
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %36, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8
  %42 = select i1 %39, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %41
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %42)
  br label %43

43:                                               ; preds = %32, %28
  %44 = icmp eq ptr %12, %30
  br i1 %44, label %80, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %30, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 10
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %30)
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %76

51:                                               ; preds = %45
  %52 = load ptr, ptr %30, align 8, !tbaa !159
  %53 = getelementptr inbounds ptr, ptr %52, i64 5
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %30)
  %56 = icmp eq ptr %55, null
  br i1 %56, label %80, label %57

57:                                               ; preds = %51
  %58 = load ptr, ptr %55, align 8, !tbaa !159
  %59 = getelementptr inbounds ptr, ptr %58, i64 4
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef i32 %60(ptr noundef nonnull align 8 dereferenceable(8) %55)
  %62 = icmp eq ptr %12, %55
  br i1 %62, label %63, label %76

63:                                               ; preds = %57
  %64 = icmp eq i32 %61, 1
  br i1 %64, label %65, label %80

65:                                               ; preds = %63
  %66 = load ptr, ptr %55, align 8, !tbaa !159
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef nonnull align 8 dereferenceable(36) ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %55)
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %69, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !330
  %72 = icmp eq i64 %71, 0
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %69, i64 0, i32 3
  %74 = load ptr, ptr %73, align 8
  %75 = select i1 %72, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %74
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %75)
  br label %80

76:                                               ; preds = %57, %45
  %77 = phi ptr [ %55, %57 ], [ %30, %45 ]
  %78 = phi i32 [ %61, %57 ], [ %29, %45 ]
  %79 = icmp eq ptr %49, null
  br i1 %79, label %28, label %80, !llvm.loop !420

80:                                               ; preds = %76, %43, %51, %20, %63, %65
  %81 = phi i32 [ %61, %65 ], [ %61, %63 ], [ %21, %20 ], [ %29, %51 ], [ %29, %43 ], [ %78, %76 ]
  %82 = phi ptr [ null, %65 ], [ null, %63 ], [ %26, %20 ], [ null, %51 ], [ null, %43 ], [ %49, %76 ]
  %83 = icmp eq ptr %82, null
  br i1 %83, label %89, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %82, align 8, !tbaa !159
  %86 = getelementptr inbounds ptr, ptr %85, i64 4
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef i32 %87(ptr noundef nonnull align 8 dereferenceable(8) %82)
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i32 [ %88, %84 ], [ %81, %80 ]
  %91 = icmp eq ptr %82, null
  br i1 %91, label %92, label %20, !llvm.loop !421

92:                                               ; preds = %89, %19
  %93 = load ptr, ptr %12, align 8, !tbaa !159
  %94 = getelementptr inbounds ptr, ptr %93, i64 10
  %95 = load ptr, ptr %94, align 8
  %96 = tail call noundef ptr %95(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %97 = icmp eq ptr %96, null
  br i1 %97, label %10, label %11, !llvm.loop !422
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl17cloneToResultTreeERKNS_9XalanNodeENS1_8NodeTypeEbbbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) local_unnamed_addr #16 align 2 personality ptr @__gxx_personality_v0 !prof !423 {
  br i1 %5, label %8, label %32, !prof !424

8:                                                ; preds = %7
  %9 = icmp eq i32 %2, 3
  br i1 %9, label %11, label %10

10:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl21warnCopyTextNodesOnlyEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %1, ptr noundef %6)
  br label %255

11:                                               ; preds = %8
  br i1 %3, label %19, label %12

12:                                               ; preds = %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %14 = load ptr, ptr %13, align 8, !tbaa !221
  %15 = load ptr, ptr %14, align 8, !tbaa !159
  %16 = getelementptr inbounds ptr, ptr %15, i64 34
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef zeroext i1 %17(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %18, label %255, label %19

19:                                               ; preds = %12, %11
  %20 = load ptr, ptr %1, align 8, !tbaa !159
  %21 = getelementptr inbounds ptr, ptr %20, i64 28
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef nonnull align 8 dereferenceable(36) ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 1
  %25 = load i64, ptr %24, align 8, !tbaa !330
  %26 = icmp eq i64 %25, 0
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %23, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8
  %29 = select i1 %26, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %28
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %23, i64 0, i32 1
  %31 = load i32, ptr %30, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %29, i32 noundef 0, i32 noundef %31)
  br label %255

32:                                               ; preds = %7
  switch i32 %2, label %221 [
    i32 3, label %33
    i32 1, label %54
    i32 4, label %86
    i32 2, label %99
    i32 8, label %178
    i32 5, label %189
    i32 7, label %200
    i32 11, label %255
    i32 9, label %255
    i32 10, label %255
  ], !prof !425

33:                                               ; preds = %32
  br i1 %3, label %41, label %34, !prof !426

34:                                               ; preds = %33
  %35 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %36 = load ptr, ptr %35, align 8, !tbaa !221
  %37 = load ptr, ptr %36, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 34
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %36, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br i1 %40, label %255, label %41

41:                                               ; preds = %34, %33
  %42 = load ptr, ptr %1, align 8, !tbaa !159
  %43 = getelementptr inbounds ptr, ptr %42, i64 28
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef nonnull align 8 dereferenceable(36) ptr %44(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !427
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %45, i64 0, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !330
  %48 = icmp eq i64 %47, 0
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %45, i64 0, i32 3
  %50 = load ptr, ptr %49, align 8
  %51 = select i1 %48, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %50, !prof !424
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %45, i64 0, i32 1
  %53 = load i32, ptr %52, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %51, i32 noundef 0, i32 noundef %53)
  br label %255

54:                                               ; preds = %32
  %55 = load ptr, ptr %1, align 8, !tbaa !159
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef nonnull align 8 dereferenceable(36) ptr %57(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !330
  %61 = icmp eq i64 %60, 0
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %58, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8
  %64 = select i1 %61, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %63
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %64)
  br i1 %4, label %65, label %81

65:                                               ; preds = %54
  %66 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !361
  %68 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !362
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %67, i64 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !363
  %72 = udiv i64 %69, %71
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %67, i64 0, i32 2, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !364
  %75 = getelementptr inbounds ptr, ptr %74, i64 %72
  %76 = load ptr, ptr %75, align 8, !tbaa !162
  %77 = urem i64 %69, %71
  %78 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %76, i64 0, i32 3
  %79 = load ptr, ptr %78, align 8, !tbaa !365
  %80 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %79, i64 %77, i32 1
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl23copyAttributesToAttListERKNS_9XalanNodeERNS_17AttributeListImplE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %80)
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl23copyNamespaceAttributesERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  br label %81

81:                                               ; preds = %65, %54
  %82 = load ptr, ptr %1, align 8, !tbaa !159
  %83 = getelementptr inbounds ptr, ptr %82, i64 22
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef nonnull align 8 dereferenceable(36) ptr %84(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl21checkDefaultNamespaceERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %58, ptr noundef nonnull align 8 dereferenceable(36) %85)
  br label %255

86:                                               ; preds = %32
  %87 = load ptr, ptr %1, align 8, !tbaa !159
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  %90 = tail call noundef nonnull align 8 dereferenceable(36) ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %90, i64 0, i32 1
  %92 = load i64, ptr %91, align 8, !tbaa !330
  %93 = icmp eq i64 %92, 0
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %90, i64 0, i32 3
  %95 = load ptr, ptr %94, align 8
  %96 = select i1 %93, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %95
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %90, i64 0, i32 1
  %98 = load i32, ptr %97, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl5cdataEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %96, i32 noundef 0, i32 noundef %98)
  br label %255

99:                                               ; preds = %32
  %100 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !361
  %102 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %103 = load i64, ptr %102, align 8, !tbaa !362
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %101, i64 0, i32 1
  %105 = load i64, ptr %104, align 8, !tbaa !363
  %106 = udiv i64 %103, %105
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %101, i64 0, i32 2, i32 3
  %108 = load ptr, ptr %107, align 8, !tbaa !364
  %109 = getelementptr inbounds ptr, ptr %108, i64 %106
  %110 = load ptr, ptr %109, align 8, !tbaa !162
  %111 = urem i64 %103, %105
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %110, i64 0, i32 3
  %113 = load ptr, ptr %112, align 8, !tbaa !365
  %114 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %113, i64 %111, i32 2, i32 1
  %115 = load i32, ptr %114, align 8, !tbaa !267
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %144, label %117

117:                                              ; preds = %99
  %118 = load ptr, ptr %1, align 8, !tbaa !159
  %119 = getelementptr inbounds ptr, ptr %118, i64 2
  %120 = load ptr, ptr %119, align 8
  %121 = tail call noundef nonnull align 8 dereferenceable(36) ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %122 = load ptr, ptr %1, align 8, !tbaa !159
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  %125 = tail call noundef nonnull align 8 dereferenceable(36) ptr %124(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %125, i64 0, i32 1
  %127 = load i64, ptr %126, align 8, !tbaa !330
  %128 = icmp eq i64 %127, 0
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %125, i64 0, i32 3
  %130 = load ptr, ptr %129, align 8
  %131 = select i1 %128, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %130
  br label %132

132:                                              ; preds = %132, %117
  %133 = phi ptr [ %131, %117 ], [ %136, %132 ]
  %134 = load i16, ptr %133, align 2, !tbaa !331
  %135 = icmp eq i16 %134, 0
  %136 = getelementptr inbounds i16, ptr %133, i64 1
  br i1 %135, label %137, label %132, !llvm.loop !398

137:                                              ; preds = %132
  %138 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %113, i64 %111, i32 1
  %139 = ptrtoint ptr %133 to i64
  %140 = ptrtoint ptr %131 to i64
  %141 = sub i64 %139, %140
  %142 = lshr exact i64 %141, 1
  %143 = trunc i64 %142 to i32
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(72) %138, ptr noundef nonnull align 8 dereferenceable(36) %121, ptr noundef %131, i32 noundef %143, i1 noundef zeroext true, ptr noundef %6)
  br label %255

144:                                              ; preds = %99
  %145 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %146 = load ptr, ptr %145, align 8, !tbaa !221
  %147 = load ptr, ptr %146, align 8, !tbaa !159
  %148 = getelementptr inbounds ptr, ptr %147, i64 23
  %149 = load ptr, ptr %148, align 8
  %150 = tail call noundef nonnull align 8 dereferenceable(36) ptr %149(ptr noundef nonnull align 8 dereferenceable(24) %146)
  %151 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %150, i32 noundef 54)
          to label %152 unwind label %158

152:                                              ; preds = %144
  %153 = icmp eq ptr %6, null
  %154 = load ptr, ptr %0, align 8, !tbaa !159
  br i1 %153, label %167, label %155

155:                                              ; preds = %152
  %156 = getelementptr inbounds ptr, ptr %154, i64 31
  %157 = load ptr, ptr %156, align 8
  invoke void %157(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %151, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1)
          to label %170 unwind label %158

158:                                              ; preds = %167, %155, %144
  %159 = landingpad { ptr, i32 }
          cleanup
  %160 = load ptr, ptr %146, align 8, !tbaa !159
  %161 = getelementptr inbounds ptr, ptr %160, i64 24
  %162 = load ptr, ptr %161, align 8
  %163 = invoke noundef zeroext i1 %162(ptr noundef nonnull align 8 dereferenceable(24) %146, ptr noundef nonnull align 8 dereferenceable(36) %150)
          to label %256 unwind label %164

164:                                              ; preds = %158
  %165 = landingpad { ptr, i32 }
          catch ptr null
  %166 = extractvalue { ptr, i32 } %165, 0
  tail call void @__clang_call_terminate(ptr %166) #27
  unreachable

167:                                              ; preds = %152
  %168 = getelementptr inbounds ptr, ptr %154, i64 30
  %169 = load ptr, ptr %168, align 8
  invoke void %169(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %151, ptr noundef nonnull %1, ptr noundef null)
          to label %170 unwind label %158

170:                                              ; preds = %167, %155
  %171 = load ptr, ptr %146, align 8, !tbaa !159
  %172 = getelementptr inbounds ptr, ptr %171, i64 24
  %173 = load ptr, ptr %172, align 8
  %174 = invoke noundef zeroext i1 %173(ptr noundef nonnull align 8 dereferenceable(24) %146, ptr noundef nonnull align 8 dereferenceable(36) %150)
          to label %255 unwind label %175

175:                                              ; preds = %170
  %176 = landingpad { ptr, i32 }
          catch ptr null
  %177 = extractvalue { ptr, i32 } %176, 0
  tail call void @__clang_call_terminate(ptr %177) #27
  unreachable

178:                                              ; preds = %32
  %179 = load ptr, ptr %1, align 8, !tbaa !159
  %180 = getelementptr inbounds ptr, ptr %179, i64 3
  %181 = load ptr, ptr %180, align 8
  %182 = tail call noundef nonnull align 8 dereferenceable(36) ptr %181(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %183 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %182, i64 0, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !330
  %185 = icmp eq i64 %184, 0
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %182, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8
  %188 = select i1 %185, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %187
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl7commentEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %188)
  br label %255

189:                                              ; preds = %32
  %190 = load ptr, ptr %1, align 8, !tbaa !159
  %191 = getelementptr inbounds ptr, ptr %190, i64 2
  %192 = load ptr, ptr %191, align 8
  %193 = tail call noundef nonnull align 8 dereferenceable(36) ptr %192(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %194 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %193, i64 0, i32 1
  %195 = load i64, ptr %194, align 8, !tbaa !330
  %196 = icmp eq i64 %195, 0
  %197 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %193, i64 0, i32 3
  %198 = load ptr, ptr %197, align 8
  %199 = select i1 %196, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %198
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl15entityReferenceEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %199)
  br label %255

200:                                              ; preds = %32
  %201 = load ptr, ptr %1, align 8, !tbaa !159
  %202 = getelementptr inbounds ptr, ptr %201, i64 2
  %203 = load ptr, ptr %202, align 8
  %204 = tail call noundef nonnull align 8 dereferenceable(36) ptr %203(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %205 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %204, i64 0, i32 1
  %206 = load i64, ptr %205, align 8, !tbaa !330
  %207 = icmp eq i64 %206, 0
  %208 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %204, i64 0, i32 3
  %209 = load ptr, ptr %208, align 8
  %210 = select i1 %207, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %209
  %211 = load ptr, ptr %1, align 8, !tbaa !159
  %212 = getelementptr inbounds ptr, ptr %211, i64 3
  %213 = load ptr, ptr %212, align 8
  %214 = tail call noundef nonnull align 8 dereferenceable(36) ptr %213(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %215 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %214, i64 0, i32 1
  %216 = load i64, ptr %215, align 8, !tbaa !330
  %217 = icmp eq i64 %216, 0
  %218 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %214, i64 0, i32 3
  %219 = load ptr, ptr %218, align 8
  %220 = select i1 %217, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %219
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %210, ptr noundef %220)
  br label %255

221:                                              ; preds = %32
  %222 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %223 = load ptr, ptr %222, align 8, !tbaa !221
  %224 = load ptr, ptr %223, align 8, !tbaa !159
  %225 = getelementptr inbounds ptr, ptr %224, i64 23
  %226 = load ptr, ptr %225, align 8
  %227 = tail call noundef nonnull align 8 dereferenceable(36) ptr %226(ptr noundef nonnull align 8 dereferenceable(24) %223)
  %228 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %227, i32 noundef 55)
          to label %229 unwind label %235

229:                                              ; preds = %221
  %230 = icmp eq ptr %6, null
  %231 = load ptr, ptr %0, align 8, !tbaa !159
  br i1 %230, label %244, label %232

232:                                              ; preds = %229
  %233 = getelementptr inbounds ptr, ptr %231, i64 31
  %234 = load ptr, ptr %233, align 8
  invoke void %234(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %228, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %1)
          to label %247 unwind label %235

235:                                              ; preds = %244, %232, %221
  %236 = landingpad { ptr, i32 }
          cleanup
  %237 = load ptr, ptr %223, align 8, !tbaa !159
  %238 = getelementptr inbounds ptr, ptr %237, i64 24
  %239 = load ptr, ptr %238, align 8
  %240 = invoke noundef zeroext i1 %239(ptr noundef nonnull align 8 dereferenceable(24) %223, ptr noundef nonnull align 8 dereferenceable(36) %227)
          to label %256 unwind label %241

241:                                              ; preds = %235
  %242 = landingpad { ptr, i32 }
          catch ptr null
  %243 = extractvalue { ptr, i32 } %242, 0
  tail call void @__clang_call_terminate(ptr %243) #27
  unreachable

244:                                              ; preds = %229
  %245 = getelementptr inbounds ptr, ptr %231, i64 30
  %246 = load ptr, ptr %245, align 8
  invoke void %246(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %228, ptr noundef nonnull %1, ptr noundef null)
          to label %247 unwind label %235

247:                                              ; preds = %244, %232
  %248 = load ptr, ptr %223, align 8, !tbaa !159
  %249 = getelementptr inbounds ptr, ptr %248, i64 24
  %250 = load ptr, ptr %249, align 8
  %251 = invoke noundef zeroext i1 %250(ptr noundef nonnull align 8 dereferenceable(24) %223, ptr noundef nonnull align 8 dereferenceable(36) %227)
          to label %255 unwind label %252

252:                                              ; preds = %247
  %253 = landingpad { ptr, i32 }
          catch ptr null
  %254 = extractvalue { ptr, i32 } %253, 0
  tail call void @__clang_call_terminate(ptr %254) #27
  unreachable

255:                                              ; preds = %32, %32, %247, %170, %41, %34, %19, %12, %81, %86, %178, %189, %200, %137, %32, %10
  ret void

256:                                              ; preds = %158, %235
  %257 = phi { ptr, i32 } [ %236, %235 ], [ %159, %158 ]
  resume { ptr, i32 } %257
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl23copyAttributesToAttListERKNS_9XalanNodeERNS_17AttributeListImplE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #4 align 2 !prof !156 {
  %4 = load ptr, ptr %1, align 8, !tbaa !159
  %5 = getelementptr inbounds ptr, ptr %4, i64 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %48, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !159
  %11 = getelementptr inbounds ptr, ptr %10, i64 5
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %48, label %15

15:                                               ; preds = %9, %40
  %16 = phi i32 [ %46, %40 ], [ 0, %9 ]
  %17 = load ptr, ptr %7, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef %16)
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(36) ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %25 = load ptr, ptr %20, align 8, !tbaa !159
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef nonnull align 8 dereferenceable(36) ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %28, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !330
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %28, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %33
  br label %35

35:                                               ; preds = %35, %15
  %36 = phi ptr [ %34, %15 ], [ %39, %35 ]
  %37 = load i16, ptr %36, align 2, !tbaa !331
  %38 = icmp eq i16 %37, 0
  %39 = getelementptr inbounds i16, ptr %36, i64 1
  br i1 %38, label %40, label %35, !llvm.loop !398

40:                                               ; preds = %35
  %41 = ptrtoint ptr %36 to i64
  %42 = ptrtoint ptr %34 to i64
  %43 = sub i64 %41, %42
  %44 = lshr exact i64 %43, 1
  %45 = trunc i64 %44 to i32
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(72) %2, ptr noundef nonnull align 8 dereferenceable(36) %24, ptr noundef %34, i32 noundef %45, i1 noundef zeroext false, ptr noundef null)
  %46 = add nuw i32 %16, 1
  %47 = icmp eq i32 %46, %13
  br i1 %47, label %48, label %15, !llvm.loop !428

48:                                               ; preds = %40, %9, %3
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl23copyNamespaceAttributesERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 align 2 !prof !156 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26, i32 3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26
  br label %9

9:                                                ; preds = %2, %39
  %10 = phi ptr [ %1, %2 ], [ %43, %39 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !159
  %12 = getelementptr inbounds ptr, ptr %11, i64 4
  %13 = load ptr, ptr %12, align 8
  %14 = call noundef i32 %13(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %67

16:                                               ; preds = %9
  %17 = load ptr, ptr %10, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 11
  %19 = load ptr, ptr %18, align 8
  %20 = call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %21 = load ptr, ptr %20, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 5
  %23 = load ptr, ptr %22, align 8
  %24 = call noundef i32 %23(ptr noundef nonnull align 8 dereferenceable(8) %20)
  %25 = load ptr, ptr %4, align 8, !tbaa !361
  %26 = load i64, ptr %5, align 8, !tbaa !362
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %25, i64 0, i32 1
  %28 = load i64, ptr %27, align 8, !tbaa !363
  %29 = udiv i64 %26, %28
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %25, i64 0, i32 2, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !364
  %32 = getelementptr inbounds ptr, ptr %31, i64 %29
  %33 = load ptr, ptr %32, align 8, !tbaa !162
  %34 = urem i64 %26, %28
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %33, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8, !tbaa !365
  %37 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %36, i64 %34, i32 1
  %38 = icmp eq i32 %24, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %64, %16
  %40 = load ptr, ptr %10, align 8, !tbaa !159
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %10)
  %44 = icmp eq ptr %43, null
  br i1 %44, label %67, label %9, !llvm.loop !429

45:                                               ; preds = %16, %64
  %46 = phi i32 [ %65, %64 ], [ 0, %16 ]
  %47 = load ptr, ptr %20, align 8, !tbaa !159
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %20, i32 noundef %46)
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef nonnull align 8 dereferenceable(36) ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %50)
  %55 = load ptr, ptr %6, align 8, !tbaa !226
  %56 = load i64, ptr %7, align 8, !tbaa !260
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  %58 = call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_14XSLTEngineImpl24FindStringPointerFunctorEEEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %55, ptr noundef %57, ptr nonnull %54)
  %59 = load ptr, ptr %6, align 8, !tbaa !226
  %60 = load i64, ptr %7, align 8, !tbaa !260
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = icmp eq ptr %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %45
  call void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultNamespaceERKNS_9XalanNodeERNS_17AttributeListImplEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(72) %37, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  store ptr %54, ptr %3, align 8, !tbaa !162
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br label %64

64:                                               ; preds = %63, %45
  %65 = add nuw i32 %46, 1
  %66 = icmp eq i32 %65, %24
  br i1 %66, label %39, label %45, !llvm.loop !430

67:                                               ; preds = %39, %9
  %68 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 26, i32 1
  %69 = load i64, ptr %68, align 8, !tbaa !260
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %67
  store i64 0, ptr %68, align 8, !tbaa !260
  br label %72

72:                                               ; preds = %71, %67
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18outputToResultTreeERKNS_7XObjectEbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i1 noundef zeroext %2, ptr noundef %3) local_unnamed_addr #4 align 2 !prof !156 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !431
  switch i32 %6, label %120 [
    i32 2, label %7
    i32 3, label %7
    i32 4, label %7
    i32 5, label %20
    i32 6, label %115
  ]

7:                                                ; preds = %4, %4, %4
  %8 = load ptr, ptr %1, align 8, !tbaa !159
  %9 = getelementptr inbounds ptr, ptr %8, i64 8
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !330
  %14 = icmp eq i64 %13, 0
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8
  %17 = select i1 %14, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %16
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %17, i32 noundef 0, i32 noundef %19)
  br label %120

20:                                               ; preds = %4
  %21 = load ptr, ptr %1, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 13
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef nonnull align 8 dereferenceable(8) ptr %23(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %25 = load ptr, ptr %24, align 8, !tbaa !159
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef i32 %27(ptr noundef nonnull align 8 dereferenceable(8) %24)
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %120, label %30

30:                                               ; preds = %20, %112
  %31 = phi i32 [ %113, %112 ], [ 0, %20 ]
  %32 = load ptr, ptr %24, align 8, !tbaa !159
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef %31)
  %36 = load ptr, ptr %35, align 8, !tbaa !159
  %37 = getelementptr inbounds ptr, ptr %36, i64 4
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(8) %35)
  %40 = icmp ne i32 %39, 3
  %41 = and i1 %40, %2
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl21warnCopyTextNodesOnlyEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %35, ptr noundef %3)
  br label %112

43:                                               ; preds = %30, %107
  %44 = phi ptr [ %105, %107 ], [ %35, %30 ]
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  %45 = load ptr, ptr %44, align 8, !tbaa !159
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef i32 %47(ptr noundef nonnull align 8 dereferenceable(8) %44)
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl17cloneToResultTreeERKNS_9XalanNodeENS1_8NodeTypeEbbbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %44, i32 noundef %48, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext false, ptr noundef %3)
  %49 = load ptr, ptr %44, align 8, !tbaa !159
  %50 = getelementptr inbounds ptr, ptr %49, i64 7
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(8) %44)
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %104

54:                                               ; preds = %43, %100
  %55 = phi i32 [ %102, %100 ], [ %48, %43 ]
  %56 = phi ptr [ %101, %100 ], [ %44, %43 ]
  %57 = icmp eq i32 %55, 1
  br i1 %57, label %58, label %69

58:                                               ; preds = %54
  %59 = load ptr, ptr %56, align 8, !tbaa !159
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef nonnull align 8 dereferenceable(36) ptr %61(ptr noundef nonnull align 8 dereferenceable(8) %56)
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %62, i64 0, i32 1
  %64 = load i64, ptr %63, align 8, !tbaa !330
  %65 = icmp eq i64 %64, 0
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %62, i64 0, i32 3
  %67 = load ptr, ptr %66, align 8
  %68 = select i1 %65, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %67
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %68)
  br label %69

69:                                               ; preds = %58, %54
  %70 = icmp eq ptr %35, %56
  br i1 %70, label %104, label %71

71:                                               ; preds = %69
  %72 = load ptr, ptr %56, align 8, !tbaa !159
  %73 = getelementptr inbounds ptr, ptr %72, i64 10
  %74 = load ptr, ptr %73, align 8
  %75 = tail call noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(8) %56)
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %100

77:                                               ; preds = %71
  %78 = load ptr, ptr %56, align 8, !tbaa !159
  %79 = getelementptr inbounds ptr, ptr %78, i64 5
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %56)
  %82 = load ptr, ptr %81, align 8, !tbaa !159
  %83 = getelementptr inbounds ptr, ptr %82, i64 4
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef i32 %84(ptr noundef nonnull align 8 dereferenceable(8) %81)
  %86 = icmp eq ptr %35, %81
  br i1 %86, label %87, label %100

87:                                               ; preds = %77
  %88 = icmp eq i32 %85, 1
  br i1 %88, label %89, label %104

89:                                               ; preds = %87
  %90 = load ptr, ptr %81, align 8, !tbaa !159
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef nonnull align 8 dereferenceable(36) ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %81)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %93, i64 0, i32 1
  %95 = load i64, ptr %94, align 8, !tbaa !330
  %96 = icmp eq i64 %95, 0
  %97 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %93, i64 0, i32 3
  %98 = load ptr, ptr %97, align 8
  %99 = select i1 %96, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %98
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %99)
  br label %104

100:                                              ; preds = %77, %71
  %101 = phi ptr [ %81, %77 ], [ %56, %71 ]
  %102 = phi i32 [ %85, %77 ], [ %55, %71 ]
  %103 = icmp eq ptr %75, null
  br i1 %103, label %54, label %104, !llvm.loop !435

104:                                              ; preds = %100, %69, %43, %87, %89
  %105 = phi ptr [ null, %89 ], [ null, %87 ], [ %52, %43 ], [ null, %69 ], [ %75, %100 ]
  %106 = icmp eq ptr %105, null
  br i1 %106, label %112, label %107

107:                                              ; preds = %104
  %108 = load ptr, ptr %105, align 8, !tbaa !159
  %109 = getelementptr inbounds ptr, ptr %108, i64 4
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef i32 %110(ptr noundef nonnull align 8 dereferenceable(8) %105)
  br label %43

112:                                              ; preds = %104, %42
  %113 = add nuw i32 %31, 1
  %114 = icmp eq i32 %113, %28
  br i1 %114, label %120, label %30, !llvm.loop !436

115:                                              ; preds = %4
  %116 = load ptr, ptr %1, align 8, !tbaa !159
  %117 = getelementptr inbounds ptr, ptr %116, i64 12
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr %118(ptr noundef nonnull align 8 dereferenceable(24) %1)
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl24outputResultTreeFragmentERKNS_21XalanDocumentFragmentEbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %119, i1 noundef zeroext %2, ptr noundef %3)
  br label %120

120:                                              ; preds = %112, %20, %4, %115, %7
  ret void
}

declare noundef zeroext i1 @_ZNK11xalanc_1_1014StylesheetRoot25isCDATASectionElementNameERKNS_10XalanQNameE(ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014XSLTEngineImpl27getResultPrefixForNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack9findEntryERKNS_14XalanDOMStringEMNS0_25XalanNamespacesStackEntryEKFPS2_S3_E(ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 ptrtoint (ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry21getPrefixForNamespaceERKNS_14XalanDOMStringE to i64), i64 0)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XSLTEngineImpl21isPendingResultPrefixERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !267
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !361
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !362
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !363
  %11 = udiv i64 %8, %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %6, i64 0, i32 2, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !364
  %14 = getelementptr inbounds ptr, ptr %13, i64 %11
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = urem i64 %8, %10
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !365
  %19 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %18, i64 %16, i32 2
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !330
  %22 = icmp eq i64 %21, 0
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %19, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8
  %25 = select i1 %22, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %24
  %26 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %18, i64 %16, i32 2, i32 1
  %27 = load i32, ptr %26, align 8, !tbaa !267
  %28 = add i32 %4, 1
  %29 = icmp ult i32 %28, %27
  br i1 %29, label %30, label %59

30:                                               ; preds = %2, %33
  %31 = phi ptr [ %34, %33 ], [ %25, %2 ]
  %32 = load i16, ptr %31, align 2, !tbaa !331
  switch i16 %32, label %33 [
    i16 58, label %35
    i16 0, label %35
  ]

33:                                               ; preds = %30
  %34 = getelementptr inbounds i16, ptr %31, i64 1
  br label %30, !llvm.loop !332

35:                                               ; preds = %30, %30
  %36 = ptrtoint ptr %31 to i64
  %37 = ptrtoint ptr %25 to i64
  %38 = sub i64 %36, %37
  %39 = lshr exact i64 %38, 1
  %40 = trunc i64 %39 to i32
  %41 = icmp eq i32 %4, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %35, %42
  %43 = phi ptr [ %46, %42 ], [ %25, %35 ]
  %44 = load i16, ptr %43, align 2, !tbaa !331
  %45 = icmp eq i16 %44, 0
  %46 = getelementptr inbounds i16, ptr %43, i64 1
  br i1 %45, label %47, label %42, !llvm.loop !398

47:                                               ; preds = %42
  %48 = ptrtoint ptr %43 to i64
  %49 = sub i64 %48, %37
  %50 = lshr exact i64 %49, 1
  %51 = trunc i64 %50 to i32
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %53 = load i64, ptr %52, align 8, !tbaa !330
  %54 = icmp eq i64 %53, 0
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8
  %57 = select i1 %54, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %56
  %58 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %25, i32 noundef %51, ptr noundef %57, i32 noundef %4)
  br i1 %58, label %104, label %59

59:                                               ; preds = %47, %35, %2
  %60 = load ptr, ptr %5, align 8, !tbaa !361
  %61 = load i64, ptr %7, align 8, !tbaa !362
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %60, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !363
  %64 = udiv i64 %61, %63
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %60, i64 0, i32 2, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !364
  %67 = getelementptr inbounds ptr, ptr %66, i64 %64
  %68 = load ptr, ptr %67, align 8, !tbaa !162
  %69 = urem i64 %61, %63
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %68, i64 0, i32 3
  %71 = load ptr, ptr %70, align 8, !tbaa !365
  %72 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %71, i64 %69, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !159
  %74 = getelementptr inbounds ptr, ptr %73, i64 2
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef i32 %75(ptr noundef nonnull align 8 dereferenceable(8) %72)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %104, label %78

78:                                               ; preds = %59, %90
  %79 = phi i32 [ %98, %90 ], [ 0, %59 ]
  %80 = phi i8 [ %97, %90 ], [ 0, %59 ]
  %81 = load ptr, ptr %72, align 8, !tbaa !159
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(8) %72, i32 noundef %79)
  br label %85

85:                                               ; preds = %85, %78
  %86 = phi ptr [ %84, %78 ], [ %89, %85 ]
  %87 = load i16, ptr %86, align 2, !tbaa !331
  %88 = icmp eq i16 %87, 0
  %89 = getelementptr inbounds i16, ptr %86, i64 1
  br i1 %88, label %90, label %85, !llvm.loop !398

90:                                               ; preds = %85
  %91 = ptrtoint ptr %86 to i64
  %92 = ptrtoint ptr %84 to i64
  %93 = sub i64 %91, %92
  %94 = lshr exact i64 %93, 1
  %95 = trunc i64 %94 to i32
  %96 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022isPrefixUsedOrDeclaredERKNS_14XalanDOMStringEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef %4, ptr noundef %84, i32 noundef %95)
  %97 = select i1 %96, i8 1, i8 %80
  %98 = add nuw i32 %79, 1
  %99 = icmp eq i32 %98, %76
  %100 = select i1 %96, i1 true, i1 %99
  br i1 %100, label %101, label %78, !llvm.loop !437

101:                                              ; preds = %90
  %102 = and i8 %97, 1
  %103 = icmp ne i8 %102, 0
  br label %104

104:                                              ; preds = %101, %59, %47
  %105 = phi i1 [ true, %47 ], [ %103, %101 ], [ false, %59 ]
  ret i1 %105
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultNamespaceERKNS_14XalanDOMStringES3_RKNS_9XalanNodeERNS_17AttributeListImplEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(72) %4, i1 noundef zeroext %5) local_unnamed_addr #4 align 2 !prof !156 {
  br i1 %5, label %7, label %10

7:                                                ; preds = %6
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1020XalanNamespacesStack20prefixIsPresentLocalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %9, label %44, label %10

10:                                               ; preds = %7, %6
  %11 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  %12 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %13 = load ptr, ptr %3, align 8, !tbaa !159
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %17 = icmp eq ptr %12, null
  br i1 %17, label %20, label %18

18:                                               ; preds = %10
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %12)
  br i1 %19, label %44, label %20

20:                                               ; preds = %18, %10
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %16, i64 0, i32 1
  %22 = load i64, ptr %21, align 8, !tbaa !330
  %23 = icmp eq i64 %22, 0
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %16, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8
  %26 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %25
  br label %27

27:                                               ; preds = %27, %20
  %28 = phi ptr [ %26, %20 ], [ %31, %27 ]
  %29 = load i16, ptr %28, align 2, !tbaa !331
  %30 = icmp eq i16 %29, 0
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  br i1 %30, label %32, label %27, !llvm.loop !398

32:                                               ; preds = %27
  %33 = ptrtoint ptr %28 to i64
  %34 = ptrtoint ptr %26 to i64
  %35 = sub i64 %33, %34
  %36 = lshr exact i64 %35, 1
  %37 = trunc i64 %36 to i32
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %26, i32 noundef %37, i1 noundef zeroext false, ptr noundef null)
  %38 = load i64, ptr %21, align 8, !tbaa !330
  %39 = icmp eq i64 %38, 0
  %40 = load ptr, ptr %24, align 8
  %41 = select i1 %39, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %40
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %16, i64 0, i32 1
  %43 = load i32, ptr %42, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(144) %11, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %41, i32 noundef %43)
  br label %44

44:                                               ; preds = %18, %32, %7
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1020XalanNamespacesStack20prefixIsPresentLocalERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultNamespaceERKNS_9XalanNodeERNS_17AttributeListImplEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = load ptr, ptr %1, align 8, !tbaa !159
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !162
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) %9)
  br i1 %10, label %11, label %12

11:                                               ; preds = %4
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultNamespaceERKNS_14XalanDOMStringES3_RKNS_9XalanNodeERNS_17AttributeListImplEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3)
  br label %59

12:                                               ; preds = %4
  %13 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !162
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !330
  %16 = icmp eq i64 %15, 0
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8
  %19 = select i1 %16, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %18
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !267
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !330
  %24 = icmp eq i64 %23, 0
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8
  %27 = select i1 %24, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %26
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  %29 = load i32, ptr %28, align 8, !tbaa !267
  %30 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %19, i32 noundef %21, ptr noundef %27, i32 noundef %29)
  br i1 %30, label %31, label %59

31:                                               ; preds = %12
  %32 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 21
  %33 = load ptr, ptr %32, align 8, !tbaa !221
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 23
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(36) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %33)
  %38 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE, align 8, !tbaa !162
  %39 = load i32, ptr %38, align 4, !tbaa !396
  invoke void @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) %37, i32 noundef %39, i32 noundef -1)
          to label %40 unwind label %49

40:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl18addResultNamespaceERKNS_14XalanDOMStringES3_RKNS_9XalanNodeERNS_17AttributeListImplEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %37, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3)
          to label %41 unwind label %49

41:                                               ; preds = %40
  %42 = load ptr, ptr %33, align 8, !tbaa !159
  %43 = getelementptr inbounds ptr, ptr %42, i64 24
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef zeroext i1 %44(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(36) %37)
          to label %59 unwind label %46

46:                                               ; preds = %41
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  tail call void @__clang_call_terminate(ptr %48) #27
  unreachable

49:                                               ; preds = %40, %31
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = load ptr, ptr %33, align 8, !tbaa !159
  %52 = getelementptr inbounds ptr, ptr %51, i64 24
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef zeroext i1 %53(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull align 8 dereferenceable(36) %37)
          to label %58 unwind label %55

55:                                               ; preds = %49
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #27
  unreachable

58:                                               ; preds = %49
  resume { ptr, i32 } %50

59:                                               ; preds = %41, %12, %11
  ret void
}

declare void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(129), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !254
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8)
  %13 = load ptr, ptr %7, align 8, !tbaa !254
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 6, i32 0, i32 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !167
  %16 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 8, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !250
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %25, label %19

19:                                               ; preds = %6
  %20 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 8, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !240
  %22 = getelementptr ptr, ptr %21, i64 %17
  %23 = getelementptr ptr, ptr %22, i64 -1
  %24 = load ptr, ptr %23, align 8, !tbaa !162
  br label %25

25:                                               ; preds = %19, %6
  %26 = phi ptr [ %24, %19 ], [ null, %6 ]
  %27 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 28
  %28 = load ptr, ptr %15, align 8, !tbaa !159
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef nonnull align 8 dereferenceable(16) %27, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %26, i1 noundef zeroext true, i1 noundef zeroext true)
          to label %31 unwind label %41

31:                                               ; preds = %25
  invoke void @_ZNK11xalanc_1_105XPath7executeEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %32 unwind label %41

32:                                               ; preds = %31
  %33 = load ptr, ptr %13, align 8, !tbaa !159
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %12, i1 noundef zeroext false)
          to label %40 unwind label %37

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #27
  unreachable

40:                                               ; preds = %32
  ret void

41:                                               ; preds = %31, %25
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = icmp eq ptr %12, null
  br i1 %43, label %52, label %44

44:                                               ; preds = %41
  %45 = load ptr, ptr %13, align 8, !tbaa !159
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef zeroext i1 %47(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull %12, i1 noundef zeroext false)
          to label %52 unwind label %49

49:                                               ; preds = %44
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  tail call void @__clang_call_terminate(ptr %51) #27
  unreachable

52:                                               ; preds = %44, %41
  resume { ptr, i32 } %42
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringEPNS_9XalanNodeERKNS_12XalanElementERNS_21XPathExecutionContextE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %7 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #26
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 19
  %9 = load ptr, ptr %8, align 8, !tbaa !252
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %1, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !258
  %12 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %5, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !262
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %13)
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl12evalXPathStrERKNS_14XalanDOMStringEPNS_9XalanNodeERKNS_14PrefixResolverERNS_21XPathExecutionContextE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %14 unwind label %15

14:                                               ; preds = %6
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #26
  ret void

15:                                               ; preds = %6
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %7) #26
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #26
  resume { ptr, i32 } %16
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl18createMatchPatternERKNS_14XalanDOMStringERKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 !prof !156 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !254
  %6 = load ptr, ptr %5, align 8, !tbaa !159
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 6, i32 0, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !167
  %12 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !250
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 8, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !240
  %18 = getelementptr ptr, ptr %17, i64 %13
  %19 = getelementptr ptr, ptr %18, i64 -1
  %20 = load ptr, ptr %19, align 8, !tbaa !162
  br label %21

21:                                               ; preds = %3, %15
  %22 = phi ptr [ %20, %15 ], [ null, %3 ]
  %23 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28
  %24 = load ptr, ptr %11, align 8, !tbaa !159
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(129) %9, ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %22, i1 noundef zeroext true, i1 noundef zeroext true)
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl11returnXPathEPKNS_5XPathE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !254
  %5 = load ptr, ptr %4, align 8, !tbaa !159
  %6 = getelementptr inbounds ptr, ptr %5, i64 4
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i1 noundef zeroext false)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1014XSLTEngineImpl19getXMLParserLiaisonEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) unnamed_addr #13 align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 18
  %3 = load ptr, ptr %2, align 8, !tbaa !340
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl23getUniqueNamespaceValueERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #4 align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 25
  %4 = icmp eq ptr %3, @_ZL23s_uniqueNamespacePrefix
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 25, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 16
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 23
  br label %8

8:                                                ; preds = %12, %2
  br i1 %4, label %12, label %9

9:                                                ; preds = %8
  %10 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) @_ZL23s_uniqueNamespacePrefix)
  %11 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 1), align 8, !tbaa !267
  store i32 %11, ptr %5, align 8, !tbaa !267
  br label %12

12:                                               ; preds = %8, %9
  %13 = load i64, ptr %6, align 8, !tbaa !438
  %14 = add i64 %13, 1
  store i64 %14, ptr %6, align 8, !tbaa !438
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1023UnsignedLongToDOMStringEmRNS_14XalanDOMStringE(i64 noundef %13, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %16 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(144) %7, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !439

18:                                               ; preds = %12
  %19 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 25, i32 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !330
  %21 = icmp eq i64 %20, 0
  %22 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 25, i32 0, i32 3
  %23 = load ptr, ptr %22, align 8
  %24 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %23
  %25 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 25, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !267
  %27 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %24, i32 noundef %26)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = alloca %"class.xalanc_1_10::XalanQNameByValue", align 8
  %5 = alloca %"class.xalanc_1_10::TopLevelArg", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #26
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  %7 = load ptr, ptr %6, align 8, !tbaa !252
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 20
  %9 = load ptr, ptr %8, align 8, !tbaa !258
  %10 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringEPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #26
  %12 = load ptr, ptr %10, align 8, !tbaa !329
  invoke void @_ZN11xalanc_1_1011TopLevelArgC1ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %13 unwind label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %15 unwind label %18

15:                                               ; preds = %13
  call void @_ZN11xalanc_1_1011TopLevelArgD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #26
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #26
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #26
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #26
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TopLevelArgD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #26
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #26
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #26
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #26
  resume { ptr, i32 } %21
}

declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringEPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1011TopLevelArgC1ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011TopLevelArgD1Ev(ptr noundef nonnull align 8 dereferenceable(136)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr nocapture noundef readonly %2) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %4 = alloca %"class.xalanc_1_10::XalanQNameByValue", align 8
  %5 = alloca %"class.xalanc_1_10::TopLevelArg", align 8
  %6 = alloca %"class.xalanc_1_10::XObjectPtr", align 8
  call void @llvm.lifetime.start.p0(i64 88, ptr nonnull %4) #26
  %7 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 19
  %8 = load ptr, ptr %7, align 8, !tbaa !252
  %9 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 20
  %10 = load ptr, ptr %9, align 8, !tbaa !258
  %11 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 28, i32 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !329
  call void @_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringEPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef null)
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %5) #26
  %13 = load ptr, ptr %11, align 8, !tbaa !329
  %14 = load ptr, ptr %2, align 8, !tbaa !333
  store ptr %14, ptr %6, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %14)
          to label %15 unwind label %24

15:                                               ; preds = %3
  invoke void @_ZN11xalanc_1_1011TopLevelArgC1ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(136) %5, ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %6)
          to label %16 unwind label %26

16:                                               ; preds = %15
  %17 = load ptr, ptr %6, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %17)
          to label %21 unwind label %18

18:                                               ; preds = %16
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  call void @__clang_call_terminate(ptr %20) #27
  unreachable

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %22, ptr noundef nonnull align 8 dereferenceable(136) %5)
          to label %23 unwind label %32

23:                                               ; preds = %21
  call void @_ZN11xalanc_1_1011TopLevelArgD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #26
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #26
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #26
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #26
  ret void

24:                                               ; preds = %3
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %34

26:                                               ; preds = %15
  %27 = landingpad { ptr, i32 }
          cleanup
  %28 = load ptr, ptr %6, align 8, !tbaa !333
  invoke void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef %28)
          to label %34 unwind label %29

29:                                               ; preds = %26
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  call void @__clang_call_terminate(ptr %31) #27
  unreachable

32:                                               ; preds = %21
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011TopLevelArgD1Ev(ptr noundef nonnull align 8 dereferenceable(136) %5) #26
  br label %34

34:                                               ; preds = %26, %32, %24
  %35 = phi { ptr, i32 } [ %33, %32 ], [ %25, %24 ], [ %27, %26 ]
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %5) #26
  call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %4) #26
  call void @llvm.lifetime.end.p0(i64 88, ptr nonnull %4) #26
  resume { ptr, i32 } %35
}

declare void @_ZN11xalanc_1_1011TopLevelArgC1ERN11xercesc_2_713MemoryManagerERKNS_10XalanQNameENS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl21resolveTopLevelParamsERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #4 align 2 !prof !157 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %1, align 8, !tbaa !159
  %5 = getelementptr inbounds ptr, ptr %4, i64 79
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %3), !prof !440
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1014XSLTEngineImpl20getFormatterListenerEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1000) %0) unnamed_addr #17 align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !361
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !362
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !363
  %8 = udiv i64 %5, %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !364
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = urem i64 %5, %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !365
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13
  %17 = load ptr, ptr %16, align 8, !tbaa !369
  ret ptr %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl20setFormatterListenerEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) unnamed_addr #4 align 2 !prof !441 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !363
  %9 = udiv i64 %6, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = urem i64 %6, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 3
  %18 = load i8, ptr %17, align 1, !tbaa !367, !range !327, !noundef !328
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %26, label %20, !prof !442

20:                                               ; preds = %2
  %21 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14
  %22 = load ptr, ptr %21, align 8, !tbaa !369
  %23 = icmp eq ptr %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 4
  store i8 1, ptr %25, align 1, !tbaa !367
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br label %26

26:                                               ; preds = %24, %20, %2
  %27 = load ptr, ptr %3, align 8, !tbaa !361
  %28 = load i64, ptr %5, align 8, !tbaa !362
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %27, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !363
  %31 = udiv i64 %28, %30
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %27, i64 0, i32 2, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !364
  %34 = getelementptr inbounds ptr, ptr %33, i64 %31
  %35 = load ptr, ptr %34, align 8, !tbaa !162
  %36 = urem i64 %28, %30
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %35, i64 0, i32 3
  %38 = load ptr, ptr %37, align 8, !tbaa !365
  %39 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %38, i64 %36
  store ptr %1, ptr %39, align 8, !tbaa !162
  ret void
}

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventERKNS_14XalanDOMStringEb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, i1 noundef zeroext %2) local_unnamed_addr #4 align 2 !prof !156 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !330
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !267
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl26fireCharacterGenerateEventEPKtjjb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %9, i32 noundef 0, i32 noundef %11, i1 noundef zeroext %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %2 = alloca %"class.xalanc_1_10::FunctionCurrent", align 8
  %3 = alloca %"class.xalanc_1_10::FunctionDocument", align 8
  %4 = alloca %"class.xalanc_1_10::FunctionElementAvailable", align 8
  %5 = alloca %"class.xalanc_1_10::FunctionFunctionAvailable", align 8
  %6 = alloca %"class.xalanc_1_10::FunctionFormatNumber", align 8
  %7 = alloca %"class.xalanc_1_10::FunctionGenerateID", align 8
  %8 = alloca %"class.xalanc_1_10::FunctionKey", align 8
  %9 = alloca %"class.xalanc_1_10::FunctionSystemProperty", align 8
  %10 = alloca %"class.xalanc_1_10::FunctionUnparsedEntityURI", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #26
  call void @_ZN11xalanc_1_1015FunctionCurrentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_currentE, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %11 unwind label %21, !prof !158

11:                                               ; preds = %1
  call void @_ZN11xalanc_1_1015FunctionCurrentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #26
  call void @_ZN11xalanc_1_1016FunctionDocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_documentE, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %12 unwind label %23, !prof !158

12:                                               ; preds = %11
  call void @_ZN11xalanc_1_1016FunctionDocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #26
  call void @_ZN11xalanc_1_1024FunctionElementAvailableC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %13 unwind label %25, !prof !158

13:                                               ; preds = %12
  call void @_ZN11xalanc_1_1024FunctionElementAvailableD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #26
  call void @_ZN11xalanc_1_1025FunctionFunctionAvailableC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %14 unwind label %27, !prof !158

14:                                               ; preds = %13
  call void @_ZN11xalanc_1_1025FunctionFunctionAvailableD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #26
  call void @_ZN11xalanc_1_1020FunctionFormatNumberC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %15 unwind label %29, !prof !158

15:                                               ; preds = %14
  call void @_ZN11xalanc_1_1020FunctionFormatNumberD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #26
  call void @_ZN11xalanc_1_1018FunctionGenerateIDC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %16 unwind label %31, !prof !158

16:                                               ; preds = %15
  call void @_ZN11xalanc_1_1018FunctionGenerateIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #26
  call void @_ZN11xalanc_1_1011FunctionKeyC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %17 unwind label %33, !prof !158

17:                                               ; preds = %16
  call void @_ZN11xalanc_1_1011FunctionKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 248, ptr nonnull %9) #26
  call void @_ZN11xalanc_1_1022FunctionSystemPropertyC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248) %9, ptr noundef nonnull align 8 dereferenceable(8) %0)
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %18 unwind label %35, !prof !158

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #26
  invoke void @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %19 unwind label %37, !prof !158

19:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %20 unwind label %39, !prof !158

20:                                               ; preds = %19
  call void @_ZN11xalanc_1_1025FunctionUnparsedEntityURID1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  call void @_ZN11xalanc_1_1022FunctionSystemPropertyD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9) #26
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %9) #26
  ret void

21:                                               ; preds = %1
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1015FunctionCurrentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #26
  br label %45

23:                                               ; preds = %11
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016FunctionDocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #26
  br label %45

25:                                               ; preds = %12
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1024FunctionElementAvailableD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #26
  br label %45

27:                                               ; preds = %13
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1025FunctionFunctionAvailableD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #26
  br label %45

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1020FunctionFormatNumberD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #26
  br label %45

31:                                               ; preds = %15
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018FunctionGenerateIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #26
  br label %45

33:                                               ; preds = %16
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011FunctionKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #26
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #26
  br label %45

35:                                               ; preds = %17
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %43

37:                                               ; preds = %18
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %41

39:                                               ; preds = %19
  %40 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1025FunctionUnparsedEntityURID1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #26
  br label %41

41:                                               ; preds = %39, %37
  %42 = phi { ptr, i32 } [ %40, %39 ], [ %38, %37 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #26
  br label %43

43:                                               ; preds = %41, %35
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %36, %35 ]
  call void @_ZN11xalanc_1_1022FunctionSystemPropertyD1Ev(ptr noundef nonnull align 8 dereferenceable(248) %9) #26
  call void @llvm.lifetime.end.p0(i64 248, ptr nonnull %9) #26
  br label %45

45:                                               ; preds = %43, %33, %31, %29, %27, %25, %23, %21
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %34, %33 ], [ %32, %31 ], [ %30, %29 ], [ %28, %27 ], [ %26, %25 ], [ %24, %23 ], [ %22, %21 ]
  resume { ptr, i32 } %46
}

declare void @_ZN11xalanc_1_1015FunctionCurrentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015FunctionCurrentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xalanc_1_1016FunctionDocumentC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016FunctionDocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xalanc_1_1024FunctionElementAvailableC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1024FunctionElementAvailableD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xalanc_1_1025FunctionFunctionAvailableC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025FunctionFunctionAvailableD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xalanc_1_1020FunctionFormatNumberC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020FunctionFormatNumberD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xalanc_1_1018FunctionGenerateIDC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018FunctionGenerateIDD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xalanc_1_1011FunctionKeyC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011FunctionKeyD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

declare void @_ZN11xalanc_1_1022FunctionSystemPropertyC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025FunctionUnparsedEntityURID1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022FunctionSystemPropertyD1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18uninstallFunctionsEv() local_unnamed_addr #4 align 2 !prof !157 {
  %1 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable9s_currentE)
  %2 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable10s_documentE)
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable18s_elementAvailableE)
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_functionAvailableE)
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable14s_formatNumberE)
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable12s_generateIdE)
  %7 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable5s_keyE)
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable16s_systemPropertyE)
  %9 = tail call noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304) @_ZN11xalanc_1_105XPath11s_functionsE, ptr noundef nonnull @_ZN11xalanc_1_1018XPathFunctionTable19s_unparsedEntityUriE)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL17s_XSLNameSpaceURL, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.22)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL19s_XalanNamespaceURL, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.23)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL23s_uniqueNamespacePrefix, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.24)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL20s_stylesheetNodeName, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.25)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_typeString, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.26)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #26
  %3 = load ptr, ptr @_ZN11xalanc_1_109Constants13ATTRNAME_HREFE, align 8, !tbaa !162
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef 0, i32 noundef -1)
  %4 = load ptr, ptr @_ZL12s_hrefString, align 8, !tbaa !272
  %5 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  %6 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  %7 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %8 = load ptr, ptr %2, align 8, !tbaa !272
  store ptr %8, ptr @_ZL12s_hrefString, align 8, !tbaa !272
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !330
  store i64 %10, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !270
  store i64 %12, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !271
  store ptr %14, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %4, ptr %2, align 8, !tbaa !272
  store i64 %5, ptr %9, align 8, !tbaa !330
  store i64 %6, ptr %11, align 8, !tbaa !270
  store ptr %7, ptr %13, align 8, !tbaa !271
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %16 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 1), align 8, !tbaa !396
  %17 = load i32, ptr %15, align 8, !tbaa !396
  store i32 %17, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 1), align 8, !tbaa !396
  store i32 %16, ptr %15, align 8, !tbaa !396
  invoke void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL19s_piTokenizerString, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.27)
          to label %18 unwind label %36, !prof !158

18:                                               ; preds = %1
  invoke void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString1, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.28)
          to label %19 unwind label %36, !prof !158

19:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.29)
          to label %20 unwind label %36, !prof !158

20:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString3, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.30)
          to label %21 unwind label %36, !prof !158

21:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.31)
          to label %22 unwind label %36, !prof !158

22:                                               ; preds = %21
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %23 unwind label %36, !prof !158

23:                                               ; preds = %22
  %24 = load i64, ptr %11, align 8, !tbaa !270
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %35, label %26, !prof !158

26:                                               ; preds = %23
  %27 = load ptr, ptr %13, align 8, !tbaa !271
  %28 = load ptr, ptr %2, align 8, !tbaa !272
  %29 = load ptr, ptr %28, align 8, !tbaa !159
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %27)
          to label %35 unwind label %32

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #27
  unreachable

35:                                               ; preds = %23, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #26
  ret void

36:                                               ; preds = %22, %21, %20, %19, %18, %1
  %37 = landingpad { ptr, i32 }
          cleanup
  %38 = load i64, ptr %11, align 8, !tbaa !270
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %49, label %40

40:                                               ; preds = %36
  %41 = load ptr, ptr %13, align 8, !tbaa !271
  %42 = load ptr, ptr %2, align 8, !tbaa !272
  %43 = load ptr, ptr %42, align 8, !tbaa !159
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %41)
          to label %49 unwind label %46

46:                                               ; preds = %40
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #27
  unreachable

49:                                               ; preds = %36, %40
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #26
  resume { ptr, i32 } %37
}

declare void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv() local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1014XSLTEngineImpl18uninstallFunctionsEv()
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %13 = load ptr, ptr %11, align 8, !tbaa !272
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !330
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !270
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !271
  %20 = load ptr, ptr @_ZL23s_uniqueNamespacePrefix, align 8, !tbaa !272
  store ptr %20, ptr %11, align 8, !tbaa !272
  %21 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %21, ptr %14, align 8, !tbaa !330
  %22 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %22, ptr %16, align 8, !tbaa !270
  %23 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %23, ptr %18, align 8, !tbaa !271
  store ptr %13, ptr @_ZL23s_uniqueNamespacePrefix, align 8, !tbaa !272
  store i64 %15, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %17, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %19, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %11, i64 0, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !396
  %26 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 1), align 8, !tbaa !396
  store i32 %26, ptr %24, align 8, !tbaa !396
  store i32 %25, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL23s_uniqueNamespacePrefix, i64 0, i32 1), align 8, !tbaa !396
  %27 = icmp eq i64 %22, 0
  br i1 %27, label %35, label %28, !prof !239

28:                                               ; preds = %0
  %29 = load ptr, ptr %20, align 8, !tbaa !159
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  invoke void %31(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %23)
          to label %35 unwind label %32, !prof !241

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  call void @__clang_call_terminate(ptr %34) #27
  unreachable

35:                                               ; preds = %0, %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %36 = load ptr, ptr %10, align 8, !tbaa !272
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 1
  %38 = load i64, ptr %37, align 8, !tbaa !330
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !270
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !271
  %43 = load ptr, ptr @_ZL19s_XalanNamespaceURL, align 8, !tbaa !272
  store ptr %43, ptr %10, align 8, !tbaa !272
  %44 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %44, ptr %37, align 8, !tbaa !330
  %45 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %45, ptr %39, align 8, !tbaa !270
  %46 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %46, ptr %41, align 8, !tbaa !271
  store ptr %36, ptr @_ZL19s_XalanNamespaceURL, align 8, !tbaa !272
  store i64 %38, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %40, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %42, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %10, i64 0, i32 1
  %48 = load i32, ptr %47, align 8, !tbaa !396
  %49 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 1), align 8, !tbaa !396
  store i32 %49, ptr %47, align 8, !tbaa !396
  store i32 %48, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_XalanNamespaceURL, i64 0, i32 1), align 8, !tbaa !396
  %50 = icmp eq i64 %45, 0
  br i1 %50, label %58, label %51, !prof !239

51:                                               ; preds = %35
  %52 = load ptr, ptr %43, align 8, !tbaa !159
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  invoke void %54(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %46)
          to label %58 unwind label %55, !prof !241

55:                                               ; preds = %51
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  call void @__clang_call_terminate(ptr %57) #27
  unreachable

58:                                               ; preds = %35, %51
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %59 = load ptr, ptr %9, align 8, !tbaa !272
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 1
  %61 = load i64, ptr %60, align 8, !tbaa !330
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %63 = load i64, ptr %62, align 8, !tbaa !270
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %65 = load ptr, ptr %64, align 8, !tbaa !271
  %66 = load ptr, ptr @_ZL17s_XSLNameSpaceURL, align 8, !tbaa !272
  store ptr %66, ptr %9, align 8, !tbaa !272
  %67 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %67, ptr %60, align 8, !tbaa !330
  %68 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %68, ptr %62, align 8, !tbaa !270
  %69 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %69, ptr %64, align 8, !tbaa !271
  store ptr %59, ptr @_ZL17s_XSLNameSpaceURL, align 8, !tbaa !272
  store i64 %61, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %63, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %65, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %71 = load i32, ptr %70, align 8, !tbaa !396
  %72 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 1), align 8, !tbaa !396
  store i32 %72, ptr %70, align 8, !tbaa !396
  store i32 %71, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL17s_XSLNameSpaceURL, i64 0, i32 1), align 8, !tbaa !396
  %73 = icmp eq i64 %68, 0
  br i1 %73, label %81, label %74, !prof !239

74:                                               ; preds = %58
  %75 = load ptr, ptr %66, align 8, !tbaa !159
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %81 unwind label %78, !prof !241

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #27
  unreachable

81:                                               ; preds = %58, %74
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %82 = load ptr, ptr %8, align 8, !tbaa !272
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 1
  %84 = load i64, ptr %83, align 8, !tbaa !330
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %86 = load i64, ptr %85, align 8, !tbaa !270
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %88 = load ptr, ptr %87, align 8, !tbaa !271
  %89 = load ptr, ptr @_ZL20s_stylesheetNodeName, align 8, !tbaa !272
  store ptr %89, ptr %8, align 8, !tbaa !272
  %90 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %90, ptr %83, align 8, !tbaa !330
  %91 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %91, ptr %85, align 8, !tbaa !270
  %92 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %92, ptr %87, align 8, !tbaa !271
  store ptr %82, ptr @_ZL20s_stylesheetNodeName, align 8, !tbaa !272
  store i64 %84, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %86, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %88, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %8, i64 0, i32 1
  %94 = load i32, ptr %93, align 8, !tbaa !396
  %95 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 1), align 8, !tbaa !396
  store i32 %95, ptr %93, align 8, !tbaa !396
  store i32 %94, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL20s_stylesheetNodeName, i64 0, i32 1), align 8, !tbaa !396
  %96 = icmp eq i64 %91, 0
  br i1 %96, label %104, label %97, !prof !239

97:                                               ; preds = %81
  %98 = load ptr, ptr %89, align 8, !tbaa !159
  %99 = getelementptr inbounds ptr, ptr %98, i64 3
  %100 = load ptr, ptr %99, align 8
  invoke void %100(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %92)
          to label %104 unwind label %101, !prof !241

101:                                              ; preds = %97
  %102 = landingpad { ptr, i32 }
          catch ptr null
  %103 = extractvalue { ptr, i32 } %102, 0
  call void @__clang_call_terminate(ptr %103) #27
  unreachable

104:                                              ; preds = %81, %97
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %105 = load ptr, ptr %7, align 8, !tbaa !272
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !330
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !270
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !271
  %112 = load ptr, ptr @_ZL12s_typeString, align 8, !tbaa !272
  store ptr %112, ptr %7, align 8, !tbaa !272
  %113 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %113, ptr %106, align 8, !tbaa !330
  %114 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %114, ptr %108, align 8, !tbaa !270
  %115 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %115, ptr %110, align 8, !tbaa !271
  store ptr %105, ptr @_ZL12s_typeString, align 8, !tbaa !272
  store i64 %107, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %109, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %111, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !396
  %118 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 1), align 8, !tbaa !396
  store i32 %118, ptr %116, align 8, !tbaa !396
  store i32 %117, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_typeString, i64 0, i32 1), align 8, !tbaa !396
  %119 = icmp eq i64 %114, 0
  br i1 %119, label %127, label %120, !prof !239

120:                                              ; preds = %104
  %121 = load ptr, ptr %112, align 8, !tbaa !159
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  invoke void %123(ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef %115)
          to label %127 unwind label %124, !prof !241

124:                                              ; preds = %120
  %125 = landingpad { ptr, i32 }
          catch ptr null
  %126 = extractvalue { ptr, i32 } %125, 0
  call void @__clang_call_terminate(ptr %126) #27
  unreachable

127:                                              ; preds = %104, %120
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %128 = load ptr, ptr %6, align 8, !tbaa !272
  %129 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %130 = load i64, ptr %129, align 8, !tbaa !330
  %131 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %132 = load i64, ptr %131, align 8, !tbaa !270
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %134 = load ptr, ptr %133, align 8, !tbaa !271
  %135 = load ptr, ptr @_ZL12s_hrefString, align 8, !tbaa !272
  store ptr %135, ptr %6, align 8, !tbaa !272
  %136 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %136, ptr %129, align 8, !tbaa !330
  %137 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %137, ptr %131, align 8, !tbaa !270
  %138 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %138, ptr %133, align 8, !tbaa !271
  store ptr %128, ptr @_ZL12s_hrefString, align 8, !tbaa !272
  store i64 %130, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %132, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %134, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %139 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %140 = load i32, ptr %139, align 8, !tbaa !396
  %141 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 1), align 8, !tbaa !396
  store i32 %141, ptr %139, align 8, !tbaa !396
  store i32 %140, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL12s_hrefString, i64 0, i32 1), align 8, !tbaa !396
  %142 = icmp eq i64 %137, 0
  br i1 %142, label %150, label %143, !prof !239

143:                                              ; preds = %127
  %144 = load ptr, ptr %135, align 8, !tbaa !159
  %145 = getelementptr inbounds ptr, ptr %144, i64 3
  %146 = load ptr, ptr %145, align 8
  invoke void %146(ptr noundef nonnull align 8 dereferenceable(8) %135, ptr noundef %138)
          to label %150 unwind label %147, !prof !241

147:                                              ; preds = %143
  %148 = landingpad { ptr, i32 }
          catch ptr null
  %149 = extractvalue { ptr, i32 } %148, 0
  call void @__clang_call_terminate(ptr %149) #27
  unreachable

150:                                              ; preds = %127, %143
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %151 = load ptr, ptr %5, align 8, !tbaa !272
  %152 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %153 = load i64, ptr %152, align 8, !tbaa !330
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %155 = load i64, ptr %154, align 8, !tbaa !270
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %157 = load ptr, ptr %156, align 8, !tbaa !271
  %158 = load ptr, ptr @_ZL19s_piTokenizerString, align 8, !tbaa !272
  store ptr %158, ptr %5, align 8, !tbaa !272
  %159 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %159, ptr %152, align 8, !tbaa !330
  %160 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %160, ptr %154, align 8, !tbaa !270
  %161 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %161, ptr %156, align 8, !tbaa !271
  store ptr %151, ptr @_ZL19s_piTokenizerString, align 8, !tbaa !272
  store i64 %153, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %155, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %157, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %162 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %163 = load i32, ptr %162, align 8, !tbaa !396
  %164 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 1), align 8, !tbaa !396
  store i32 %164, ptr %162, align 8, !tbaa !396
  store i32 %163, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL19s_piTokenizerString, i64 0, i32 1), align 8, !tbaa !396
  %165 = icmp eq i64 %160, 0
  br i1 %165, label %173, label %166, !prof !239

166:                                              ; preds = %150
  %167 = load ptr, ptr %158, align 8, !tbaa !159
  %168 = getelementptr inbounds ptr, ptr %167, i64 3
  %169 = load ptr, ptr %168, align 8
  invoke void %169(ptr noundef nonnull align 8 dereferenceable(8) %158, ptr noundef %161)
          to label %173 unwind label %170, !prof !241

170:                                              ; preds = %166
  %171 = landingpad { ptr, i32 }
          catch ptr null
  %172 = extractvalue { ptr, i32 } %171, 0
  call void @__clang_call_terminate(ptr %172) #27
  unreachable

173:                                              ; preds = %150, %166
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %174 = load ptr, ptr %4, align 8, !tbaa !272
  %175 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %176 = load i64, ptr %175, align 8, !tbaa !330
  %177 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %178 = load i64, ptr %177, align 8, !tbaa !270
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8, !tbaa !271
  %181 = load ptr, ptr @_ZL18s_typeValueString1, align 8, !tbaa !272
  store ptr %181, ptr %4, align 8, !tbaa !272
  %182 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %182, ptr %175, align 8, !tbaa !330
  %183 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %183, ptr %177, align 8, !tbaa !270
  %184 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %184, ptr %179, align 8, !tbaa !271
  store ptr %174, ptr @_ZL18s_typeValueString1, align 8, !tbaa !272
  store i64 %176, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %178, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %180, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %185 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %186 = load i32, ptr %185, align 8, !tbaa !396
  %187 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 1), align 8, !tbaa !396
  store i32 %187, ptr %185, align 8, !tbaa !396
  store i32 %186, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString1, i64 0, i32 1), align 8, !tbaa !396
  %188 = icmp eq i64 %183, 0
  br i1 %188, label %196, label %189, !prof !239

189:                                              ; preds = %173
  %190 = load ptr, ptr %181, align 8, !tbaa !159
  %191 = getelementptr inbounds ptr, ptr %190, i64 3
  %192 = load ptr, ptr %191, align 8
  invoke void %192(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %184)
          to label %196 unwind label %193, !prof !241

193:                                              ; preds = %189
  %194 = landingpad { ptr, i32 }
          catch ptr null
  %195 = extractvalue { ptr, i32 } %194, 0
  call void @__clang_call_terminate(ptr %195) #27
  unreachable

196:                                              ; preds = %173, %189
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %197 = load ptr, ptr %3, align 8, !tbaa !272
  %198 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %199 = load i64, ptr %198, align 8, !tbaa !330
  %200 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %201 = load i64, ptr %200, align 8, !tbaa !270
  %202 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %203 = load ptr, ptr %202, align 8, !tbaa !271
  %204 = load ptr, ptr @_ZL18s_typeValueString2, align 8, !tbaa !272
  store ptr %204, ptr %3, align 8, !tbaa !272
  %205 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %205, ptr %198, align 8, !tbaa !330
  %206 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %206, ptr %200, align 8, !tbaa !270
  %207 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %207, ptr %202, align 8, !tbaa !271
  store ptr %197, ptr @_ZL18s_typeValueString2, align 8, !tbaa !272
  store i64 %199, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %201, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %203, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %208 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %209 = load i32, ptr %208, align 8, !tbaa !396
  %210 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 1), align 8, !tbaa !396
  store i32 %210, ptr %208, align 8, !tbaa !396
  store i32 %209, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString2, i64 0, i32 1), align 8, !tbaa !396
  %211 = icmp eq i64 %206, 0
  br i1 %211, label %219, label %212, !prof !239

212:                                              ; preds = %196
  %213 = load ptr, ptr %204, align 8, !tbaa !159
  %214 = getelementptr inbounds ptr, ptr %213, i64 3
  %215 = load ptr, ptr %214, align 8
  invoke void %215(ptr noundef nonnull align 8 dereferenceable(8) %204, ptr noundef %207)
          to label %219 unwind label %216, !prof !241

216:                                              ; preds = %212
  %217 = landingpad { ptr, i32 }
          catch ptr null
  %218 = extractvalue { ptr, i32 } %217, 0
  call void @__clang_call_terminate(ptr %218) #27
  unreachable

219:                                              ; preds = %196, %212
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %220 = load ptr, ptr %2, align 8, !tbaa !272
  %221 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %222 = load i64, ptr %221, align 8, !tbaa !330
  %223 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %224 = load i64, ptr %223, align 8, !tbaa !270
  %225 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %226 = load ptr, ptr %225, align 8, !tbaa !271
  %227 = load ptr, ptr @_ZL18s_typeValueString3, align 8, !tbaa !272
  store ptr %227, ptr %2, align 8, !tbaa !272
  %228 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %228, ptr %221, align 8, !tbaa !330
  %229 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %229, ptr %223, align 8, !tbaa !270
  %230 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %230, ptr %225, align 8, !tbaa !271
  store ptr %220, ptr @_ZL18s_typeValueString3, align 8, !tbaa !272
  store i64 %222, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %224, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %226, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %231 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %232 = load i32, ptr %231, align 8, !tbaa !396
  %233 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 1), align 8, !tbaa !396
  store i32 %233, ptr %231, align 8, !tbaa !396
  store i32 %232, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString3, i64 0, i32 1), align 8, !tbaa !396
  %234 = icmp eq i64 %229, 0
  br i1 %234, label %242, label %235, !prof !239

235:                                              ; preds = %219
  %236 = load ptr, ptr %227, align 8, !tbaa !159
  %237 = getelementptr inbounds ptr, ptr %236, i64 3
  %238 = load ptr, ptr %237, align 8
  invoke void %238(ptr noundef nonnull align 8 dereferenceable(8) %227, ptr noundef %230)
          to label %242 unwind label %239, !prof !241

239:                                              ; preds = %235
  %240 = landingpad { ptr, i32 }
          catch ptr null
  %241 = extractvalue { ptr, i32 } %240, 0
  call void @__clang_call_terminate(ptr %241) #27
  unreachable

242:                                              ; preds = %219, %235
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #26
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #26
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %243 = load ptr, ptr %1, align 8, !tbaa !272
  %244 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %245 = load i64, ptr %244, align 8, !tbaa !330
  %246 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %247 = load i64, ptr %246, align 8, !tbaa !270
  %248 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %249 = load ptr, ptr %248, align 8, !tbaa !271
  %250 = load ptr, ptr @_ZL18s_typeValueString4, align 8, !tbaa !272
  store ptr %250, ptr %1, align 8, !tbaa !272
  %251 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %251, ptr %244, align 8, !tbaa !330
  %252 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store i64 %252, ptr %246, align 8, !tbaa !270
  %253 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 0, i32 3), align 8, !tbaa !271
  store ptr %253, ptr %248, align 8, !tbaa !271
  store ptr %243, ptr @_ZL18s_typeValueString4, align 8, !tbaa !272
  store i64 %245, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 0, i32 1), align 8, !tbaa !330
  store i64 %247, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 0, i32 2), align 8, !tbaa !270
  store ptr %249, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 0, i32 3), align 8, !tbaa !271
  %254 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %255 = load i32, ptr %254, align 8, !tbaa !396
  %256 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 1), align 8, !tbaa !396
  store i32 %256, ptr %254, align 8, !tbaa !396
  store i32 %255, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZL18s_typeValueString4, i64 0, i32 1), align 8, !tbaa !396
  %257 = icmp eq i64 %252, 0
  br i1 %257, label %265, label %258, !prof !239

258:                                              ; preds = %242
  %259 = load ptr, ptr %250, align 8, !tbaa !159
  %260 = getelementptr inbounds ptr, ptr %259, i64 3
  %261 = load ptr, ptr %260, align 8
  invoke void %261(ptr noundef nonnull align 8 dereferenceable(8) %250, ptr noundef %253)
          to label %265 unwind label %262, !prof !241

262:                                              ; preds = %258
  %263 = landingpad { ptr, i32 }
          catch ptr null
  %264 = extractvalue { ptr, i32 } %263, 0
  call void @__clang_call_terminate(ptr %264) #27
  unreachable

265:                                              ; preds = %242, %258
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #26
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !443 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !270
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !444

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !271
  %8 = load ptr, ptr %0, align 8, !tbaa !272
  %9 = load ptr, ptr %8, align 8, !tbaa !159
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !445

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #27
  unreachable
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !446 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !447

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !270
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !330
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !448

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %12 = load ptr, ptr %0, align 8, !tbaa !272
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !272
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !330
  %16 = load i64, ptr %6, align 8, !tbaa !270
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !271
  %19 = load ptr, ptr %3, align 8, !tbaa !272
  store ptr %19, ptr %0, align 8, !tbaa !272
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !330
  store i64 %21, ptr %14, align 8, !tbaa !330
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !270
  store i64 %23, ptr %6, align 8, !tbaa !270
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !271
  store ptr %25, ptr %17, align 8, !tbaa !271
  store ptr %13, ptr %3, align 8, !tbaa !272
  store i64 %15, ptr %20, align 8, !tbaa !330
  store i64 %16, ptr %22, align 8, !tbaa !270
  store ptr %18, ptr %24, align 8, !tbaa !271
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !449

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !159
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !450

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #27
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !271
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !330
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !451

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !452

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !271
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !330
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !330
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !271
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !453

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !271
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !454
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 !prof !455 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !272
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !330
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !456

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !272
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !330
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !270
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !457
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !271
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !271
  %24 = load i64, ptr %9, align 8, !tbaa !330
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !458

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !272
  %28 = load i64, ptr %6, align 8, !tbaa !330
  %29 = load i64, ptr %7, align 8, !tbaa !270
  %30 = load ptr, ptr %8, align 8, !tbaa !271
  %31 = load ptr, ptr %5, align 8, !tbaa !272
  store ptr %31, ptr %0, align 8, !tbaa !272
  %32 = load i64, ptr %14, align 8, !tbaa !330
  store i64 %32, ptr %6, align 8, !tbaa !330
  %33 = load i64, ptr %15, align 8, !tbaa !270
  store i64 %33, ptr %7, align 8, !tbaa !270
  %34 = load ptr, ptr %21, align 8, !tbaa !271
  store ptr %34, ptr %8, align 8, !tbaa !271
  store ptr %27, ptr %5, align 8, !tbaa !272
  store i64 %28, ptr %14, align 8, !tbaa !330
  store i64 %29, ptr %15, align 8, !tbaa !270
  store ptr %30, ptr %21, align 8, !tbaa !271
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !458

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !270
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !271
  %50 = load ptr, ptr %5, align 8, !tbaa !272
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #27
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !459

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !159
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !460
  store ptr %65, ptr %8, align 8, !tbaa !271
  store i64 %3, ptr %7, align 8, !tbaa !270
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 !prof !461 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !462

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !330
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !271
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !270
  br i1 %18, label %21, label %39, !prof !463

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !464

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !465

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !271
  %28 = load i64, ptr %12, align 8, !tbaa !330
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !331
  store i16 %34, ptr %32, align 2, !tbaa !331
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !466, !llvm.loop !467

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !468

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %42 = load ptr, ptr %0, align 8, !tbaa !272
  store ptr %42, ptr %5, align 8, !tbaa !272
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !330
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !270
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !469
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !271
  %51 = load i64, ptr %43, align 8, !tbaa !330
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !271
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !470

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !271
  %56 = load i64, ptr %43, align 8, !tbaa !330
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !470

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !271
  %60 = load i64, ptr %43, align 8, !tbaa !330
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !271
  %63 = load i64, ptr %12, align 8, !tbaa !330
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !470

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !272
  %67 = load i64, ptr %12, align 8, !tbaa !330
  %68 = load i64, ptr %19, align 8, !tbaa !270
  %69 = load ptr, ptr %15, align 8, !tbaa !271
  %70 = load ptr, ptr %5, align 8, !tbaa !272
  store ptr %70, ptr %0, align 8, !tbaa !272
  %71 = load i64, ptr %43, align 8, !tbaa !330
  store i64 %71, ptr %12, align 8, !tbaa !330
  %72 = load i64, ptr %44, align 8, !tbaa !270
  store i64 %72, ptr %19, align 8, !tbaa !270
  %73 = load ptr, ptr %50, align 8, !tbaa !271
  store ptr %73, ptr %15, align 8, !tbaa !271
  store ptr %66, ptr %5, align 8, !tbaa !272
  store i64 %67, ptr %43, align 8, !tbaa !330
  store i64 %68, ptr %44, align 8, !tbaa !270
  store ptr %69, ptr %50, align 8, !tbaa !271
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !471

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !159
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !472

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #27
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !270
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !271
  %89 = load ptr, ptr %5, align 8, !tbaa !272
  %90 = load ptr, ptr %89, align 8, !tbaa !159
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #27
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !473

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !474

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !474

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !475, !llvm.loop !476

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !477, !llvm.loop !478

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !479
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds i16, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %121)
  %122 = getelementptr inbounds i16, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !480

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 1
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds i16, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %131, ptr align 2 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !330
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 !prof !481 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !330
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !270
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !482

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !271
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !331
  store i16 %13, ptr %12, align 2, !tbaa !331
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !330
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %21 = load ptr, ptr %0, align 8, !tbaa !272
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !272
  %24 = load i64, ptr %4, align 8, !tbaa !330
  %25 = load i64, ptr %6, align 8, !tbaa !270
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !271
  %28 = load ptr, ptr %3, align 8, !tbaa !272
  store ptr %28, ptr %0, align 8, !tbaa !272
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !330
  store i64 %30, ptr %4, align 8, !tbaa !330
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !270
  store i64 %32, ptr %6, align 8, !tbaa !270
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !271
  store ptr %34, ptr %26, align 8, !tbaa !271
  store ptr %23, ptr %3, align 8, !tbaa !272
  store i64 %24, ptr %29, align 8, !tbaa !330
  store i64 %25, ptr %31, align 8, !tbaa !270
  store ptr %27, ptr %33, align 8, !tbaa !271
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !270
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !271
  %52 = load ptr, ptr %3, align 8, !tbaa !272
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #27
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #19 comdat align 2 personality ptr @__gxx_personality_v0 !prof !483 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !272
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !330
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !456

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !272
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !330
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !270
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !159
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !484
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !271
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !271
  %20 = load i64, ptr %5, align 8, !tbaa !330
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !458

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !272
  %24 = load i64, ptr %10, align 8, !tbaa !330
  %25 = load i64, ptr %11, align 8, !tbaa !270
  %26 = load ptr, ptr %17, align 8, !tbaa !271
  store ptr %4, ptr %3, align 8, !tbaa !272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !270
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !271
  %33 = load ptr, ptr %3, align 8, !tbaa !272
  %34 = load ptr, ptr %33, align 8, !tbaa !159
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #27
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !459

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !159
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !485
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !272
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !270
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !271
  store ptr %53, ptr %0, align 8, !tbaa !272
  store i64 %52, ptr %5, align 8, !tbaa !330
  store i64 %51, ptr %55, align 8, !tbaa !270
  store ptr %50, ptr %57, align 8, !tbaa !271
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !486

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !159
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !487

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #27
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #20

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #21

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject15removeReferenceEPS0_(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_76XMLURL13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(81)) local_unnamed_addr #1

declare noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef i64 @_ZNK11xalanc_1_1019ElemTemplateElement12LocatorProxy15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_106equalsEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl25setPendingElementNameImplEPKt(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #16 comdat align 2 !prof !156 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !361
  %5 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 22, i32 1, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !362
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !363
  %9 = udiv i64 %6, %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %4, i64 0, i32 2, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !364
  %12 = getelementptr inbounds ptr, ptr %11, i64 %9
  %13 = load ptr, ptr %12, align 8, !tbaa !162
  %14 = urem i64 %6, %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.74", ptr %13, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !365
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %14, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %17, i32 noundef 0, i32 noundef -1)
  %18 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %19 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %1, i32 noundef %18)
  ret void
}

declare noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack9findEntryERKNS_14XalanDOMStringEMNS0_25XalanNamespacesStackEntryEKFPS2_S3_E(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(36), i64, i64) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry21getPrefixForNamespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #4 comdat align 2 !prof !156 {
  %3 = tail call noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry9findEntryERKNS_14XalanDOMStringEMNS_14XalanNamespaceEKFS4_vES7_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, i64 ptrtoint (ptr @_ZNK11xalanc_1_1014XalanNamespace6getURIEv to i64), i64 0, i64 ptrtoint (ptr @_ZNK11xalanc_1_1014XalanNamespace9getPrefixEv to i64), i64 0)
  ret ptr %3
}

declare noundef ptr @_ZNK11xalanc_1_1020XalanNamespacesStack25XalanNamespacesStackEntry9findEntryERKNS_14XalanDOMStringEMNS_14XalanNamespaceEKFS4_vES7_(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(36), i64, i64, i64, i64) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanNamespace6getURIEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanNamespace", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1014XalanNamespace9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(80) %0) #2 comdat align 2 !prof !156 {
  ret ptr %0
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1022isPrefixUsedOrDeclaredERKNS_14XalanDOMStringEjPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #22 comdat !prof !156 {
  %5 = add i32 %1, 1
  %6 = icmp ult i32 %5, %3
  br i1 %6, label %7, label %38

7:                                                ; preds = %4, %10
  %8 = phi ptr [ %11, %10 ], [ %2, %4 ]
  %9 = load i16, ptr %8, align 2, !tbaa !331
  switch i16 %9, label %10 [
    i16 58, label %12
    i16 0, label %12
  ]

10:                                               ; preds = %7
  %11 = getelementptr inbounds i16, ptr %8, i64 1
  br label %7, !llvm.loop !332

12:                                               ; preds = %7, %7
  %13 = ptrtoint ptr %8 to i64
  %14 = ptrtoint ptr %2 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %38

19:                                               ; preds = %12, %19
  %20 = phi ptr [ %23, %19 ], [ %2, %12 ]
  %21 = load i16, ptr %20, align 2, !tbaa !331
  %22 = icmp eq i16 %21, 0
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  br i1 %22, label %24, label %19, !llvm.loop !398

24:                                               ; preds = %19
  %25 = ptrtoint ptr %20 to i64
  %26 = sub i64 %25, %14
  %27 = lshr exact i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !330
  %31 = icmp eq i64 %30, 0
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8
  %34 = select i1 %31, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %33
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %36 = load i32, ptr %35, align 8, !tbaa !267
  %37 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %2, i32 noundef %28, ptr noundef %34, i32 noundef %36)
  br i1 %37, label %95, label %38

38:                                               ; preds = %12, %24, %4
  %39 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices33s_XMLNamespaceWithSeparatorLengthE, align 8, !tbaa !162
  %40 = load i32, ptr %39, align 4, !tbaa !396
  %41 = add i32 %40, %1
  %42 = icmp eq i32 %41, %3
  br i1 %42, label %43, label %94

43:                                               ; preds = %38
  %44 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices27s_XMLNamespaceWithSeparatorE, align 8, !tbaa !162
  br label %45

45:                                               ; preds = %45, %43
  %46 = phi ptr [ %2, %43 ], [ %49, %45 ]
  %47 = load i16, ptr %46, align 2, !tbaa !331
  %48 = icmp eq i16 %47, 0
  %49 = getelementptr inbounds i16, ptr %46, i64 1
  br i1 %48, label %50, label %45, !llvm.loop !398

50:                                               ; preds = %45
  %51 = ptrtoint ptr %46 to i64
  %52 = ptrtoint ptr %2 to i64
  %53 = sub i64 %51, %52
  %54 = lshr exact i64 %53, 1
  %55 = trunc i64 %54 to i32
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %44, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !330
  %58 = icmp eq i64 %57, 0
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %44, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8
  %61 = select i1 %58, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %60
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %44, i64 0, i32 1
  %63 = load i32, ptr %62, align 8, !tbaa !267
  %64 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010startsWithEPKtjS1_j(ptr noundef %2, i32 noundef %55, ptr noundef %61, i32 noundef %63)
  br i1 %64, label %65, label %94

65:                                               ; preds = %50
  %66 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %67 = load i64, ptr %66, align 8, !tbaa !330
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  br label %70

70:                                               ; preds = %70, %65
  %71 = phi ptr [ %2, %65 ], [ %74, %70 ]
  %72 = load i16, ptr %71, align 2, !tbaa !331
  %73 = icmp eq i16 %72, 0
  %74 = getelementptr inbounds i16, ptr %71, i64 1
  br i1 %73, label %75, label %70, !llvm.loop !398

75:                                               ; preds = %70
  %76 = icmp eq i64 %67, 0
  %77 = select i1 %76, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  br label %78

78:                                               ; preds = %78, %75
  %79 = phi ptr [ %82, %78 ], [ %77, %75 ]
  %80 = load i16, ptr %79, align 2, !tbaa !331
  %81 = icmp eq i16 %80, 0
  %82 = getelementptr inbounds i16, ptr %79, i64 1
  br i1 %81, label %83, label %78, !llvm.loop !398

83:                                               ; preds = %78
  %84 = ptrtoint ptr %71 to i64
  %85 = sub i64 %84, %52
  %86 = lshr exact i64 %85, 1
  %87 = trunc i64 %86 to i32
  %88 = ptrtoint ptr %79 to i64
  %89 = ptrtoint ptr %77 to i64
  %90 = sub i64 %88, %89
  %91 = lshr exact i64 %90, 1
  %92 = trunc i64 %91 to i32
  %93 = tail call noundef zeroext i1 @_ZN11xalanc_1_108endsWithEPKtjS1_j(ptr noundef %2, i32 noundef %87, ptr noundef %77, i32 noundef %92)
  br i1 %93, label %95, label %94

94:                                               ; preds = %83, %50, %38
  br label %95

95:                                               ; preds = %24, %94, %83
  %96 = phi i1 [ false, %94 ], [ true, %83 ], [ true, %24 ]
  ret i1 %96
}

declare noundef zeroext i1 @_ZN11xalanc_1_108endsWithEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt(ptr noundef nonnull align 8 dereferenceable(304), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !351
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !235
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !237
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !162
  store ptr %13, ptr %12, align 8, !tbaa !162
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !351
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %21 = load ptr, ptr %0, align 8, !tbaa !219
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !219
  %24 = load i64, ptr %4, align 8, !tbaa !351
  %25 = load i64, ptr %6, align 8, !tbaa !235
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !237
  %28 = load ptr, ptr %3, align 8, !tbaa !219
  store ptr %28, ptr %0, align 8, !tbaa !219
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !351
  store i64 %30, ptr %4, align 8, !tbaa !351
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !235
  store i64 %32, ptr %6, align 8, !tbaa !235
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !237
  store ptr %34, ptr %26, align 8, !tbaa !237
  store ptr %23, ptr %3, align 8, !tbaa !219
  store i64 %24, ptr %29, align 8, !tbaa !351
  store i64 %25, ptr %31, align 8, !tbaa !235
  store ptr %27, ptr %33, align 8, !tbaa !237
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !235
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !237
  %52 = load ptr, ptr %3, align 8, !tbaa !219
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #27
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !351
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !219
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !351
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !235
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !237
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !237
  %24 = load i64, ptr %9, align 8, !tbaa !351
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !219
  %28 = load i64, ptr %6, align 8, !tbaa !351
  %29 = load i64, ptr %7, align 8, !tbaa !235
  %30 = load ptr, ptr %8, align 8, !tbaa !237
  %31 = load ptr, ptr %5, align 8, !tbaa !219
  store ptr %31, ptr %0, align 8, !tbaa !219
  %32 = load i64, ptr %14, align 8, !tbaa !351
  store i64 %32, ptr %6, align 8, !tbaa !351
  %33 = load i64, ptr %15, align 8, !tbaa !235
  store i64 %33, ptr %7, align 8, !tbaa !235
  %34 = load ptr, ptr %21, align 8, !tbaa !237
  store ptr %34, ptr %8, align 8, !tbaa !237
  store ptr %27, ptr %5, align 8, !tbaa !219
  store i64 %28, ptr %14, align 8, !tbaa !351
  store i64 %29, ptr %15, align 8, !tbaa !235
  store ptr %30, ptr %21, align 8, !tbaa !237
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !235
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !237
  %50 = load ptr, ptr %5, align 8, !tbaa !219
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #27
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !159
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !237
  store i64 %3, ptr %7, align 8, !tbaa !235
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !351
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !237
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !235
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !237
  %28 = load i64, ptr %12, align 8, !tbaa !351
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !162
  store ptr %34, ptr %32, align 8, !tbaa !162
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !488

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %42 = load ptr, ptr %0, align 8, !tbaa !219
  store ptr %42, ptr %5, align 8, !tbaa !219
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !351
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !235
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !237
  %51 = load i64, ptr %43, align 8, !tbaa !351
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !237
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !237
  %56 = load i64, ptr %43, align 8, !tbaa !351
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !237
  %60 = load i64, ptr %43, align 8, !tbaa !351
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !237
  %63 = load i64, ptr %12, align 8, !tbaa !351
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !219
  %67 = load i64, ptr %12, align 8, !tbaa !351
  %68 = load i64, ptr %19, align 8, !tbaa !235
  %69 = load ptr, ptr %15, align 8, !tbaa !237
  %70 = load ptr, ptr %5, align 8, !tbaa !219
  store ptr %70, ptr %0, align 8, !tbaa !219
  %71 = load i64, ptr %43, align 8, !tbaa !351
  store i64 %71, ptr %12, align 8, !tbaa !351
  %72 = load i64, ptr %44, align 8, !tbaa !235
  store i64 %72, ptr %19, align 8, !tbaa !235
  %73 = load ptr, ptr %50, align 8, !tbaa !237
  store ptr %73, ptr %15, align 8, !tbaa !237
  store ptr %66, ptr %5, align 8, !tbaa !219
  store i64 %67, ptr %43, align 8, !tbaa !351
  store i64 %68, ptr %44, align 8, !tbaa !235
  store ptr %69, ptr %50, align 8, !tbaa !237
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !159
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #27
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !235
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !237
  %89 = load ptr, ptr %5, align 8, !tbaa !219
  %90 = load ptr, ptr %89, align 8, !tbaa !159
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #27
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !489

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !490

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !491

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !351
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = load ptr, ptr %0, align 8, !tbaa !219
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !351
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !235
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !237
  %12 = load ptr, ptr %3, align 8, !tbaa !219
  store ptr %12, ptr %0, align 8, !tbaa !219
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !351
  store i64 %14, ptr %6, align 8, !tbaa !351
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !235
  store i64 %16, ptr %8, align 8, !tbaa !235
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !237
  store ptr %18, ptr %10, align 8, !tbaa !237
  store ptr %5, ptr %3, align 8, !tbaa !219
  store i64 %7, ptr %13, align 8, !tbaa !351
  store i64 %9, ptr %15, align 8, !tbaa !235
  store ptr %11, ptr %17, align 8, !tbaa !237
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #27
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat !prof !156 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !162
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !162
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !162
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !162
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !492

34:                                               ; preds = %30, %3
  %35 = phi ptr [ %0, %3 ], [ %12, %30 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %4, %36
  %38 = ashr exact i64 %37, 3
  switch i64 %38, label %57 [
    i64 3, label %39
    i64 2, label %45
    i64 1, label %52
  ]

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !162
  %41 = load ptr, ptr %2, align 8, !tbaa !162
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !162
  %48 = load ptr, ptr %2, align 8, !tbaa !162
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !162
  %55 = load ptr, ptr %2, align 8, !tbaa !162
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %64, label %57

57:                                               ; preds = %52, %34
  br label %64

58:                                               ; preds = %18
  %59 = getelementptr inbounds ptr, ptr %15, i64 1
  br label %64

60:                                               ; preds = %22
  %61 = getelementptr inbounds ptr, ptr %15, i64 2
  br label %64

62:                                               ; preds = %26
  %63 = getelementptr inbounds ptr, ptr %15, i64 3
  br label %64

64:                                               ; preds = %13, %58, %60, %62, %45, %52, %39, %57
  %65 = phi ptr [ %1, %57 ], [ %35, %39 ], [ %53, %52 ], [ %46, %45 ], [ %59, %58 ], [ %61, %60 ], [ %63, %62 ], [ %15, %13 ]
  ret ptr %65
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !493 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !251
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !243
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !494

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !245
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !367, !range !327, !noundef !328
  store i8 %13, ptr %12, align 1, !tbaa !367
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !251
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !495
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %21 = load ptr, ptr %0, align 8, !tbaa !168
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %22 unwind label %44, !prof !496

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !168
  %24 = load i64, ptr %4, align 8, !tbaa !251
  %25 = load i64, ptr %6, align 8, !tbaa !243
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !245
  %28 = load ptr, ptr %3, align 8, !tbaa !168
  store ptr %28, ptr %0, align 8, !tbaa !168
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !251
  store i64 %30, ptr %4, align 8, !tbaa !251
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !243
  store i64 %32, ptr %6, align 8, !tbaa !243
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !245
  store ptr %34, ptr %26, align 8, !tbaa !245
  store ptr %23, ptr %3, align 8, !tbaa !168
  store i64 %24, ptr %29, align 8, !tbaa !251
  store i64 %25, ptr %31, align 8, !tbaa !243
  store ptr %27, ptr %33, align 8, !tbaa !245
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !495

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !497

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !243
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !245
  %52 = load ptr, ptr %3, align 8, !tbaa !168
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #27
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !498 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !168
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !251
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !499

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !168
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !251
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !243
  %16 = load ptr, ptr %2, align 8, !tbaa !159
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13), !prof !500
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !245
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !245
  %23 = load i64, ptr %9, align 8, !tbaa !251
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43, !prof !501

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !168
  %27 = load i64, ptr %6, align 8, !tbaa !251
  %28 = load i64, ptr %7, align 8, !tbaa !243
  %29 = load ptr, ptr %8, align 8, !tbaa !245
  %30 = load ptr, ptr %5, align 8, !tbaa !168
  store ptr %30, ptr %0, align 8, !tbaa !168
  %31 = load i64, ptr %14, align 8, !tbaa !251
  store i64 %31, ptr %6, align 8, !tbaa !251
  %32 = load i64, ptr %15, align 8, !tbaa !243
  store i64 %32, ptr %7, align 8, !tbaa !243
  %33 = load ptr, ptr %20, align 8, !tbaa !245
  store ptr %33, ptr %8, align 8, !tbaa !245
  store ptr %26, ptr %5, align 8, !tbaa !168
  store i64 %27, ptr %14, align 8, !tbaa !251
  store i64 %28, ptr %15, align 8, !tbaa !243
  store ptr %29, ptr %20, align 8, !tbaa !245
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35, !prof !501

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !159
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #27
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !243
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !245
  %49 = load ptr, ptr %5, align 8, !tbaa !168
  %50 = load ptr, ptr %49, align 8, !tbaa !159
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #27
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !502

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !159
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !503
  store ptr %63, ptr %8, align 8, !tbaa !245
  store i64 %3, ptr %7, align 8, !tbaa !243
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !504 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %131, label %10, !prof !505

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !251
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !245
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !243
  br i1 %17, label %20, label %37, !prof !501

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23, !prof !505

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %131, label %25, !prof !506

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !245
  %27 = load i64, ptr %11, align 8, !tbaa !251
  %28 = getelementptr i8, ptr %26, i64 %27
  %29 = add i64 %27, %6
  br label %30

30:                                               ; preds = %25, %30
  %31 = phi ptr [ %35, %30 ], [ %2, %25 ]
  %32 = phi ptr [ %34, %30 ], [ %28, %25 ]
  %33 = load i8, ptr %31, align 1, !tbaa !367, !range !327, !noundef !328
  store i8 %33, ptr %32, align 1, !tbaa !367
  %34 = getelementptr inbounds i8, ptr %32, i64 1
  %35 = getelementptr inbounds i8, ptr %31, i64 1
  %36 = icmp eq ptr %35, %3
  br i1 %36, label %129, label %30, !prof !507, !llvm.loop !508

37:                                               ; preds = %10
  %38 = icmp ugt i64 %13, %19
  br i1 %38, label %39, label %94

39:                                               ; preds = %37
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %40 = load ptr, ptr %0, align 8, !tbaa !168
  store ptr %40, ptr %5, align 8, !tbaa !168
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %41, align 8, !tbaa !251
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %42, align 8, !tbaa !243
  %43 = load ptr, ptr %40, align 8, !tbaa !159
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %40, i64 noundef %13)
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %46, ptr %47, align 8, !tbaa !245
  %48 = load i64, ptr %41, align 8, !tbaa !251
  %49 = getelementptr inbounds i8, ptr %46, i64 %48
  %50 = load ptr, ptr %14, align 8, !tbaa !245
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %49, ptr noundef %50, ptr noundef %1)
          to label %51 unwind label %80

51:                                               ; preds = %39
  %52 = load ptr, ptr %47, align 8, !tbaa !245
  %53 = load i64, ptr %41, align 8, !tbaa !251
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %2, ptr noundef %3)
          to label %55 unwind label %80

55:                                               ; preds = %51
  %56 = load ptr, ptr %47, align 8, !tbaa !245
  %57 = load i64, ptr %41, align 8, !tbaa !251
  %58 = getelementptr inbounds i8, ptr %56, i64 %57
  %59 = load ptr, ptr %14, align 8, !tbaa !245
  %60 = load i64, ptr %11, align 8, !tbaa !251
  %61 = getelementptr inbounds i8, ptr %59, i64 %60
  invoke void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %58, ptr noundef %1, ptr noundef %61)
          to label %62 unwind label %80

62:                                               ; preds = %55
  %63 = load ptr, ptr %0, align 8, !tbaa !168
  %64 = load i64, ptr %11, align 8, !tbaa !251
  %65 = load i64, ptr %18, align 8, !tbaa !243
  %66 = load ptr, ptr %14, align 8, !tbaa !245
  %67 = load ptr, ptr %5, align 8, !tbaa !168
  store ptr %67, ptr %0, align 8, !tbaa !168
  %68 = load i64, ptr %41, align 8, !tbaa !251
  store i64 %68, ptr %11, align 8, !tbaa !251
  %69 = load i64, ptr %42, align 8, !tbaa !243
  store i64 %69, ptr %18, align 8, !tbaa !243
  %70 = load ptr, ptr %47, align 8, !tbaa !245
  store ptr %70, ptr %14, align 8, !tbaa !245
  store ptr %63, ptr %5, align 8, !tbaa !168
  store i64 %64, ptr %41, align 8, !tbaa !251
  store i64 %65, ptr %42, align 8, !tbaa !243
  store ptr %66, ptr %47, align 8, !tbaa !245
  %71 = icmp eq i64 %65, 0
  br i1 %71, label %79, label %72

72:                                               ; preds = %62
  %73 = load ptr, ptr %63, align 8, !tbaa !159
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %66)
          to label %79 unwind label %76

76:                                               ; preds = %72
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #27
  unreachable

79:                                               ; preds = %62, %72
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %131

80:                                               ; preds = %55, %51, %39
  %81 = landingpad { ptr, i32 }
          cleanup
  %82 = load i64, ptr %42, align 8, !tbaa !243
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %80
  %85 = load ptr, ptr %47, align 8, !tbaa !245
  %86 = load ptr, ptr %5, align 8, !tbaa !168
  %87 = load ptr, ptr %86, align 8, !tbaa !159
  %88 = getelementptr inbounds ptr, ptr %87, i64 3
  %89 = load ptr, ptr %88, align 8
  invoke void %89(ptr noundef nonnull align 8 dereferenceable(8) %86, ptr noundef %85)
          to label %93 unwind label %90

90:                                               ; preds = %84
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  call void @__clang_call_terminate(ptr %92) #27
  unreachable

93:                                               ; preds = %80, %84
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %81

94:                                               ; preds = %37
  %95 = ptrtoint ptr %16 to i64
  %96 = ptrtoint ptr %1 to i64
  %97 = sub i64 %95, %96
  %98 = icmp ugt i64 %97, %8
  br i1 %98, label %113, label %99

99:                                               ; preds = %94
  %100 = getelementptr inbounds i8, ptr %2, i64 %97
  %101 = icmp eq ptr %100, %3
  br i1 %101, label %102, label %104

102:                                              ; preds = %104, %99
  %103 = icmp eq ptr %16, %1
  br i1 %103, label %112, label %108

104:                                              ; preds = %99, %104
  %105 = phi ptr [ %106, %104 ], [ %100, %99 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %105)
  %106 = getelementptr inbounds i8, ptr %105, i64 1
  %107 = icmp eq ptr %106, %3
  br i1 %107, label %102, label %104, !llvm.loop !509

108:                                              ; preds = %102, %108
  %109 = phi ptr [ %110, %108 ], [ %1, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %109)
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  %111 = icmp eq ptr %110, %16
  br i1 %111, label %112, label %108, !llvm.loop !510

112:                                              ; preds = %108, %102
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %97, i1 false)
  br label %131

113:                                              ; preds = %94
  %114 = sub i64 0, %8
  %115 = getelementptr inbounds i8, ptr %16, i64 %114
  %116 = icmp eq ptr %3, %2
  br i1 %116, label %121, label %117

117:                                              ; preds = %113, %117
  %118 = phi ptr [ %119, %117 ], [ %115, %113 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %118)
  %119 = getelementptr inbounds i8, ptr %118, i64 1
  %120 = icmp eq ptr %119, %16
  br i1 %120, label %121, label %117, !llvm.loop !511

121:                                              ; preds = %117, %113
  %122 = icmp eq ptr %115, %1
  br i1 %122, label %128, label %123

123:                                              ; preds = %121
  %124 = ptrtoint ptr %115 to i64
  %125 = sub i64 %124, %96
  %126 = sub i64 0, %125
  %127 = getelementptr inbounds i8, ptr %16, i64 %126
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %127, ptr align 1 %1, i64 %125, i1 false)
  br label %128

128:                                              ; preds = %123, %121
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %8, i1 false)
  br label %131

129:                                              ; preds = %30
  %130 = sub i64 %29, %7
  store i64 %130, ptr %11, align 8, !tbaa !251
  br label %131

131:                                              ; preds = %23, %129, %79, %112, %128, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = load ptr, ptr %0, align 8, !tbaa !168
  call void @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !168
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !251
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !243
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !245
  %12 = load ptr, ptr %3, align 8, !tbaa !168
  store ptr %12, ptr %0, align 8, !tbaa !168
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !251
  store i64 %14, ptr %6, align 8, !tbaa !251
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !243
  store i64 %16, ptr %8, align 8, !tbaa !243
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !245
  store ptr %18, ptr %10, align 8, !tbaa !245
  store ptr %5, ptr %3, align 8, !tbaa !168
  store i64 %7, ptr %13, align 8, !tbaa !251
  store i64 %9, ptr %15, align 8, !tbaa !243
  store ptr %11, ptr %17, align 8, !tbaa !245
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !158

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #27
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1014XalanDOMStringEN9__gnu_cxx5__ops10_Iter_predINS0_14XSLTEngineImpl24FindStringPointerFunctorEEEET_SB_SB_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat !prof !156 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %3, %26
  %10 = phi i64 [ %28, %26 ], [ %7, %3 ]
  %11 = phi ptr [ %27, %26 ], [ %0, %3 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !162
  %13 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %13, label %57, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds ptr, ptr %11, i64 1
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %17, label %51, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds ptr, ptr %11, i64 2
  %20 = load ptr, ptr %19, align 8, !tbaa !162
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %21, label %53, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %11, i64 3
  %24 = load ptr, ptr %23, align 8, !tbaa !162
  %25 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %24, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %25, label %55, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %11, i64 4
  %28 = add nsw i64 %10, -1
  %29 = icmp sgt i64 %10, 1
  br i1 %29, label %9, label %30, !llvm.loop !512

30:                                               ; preds = %26, %3
  %31 = phi ptr [ %0, %3 ], [ %27, %26 ]
  %32 = ptrtoint ptr %31 to i64
  %33 = sub i64 %4, %32
  %34 = ashr exact i64 %33, 3
  switch i64 %34, label %50 [
    i64 3, label %35
    i64 2, label %40
    i64 1, label %46
  ]

35:                                               ; preds = %30
  %36 = load ptr, ptr %31, align 8, !tbaa !162
  %37 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %36, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %37, label %57, label %38

38:                                               ; preds = %35
  %39 = getelementptr inbounds ptr, ptr %31, i64 1
  br label %40

40:                                               ; preds = %30, %38
  %41 = phi ptr [ %31, %30 ], [ %39, %38 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !162
  %43 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %42, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %43, label %57, label %44

44:                                               ; preds = %40
  %45 = getelementptr inbounds ptr, ptr %41, i64 1
  br label %46

46:                                               ; preds = %30, %44
  %47 = phi ptr [ %31, %30 ], [ %45, %44 ]
  %48 = load ptr, ptr %47, align 8, !tbaa !162
  %49 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %48, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %49, label %57, label %50

50:                                               ; preds = %46, %30
  br label %57

51:                                               ; preds = %14
  %52 = getelementptr inbounds ptr, ptr %11, i64 1
  br label %57

53:                                               ; preds = %18
  %54 = getelementptr inbounds ptr, ptr %11, i64 2
  br label %57

55:                                               ; preds = %22
  %56 = getelementptr inbounds ptr, ptr %11, i64 3
  br label %57

57:                                               ; preds = %9, %51, %53, %55, %40, %46, %35, %50
  %58 = phi ptr [ %1, %50 ], [ %31, %35 ], [ %47, %46 ], [ %41, %40 ], [ %52, %51 ], [ %54, %53 ], [ %56, %55 ], [ %11, %9 ]
  ret ptr %58
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !513 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !260
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !224
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !514

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !226
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !162
  store ptr %13, ptr %12, align 8, !tbaa !162
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !260
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !515
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %21 = load ptr, ptr %0, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !516

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !222
  %24 = load i64, ptr %4, align 8, !tbaa !260
  %25 = load i64, ptr %6, align 8, !tbaa !224
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !226
  %28 = load ptr, ptr %3, align 8, !tbaa !222
  store ptr %28, ptr %0, align 8, !tbaa !222
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !260
  store i64 %30, ptr %4, align 8, !tbaa !260
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !224
  store i64 %32, ptr %6, align 8, !tbaa !224
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !226
  store ptr %34, ptr %26, align 8, !tbaa !226
  store ptr %23, ptr %3, align 8, !tbaa !222
  store i64 %24, ptr %29, align 8, !tbaa !260
  store i64 %25, ptr %31, align 8, !tbaa !224
  store ptr %27, ptr %33, align 8, !tbaa !226
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !515

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !517

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !224
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !226
  %52 = load ptr, ptr %3, align 8, !tbaa !222
  %53 = load ptr, ptr %52, align 8, !tbaa !159
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #27
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !518 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  store ptr %2, ptr %0, align 8, !tbaa !222
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !260
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !519

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !222
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !260
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !224
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !520
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !226
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !226
  %24 = load i64, ptr %9, align 8, !tbaa !260
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !516

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !222
  %28 = load i64, ptr %6, align 8, !tbaa !260
  %29 = load i64, ptr %7, align 8, !tbaa !224
  %30 = load ptr, ptr %8, align 8, !tbaa !226
  %31 = load ptr, ptr %5, align 8, !tbaa !222
  store ptr %31, ptr %0, align 8, !tbaa !222
  %32 = load i64, ptr %14, align 8, !tbaa !260
  store i64 %32, ptr %6, align 8, !tbaa !260
  %33 = load i64, ptr %15, align 8, !tbaa !224
  store i64 %33, ptr %7, align 8, !tbaa !224
  %34 = load ptr, ptr %21, align 8, !tbaa !226
  store ptr %34, ptr %8, align 8, !tbaa !226
  store ptr %27, ptr %5, align 8, !tbaa !222
  store i64 %28, ptr %14, align 8, !tbaa !260
  store i64 %29, ptr %15, align 8, !tbaa !224
  store ptr %30, ptr %21, align 8, !tbaa !226
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !516

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !159
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #27
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !224
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !226
  %50 = load ptr, ptr %5, align 8, !tbaa !222
  %51 = load ptr, ptr %50, align 8, !tbaa !159
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #27
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !521

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !159
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !522
  store ptr %65, ptr %8, align 8, !tbaa !226
  store i64 %3, ptr %7, align 8, !tbaa !224
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !523 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !515

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !260
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !226
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !224
  br i1 %18, label %21, label %39, !prof !516

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !515

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !524

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !226
  %28 = load i64, ptr %12, align 8, !tbaa !260
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !162
  store ptr %34, ptr %32, align 8, !tbaa !162
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !525, !llvm.loop !526

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %42 = load ptr, ptr %0, align 8, !tbaa !222
  store ptr %42, ptr %5, align 8, !tbaa !222
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !260
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !224
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !226
  %51 = load i64, ptr %43, align 8, !tbaa !260
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !226
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !226
  %56 = load i64, ptr %43, align 8, !tbaa !260
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !226
  %60 = load i64, ptr %43, align 8, !tbaa !260
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !226
  %63 = load i64, ptr %12, align 8, !tbaa !260
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !222
  %67 = load i64, ptr %12, align 8, !tbaa !260
  %68 = load i64, ptr %19, align 8, !tbaa !224
  %69 = load ptr, ptr %15, align 8, !tbaa !226
  %70 = load ptr, ptr %5, align 8, !tbaa !222
  store ptr %70, ptr %0, align 8, !tbaa !222
  %71 = load i64, ptr %43, align 8, !tbaa !260
  store i64 %71, ptr %12, align 8, !tbaa !260
  %72 = load i64, ptr %44, align 8, !tbaa !224
  store i64 %72, ptr %19, align 8, !tbaa !224
  %73 = load ptr, ptr %50, align 8, !tbaa !226
  store ptr %73, ptr %15, align 8, !tbaa !226
  store ptr %66, ptr %5, align 8, !tbaa !222
  store i64 %67, ptr %43, align 8, !tbaa !260
  store i64 %68, ptr %44, align 8, !tbaa !224
  store ptr %69, ptr %50, align 8, !tbaa !226
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !159
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #27
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !224
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !226
  %89 = load ptr, ptr %5, align 8, !tbaa !222
  %90 = load ptr, ptr %89, align 8, !tbaa !159
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #27
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !527

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !528

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %100, i1 false)
  br label %134

116:                                              ; preds = %97
  %117 = sub nsw i64 0, %9
  %118 = getelementptr inbounds ptr, ptr %17, i64 %117
  %119 = icmp eq ptr %3, %2
  br i1 %119, label %124, label %120

120:                                              ; preds = %116, %120
  %121 = phi ptr [ %122, %120 ], [ %118, %116 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !529

124:                                              ; preds = %120, %116
  %125 = icmp eq ptr %118, %1
  br i1 %125, label %132, label %126

126:                                              ; preds = %124
  %127 = ptrtoint ptr %118 to i64
  %128 = sub i64 %127, %99
  %129 = ashr exact i64 %128, 3
  %130 = sub nsw i64 0, %129
  %131 = getelementptr inbounds ptr, ptr %17, i64 %130
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %131, ptr align 8 %1, i64 %128, i1 false)
  br label %132

132:                                              ; preds = %126, %124
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %1, ptr align 8 %2, i64 %8, i1 false)
  br label %134

133:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !260
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #16 comdat align 2 personality ptr @__gxx_personality_v0 !prof !530 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.9", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = load ptr, ptr %0, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !222
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !260
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !224
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !226
  %12 = load ptr, ptr %3, align 8, !tbaa !222
  store ptr %12, ptr %0, align 8, !tbaa !222
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !260
  store i64 %14, ptr %6, align 8, !tbaa !260
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !224
  store i64 %16, ptr %8, align 8, !tbaa !224
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.9", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !226
  store ptr %18, ptr %10, align 8, !tbaa !226
  store ptr %5, ptr %3, align 8, !tbaa !222
  store i64 %7, ptr %13, align 8, !tbaa !260
  store i64 %9, ptr %15, align 8, !tbaa !224
  store ptr %11, ptr %17, align 8, !tbaa !226
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !531

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !159
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #27
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(136) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !230
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !228
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !220
  tail call void @_ZN11xalanc_1_1011TopLevelArgC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %12, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = load i64, ptr %4, align 8, !tbaa !230
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !230
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %22 = load ptr, ptr %0, align 8, !tbaa !220
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(136) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !220
  %25 = load i64, ptr %4, align 8, !tbaa !230
  %26 = load i64, ptr %6, align 8, !tbaa !228
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !229
  %29 = load ptr, ptr %3, align 8, !tbaa !220
  store ptr %29, ptr %0, align 8, !tbaa !220
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !230
  store i64 %31, ptr %4, align 8, !tbaa !230
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !228
  store i64 %33, ptr %6, align 8, !tbaa !228
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !229
  store ptr %35, ptr %27, align 8, !tbaa !229
  store ptr %24, ptr %3, align 8, !tbaa !220
  store i64 %25, ptr %30, align 8, !tbaa !230
  store i64 %26, ptr %32, align 8, !tbaa !228
  store ptr %28, ptr %34, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  store ptr %2, ptr %0, align 8, !tbaa !220
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !230
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !220
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !230
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !228
  %16 = mul i64 %13, 136
  %17 = load ptr, ptr %2, align 8, !tbaa !159
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !229
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !229
  %24 = load i64, ptr %9, align 8, !tbaa !230
  %25 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !220
  %28 = load i64, ptr %6, align 8, !tbaa !230
  %29 = load i64, ptr %7, align 8, !tbaa !228
  %30 = load ptr, ptr %8, align 8, !tbaa !229
  %31 = load ptr, ptr %5, align 8, !tbaa !220
  store ptr %31, ptr %0, align 8, !tbaa !220
  %32 = load i64, ptr %14, align 8, !tbaa !230
  store i64 %32, ptr %6, align 8, !tbaa !230
  %33 = load i64, ptr %15, align 8, !tbaa !228
  store i64 %33, ptr %7, align 8, !tbaa !228
  %34 = load ptr, ptr %21, align 8, !tbaa !229
  store ptr %34, ptr %8, align 8, !tbaa !229
  store ptr %27, ptr %5, align 8, !tbaa !220
  store i64 %28, ptr %14, align 8, !tbaa !230
  store i64 %29, ptr %15, align 8, !tbaa !228
  store ptr %30, ptr %21, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = mul i64 %3, 136
  %41 = load ptr, ptr %2, align 8, !tbaa !159
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !229
  store i64 %3, ptr %7, align 8, !tbaa !228
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

declare void @_ZN11xalanc_1_1011TopLevelArgC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(136), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = sdiv exact i64 %8, 136
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %107, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !230
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !229
  %17 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !228
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %107, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !229
  %28 = load i64, ptr %12, align 8, !tbaa !230
  %29 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !220
  tail call void @_ZN11xalanc_1_1011TopLevelArgC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(136) %32, ptr noundef nonnull align 8 dereferenceable(136) %31, ptr noundef nonnull align 8 dereferenceable(8) %33)
  %34 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !230
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !230
  %37 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %107, label %30, !llvm.loop !532

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #26
  %42 = load ptr, ptr %0, align 8, !tbaa !220
  store ptr %42, ptr %5, align 8, !tbaa !220
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !230
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !228
  %45 = mul i64 %14, 136
  %46 = load ptr, ptr %42, align 8, !tbaa !159
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !229
  %51 = load i64, ptr %43, align 8, !tbaa !230
  %52 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !229
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !229
  %56 = load i64, ptr %43, align 8, !tbaa !230
  %57 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !229
  %60 = load i64, ptr %43, align 8, !tbaa !230
  %61 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !229
  %63 = load i64, ptr %12, align 8, !tbaa !230
  %64 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE6insertEPS1_PKS1_S7_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !220
  %67 = load i64, ptr %12, align 8, !tbaa !230
  %68 = load i64, ptr %19, align 8, !tbaa !228
  %69 = load ptr, ptr %15, align 8, !tbaa !229
  %70 = load ptr, ptr %5, align 8, !tbaa !220
  store ptr %70, ptr %0, align 8, !tbaa !220
  %71 = load i64, ptr %43, align 8, !tbaa !230
  store i64 %71, ptr %12, align 8, !tbaa !230
  %72 = load i64, ptr %44, align 8, !tbaa !228
  store i64 %72, ptr %19, align 8, !tbaa !228
  %73 = load ptr, ptr %50, align 8, !tbaa !229
  store ptr %73, ptr %15, align 8, !tbaa !229
  store ptr %66, ptr %5, align 8, !tbaa !220
  store i64 %67, ptr %43, align 8, !tbaa !230
  store i64 %68, ptr %44, align 8, !tbaa !228
  store ptr %69, ptr %50, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  br label %107

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #26
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(136) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !533

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(136) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !534

94:                                               ; preds = %90, %84
  %95 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1011TopLevelArgEPS4_EET0_T_S9_S8_(ptr noundef %2, ptr noundef %82, ptr noundef %1)
  br label %107

96:                                               ; preds = %76
  %97 = sub nsw i64 0, %9
  %98 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %17, i64 %97
  %99 = icmp eq ptr %3, %2
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE10doPushBackERKS1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(136) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %101, i64 1
  %103 = icmp eq ptr %102, %17
  br i1 %103, label %104, label %100, !llvm.loop !535

104:                                              ; preds = %100, %96
  %105 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011TopLevelArgES5_EET0_T_S7_S6_(ptr noundef %1, ptr noundef %98, ptr noundef %17)
  %106 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1011TopLevelArgEPS4_EET0_T_S9_S8_(ptr noundef %2, ptr noundef %3, ptr noundef %1)
  br label %107

107:                                              ; preds = %30, %24, %65, %104, %94, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.3", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #26
  %4 = load ptr, ptr %0, align 8, !tbaa !220
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEEC2ERKS4_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !220
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !230
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !228
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !229
  %12 = load ptr, ptr %3, align 8, !tbaa !220
  store ptr %12, ptr %0, align 8, !tbaa !220
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !230
  store i64 %14, ptr %6, align 8, !tbaa !230
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !228
  store i64 %16, ptr %8, align 8, !tbaa !228
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !229
  store ptr %18, ptr %10, align 8, !tbaa !229
  store ptr %5, ptr %3, align 8, !tbaa !220
  store i64 %7, ptr %13, align 8, !tbaa !230
  store i64 %9, ptr %15, align 8, !tbaa !228
  store ptr %11, ptr %17, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #26
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1011TopLevelArgEPS4_EET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !156 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 136
  br label %12

10:                                               ; preds = %25, %3
  %11 = phi ptr [ %2, %3 ], [ %27, %25 ]
  ret ptr %11

12:                                               ; preds = %8, %25
  %13 = phi i64 [ %28, %25 ], [ %9, %8 ]
  %14 = phi ptr [ %27, %25 ], [ %2, %8 ]
  %15 = phi ptr [ %26, %25 ], [ %0, %8 ]
  %16 = icmp eq ptr %15, %14
  br i1 %16, label %25, label %17

17:                                               ; preds = %12
  %18 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN11xalanc_1_1017XalanQNameByValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %14, ptr noundef nonnull align 8 dereferenceable(88) %15)
  %19 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %14, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %15, i64 0, i32 1
  %21 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
  %22 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %15, i64 0, i32 1, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !267
  %24 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %14, i64 0, i32 1, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !267
  br label %25

25:                                               ; preds = %12, %17
  %26 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %15, i64 1
  %27 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %14, i64 1
  %28 = add nsw i64 %13, -1
  %29 = icmp sgt i64 %13, 1
  br i1 %29, label %12, label %10, !llvm.loop !536
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN11xalanc_1_1017XalanQNameByValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) local_unnamed_addr #4 comdat align 2 !prof !156 {
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %17, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %1, i64 0, i32 1
  %7 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %6)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %1, i64 0, i32 1, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !267
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 1
  store i32 %9, ptr %10, align 8, !tbaa !267
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %1, i64 0, i32 2
  %13 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12)
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %1, i64 0, i32 2, i32 1
  %15 = load i32, ptr %14, align 8, !tbaa !267
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !267
  br label %17

17:                                               ; preds = %2, %4
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1011TopLevelArgES5_EET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !156 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %8, label %28

8:                                                ; preds = %3
  %9 = udiv exact i64 %6, 136
  br label %10

10:                                               ; preds = %8, %25
  %11 = phi i64 [ %26, %25 ], [ %9, %8 ]
  %12 = phi ptr [ %15, %25 ], [ %2, %8 ]
  %13 = phi ptr [ %14, %25 ], [ %1, %8 ]
  %14 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %13, i64 -1
  %15 = getelementptr inbounds %"class.xalanc_1_10::TopLevelArg", ptr %12, i64 -1
  %16 = icmp eq ptr %13, %12
  br i1 %16, label %25, label %17

17:                                               ; preds = %10
  %18 = tail call noundef nonnull align 8 dereferenceable(88) ptr @_ZN11xalanc_1_1017XalanQNameByValueaSERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %15, ptr noundef nonnull align 8 dereferenceable(88) %14)
  %19 = getelementptr %"class.xalanc_1_10::TopLevelArg", ptr %12, i64 -1, i32 1
  %20 = getelementptr %"class.xalanc_1_10::TopLevelArg", ptr %13, i64 -1, i32 1
  %21 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef nonnull align 8 dereferenceable(32) %20)
  %22 = getelementptr %"class.xalanc_1_10::TopLevelArg", ptr %13, i64 -1, i32 1, i32 1
  %23 = load i32, ptr %22, align 8, !tbaa !267
  %24 = getelementptr %"class.xalanc_1_10::TopLevelArg", ptr %12, i64 -1, i32 1, i32 1
  store i32 %23, ptr %24, align 8, !tbaa !267
  br label %25

25:                                               ; preds = %10, %17
  %26 = add nsw i64 %11, -1
  %27 = icmp sgt i64 %11, 1
  br i1 %27, label %10, label %28, !llvm.loop !537

28:                                               ; preds = %25, %3
  %29 = phi ptr [ %2, %3 ], [ %15, %25 ]
  ret ptr %29
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XSLTEngineImpl.cpp() #23 section ".text.startup" !prof !157 !PGOFuncName !538 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_1014XSLTEngineImpl13s_emptyStringE, ptr nonnull @__dso_handle) #26
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL17s_XSLNameSpaceURL, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL17s_XSLNameSpaceURL, ptr nonnull @__dso_handle) #26
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL19s_XalanNamespaceURL, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL19s_XalanNamespaceURL, ptr nonnull @__dso_handle) #26
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL23s_uniqueNamespacePrefix, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL23s_uniqueNamespacePrefix, ptr nonnull @__dso_handle) #26
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL20s_stylesheetNodeName, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL20s_stylesheetNodeName, ptr nonnull @__dso_handle) #26
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_typeString, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %12 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL12s_typeString, ptr nonnull @__dso_handle) #26
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL12s_hrefString, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL12s_hrefString, ptr nonnull @__dso_handle) #26
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL19s_piTokenizerString, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %16 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL19s_piTokenizerString, ptr nonnull @__dso_handle) #26
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString1, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %18 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL18s_typeValueString1, ptr nonnull @__dso_handle) #26
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString2, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %20 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL18s_typeValueString2, ptr nonnull @__dso_handle) #26
  %21 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString3, ptr noundef nonnull align 8 dereferenceable(8) %21)
  %22 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL18s_typeValueString3, ptr nonnull @__dso_handle) #26
  %23 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZL18s_typeValueString4, ptr noundef nonnull align 8 dereferenceable(8) %23)
  %24 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZL18s_typeValueString4, ptr nonnull @__dso_handle) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #24

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #24

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #22 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #26 = { nounwind }
attributes #27 = { noreturn nounwind }
attributes #28 = { builtin nounwind }
attributes #29 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!155}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154}
!35 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1013XSLTProcessorC2Ev, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1014PrefixResolverC2Ev, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!38 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_11PrintWriterE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1018OutputContextStackC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1020XalanNamespacesStackC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplC2ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv, ptr @_ZN11xalanc_1_1018OutputContextStack5resetEv, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv, ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv, ptr @_ZN11xalanc_1_1020XalanNamespacesStack5clearEv, i64 2}
!48 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefault5resetEv, i64 2}
!49 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1014XSLTEngineImpl5resetEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1031XPathConstructionContextDefaultD1Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 3}
!53 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1017AttributeListImplD1Ev, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1020XalanNamespacesStackD1Ev, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1018OutputContextStackD1Ev, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEED2Ev, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1022ProblemListenerDefaultD1Ev, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEED2Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1014PrefixResolverD2Ev, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImplD2Ev, ptr @_ZN11xalanc_1_1013XSLTProcessorD2Ev, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl22getSourceTreeFromInputERKNS_15XSLTInputSourceE, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, ptr @_ZNK11xalanc_1_1014StylesheetRoot7processEPNS_9XalanNodeERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1017StylesheetHandlerC1ERNS_10StylesheetERNS_29StylesheetConstructionContextE, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl17processStylesheetERKNS_15XSLTInputSourceERNS_29StylesheetConstructionContextE, ptr @_ZN11xalanc_1_1017StylesheetHandlerD1Ev, i64 1}
!76 = !{ptr @_ZThn8_NK11xalanc_1_1014XSLTEngineImpl21getNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE, i64 1048804}
!77 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl13startDocumentEv, ptr @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl13startDocumentEv, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl11endDocumentEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl11endDocumentEv, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl11endDocumentEv, ptr @_ZN11xalanc_1_1020XalanNamespacesStack10popContextEv, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, ptr @_ZN11xalanc_1_1021equalsIgnoreCaseASCIIEPKtS1_j, i64 1}
!83 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl29pendingAttributesHasDefaultNSEv, i64 1}
!84 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl13startDocumentEv, i64 1}
!85 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv, i64 1048804}
!86 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 150180}
!87 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1010startsWithEPKtjS1_j, i64 75090}
!88 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_109substringERKNS_14XalanDOMStringERS0_jj, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1020XalanNamespacesStack14addDeclarationERKNS_14XalanDOMStringEPKtj, i64 1}
!91 = !{ptr @_ZNK11xalanc_1_1014XSLTEngineImpl27getResultNamespaceForPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XalanNamespacesStack21getNamespaceForPrefixERKNS_14XalanDOMStringE, i64 2097608}
!92 = !{ptr @_ZNK11xalanc_1_1014XSLTEngineImpl29pendingAttributesHasDefaultNSEv, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 2}
!93 = !{ptr @_ZNK11xalanc_1_1014XSLTEngineImpl29pendingAttributesHasDefaultNSEv, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKt, ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, i64 1048804}
!95 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKt, ptr @_ZN11xalanc_1_1020XalanNamespacesStack11pushContextEv, i64 1048804}
!96 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1048804}
!97 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1048804}
!98 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl12startElementEPKt, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1048804}
!99 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt, ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, i64 1048804}
!100 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv, i64 1048804}
!101 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10endElementEPKt, ptr @_ZN11xalanc_1_1020XalanNamespacesStack10popContextEv, i64 1048804}
!102 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj, ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, i64 991300}
!103 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv, i64 991300}
!104 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10charactersERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl12flushPendingEv, i64 25554}
!105 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10charactersERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_17FormatterListenerEMS4_FvPKtjE, i64 25554}
!106 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10charactersERKNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1014XSLTEngineImpl17getTraceListenersEv, i64 25554}
!107 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERKNS_14XalanDOMStringES3_bPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl18addResultAttributeERNS_17AttributeListImplERKNS_14XalanDOMStringEPKtjbPKN11xercesc_2_77LocatorE, i64 75090}
!108 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl17cloneToResultTreeERKNS_9XalanNodeENS1_8NodeTypeEbbbPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl10charactersEPKtjj, i64 167720}
!109 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015FunctionCurrentC1Ev, i64 1}
!110 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XPathFunctionTable15InstallFunctionEPKtRKNS_8FunctionE, i64 9}
!111 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015FunctionCurrentD1Ev, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016FunctionDocumentC1Ev, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016FunctionDocumentD1Ev, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024FunctionElementAvailableC1Ev, i64 1}
!115 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024FunctionElementAvailableD1Ev, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1025FunctionFunctionAvailableC1Ev, i64 1}
!117 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1025FunctionFunctionAvailableD1Ev, i64 1}
!118 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1020FunctionFormatNumberC1Ev, i64 1}
!119 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1020FunctionFormatNumberD1Ev, i64 1}
!120 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018FunctionGenerateIDC1Ev, i64 1}
!121 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018FunctionGenerateIDD1Ev, i64 1}
!122 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011FunctionKeyC1Ev, i64 1}
!123 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011FunctionKeyD1Ev, i64 1}
!124 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1022FunctionSystemPropertyC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!125 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURIC1Ev, i64 1}
!126 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1025FunctionUnparsedEntityURID1Ev, i64 1}
!127 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1022FunctionSystemPropertyD1Ev, i64 1}
!128 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl18uninstallFunctionsEv, ptr @_ZN11xalanc_1_1018XPathFunctionTable17UninstallFunctionEPKt, i64 9}
!129 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKc, i64 10}
!130 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 1}
!131 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl16installFunctionsERN11xercesc_2_713MemoryManagerE, i64 1}
!132 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv, ptr @_ZN11xalanc_1_1014XSLTEngineImpl18uninstallFunctionsEv, i64 1}
!133 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!134 = !{ptr @_ZN11xalanc_1_1014XSLTEngineImpl9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 11}
!135 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!136 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!137 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!138 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!139 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!140 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!141 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!142 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!143 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!144 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 34}
!145 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE10doPushBackERKb, i64 34}
!146 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE6insertEPbPKbS6_, i64 25}
!147 = !{ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!148 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 2226}
!149 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 2226}
!150 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_, i64 2226}
!151 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 1142}
!152 = !{ptr @_GLOBAL__sub_I_XSLTEngineImpl.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 12}
!153 = !{ptr @_GLOBAL__sub_I_XSLTEngineImpl.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 12}
!154 = !{ptr @_GLOBAL__sub_I_XSLTEngineImpl.cpp, ptr @__cxa_atexit, i64 12}
!155 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!156 = !{!"function_entry_count", i64 0}
!157 = !{!"function_entry_count", i64 1}
!158 = !{!"branch_weights", i32 1, i32 0}
!159 = !{!160, !160, i64 0}
!160 = !{!"vtable pointer", !161, i64 0}
!161 = !{!"Simple C++ TBAA"}
!162 = !{!163, !163, i64 0}
!163 = !{!"any pointer", !164, i64 0}
!164 = !{!"omnipotent char", !161, i64 0}
!165 = !{!166, !163, i64 0}
!166 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XPathProcessorEE", !163, i64 0, !163, i64 8}
!167 = !{!166, !163, i64 8}
!168 = !{!169, !163, i64 0}
!169 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!170 = !{!"long", !164, i64 0}
!171 = !{!172, !163, i64 0}
!172 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!173 = !{!174, !163, i64 216}
!174 = !{!"_ZTSN11xalanc_1_1014XSLTEngineImplE", !175, i64 0, !176, i64 8, !177, i64 16, !177, i64 56, !163, i64 96, !163, i64 104, !180, i64 112, !169, i64 128, !172, i64 160, !182, i64 192, !163, i64 216, !163, i64 224, !184, i64 232, !184, i64 233, !163, i64 240, !185, i64 248, !170, i64 280, !186, i64 288, !163, i64 320, !163, i64 328, !163, i64 336, !163, i64 344, !187, i64 352, !191, i64 456, !195, i64 600, !177, i64 672, !198, i64 712, !184, i64 744, !199, i64 752}
!175 = !{!"_ZTSN11xalanc_1_1013XSLTProcessorE"}
!176 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!177 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !178, i64 0, !179, i64 32}
!178 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!179 = !{!"int", !164, i64 0}
!180 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EEE", !181, i64 0}
!181 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EE17MemMgrAutoPtrDataE", !166, i64 0}
!182 = !{!"_ZTSN11xalanc_1_1022ProblemListenerDefaultE", !183, i64 0, !163, i64 8, !163, i64 16}
!183 = !{!"_ZTSN11xalanc_1_1015ProblemListenerE"}
!184 = !{!"bool", !164, i64 0}
!185 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!186 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!187 = !{!"_ZTSN11xalanc_1_1018OutputContextStackE", !188, i64 0, !190, i64 80, !170, i64 96}
!188 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !189, i64 16, !189, i64 48}
!189 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!190 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !163, i64 0, !170, i64 8}
!191 = !{!"_ZTSN11xalanc_1_1020XalanNamespacesStackE", !192, i64 0, !194, i64 80, !194, i64 96, !169, i64 112}
!192 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !193, i64 16, !193, i64 48}
!193 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!194 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_20XalanNamespacesStack25XalanNamespacesStackEntryEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !163, i64 0, !170, i64 8}
!195 = !{!"_ZTSN11xalanc_1_1017AttributeListImplE", !196, i64 0, !197, i64 8, !197, i64 40}
!196 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!197 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!198 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!199 = !{!"_ZTSN11xalanc_1_1031XPathConstructionContextDefaultE", !200, i64 0, !201, i64 16, !208, i64 128}
!200 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !163, i64 8}
!201 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !202, i64 8, !170, i64 48, !205, i64 56}
!202 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !203, i64 0}
!203 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !170, i64 8, !204, i64 16}
!204 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !163, i64 0, !163, i64 8, !163, i64 16}
!205 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !170, i64 0, !170, i64 8, !206, i64 16, !170, i64 40, !179, i64 48}
!206 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !207, i64 0}
!207 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !163, i64 0, !163, i64 8, !170, i64 16}
!208 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !209, i64 0, !209, i64 32, !179, i64 64, !210, i64 72}
!209 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!210 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !211, i64 0}
!211 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !212, i64 0, !184, i64 40}
!212 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !213, i64 8, !214, i64 16}
!213 = !{!"short", !164, i64 0}
!214 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !163, i64 0, !163, i64 8, !163, i64 16}
!215 = !{!174, !163, i64 224}
!216 = !{!174, !184, i64 232}
!217 = !{!174, !184, i64 233}
!218 = !{!174, !163, i64 240}
!219 = !{!185, !163, i64 0}
!220 = !{!186, !163, i64 0}
!221 = !{!174, !163, i64 344}
!222 = !{!198, !163, i64 0}
!223 = !{!"function_entry_count", i64 3250}
!224 = !{!198, !170, i64 16}
!225 = !{!"branch_weights", i32 2108, i32 1142}
!226 = !{!198, !163, i64 24}
!227 = !{!"VP", i32 0, i64 1142, i64 -7405368087501025645, i64 1142}
!228 = !{!186, !170, i64 16}
!229 = !{!186, !163, i64 24}
!230 = !{!186, !170, i64 8}
!231 = distinct !{!231, !232, !233}
!232 = !{!"llvm.loop.mustprogress"}
!233 = !{!"llvm.loop.unroll.disable"}
!234 = !{!"function_entry_count", i64 2}
!235 = !{!185, !170, i64 16}
!236 = !{!"branch_weights", i32 2, i32 0}
!237 = !{!185, !163, i64 24}
!238 = !{!172, !170, i64 16}
!239 = !{!"branch_weights", i32 0, i32 1}
!240 = !{!172, !163, i64 24}
!241 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!242 = !{!"function_entry_count", i64 16}
!243 = !{!169, !170, i64 16}
!244 = !{!"branch_weights", i32 6, i32 10}
!245 = !{!169, !163, i64 24}
!246 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!247 = !{!"VP", i32 0, i64 2, i64 -2728237556756740187, i64 2}
!248 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!249 = distinct !{!249, !232, !233}
!250 = !{!172, !170, i64 8}
!251 = !{!169, !170, i64 8}
!252 = !{!174, !163, i64 328}
!253 = !{!"VP", i32 0, i64 2, i64 -1841793374126264663, i64 2}
!254 = !{!174, !163, i64 96}
!255 = !{!"VP", i32 0, i64 2, i64 1358007192399363270, i64 2}
!256 = !{!174, !163, i64 104}
!257 = !{!"VP", i32 0, i64 2, i64 4132604291904909140, i64 2}
!258 = !{!174, !163, i64 336}
!259 = !{!"VP", i32 0, i64 2, i64 5567527564561545259, i64 2}
!260 = !{!198, !170, i64 8}
!261 = !{!174, !184, i64 744}
!262 = !{!263, !163, i64 8}
!263 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !163, i64 8}
!264 = !{!"VP", i32 0, i64 1, i64 -3228203282622328352, i64 1}
!265 = !{!"VP", i32 0, i64 1, i64 7337798430190584389, i64 1}
!266 = !{!"VP", i32 0, i64 1, i64 4059279774250209641, i64 1}
!267 = !{!177, !179, i64 32}
!268 = distinct !{!268, !232, !233}
!269 = distinct !{!269, !232, !233}
!270 = !{!178, !170, i64 16}
!271 = !{!178, !163, i64 24}
!272 = !{!178, !163, i64 0}
!273 = !{!"VP", i32 0, i64 1, i64 -6893602039604239682, i64 1}
!274 = !{!275, !163, i64 96}
!275 = !{!"_ZTSN11xalanc_1_1016XSLTResultTargetE", !177, i64 0, !163, i64 40, !177, i64 48, !163, i64 88, !163, i64 96, !163, i64 104}
!276 = !{!277, !163, i64 8}
!277 = !{!"_ZTSN11xalanc_1_1017FormatterListenerE", !278, i64 0, !163, i64 8, !279, i64 16, !280, i64 20}
!278 = !{!"_ZTSN11xercesc_2_715DocumentHandlerE"}
!279 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !164, i64 0}
!280 = !{!"_ZTSN11xalanc_1_1017FormatterListener11eXMLVersionE", !164, i64 0}
!281 = !{!282, !184, i64 1840}
!282 = !{!"_ZTSN11xalanc_1_1014StylesheetRootE", !283, i64 0, !177, i64 1504, !320, i64 1544, !177, i64 1552, !177, i64 1592, !177, i64 1632, !177, i64 1672, !184, i64 1712, !177, i64 1720, !177, i64 1760, !279, i64 1800, !321, i64 1808, !184, i64 1840, !297, i64 1848, !163, i64 1880, !163, i64 1888, !163, i64 1896, !184, i64 1904, !184, i64 1905, !179, i64 1908, !184, i64 1912, !170, i64 1920, !322, i64 1928}
!283 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !176, i64 0, !163, i64 8, !177, i64 16, !284, i64 56, !285, i64 88, !177, i64 120, !286, i64 160, !170, i64 192, !287, i64 200, !289, i64 280, !184, i64 360, !291, i64 368, !163, i64 504, !297, i64 512, !298, i64 544, !303, i64 680, !304, i64 712, !305, i64 720, !308, i64 856, !310, i64 864, !305, i64 896, !308, i64 1032, !310, i64 1040, !310, i64 1072, !310, i64 1104, !310, i64 1136, !310, i64 1168, !310, i64 1200, !170, i64 1232, !311, i64 1240, !312, i64 1272}
!284 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!285 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!286 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!287 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !163, i64 0, !170, i64 8, !288, i64 16, !288, i64 48}
!288 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!289 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !163, i64 0, !170, i64 8, !290, i64 16, !290, i64 48}
!290 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!291 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !292, i64 0, !293, i64 1, !163, i64 8, !294, i64 16, !170, i64 24, !170, i64 32, !295, i64 40, !295, i64 64, !296, i64 88, !170, i64 120, !170, i64 128}
!292 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!293 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!294 = !{!"float", !164, i64 0}
!295 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !163, i64 0, !163, i64 8, !163, i64 16}
!296 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!297 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!298 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !299, i64 0, !300, i64 1, !163, i64 8, !294, i64 16, !170, i64 24, !170, i64 32, !301, i64 40, !301, i64 64, !302, i64 88, !170, i64 120, !170, i64 128}
!299 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!300 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!301 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !163, i64 0, !163, i64 8, !163, i64 16}
!302 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!303 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!304 = !{!"double", !164, i64 0}
!305 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !292, i64 0, !293, i64 1, !163, i64 8, !294, i64 16, !170, i64 24, !170, i64 32, !306, i64 40, !306, i64 64, !307, i64 88, !170, i64 120, !170, i64 128}
!306 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !163, i64 0, !163, i64 8, !163, i64 16}
!307 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!308 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !309, i64 0}
!309 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !163, i64 0}
!310 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!311 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!312 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !313, i64 0, !314, i64 32, !198, i64 64, !315, i64 96}
!313 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!314 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!315 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !316, i64 0, !317, i64 1, !163, i64 8, !294, i64 16, !170, i64 24, !170, i64 32, !318, i64 40, !318, i64 64, !319, i64 88, !170, i64 120, !170, i64 128}
!316 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!317 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!318 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !163, i64 0, !163, i64 8, !163, i64 16}
!319 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!320 = !{!"_ZTSN11xalanc_1_1014StylesheetRoot11eIndentTypeE", !164, i64 0}
!321 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!322 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !323, i64 0, !324, i64 1, !163, i64 8, !294, i64 16, !170, i64 24, !170, i64 32, !325, i64 40, !325, i64 64, !326, i64 88, !170, i64 120, !170, i64 128}
!323 = !{!"_ZTSN11xalanc_1_1022XalanHashMemberPointerINS_10XalanQNameEEE"}
!324 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_10XalanQNameEEE"}
!325 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !163, i64 0, !163, i64 8, !163, i64 16}
!326 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_10XalanQNameENS0_IPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISF_E4NodeEEENS9_ISK_EEEENS_32ConstructWithMemoryManagerTraitsISM_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!327 = !{i8 0, i8 2}
!328 = !{}
!329 = !{!200, !163, i64 8}
!330 = !{!178, !170, i64 8}
!331 = !{!213, !213, i64 0}
!332 = distinct !{!332, !232, !233}
!333 = !{!334, !163, i64 0}
!334 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !163, i64 0}
!335 = !{!336, !163, i64 0}
!336 = !{!"_ZTSN11xalanc_1_1012XalanAutoPtrIN11xercesc_2_76XMLURLEEE", !163, i64 0}
!337 = !{!338, !163, i64 72}
!338 = !{!"_ZTSN11xercesc_2_76XMLURLE", !163, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !163, i64 40, !179, i64 48, !339, i64 52, !163, i64 56, !163, i64 64, !163, i64 72, !184, i64 80}
!339 = !{!"_ZTSN11xercesc_2_76XMLURL9ProtocolsE", !164, i64 0}
!340 = !{!174, !163, i64 320}
!341 = !{!342, !163, i64 56}
!342 = !{!"_ZTSN11xalanc_1_1015XSLTInputSourceE", !343, i64 0, !163, i64 48, !163, i64 56}
!343 = !{!"_ZTSN11xercesc_2_711InputSourceE", !163, i64 8, !163, i64 16, !163, i64 24, !163, i64 32, !184, i64 40}
!344 = !{!"VP", i32 0, i64 1, i64 5287555200792350651, i64 1}
!345 = !{!"VP", i32 0, i64 1, i64 -6467942039396391378, i64 1}
!346 = !{!"VP", i32 0, i64 1, i64 5364576604181310262, i64 1}
!347 = !{!"VP", i32 0, i64 1, i64 622095092619771054, i64 1}
!348 = !{!"VP", i32 0, i64 1, i64 8649632521824085322, i64 1}
!349 = !{!"function_entry_count", i64 1048804}
!350 = !{!"function_entry_count", i64 252146465}
!351 = !{!185, !170, i64 8}
!352 = distinct !{!352, !232, !233}
!353 = distinct !{!353, !232, !233}
!354 = distinct !{!354, !232, !233}
!355 = distinct !{!355, !232, !233}
!356 = !{!357, !163, i64 80}
!357 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !358, i64 0, !179, i64 32, !359, i64 40, !179, i64 72, !163, i64 80, !360, i64 88}
!358 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!359 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!360 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!361 = !{!190, !163, i64 0}
!362 = !{!190, !170, i64 8}
!363 = !{!188, !170, i64 8}
!364 = !{!189, !163, i64 24}
!365 = !{!366, !163, i64 24}
!366 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !163, i64 0, !170, i64 8, !170, i64 16, !163, i64 24}
!367 = !{!184, !184, i64 0}
!368 = !{!"branch_weights", i32 1, i32 1}
!369 = !{!370, !163, i64 0}
!370 = !{!"_ZTSN11xalanc_1_1018OutputContextStack13OutputContextE", !163, i64 0, !195, i64 8, !177, i64 80, !184, i64 120, !184, i64 121}
!371 = !{!"VP", i32 0, i64 1, i64 2846998679496354358, i64 1}
!372 = !{!"VP", i32 0, i64 1, i64 -2820648524744283795, i64 1}
!373 = !{!"VP", i32 0, i64 1, i64 3825661924615302865, i64 1}
!374 = !{!"function_entry_count", i64 3114463}
!375 = !{!"branch_weights", i32 3114461, i32 2}
!376 = !{!282, !279, i64 1800}
!377 = !{!277, !279, i64 16}
!378 = !{!"VP", i32 0, i64 1, i64 -5244844310986712295, i64 1}
!379 = !{!"VP", i32 0, i64 1, i64 -9158530434858957360, i64 1}
!380 = !{!"VP", i32 0, i64 1, i64 -5107733514394058998, i64 1}
!381 = !{!"VP", i32 0, i64 1, i64 3601633134677489449, i64 1}
!382 = !{!"VP", i32 0, i64 1, i64 -4124592798824165192, i64 1}
!383 = !{!282, !320, i64 1544}
!384 = !{!"VP", i32 0, i64 1, i64 -2755316893389251102, i64 1}
!385 = !{!"VP", i32 0, i64 1, i64 -3534713008172688140, i64 1}
!386 = !{!"branch_weights", i32 2065659, i32 1048804}
!387 = !{!"branch_weights", i32 0, i32 1048804}
!388 = !{!"branch_weights", i32 1048804, i32 0}
!389 = !{!"VP", i32 0, i64 1048804, i64 4431717959441786704, i64 1048804}
!390 = !{!"VP", i32 0, i64 1048804, i64 -2820648524744283795, i64 1048804}
!391 = !{!"VP", i32 0, i64 1048804, i64 -4380946264003518547, i64 1048804}
!392 = !{!"function_entry_count", i64 75090}
!393 = !{!"branch_weights", i32 0, i32 75090}
!394 = !{!"branch_weights", i32 1, i32 75089}
!395 = !{!"VP", i32 0, i64 1, i64 513632834810131310, i64 1}
!396 = !{!179, !179, i64 0}
!397 = !{!"branch_weights", i32 1, i32 31}
!398 = distinct !{!398, !232, !233}
!399 = !{!"VP", i32 0, i64 1, i64 1667259618122374371, i64 1}
!400 = !{!"branch_weights", i32 75090, i32 0}
!401 = !{!"VP", i32 0, i64 75090, i64 5672154197169538855, i64 75090}
!402 = !{!"function_entry_count", i64 2097608}
!403 = !{!"VP", i32 0, i64 1, i64 8893614577066288799, i64 1}
!404 = !{!"branch_weights", i32 127, i32 1}
!405 = distinct !{!405, !232, !233}
!406 = !{!"VP", i32 0, i64 1, i64 -4536921264242817666, i64 1}
!407 = !{!187, !170, i64 96}
!408 = distinct !{!408, !232, !233}
!409 = !{!"VP", i32 0, i64 1048804, i64 2739796805378211829, i64 1048804}
!410 = !{!"function_entry_count", i64 991300}
!411 = !{!"branch_weights", i32 991300, i32 0}
!412 = !{!"VP", i32 0, i64 991300, i64 -6500743082120362772, i64 936984, i64 -5888464931555138058, i64 33406, i64 6376661219797957484, i64 20910}
!413 = !{!"VP", i32 0, i64 991300, i64 -2820648524744283795, i64 991300}
!414 = !{!"function_entry_count", i64 25554}
!415 = !{!"branch_weights", i32 25554, i32 0}
!416 = !{!"VP", i32 0, i64 25554, i64 -2820648524744283795, i64 25554}
!417 = !{!"branch_weights", i32 75090, i32 1093564}
!418 = distinct !{!418, !232, !233}
!419 = distinct !{!419, !232, !233}
!420 = distinct !{!420, !232, !233}
!421 = distinct !{!421, !232, !233}
!422 = distinct !{!422, !232, !233}
!423 = !{!"function_entry_count", i64 167720}
!424 = !{!"branch_weights", i32 0, i32 167720}
!425 = !{!"branch_weights", i32 0, i32 167720, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!426 = !{!"branch_weights", i32 167720, i32 0}
!427 = !{!"VP", i32 0, i64 167720, i64 -2076242382826092449, i64 167720}
!428 = distinct !{!428, !232, !233}
!429 = distinct !{!429, !232, !233}
!430 = distinct !{!430, !232, !233}
!431 = !{!432, !434, i64 12}
!432 = !{!"_ZTSN11xalanc_1_107XObjectE", !433, i64 0, !434, i64 12, !163, i64 16}
!433 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !179, i64 8}
!434 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !164, i64 0}
!435 = distinct !{!435, !232, !233}
!436 = distinct !{!436, !232, !233}
!437 = distinct !{!437, !232, !233}
!438 = !{!174, !170, i64 280}
!439 = distinct !{!439, !232, !233}
!440 = !{!"VP", i32 0, i64 1, i64 -6239887775130643801, i64 1}
!441 = !{!"function_entry_count", i64 3}
!442 = !{!"branch_weights", i32 3, i32 0}
!443 = !{!"function_entry_count", i64 42470003}
!444 = !{!"branch_weights", i32 52000, i32 42418003}
!445 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!446 = !{!"function_entry_count", i64 41614}
!447 = !{!"branch_weights", i32 0, i32 41614}
!448 = !{!"branch_weights", i32 12, i32 41602}
!449 = !{!"branch_weights", i32 5, i32 7}
!450 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!451 = !{!"branch_weights", i32 354, i32 41248}
!452 = !{!"branch_weights", i32 40889, i32 359}
!453 = !{!"branch_weights", i32 40581, i32 1021}
!454 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!455 = !{!"function_entry_count", i64 22}
!456 = !{!"branch_weights", i32 64551590, i32 18}
!457 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!458 = !{!"branch_weights", i32 18, i32 0}
!459 = !{!"branch_weights", i32 4, i32 64551586}
!460 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!461 = !{!"function_entry_count", i64 155828046}
!462 = !{!"branch_weights", i32 0, i32 155828046}
!463 = !{!"branch_weights", i32 133170777, i32 22657269}
!464 = !{!"branch_weights", i32 20, i32 133170757}
!465 = !{!"branch_weights", i32 1, i32 19024395}
!466 = !{!"branch_weights", i32 19024395, i32 -26420601}
!467 = distinct !{!467, !232, !233}
!468 = !{!"branch_weights", i32 20748786, i32 1908483}
!469 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!470 = !{!"branch_weights", i32 20748786, i32 0}
!471 = !{!"branch_weights", i32 0, i32 20748786}
!472 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!473 = !{!"branch_weights", i32 0, i32 1908483}
!474 = !{!"branch_weights", i32 1, i32 1908482}
!475 = !{!"branch_weights", i32 1908482, i32 49797853}
!476 = distinct !{!476, !232, !233}
!477 = !{!"branch_weights", i32 1908482, i32 1}
!478 = distinct !{!478, !232, !233}
!479 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!480 = distinct !{!480, !232, !233}
!481 = !{!"function_entry_count", i64 124150652}
!482 = !{!"branch_weights", i32 124150652, i32 0}
!483 = !{!"function_entry_count", i64 64551586}
!484 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!485 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!486 = !{!"branch_weights", i32 42418193, i32 22133393}
!487 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!488 = distinct !{!488, !232, !233}
!489 = distinct !{!489, !232, !233}
!490 = distinct !{!490, !232, !233}
!491 = distinct !{!491, !232, !233}
!492 = distinct !{!492, !232, !233}
!493 = !{!"function_entry_count", i64 4975155}
!494 = !{!"branch_weights", i32 4975121, i32 34}
!495 = !{!"branch_weights", i32 9, i32 25}
!496 = !{!"branch_weights", i32 34, i32 0}
!497 = !{!"VP", i32 0, i64 25, i64 -7405368087501025645, i64 25}
!498 = !{!"function_entry_count", i64 35}
!499 = !{!"branch_weights", i32 10, i32 25}
!500 = !{!"VP", i32 0, i64 25, i64 8345045103670217670, i64 25}
!501 = !{!"branch_weights", i32 25, i32 0}
!502 = !{!"branch_weights", i32 0, i32 10}
!503 = !{!"VP", i32 0, i64 10, i64 8345045103670217670, i64 10}
!504 = !{!"function_entry_count", i64 25}
!505 = !{!"branch_weights", i32 0, i32 25}
!506 = !{!"branch_weights", i32 1, i32 199}
!507 = !{!"branch_weights", i32 199, i32 393}
!508 = distinct !{!508, !232, !233}
!509 = distinct !{!509, !232, !233}
!510 = distinct !{!510, !232, !233}
!511 = distinct !{!511, !232, !233}
!512 = distinct !{!512, !232, !233}
!513 = !{!"function_entry_count", i64 38126}
!514 = !{!"branch_weights", i32 35900, i32 2226}
!515 = !{!"branch_weights", i32 0, i32 2226}
!516 = !{!"branch_weights", i32 2226, i32 0}
!517 = !{!"VP", i32 0, i64 2226, i64 -7405368087501025645, i64 2226}
!518 = !{!"function_entry_count", i64 3368}
!519 = !{!"branch_weights", i32 1142, i32 2226}
!520 = !{!"VP", i32 0, i64 2226, i64 8345045103670217670, i64 2226}
!521 = !{!"branch_weights", i32 0, i32 1142}
!522 = !{!"VP", i32 0, i64 1142, i64 8345045103670217670, i64 1142}
!523 = !{!"function_entry_count", i64 2226}
!524 = !{!"branch_weights", i32 1, i32 2225}
!525 = !{!"branch_weights", i32 2225, i32 45474}
!526 = distinct !{!526, !232, !233}
!527 = distinct !{!527, !232, !233}
!528 = distinct !{!528, !232, !233}
!529 = distinct !{!529, !232, !233}
!530 = !{!"function_entry_count", i64 1142}
!531 = !{!"branch_weights", i32 1142, i32 0}
!532 = distinct !{!532, !232, !233}
!533 = distinct !{!533, !232, !233}
!534 = distinct !{!534, !232, !233}
!535 = distinct !{!535, !232, !233}
!536 = distinct !{!536, !232, !233}
!537 = distinct !{!537, !232, !233}
!538 = !{!"XSLTEngineImpl.cpp;_GLOBAL__sub_I_XSLTEngineImpl.cpp"}
