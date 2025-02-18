; ModuleID = 'XalanTransformer.cpp'
source_filename = "XalanTransformer.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::basic_ostream" = type { ptr, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", ptr, i8, i8, ptr, ptr, ptr, ptr }
%"class.std::ios_base" = type { ptr, i64, i64, i32, i32, i32, ptr, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, ptr, %"class.std::locale" }
%"struct.std::ios_base::_Words" = type { ptr, i64 }
%"class.std::locale" = type { ptr }
%"class.xalanc_1_10::XalanTransformer" = type { ptr, ptr, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.1", %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.3", %"class.xalanc_1_10::XalanVector.4", i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanDOMString", i8, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.5", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }
%"struct.std::pair" = type { ptr, ptr }
%"struct.std::pair.8" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XSLTInit>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XSLTInit>::MemMgrAutoPtrData" = type { %"struct.std::pair.10" }
%"struct.std::pair.10" = type { ptr, ptr }
%"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation" = type <{ ptr, i8, [7 x i8] }>
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xalanc_1_10::XalanTransformerOutputStream" = type { %"class.xalanc_1_10::XalanOutputStream", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.4" }
%"class.xalanc_1_10::XalanOutputStreamPrintWriter" = type <{ %"class.xalanc_1_10::PrintWriter", ptr, %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8] }>
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }
%"class.xalanc_1_10::XSLTResultTarget" = type { %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", ptr }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.14", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.13", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.13" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.14" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.15", %"class.xalanc_1_10::XalanList.15", %"class.xalanc_1_10::XalanVector.16", i64, i64 }
%"class.xalanc_1_10::XalanList.15" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.16" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XSLTProcessorEnvSupportDefault" = type { %"class.xalanc_1_10::XSLTProcessorEnvSupport", %"class.xalanc_1_10::XPathEnvSupportDefault", ptr }
%"class.xalanc_1_10::XSLTProcessorEnvSupport" = type { %"class.xalanc_1_10::XPathEnvSupport" }
%"class.xalanc_1_10::XPathEnvSupport" = type { ptr }
%"class.xalanc_1_10::XPathEnvSupportDefault" = type { %"class.xalanc_1_10::XPathEnvSupport", %"class.xalanc_1_10::XalanMap.17", %"class.xalanc_1_10::XalanMap.23" }
%"class.xalanc_1_10::XalanMap.17" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to.19", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.21", %"class.xalanc_1_10::XalanList.21", %"class.xalanc_1_10::XalanVector.22", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to.19" = type { i8 }
%"class.xalanc_1_10::XalanList.21" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.22" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.23" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to.19", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.24", %"class.xalanc_1_10::XalanList.24", %"class.xalanc_1_10::XalanVector.25", i64, i64 }
%"class.xalanc_1_10::XalanList.24" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.25" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectFactoryDefault" = type { %"class.xalanc_1_10::XObjectFactory", %"class.xalanc_1_10::XStringAdapterAllocator", %"class.xalanc_1_10::XStringAllocator", %"class.xalanc_1_10::XStringCachedAllocator", %"class.xalanc_1_10::XStringReferenceAllocator", %"class.xalanc_1_10::XNumberAllocator", %"class.xalanc_1_10::XNodeSetAllocator", %"class.xalanc_1_10::XNodeSetNodeProxyAllocator", %"class.xalanc_1_10::XTokenNumberAdapterAllocator", %"class.xalanc_1_10::XTokenStringAdapterAllocator", %"class.xalanc_1_10::XalanVector.59", %"class.xalanc_1_10::XalanVector.60", %"class.xalanc_1_10::XalanVector.61", %"class.xalanc_1_10::XalanVector.62", %"class.xalanc_1_10::XNull", %"class.xalanc_1_10::XBoolean", %"class.xalanc_1_10::XBoolean" }
%"class.xalanc_1_10::XObjectFactory" = type { ptr, ptr }
%"class.xalanc_1_10::XStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList.26" }
%"class.xalanc_1_10::XalanList.26" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.27" }
%"class.xalanc_1_10::ReusableArenaAllocator.27" = type <{ %"class.xalanc_1_10::ArenaAllocator.28", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.28" = type { ptr, i16, %"class.xalanc_1_10::XalanList.29" }
%"class.xalanc_1_10::XalanList.29" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringCachedAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.31" }
%"class.xalanc_1_10::ReusableArenaAllocator.31" = type <{ %"class.xalanc_1_10::ArenaAllocator.32", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.32" = type { ptr, i16, %"class.xalanc_1_10::XalanList.33" }
%"class.xalanc_1_10::XalanList.33" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringReferenceAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.35" }
%"class.xalanc_1_10::ReusableArenaAllocator.35" = type <{ %"class.xalanc_1_10::ArenaAllocator.36", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.36" = type { ptr, i16, %"class.xalanc_1_10::XalanList.37" }
%"class.xalanc_1_10::XalanList.37" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNumberAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.39" }
%"class.xalanc_1_10::ReusableArenaAllocator.39" = type <{ %"class.xalanc_1_10::ArenaAllocator.40", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.40" = type { ptr, i16, %"class.xalanc_1_10::XalanList.41" }
%"class.xalanc_1_10::XalanList.41" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.43" }
%"class.xalanc_1_10::ReusableArenaAllocator.43" = type <{ %"class.xalanc_1_10::ArenaAllocator.44", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.44" = type { ptr, i16, %"class.xalanc_1_10::XalanList.45" }
%"class.xalanc_1_10::XalanList.45" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetNodeProxyAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.47" }
%"class.xalanc_1_10::ReusableArenaAllocator.47" = type <{ %"class.xalanc_1_10::ArenaAllocator.48", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.48" = type { ptr, i16, %"class.xalanc_1_10::XalanList.49" }
%"class.xalanc_1_10::XalanList.49" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenNumberAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.51" }
%"class.xalanc_1_10::ReusableArenaAllocator.51" = type <{ %"class.xalanc_1_10::ArenaAllocator.52", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.52" = type { ptr, i16, %"class.xalanc_1_10::XalanList.53" }
%"class.xalanc_1_10::XalanList.53" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.55" }
%"class.xalanc_1_10::ReusableArenaAllocator.55" = type <{ %"class.xalanc_1_10::ArenaAllocator.56", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.56" = type { ptr, i16, %"class.xalanc_1_10::XalanList.57" }
%"class.xalanc_1_10::XalanList.57" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.59" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.60" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.61" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.62" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XNull" = type { %"class.xalanc_1_10::XObject" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XBoolean" = type <{ %"class.xalanc_1_10::XObject", i8, [7 x i8] }>
%"class.xalanc_1_10::XPathFactoryBlock" = type { %"class.xalanc_1_10::XPathFactory", %"class.xalanc_1_10::XPathAllocator" }
%"class.xalanc_1_10::XPathFactory" = type { ptr }
%"class.xalanc_1_10::XPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.63" }
%"class.xalanc_1_10::ArenaAllocator.63" = type { ptr, i64, %"class.xalanc_1_10::XalanList.64" }
%"class.xalanc_1_10::XalanList.64" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XSLTEngineImpl" = type { %"class.xalanc_1_10::XSLTProcessor", %"class.xalanc_1_10::PrefixResolver", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr.65", %"class.xalanc_1_10::XalanVector.68", %"class.xalanc_1_10::XalanVector.69", %"class.xalanc_1_10::ProblemListenerDefault", ptr, ptr, i8, i8, ptr, %"class.xalanc_1_10::XalanVector.3", i64, %"class.xalanc_1_10::XalanVector.70", ptr, ptr, ptr, ptr, %"class.xalanc_1_10::OutputContextStack", %"class.xalanc_1_10::XalanNamespacesStack", %"class.xalanc_1_10::AttributeListImpl", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.76", i8, %"class.xalanc_1_10::XPathConstructionContextDefault" }
%"class.xalanc_1_10::XSLTProcessor" = type { ptr }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.65" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" = type { %"struct.std::pair.66" }
%"struct.std::pair.66" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.68" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.69" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::XalanVector.70" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::OutputContextStack" = type { %"class.xalanc_1_10::XalanDeque", %"struct.xalanc_1_10::XalanDequeIterator", i64 }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.71", %"class.xalanc_1_10::XalanVector.71" }
%"class.xalanc_1_10::XalanVector.71" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator" = type { ptr, i64 }
%"class.xalanc_1_10::XalanNamespacesStack" = type { %"class.xalanc_1_10::XalanDeque.72", %"struct.xalanc_1_10::XalanDequeIterator.74", %"struct.xalanc_1_10::XalanDequeIterator.74", %"class.xalanc_1_10::XalanVector.68" }
%"class.xalanc_1_10::XalanDeque.72" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanVector.73" }
%"class.xalanc_1_10::XalanVector.73" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator.74" = type { ptr, i64 }
%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector.75", %"class.xalanc_1_10::XalanVector.75" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.75" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.76" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContextDefault" = type { %"class.xalanc_1_10::XPathConstructionContext", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringCache" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.77" }
%"class.xalanc_1_10::ArenaAllocator.77" = type { ptr, i64, %"class.xalanc_1_10::XalanList.78" }
%"class.xalanc_1_10::XalanList.78" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.79", %"class.xalanc_1_10::XalanVector.79", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.79" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.80" }
%"class.xalanc_1_10::ReusableArenaAllocator.80" = type <{ %"class.xalanc_1_10::ArenaAllocator.81", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.81" = type { ptr, i16, %"class.xalanc_1_10::XalanList.82" }
%"class.xalanc_1_10::XalanList.82" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::DOMStringPrintWriter" = type { %"class.xalanc_1_10::PrintWriter", ptr }
%"class.xalanc_1_10::XalanTransformerProblemListener" = type { %"class.xalanc_1_10::ProblemListener", %"class.xalanc_1_10::ProblemListenerDefault", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XSLException" = type { ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i64, i64 }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i8 }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::StylesheetExecutionContextDefault" = type <{ %"class.xalanc_1_10::StylesheetExecutionContext", %"class.xalanc_1_10::XPathExecutionContextDefault", ptr, ptr, %"class.xalanc_1_10::XalanVector.124", ptr, %"class.xalanc_1_10::XalanVector.125", %"class.xalanc_1_10::XalanVector.126", %"class.xalanc_1_10::XalanVector.127", ptr, ptr, %"class.xalanc_1_10::VariablesStack", %"class.xalanc_1_10::XalanVector.130", %"class.xalanc_1_10::XalanMap.131", %"class.xalanc_1_10::XalanMap.134", %"class.xalanc_1_10::CountersTable", %"class.xalanc_1_10::XalanMemMgrAutoPtr.142", ptr, %"class.xalanc_1_10::XalanVector.145", i32, [4 x i8], %"class.xalanc_1_10::XResultTreeFragAllocator", %"class.xalanc_1_10::XalanSourceTreeDocumentFragmentAllocator", %"class.xalanc_1_10::XalanSourceTreeDocumentAllocator", %"class.xalanc_1_10::XalanVector.68", %"class.xalanc_1_10::XalanVector.158", %"class.xalanc_1_10::XalanVector.159", %"class.xalanc_1_10::XalanVector.160", %"class.xalanc_1_10::XalanObjectStackCache", %"class.xalanc_1_10::XalanVector.161", %"class.xalanc_1_10::XalanVector.68", %"class.xalanc_1_10::XalanVector.68", %"class.xalanc_1_10::XalanObjectStackCache.162", %"class.xalanc_1_10::XalanObjectStackCache.167", %"class.xalanc_1_10::XalanVector.68", %"class.xalanc_1_10::XalanObjectStackCache.173", %"class.xalanc_1_10::XalanVector.179", %"class.xalanc_1_10::XalanVector.124", %"class.xalanc_1_10::XalanVector.180", %"class.xalanc_1_10::NodeSorter", i8, [3 x i8], i32, i32, i8, [3 x i8] }>
%"class.xalanc_1_10::StylesheetExecutionContext" = type { %"class.xalanc_1_10::XPathExecutionContext" }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContextDefault" = type { %"class.xalanc_1_10::XPathExecutionContext", ptr, ptr, %"class.xalanc_1_10::XalanVector.119", %"class.xalanc_1_10::XalanVector.120", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanObjectCache", %"class.xalanc_1_10::XalanDOMStringCache", %"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache", %"class.xalanc_1_10::XalanQNameByValue" }
%"class.xalanc_1_10::XalanVector.119" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.120" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectCache" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr", %"struct.xalanc_1_10::DeleteFunctor.121", %"class.xalanc_1_10::ClearCacheResetFunctor", %"class.xalanc_1_10::XalanVector.123" }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.121" = type { ptr }
%"class.xalanc_1_10::ClearCacheResetFunctor" = type { i8 }
%"class.xalanc_1_10::XalanVector.123" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanVector.125" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.126" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.127" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::VariablesStack" = type { %"class.xalanc_1_10::XalanVector.128", i64, i8, i64, %"class.xalanc_1_10::XalanVector.129", %"class.xalanc_1_10::XalanVector.124" }
%"class.xalanc_1_10::XalanVector.128" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.129" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.130" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.131" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to.19", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.132", %"class.xalanc_1_10::XalanList.132", %"class.xalanc_1_10::XalanVector.133", i64, i64 }
%"class.xalanc_1_10::XalanList.132" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.133" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.134" = type { %"class.xalanc_1_10::XalanHasher.135", %"struct.std::equal_to.137", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.139", %"class.xalanc_1_10::XalanList.139", %"class.xalanc_1_10::XalanVector.140", i64, i64 }
%"class.xalanc_1_10::XalanHasher.135" = type { i8 }
%"struct.std::equal_to.137" = type { i8 }
%"class.xalanc_1_10::XalanList.139" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.140" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::CountersTable" = type { %"class.xalanc_1_10::XalanVector.141", %"class.xalanc_1_10::XalanVector.119" }
%"class.xalanc_1_10::XalanVector.141" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.142" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeDocument>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeDocument>::MemMgrAutoPtrData" = type { %"struct.std::pair.143" }
%"struct.std::pair.143" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.145" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XResultTreeFragAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.146" }
%"class.xalanc_1_10::ReusableArenaAllocator.146" = type <{ %"class.xalanc_1_10::ArenaAllocator.147", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.147" = type { ptr, i16, %"class.xalanc_1_10::XalanList.148" }
%"class.xalanc_1_10::XalanList.148" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeDocumentFragmentAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.150" }
%"class.xalanc_1_10::ReusableArenaAllocator.150" = type <{ %"class.xalanc_1_10::ArenaAllocator.151", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.151" = type { ptr, i16, %"class.xalanc_1_10::XalanList.152" }
%"class.xalanc_1_10::XalanList.152" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeDocumentAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.154" }
%"class.xalanc_1_10::ReusableArenaAllocator.154" = type <{ %"class.xalanc_1_10::ArenaAllocator.155", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.155" = type { ptr, i16, %"class.xalanc_1_10::XalanList.156" }
%"class.xalanc_1_10::XalanList.156" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.158" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.159" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.160" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectStackCache" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr", %"struct.xalanc_1_10::DeleteFunctor.121", %"class.xalanc_1_10::DefaultCacheResetFunctor", %"class.xalanc_1_10::XalanVector.123", i64 }
%"class.xalanc_1_10::DefaultCacheResetFunctor" = type { i8 }
%"class.xalanc_1_10::XalanVector.161" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectStackCache.162" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.163", %"struct.xalanc_1_10::DeleteFunctor.164", %"class.xalanc_1_10::DefaultCacheResetFunctor.166", %"class.xalanc_1_10::XalanVector.79", i64 }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.163" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.164" = type { ptr }
%"class.xalanc_1_10::DefaultCacheResetFunctor.166" = type { i8 }
%"class.xalanc_1_10::XalanObjectStackCache.167" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.168", %"struct.xalanc_1_10::DeleteFunctor.169", %"class.xalanc_1_10::DefaultCacheResetFunctor.171", %"class.xalanc_1_10::XalanVector.172", i64 }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.168" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.169" = type { ptr }
%"class.xalanc_1_10::DefaultCacheResetFunctor.171" = type { i8 }
%"class.xalanc_1_10::XalanVector.172" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectStackCache.173" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.174", %"struct.xalanc_1_10::DeleteFunctor.175", %"class.xalanc_1_10::DefaultCacheResetFunctor.177", %"class.xalanc_1_10::XalanVector.178", i64 }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.174" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.175" = type { ptr }
%"class.xalanc_1_10::DefaultCacheResetFunctor.177" = type { i8 }
%"class.xalanc_1_10::XalanVector.178" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.179" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.124" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.180" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeSorter" = type { %"class.xalanc_1_10::XalanVector.181", %"class.xalanc_1_10::XalanVector.182", %"class.xalanc_1_10::XalanVector.183", %"class.xalanc_1_10::XalanVector.184" }
%"class.xalanc_1_10::XalanVector.181" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.182" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.183" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.184" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::StylesheetConstructionContextDefault" = type { %"class.xalanc_1_10::StylesheetConstructionContext", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr.65", %"class.xalanc_1_10::XalanVector.84", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanArrayAllocator", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanQNameByValue", %"class.xalanc_1_10::XalanDOMStringCache", %"class.xalanc_1_10::XalanAVTAllocator", %"class.xalanc_1_10::XalanAVTPartSimpleAllocator", %"class.xalanc_1_10::XalanAVTPartXPathAllocator", %"class.xalanc_1_10::XalanQNameByValueAllocator", %"class.xalanc_1_10::XalanQNameByReference", %"class.xalanc_1_10::XalanArrayAllocator.94", %"class.xalanc_1_10::XalanVector.96", %"class.xalanc_1_10::XalanElemApplyTemplatesAllocator", %"class.xalanc_1_10::XalanElemAttributeAllocator", %"class.xalanc_1_10::XalanElemAttributeSetAllocator", %"class.xalanc_1_10::XalanElemCallTemplateAllocator", %"class.xalanc_1_10::XalanElemElementAllocator", %"class.xalanc_1_10::XalanElemLiteralResultAllocator", %"class.xalanc_1_10::XalanElemTemplateAllocator", %"class.xalanc_1_10::XalanElemTextLiteralAllocator", %"class.xalanc_1_10::XalanElemValueOfAllocator", %"class.xalanc_1_10::XalanElemVariableAllocator", %"class.xalanc_1_10::XalanMatchPatternDataAllocator", %"class.xalanc_1_10::XalanQNameByReference" }
%"class.xalanc_1_10::StylesheetConstructionContext" = type { %"class.xalanc_1_10::XPathConstructionContext" }
%"class.xalanc_1_10::XalanVector.84" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanArrayAllocator" = type { %"class.xalanc_1_10::XalanList.85", i64, ptr }
%"class.xalanc_1_10::XalanList.85" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.86" }
%"class.xalanc_1_10::ArenaAllocator.86" = type { ptr, i64, %"class.xalanc_1_10::XalanList.87" }
%"class.xalanc_1_10::XalanList.87" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartSimpleAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.88" }
%"class.xalanc_1_10::ArenaAllocator.88" = type { ptr, i64, %"class.xalanc_1_10::XalanList.89" }
%"class.xalanc_1_10::XalanList.89" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartXPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.90" }
%"class.xalanc_1_10::ArenaAllocator.90" = type { ptr, i64, %"class.xalanc_1_10::XalanList.91" }
%"class.xalanc_1_10::XalanList.91" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValueAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.92" }
%"class.xalanc_1_10::ArenaAllocator.92" = type { ptr, i64, %"class.xalanc_1_10::XalanList.93" }
%"class.xalanc_1_10::XalanList.93" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanArrayAllocator.94" = type { %"class.xalanc_1_10::XalanList.95", i64, ptr }
%"class.xalanc_1_10::XalanList.95" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.96" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanElemApplyTemplatesAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.97" }
%"class.xalanc_1_10::ArenaAllocator.97" = type { ptr, i64, %"class.xalanc_1_10::XalanList.98" }
%"class.xalanc_1_10::XalanList.98" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.99" }
%"class.xalanc_1_10::ArenaAllocator.99" = type { ptr, i64, %"class.xalanc_1_10::XalanList.100" }
%"class.xalanc_1_10::XalanList.100" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeSetAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.101" }
%"class.xalanc_1_10::ArenaAllocator.101" = type { ptr, i64, %"class.xalanc_1_10::XalanList.102" }
%"class.xalanc_1_10::XalanList.102" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemCallTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.103" }
%"class.xalanc_1_10::ArenaAllocator.103" = type { ptr, i64, %"class.xalanc_1_10::XalanList.104" }
%"class.xalanc_1_10::XalanList.104" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemElementAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.105" }
%"class.xalanc_1_10::ArenaAllocator.105" = type { ptr, i64, %"class.xalanc_1_10::XalanList.106" }
%"class.xalanc_1_10::XalanList.106" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemLiteralResultAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.107" }
%"class.xalanc_1_10::ArenaAllocator.107" = type { ptr, i64, %"class.xalanc_1_10::XalanList.108" }
%"class.xalanc_1_10::XalanList.108" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.109" }
%"class.xalanc_1_10::ArenaAllocator.109" = type { ptr, i64, %"class.xalanc_1_10::XalanList.110" }
%"class.xalanc_1_10::XalanList.110" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTextLiteralAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.111" }
%"class.xalanc_1_10::ArenaAllocator.111" = type { ptr, i64, %"class.xalanc_1_10::XalanList.112" }
%"class.xalanc_1_10::XalanList.112" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemValueOfAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.113" }
%"class.xalanc_1_10::ArenaAllocator.113" = type { ptr, i64, %"class.xalanc_1_10::XalanList.114" }
%"class.xalanc_1_10::XalanList.114" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemVariableAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.115" }
%"class.xalanc_1_10::ArenaAllocator.115" = type { ptr, i64, %"class.xalanc_1_10::XalanList.116" }
%"class.xalanc_1_10::XalanList.116" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMatchPatternDataAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.117" }
%"class.xalanc_1_10::ArenaAllocator.117" = type { ptr, i64, %"class.xalanc_1_10::XalanList.118" }
%"class.xalanc_1_10::XalanList.118" = type { ptr, ptr, ptr }

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc = comdat any

$_ZNK11xalanc_1_1010XalanQName6equalsERKS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1012XSLException13defaultFormatEPKtS2_llS2_RNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE = dso_local local_unnamed_addr global ptr null, align 8
@_ZTVN11xalanc_1_1016XalanTransformerE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016XalanTransformerE, ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1016XalanTransformerD0Ev] }, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZN11xalanc_1_10L19s_initMemoryManagerE = internal unnamed_addr global ptr null, align 8
@_ZTIN11xalanc_1_1012XSLExceptionE = external constant ptr
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTSN11xalanc_1_1016XalanTransformerE = dso_local constant [34 x i8] c"N11xalanc_1_1016XalanTransformerE\00", align 1
@_ZTIN11xalanc_1_1016XalanTransformerE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016XalanTransformerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@.str = private unnamed_addr constant [18 x i8] c"SAXParseException\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"An error occurred transcoding an error message.\00", align 1
@_ZN11xalanc_1_1023XalanSourceTreeDocument18s_poolAllTextNodesE = external local_unnamed_addr global i8, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanTransformer.cpp, ptr null }]

@_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1016XalanTransformerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev
@_ZN11xalanc_1_1016XalanTransformer11EnsureResetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev
@_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca i8, align 1
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1016XalanTransformerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !120
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2
  store ptr %1, ptr %5, align 8, !tbaa !126
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  store ptr %1, ptr %7, align 8, !tbaa !129
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 1
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  store ptr %1, ptr %9, align 8, !tbaa !131
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  store ptr %1, ptr %11, align 8, !tbaa !133
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  store ptr %1, ptr %13, align 8, !tbaa !135
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6, i32 1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  store i8 0, ptr %3, align 1, !tbaa !137
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %15, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %16 unwind label %34, !prof !138

16:                                               ; preds = %2
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 8
  store i8 0, ptr %17, align 8, !tbaa !139
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  %20 = load ptr, ptr %4, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %19, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %21 unwind label %36, !prof !138

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12
  %23 = load ptr, ptr %4, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %24 unwind label %38, !prof !138

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 13
  store ptr null, ptr %25, align 8, !tbaa !147
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 14
  store ptr @_ZSt4cerr, ptr %26, align 8, !tbaa !148
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 15
  %28 = load ptr, ptr %4, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %29 unwind label %40, !prof !138

29:                                               ; preds = %24
  %30 = load ptr, ptr %4, align 8, !tbaa !146
  %31 = invoke noundef ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef null, ptr noundef null, ptr noundef null)
          to label %32 unwind label %42, !prof !138

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  store ptr %31, ptr %33, align 8, !tbaa !149
  ret void

34:                                               ; preds = %2
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br label %50

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %48

38:                                               ; preds = %21
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %46

40:                                               ; preds = %24
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %29
  %43 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #19
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %43, %42 ], [ %41, %40 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %22) #19
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi { ptr, i32 } [ %45, %44 ], [ %39, %38 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %19) #19
  br label %48

48:                                               ; preds = %46, %36
  %49 = phi { ptr, i32 } [ %47, %46 ], [ %37, %36 ]
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #19
  br label %50

50:                                               ; preds = %48, %34
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %35, %34 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #19
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #19
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #19
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #19
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #19
  resume { ptr, i32 } %51
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  store ptr %3, ptr %0, align 8, !tbaa !150
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  store ptr %3, ptr %5, align 8, !tbaa !150
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %10 unwind label %30, !prof !138

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !150
  %14 = load i64, ptr %6, align 8, !tbaa !151
  %15 = load i64, ptr %12, align 8, !tbaa !152
  %16 = load ptr, ptr %11, align 8, !tbaa !153
  %17 = load ptr, ptr %5, align 8, !tbaa !150
  store ptr %17, ptr %0, align 8, !tbaa !150
  %18 = load i64, ptr %7, align 8, !tbaa !151
  store i64 %18, ptr %6, align 8, !tbaa !151
  %19 = load i64, ptr %8, align 8, !tbaa !152
  store i64 %19, ptr %12, align 8, !tbaa !152
  %20 = load ptr, ptr %9, align 8, !tbaa !153
  store ptr %20, ptr %11, align 8, !tbaa !153
  store ptr %13, ptr %5, align 8, !tbaa !150
  store i64 %14, ptr %7, align 8, !tbaa !151
  store i64 %15, ptr %8, align 8, !tbaa !152
  store ptr %16, ptr %9, align 8, !tbaa !153
  %21 = icmp eq i64 %15, 0
  br i1 %21, label %29, label %22, !prof !138

22:                                               ; preds = %10
  %23 = load ptr, ptr %13, align 8, !tbaa !120
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  invoke void %25(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %16)
          to label %29 unwind label %26

26:                                               ; preds = %22
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  call void @__clang_call_terminate(ptr %28) #20
  unreachable

29:                                               ; preds = %10, %22
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret void

30:                                               ; preds = %4
  %31 = landingpad { ptr, i32 }
          cleanup
  %32 = load i64, ptr %8, align 8, !tbaa !152
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %30
  %35 = load ptr, ptr %9, align 8, !tbaa !153
  %36 = load ptr, ptr %5, align 8, !tbaa !150
  %37 = load ptr, ptr %36, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %35)
          to label %43 unwind label %40

40:                                               ; preds = %34
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %30, %34
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !154 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !152
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !155

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !153
  %8 = load ptr, ptr %0, align 8, !tbaa !150
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !156

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !158
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !159

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !160
  %8 = load ptr, ptr %0, align 8, !tbaa !135
  %9 = load ptr, ptr %8, align 8, !tbaa !120
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
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !161
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !138

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !162
  %8 = load ptr, ptr %0, align 8, !tbaa !133
  %9 = load ptr, ptr %8, align 8, !tbaa !120
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
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !163
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !138

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !164
  %8 = load ptr, ptr %0, align 8, !tbaa !131
  %9 = load ptr, ptr %8, align 8, !tbaa !120
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
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !165
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !166

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !167
  %8 = load ptr, ptr %0, align 8, !tbaa !129
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !168

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !169
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !138

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !170
  %8 = load ptr, ptr %0, align 8, !tbaa !126
  %9 = load ptr, ptr %8, align 8, !tbaa !120
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
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformerD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1016XalanTransformerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !120
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !170
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %23, label %10, !prof !138

10:                                               ; preds = %1, %20
  %11 = phi ptr [ %21, %20 ], [ %3, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !123
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !120
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(8) %12) #19
  %17 = load ptr, ptr %8, align 8, !tbaa !120
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %12)
          to label %20 unwind label %124

20:                                               ; preds = %14, %10
  %21 = getelementptr inbounds ptr, ptr %11, i64 1
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %10, !prof !138, !llvm.loop !172

23:                                               ; preds = %20, %1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !167
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !175
  %28 = getelementptr inbounds ptr, ptr %25, i64 %27
  %29 = load ptr, ptr %7, align 8, !tbaa !146
  %30 = icmp eq i64 %27, 0
  br i1 %30, label %31, label %35, !prof !138

31:                                               ; preds = %45, %23
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !176
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %48, label %55, !prof !138

35:                                               ; preds = %23, %45
  %36 = phi ptr [ %46, %45 ], [ %25, %23 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !123
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !120
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(8) %37) #19
  %42 = load ptr, ptr %29, align 8, !tbaa !120
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %37)
          to label %45 unwind label %122

45:                                               ; preds = %39, %35
  %46 = getelementptr inbounds ptr, ptr %36, i64 1
  %47 = icmp eq ptr %46, %28
  br i1 %47, label %31, label %35, !prof !138, !llvm.loop !177

48:                                               ; preds = %69, %31
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 3
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 1
  %51 = load i64, ptr %50, align 8, !tbaa !178
  %52 = icmp eq i64 %51, 0
  br i1 %52, label %73, label %53, !prof !138

53:                                               ; preds = %48
  %54 = load ptr, ptr %49, align 8, !tbaa !164
  br label %84

55:                                               ; preds = %31, %69
  %56 = phi i64 [ %70, %69 ], [ 0, %31 ]
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !162
  %59 = getelementptr inbounds %"struct.std::pair", ptr %58, i64 %56, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !179
  %61 = icmp eq ptr %60, null
  br i1 %61, label %69, label %62

62:                                               ; preds = %55
  %63 = load ptr, ptr %7, align 8, !tbaa !146
  %64 = load ptr, ptr %60, align 8, !tbaa !120
  %65 = load ptr, ptr %64, align 8
  tail call void %65(ptr noundef nonnull align 8 dereferenceable(8) %60) #19
  %66 = load ptr, ptr %63, align 8, !tbaa !120
  %67 = getelementptr inbounds ptr, ptr %66, i64 3
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef nonnull %60)
          to label %69 unwind label %120

69:                                               ; preds = %62, %55
  %70 = add nuw i64 %56, 1
  %71 = load i64, ptr %32, align 8, !tbaa !176
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %55, label %48, !prof !166, !llvm.loop !181

73:                                               ; preds = %102, %48
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %75 = load ptr, ptr %74, align 8, !tbaa !149
  %76 = icmp eq ptr %75, null
  br i1 %76, label %108, label %77, !prof !166

77:                                               ; preds = %73
  %78 = load ptr, ptr %7, align 8, !tbaa !146
  %79 = load ptr, ptr %75, align 8, !tbaa !120
  %80 = load ptr, ptr %79, align 8
  tail call void %80(ptr noundef nonnull align 8 dereferenceable(2069) %75) #19, !prof !182
  %81 = load ptr, ptr %78, align 8, !tbaa !120
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  invoke void %83(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef nonnull %75)
          to label %108 unwind label %126, !prof !168

84:                                               ; preds = %53, %102
  %85 = phi ptr [ %103, %102 ], [ %54, %53 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !183
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %7, align 8, !tbaa !146
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %86) #19
  %90 = load ptr, ptr %89, align 8, !tbaa !120
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull %86)
          to label %93 unwind label %118

93:                                               ; preds = %84, %88
  %94 = getelementptr inbounds %"struct.std::pair.8", ptr %85, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !185
  %96 = icmp eq ptr %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %93
  %98 = load ptr, ptr %7, align 8, !tbaa !146
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %95) #19
  %99 = load ptr, ptr %98, align 8, !tbaa !120
  %100 = getelementptr inbounds ptr, ptr %99, i64 3
  %101 = load ptr, ptr %100, align 8
  invoke void %101(ptr noundef nonnull align 8 dereferenceable(8) %98, ptr noundef nonnull %95)
          to label %102 unwind label %118

102:                                              ; preds = %93, %97
  %103 = getelementptr inbounds %"struct.std::pair.8", ptr %85, i64 1
  %104 = load ptr, ptr %49, align 8, !tbaa !164
  %105 = load i64, ptr %50, align 8, !tbaa !178
  %106 = getelementptr inbounds %"struct.std::pair.8", ptr %104, i64 %105
  %107 = icmp eq ptr %103, %106
  br i1 %107, label %73, label %84, !prof !138, !llvm.loop !186

108:                                              ; preds = %73, %77
  %109 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  %111 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %113) #19
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %114) #19
  %115 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %115) #19
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %116) #19
  %117 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %117) #19
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %109) #19
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %110) #19
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %111) #19
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %112) #19
  ret void

118:                                              ; preds = %88, %97
  %119 = landingpad { ptr, i32 }
          catch ptr null
  br label %128

120:                                              ; preds = %62
  %121 = landingpad { ptr, i32 }
          catch ptr null
  br label %128

122:                                              ; preds = %39
  %123 = landingpad { ptr, i32 }
          catch ptr null
  br label %128

124:                                              ; preds = %14
  %125 = landingpad { ptr, i32 }
          catch ptr null
  br label %128

126:                                              ; preds = %77
  %127 = landingpad { ptr, i32 }
          catch ptr null
  br label %128

128:                                              ; preds = %120, %124, %126, %122, %118
  %129 = phi { ptr, i32 } [ %119, %118 ], [ %121, %120 ], [ %123, %122 ], [ %125, %124 ], [ %127, %126 ]
  %130 = extractvalue { ptr, i32 } %129, 0
  tail call void @__clang_call_terminate(ptr %130) #20
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !187 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformerD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #6 align 2 !prof !187 {
  tail call void @_ZN11xalanc_1_1016XalanTransformerD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) #19
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  %3 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %4 = tail call noundef ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr %0, ptr %2, align 8, !tbaa !188
  %5 = getelementptr inbounds %"struct.std::pair.10", ptr %2, i64 0, i32 1
  store ptr %4, ptr %5, align 8, !tbaa !190
  %6 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef nonnull %0)
          to label %7 unwind label %12, !prof !138

7:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %8 unwind label %14, !prof !138

8:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  store ptr %0, ptr %3, align 8, !tbaa !123
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", ptr %3, i64 0, i32 1
  store i8 0, ptr %9, align 8, !tbaa !191
  invoke void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv(ptr noundef nonnull align 8 dereferenceable(9) %3)
          to label %10 unwind label %16, !prof !138

10:                                               ; preds = %8
  store i8 1, ptr %9, align 8, !tbaa !191
  %11 = load ptr, ptr %5, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr %11, ptr @_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE, align 8, !tbaa !123
  store ptr %6, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !123
  store ptr %0, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !123
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void

12:                                               ; preds = %1
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %21

14:                                               ; preds = %7
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef nonnull %0) #19
  br label %21

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %3) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  %18 = load ptr, ptr %6, align 8, !tbaa !120
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(64) %6) #19
  br label %21

21:                                               ; preds = %16, %14, %12
  %22 = phi { ptr, i32 } [ %17, %16 ], [ %15, %14 ], [ %13, %12 ]
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  resume { ptr, i32 } %22
}

declare noundef ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0) local_unnamed_addr #4 align 2 !prof !119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !193
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %3 = load ptr, ptr %0, align 8, !tbaa !193
  tail call void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = load ptr, ptr %0, align 8, !tbaa !193
  tail call void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4)
  %5 = load ptr, ptr %0, align 8, !tbaa !193
  tail call void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = load ptr, ptr %0, align 8, !tbaa !193
  tail call void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = load ptr, ptr %0, align 8, !tbaa !193
  tail call void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = load ptr, ptr %0, align 8, !tbaa !193
  tail call void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %8)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = load ptr, ptr %0, align 8, !tbaa !188
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.10", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false, !prof !166
  br i1 %7, label %8, label %14, !prof !166

8:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_108XSLTInitD1Ev(ptr noundef nonnull align 1 dereferenceable(10) %5) #19
  %9 = load ptr, ptr %0, align 8, !tbaa !188
  %10 = load ptr, ptr %4, align 8, !tbaa !190
  %11 = load ptr, ptr %9, align 8, !tbaa !120
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %10)
          to label %14 unwind label %15

14:                                               ; preds = %1, %8
  ret void

15:                                               ; preds = %8
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() local_unnamed_addr #4 align 2 !prof !119 {
  %1 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #19
  %2 = load ptr, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !123
  store ptr %2, ptr %1, align 8, !tbaa !123
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", ptr %1, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !191
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %1) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #19
  %4 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !123
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6, !prof !166

6:                                                ; preds = %0
  %7 = load ptr, ptr %4, align 8, !tbaa !120
  %8 = getelementptr inbounds ptr, ptr %7, i64 1
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(64) %4) #19, !prof !194
  br label %10

10:                                               ; preds = %6, %0
  %11 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE, align 8, !tbaa !123
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13, !prof !166

13:                                               ; preds = %10
  %14 = load ptr, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !123
  tail call void @_ZN11xalanc_1_108XSLTInitD1Ev(ptr noundef nonnull align 1 dereferenceable(10) %11) #19
  %15 = load ptr, ptr %14, align 8, !tbaa !120
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull %11), !prof !168
  br label %18

18:                                               ; preds = %10, %13
  store ptr null, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !123
  store ptr null, ptr @_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE, align 8, !tbaa !123
  store ptr null, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !123
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() local_unnamed_addr #8 align 2 !prof !119 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1010ICUStartUpERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) local_unnamed_addr #8 !prof !187 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !123
  %6 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false), !range !195
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8, !tbaa !123
  %10 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %11 unwind label %16

11:                                               ; preds = %8
  %12 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %9)
          to label %23 unwind label %13, !range !196

13:                                               ; preds = %11
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #20
  unreachable

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %9)
          to label %22 unwind label %19, !range !196

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  call void @__clang_call_terminate(ptr %21) #20
  unreachable

22:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %17

23:                                               ; preds = %11, %4
  %24 = phi i32 [ %6, %4 ], [ %10, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i32 %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %5 = alloca i8, align 1
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !151
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %12, label %11, !prof !166

11:                                               ; preds = %4
  store i64 0, ptr %8, align 8, !tbaa !151
  br label %12

12:                                               ; preds = %11, %4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  store i8 0, ptr %5, align 1, !tbaa !137
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %5)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !175
  %16 = add i64 %15, 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 2
  %18 = load i64, ptr %17, align 8, !tbaa !165
  %19 = icmp ult i64 %18, %16
  br i1 %19, label %20, label %21, !prof !138

20:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %13, i64 noundef %16)
          to label %21 unwind label %53, !prof !138

21:                                               ; preds = %12, %20
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 8
  %25 = load i8, ptr %24, align 8, !tbaa !139, !range !197, !noundef !198
  %26 = icmp ne i8 %25, 0
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !199
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !200
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11, i32 1
  %32 = load i32, ptr %31, align 8, !tbaa !201
  %33 = icmp eq i32 %32, 0
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11, i32 0, i32 1
  %35 = load i64, ptr %34, align 8
  %36 = icmp eq i64 %35, 0
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11, i32 0, i32 3
  %38 = load ptr, ptr %37, align 8
  %39 = select i1 %36, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %38
  %40 = select i1 %33, ptr null, ptr %39
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !201
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12, i32 0, i32 1
  %45 = load i64, ptr %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12, i32 0, i32 3
  %48 = load ptr, ptr %47, align 8
  %49 = select i1 %46, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %48
  %50 = select i1 %43, ptr null, ptr %49
  br i1 %3, label %51, label %123, !prof !166

51:                                               ; preds = %21
  %52 = invoke noundef ptr @_ZN11xalanc_1_1021XercesDOMParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %26, ptr noundef %28, ptr noundef %30, ptr noundef %40, ptr noundef %50)
          to label %127 unwind label %53

53:                                               ; preds = %127, %20, %123, %51
  %54 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  %55 = extractvalue { ptr, i32 } %54, 0
  %56 = extractvalue { ptr, i32 } %54, 1
  %57 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1012XSLExceptionE) #19
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %90

59:                                               ; preds = %53
  %60 = call ptr @__cxa_begin_catch(ptr %55) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #19
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %62 = load ptr, ptr %61, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %62)
          to label %63 unwind label %137

63:                                               ; preds = %59
  invoke void @_ZNK11xalanc_1_1012XSLException13defaultFormatERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %60, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %64 unwind label %139

64:                                               ; preds = %63
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %6, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !202
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %6, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %70, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true)
          to label %72 unwind label %139

72:                                               ; preds = %64
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %6, i64 0, i32 2
  %74 = load i64, ptr %73, align 8, !tbaa !203
  %75 = icmp eq i64 %74, 0
  br i1 %75, label %85, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %68, align 8, !tbaa !204
  %78 = load ptr, ptr %6, align 8, !tbaa !205
  %79 = load ptr, ptr %78, align 8, !tbaa !120
  %80 = getelementptr inbounds ptr, ptr %79, i64 3
  %81 = load ptr, ptr %80, align 8
  invoke void %81(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %77)
          to label %85 unwind label %82

82:                                               ; preds = %76
  %83 = landingpad { ptr, i32 }
          catch ptr null
  %84 = extractvalue { ptr, i32 } %83, 0
  call void @__clang_call_terminate(ptr %84) #20
  unreachable

85:                                               ; preds = %72, %76
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  br label %86

86:                                               ; preds = %119, %111, %106, %93, %85
  %87 = phi i32 [ -1, %85 ], [ -2, %93 ], [ -2, %106 ], [ -3, %111 ], [ -4, %119 ]
  call void @__cxa_end_catch()
  br label %88

88:                                               ; preds = %86, %127
  %89 = phi i32 [ 0, %127 ], [ %87, %86 ]
  ret i32 %89

90:                                               ; preds = %53
  %91 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE) #19
  %92 = icmp eq i32 %56, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = call ptr @__cxa_begin_catch(ptr %55) #19
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %96 = load ptr, ptr %95, align 8, !tbaa !149
  invoke fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %96, ptr noundef nonnull align 8 dereferenceable(56) %94, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %86 unwind label %135

97:                                               ; preds = %90
  %98 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #19
  %99 = icmp eq i32 %56, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %97
  %101 = call ptr @__cxa_begin_catch(ptr %55) #19
  %102 = load ptr, ptr %101, align 8, !tbaa !120
  %103 = getelementptr inbounds ptr, ptr %102, i64 2
  %104 = load ptr, ptr %103, align 8
  %105 = invoke noundef ptr %104(ptr noundef nonnull align 8 dereferenceable(24) %101)
          to label %106 unwind label %133

106:                                              ; preds = %100
  %107 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %105, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true)
          to label %86 unwind label %133

108:                                              ; preds = %97
  %109 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %110 = icmp eq i32 %56, %109
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = call ptr @__cxa_begin_catch(ptr %55) #19
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %112, i64 0, i32 4
  %114 = load ptr, ptr %113, align 8, !tbaa !206
  %115 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %114, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true)
          to label %86 unwind label %131

116:                                              ; preds = %108
  %117 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE) #19
  %118 = icmp eq i32 %56, %117
  br i1 %118, label %119, label %156

119:                                              ; preds = %116
  %120 = call ptr @__cxa_begin_catch(ptr %55) #19
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %122 = load ptr, ptr %121, align 8, !tbaa !149
  invoke fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %122, ptr noundef nonnull align 8 dereferenceable(12) %120, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %86 unwind label %129

123:                                              ; preds = %21
  %124 = load i8, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument18s_poolAllTextNodesE, align 1, !tbaa !209, !range !197, !noundef !198
  %125 = icmp ne i8 %124, 0
  %126 = invoke noundef ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %26, ptr noundef %28, ptr noundef %30, ptr noundef %40, ptr noundef %50, i1 noundef zeroext %125)
          to label %127 unwind label %53, !prof !138

127:                                              ; preds = %123, %51
  %128 = phi ptr [ %52, %51 ], [ %126, %123 ]
  store ptr %128, ptr %2, align 8, !tbaa !123
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %88 unwind label %53, !prof !138

129:                                              ; preds = %119
  %130 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %156 unwind label %158

131:                                              ; preds = %111
  %132 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %156 unwind label %158

133:                                              ; preds = %106, %100
  %134 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %156 unwind label %158

135:                                              ; preds = %93
  %136 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %156 unwind label %158

137:                                              ; preds = %59
  %138 = landingpad { ptr, i32 }
          cleanup
  br label %154

139:                                              ; preds = %64, %63
  %140 = landingpad { ptr, i32 }
          cleanup
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %6, i64 0, i32 2
  %142 = load i64, ptr %141, align 8, !tbaa !203
  %143 = icmp eq i64 %142, 0
  br i1 %143, label %154, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %6, i64 0, i32 3
  %146 = load ptr, ptr %145, align 8, !tbaa !204
  %147 = load ptr, ptr %6, align 8, !tbaa !205
  %148 = load ptr, ptr %147, align 8, !tbaa !120
  %149 = getelementptr inbounds ptr, ptr %148, i64 3
  %150 = load ptr, ptr %149, align 8
  invoke void %150(ptr noundef nonnull align 8 dereferenceable(8) %147, ptr noundef %146)
          to label %154 unwind label %151

151:                                              ; preds = %144
  %152 = landingpad { ptr, i32 }
          catch ptr null
  %153 = extractvalue { ptr, i32 } %152, 0
  call void @__clang_call_terminate(ptr %153) #20
  unreachable

154:                                              ; preds = %139, %144, %137
  %155 = phi { ptr, i32 } [ %138, %137 ], [ %140, %144 ], [ %140, %139 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  invoke void @__cxa_end_catch()
          to label %156 unwind label %158

156:                                              ; preds = %154, %135, %133, %131, %129, %116
  %157 = phi { ptr, i32 } [ %54, %116 ], [ %130, %129 ], [ %132, %131 ], [ %134, %133 ], [ %136, %135 ], [ %155, %154 ]
  resume { ptr, i32 } %157

158:                                              ; preds = %154, %135, %133, %131, %129
  %159 = landingpad { ptr, i32 }
          catch ptr null
  %160 = extractvalue { ptr, i32 } %159, 0
  call void @__clang_call_terminate(ptr %160) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !123
  %6 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false), !range !195
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %23, !prof !138

8:                                                ; preds = %4
  %9 = load ptr, ptr %5, align 8, !tbaa !123
  %10 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(112) %3)
          to label %11 unwind label %16, !prof !138

11:                                               ; preds = %8
  %12 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull %9)
          to label %23 unwind label %13, !prof !138, !range !196

13:                                               ; preds = %11
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  call void @__clang_call_terminate(ptr %15) #20
  unreachable

16:                                               ; preds = %8
  %17 = landingpad { ptr, i32 }
          cleanup
  %18 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %9)
          to label %22 unwind label %19, !range !196

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  call void @__clang_call_terminate(ptr %21) #20
  unreachable

22:                                               ; preds = %16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %17

23:                                               ; preds = %11, %4
  %24 = phi i32 [ %6, %4 ], [ %10, %11 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i32 %24
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_PvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %7 = alloca %"class.xalanc_1_10::XalanTransformerOutputStream", align 8
  %8 = alloca %"class.xalanc_1_10::XalanOutputStreamPrintWriter", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #19
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #19
  invoke void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull align 8 dereferenceable(144) %7, i1 noundef zeroext false)
          to label %12 unwind label %17

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #19
  %13 = load ptr, ptr %10, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %19

14:                                               ; preds = %12
  %15 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %16 unwind label %21

16:                                               ; preds = %14
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #19
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #19
  ret i32 %15

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %14
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #19
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #19
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #19
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #19
  resume { ptr, i32 } %26
}

declare void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(144), i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPvPFmPKcmS7_EPFvS7_E(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %7 = alloca %"class.xalanc_1_10::XalanTransformerOutputStream", align 8
  %8 = alloca %"class.xalanc_1_10::XalanOutputStreamPrintWriter", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #19
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %3, ptr noundef %4, ptr noundef %5)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #19
  invoke void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull align 8 dereferenceable(144) %7, i1 noundef zeroext false)
          to label %12 unwind label %17

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #19
  %13 = load ptr, ptr %10, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %14 unwind label %19

14:                                               ; preds = %12
  %15 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %9)
          to label %16 unwind label %21

16:                                               ; preds = %14
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #19
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #19
  ret i32 %15

17:                                               ; preds = %6
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %14
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #19
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #19
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #19
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #19
  resume { ptr, i32 } %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %6 = alloca %"class.xalanc_1_10::XalanTransformerOutputStream", align 8
  %7 = alloca %"class.xalanc_1_10::XalanOutputStreamPrintWriter", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #19
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #19
  invoke void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %7, ptr noundef nonnull align 8 dereferenceable(144) %6, i1 noundef zeroext false)
          to label %11 unwind label %17

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #19
  %12 = load ptr, ptr %9, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %19

13:                                               ; preds = %11
  %14 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !123
  %15 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(112) %8)
          to label %16 unwind label %21

16:                                               ; preds = %13
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %6) #19
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #19
  ret i32 %15

17:                                               ; preds = %5
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %11
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %13
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #19
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7) #19
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %6) #19
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #19
  resume { ptr, i32 } %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = alloca i8, align 1
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanSourceTreeDOMSupport", align 8
  %7 = alloca %"class.xalanc_1_10::XalanSourceTreeParserLiaison", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectFactoryDefault", align 8
  %10 = alloca %"class.xalanc_1_10::XPathFactoryBlock", align 8
  %11 = alloca %"class.xalanc_1_10::XSLTEngineImpl", align 8
  %12 = alloca %"class.xalanc_1_10::DOMStringPrintWriter", align 8
  %13 = alloca %"class.xalanc_1_10::XalanTransformerProblemListener", align 8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  store i8 0, ptr %4, align 1, !tbaa !137
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6)
          to label %17 unwind label %52

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %7) #19
  %18 = load ptr, ptr %15, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %19 unwind label %54

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !200
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448) %7, ptr noundef %21)
          to label %22 unwind label %56

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !199
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448) %7, ptr noundef %24)
          to label %25 unwind label %56

25:                                               ; preds = %22
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr %6, i64 0, i32 1
  store ptr %7, ptr %26, align 8, !tbaa !210
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %8) #19
  %27 = load ptr, ptr %15, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296) %8, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef null)
          to label %28 unwind label %58

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 664, ptr nonnull %9) #19
  %29 = load ptr, ptr %15, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %9, ptr noundef nonnull align 8 dereferenceable(8) %29, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 5)
          to label %30 unwind label %60

30:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #19
  %31 = load ptr, ptr %15, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(8) %31, i32 noundef 20)
          to label %32 unwind label %62

32:                                               ; preds = %30
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %11) #19
  %33 = load ptr, ptr %15, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %34 unwind label %64

34:                                               ; preds = %32
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %35 unwind label %66

35:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %13) #19
  %36 = load ptr, ptr %15, align 8, !tbaa !146
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 14
  %38 = load ptr, ptr %37, align 8, !tbaa !148
  invoke void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %38, ptr noundef nonnull %12)
          to label %39 unwind label %68

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 13
  %41 = load ptr, ptr %40, align 8, !tbaa !147
  %42 = icmp eq ptr %41, null
  %43 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %11, i64 0, i32 10
  %44 = select i1 %42, ptr %13, ptr %41
  store ptr %44, ptr %43, align 8, !tbaa !213
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !171
  %48 = add i64 %47, 1
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2, i32 2
  %50 = load i64, ptr %49, align 8, !tbaa !169
  %51 = icmp ult i64 %50, %48
  br i1 %51, label %72, label %73

52:                                               ; preds = %3
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %96

54:                                               ; preds = %17
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %94

56:                                               ; preds = %22, %19
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %92

58:                                               ; preds = %25
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %90

60:                                               ; preds = %28
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %88

62:                                               ; preds = %30
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %86

64:                                               ; preds = %32
  %65 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %84

66:                                               ; preds = %34
  %67 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %82

68:                                               ; preds = %35
  %69 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %80

70:                                               ; preds = %78, %72, %73
  %71 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #19
  br label %80

72:                                               ; preds = %39
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %45, i64 noundef %48)
          to label %73 unwind label %70

73:                                               ; preds = %72, %39
  %74 = load ptr, ptr %15, align 8, !tbaa !146
  %75 = load ptr, ptr %23, align 8, !tbaa !199
  %76 = load ptr, ptr %20, align 8, !tbaa !200
  %77 = invoke noundef ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefault6createERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef %75, ptr noundef %76)
          to label %78 unwind label %70

78:                                               ; preds = %73
  store ptr %77, ptr %2, align 8, !tbaa !123
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %45, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %79 unwind label %70

79:                                               ; preds = %78
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %11) #19
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %9) #19
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %8) #19
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %7) #19
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %227

80:                                               ; preds = %70, %68
  %81 = phi { ptr, i32 } [ %71, %70 ], [ %69, %68 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  br label %82

82:                                               ; preds = %80, %66
  %83 = phi { ptr, i32 } [ %81, %80 ], [ %67, %66 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %11) #19
  br label %84

84:                                               ; preds = %82, %64
  %85 = phi { ptr, i32 } [ %83, %82 ], [ %65, %64 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #19
  br label %86

86:                                               ; preds = %84, %62
  %87 = phi { ptr, i32 } [ %85, %84 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %9) #19
  br label %88

88:                                               ; preds = %86, %60
  %89 = phi { ptr, i32 } [ %87, %86 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %8) #19
  br label %90

90:                                               ; preds = %88, %58
  %91 = phi { ptr, i32 } [ %89, %88 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %8) #19
  br label %92

92:                                               ; preds = %90, %56
  %93 = phi { ptr, i32 } [ %91, %90 ], [ %57, %56 ]
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %7) #19
  br label %94

94:                                               ; preds = %92, %54
  %95 = phi { ptr, i32 } [ %93, %92 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  br label %96

96:                                               ; preds = %94, %52
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %53, %52 ]
  %98 = extractvalue { ptr, i32 } %97, 0
  %99 = extractvalue { ptr, i32 } %97, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %100 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1012XSLExceptionE) #19
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = call ptr @__cxa_begin_catch(ptr %98) #19
  %104 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %105 = load i32, ptr %104, align 8, !tbaa !201
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %215, label %107

107:                                              ; preds = %102
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  %109 = load i64, ptr %108, align 8, !tbaa !202
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  br label %219

111:                                              ; preds = %96
  %112 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE) #19
  %113 = icmp eq i32 %99, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %111
  %115 = call ptr @__cxa_begin_catch(ptr %98) #19
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !201
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %207, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  %121 = load i64, ptr %120, align 8, !tbaa !202
  %122 = icmp eq i64 %121, 0
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8
  %125 = select i1 %122, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %124
  %126 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %125, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true)
          to label %210 unwind label %205

127:                                              ; preds = %111
  %128 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #19
  %129 = icmp eq i32 %99, %128
  br i1 %129, label %130, label %145

130:                                              ; preds = %127
  %131 = call ptr @__cxa_begin_catch(ptr %98) #19
  %132 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %133 = load i32, ptr %132, align 8, !tbaa !201
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %197, label %135

135:                                              ; preds = %130
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  %137 = load i64, ptr %136, align 8, !tbaa !202
  %138 = icmp eq i64 %137, 0
  %139 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %140 = load ptr, ptr %139, align 8
  %141 = select i1 %138, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %140
  br label %142

142:                                              ; preds = %197, %135
  %143 = phi ptr [ %141, %135 ], [ %201, %197 ]
  %144 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %143, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true)
          to label %202 unwind label %195

145:                                              ; preds = %127
  %146 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %147 = icmp eq i32 %99, %146
  br i1 %147, label %148, label %163

148:                                              ; preds = %145
  %149 = call ptr @__cxa_begin_catch(ptr %98) #19
  %150 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %151 = load i32, ptr %150, align 8, !tbaa !201
  %152 = icmp eq i32 %151, 0
  br i1 %152, label %189, label %153

153:                                              ; preds = %148
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !202
  %156 = icmp eq i64 %155, 0
  %157 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %158 = load ptr, ptr %157, align 8
  %159 = select i1 %156, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %158
  br label %160

160:                                              ; preds = %189, %153
  %161 = phi ptr [ %159, %153 ], [ %191, %189 ]
  %162 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %161, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true)
          to label %192 unwind label %187

163:                                              ; preds = %145
  %164 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE) #19
  %165 = icmp eq i32 %99, %164
  br i1 %165, label %166, label %245

166:                                              ; preds = %163
  %167 = call ptr @__cxa_begin_catch(ptr %98) #19
  %168 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %169 = load i32, ptr %168, align 8, !tbaa !201
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %181, label %171

171:                                              ; preds = %166
  %172 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  %173 = load i64, ptr %172, align 8, !tbaa !202
  %174 = icmp eq i64 %173, 0
  %175 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %176 = load ptr, ptr %175, align 8
  %177 = select i1 %174, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %176
  %178 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %177, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true)
          to label %184 unwind label %179

179:                                              ; preds = %171, %181
  %180 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %245 unwind label %261

181:                                              ; preds = %166
  %182 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %183 = load ptr, ptr %182, align 8, !tbaa !149
  invoke fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %183, ptr noundef nonnull align 8 dereferenceable(12) %167, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %184 unwind label %179

184:                                              ; preds = %181, %171
  invoke void @__cxa_end_catch()
          to label %227 unwind label %185

185:                                              ; preds = %184
  %186 = landingpad { ptr, i32 }
          cleanup
  br label %245

187:                                              ; preds = %160
  %188 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %245 unwind label %261

189:                                              ; preds = %148
  %190 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %149, i64 0, i32 4
  %191 = load ptr, ptr %190, align 8, !tbaa !206
  br label %160

192:                                              ; preds = %160
  invoke void @__cxa_end_catch()
          to label %227 unwind label %193

193:                                              ; preds = %192
  %194 = landingpad { ptr, i32 }
          cleanup
  br label %245

195:                                              ; preds = %142, %197
  %196 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %245 unwind label %261

197:                                              ; preds = %130
  %198 = load ptr, ptr %131, align 8, !tbaa !120
  %199 = getelementptr inbounds ptr, ptr %198, i64 2
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef ptr %200(ptr noundef nonnull align 8 dereferenceable(24) %131)
          to label %142 unwind label %195

202:                                              ; preds = %142
  invoke void @__cxa_end_catch()
          to label %227 unwind label %203

203:                                              ; preds = %202
  %204 = landingpad { ptr, i32 }
          cleanup
  br label %245

205:                                              ; preds = %119, %207
  %206 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %245 unwind label %261

207:                                              ; preds = %114
  %208 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %209 = load ptr, ptr %208, align 8, !tbaa !149
  invoke fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %209, ptr noundef nonnull align 8 dereferenceable(56) %115, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %210 unwind label %205

210:                                              ; preds = %207, %119
  invoke void @__cxa_end_catch()
          to label %227 unwind label %211

211:                                              ; preds = %210
  %212 = landingpad { ptr, i32 }
          cleanup
  br label %245

213:                                              ; preds = %219
  %214 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %245 unwind label %261

215:                                              ; preds = %102
  %216 = getelementptr inbounds %"class.xalanc_1_10::XSLException", ptr %103, i64 0, i32 1, i32 0, i32 1
  %217 = load i64, ptr %216, align 8, !tbaa !202
  %218 = getelementptr inbounds %"class.xalanc_1_10::XSLException", ptr %103, i64 0, i32 1, i32 0, i32 3
  br label %219

219:                                              ; preds = %107, %215
  %220 = phi ptr [ %110, %107 ], [ %218, %215 ]
  %221 = phi i64 [ %109, %107 ], [ %217, %215 ]
  %222 = icmp eq i64 %221, 0
  %223 = load ptr, ptr %220, align 8
  %224 = select i1 %222, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %223
  %225 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %224, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true)
          to label %226 unwind label %213

226:                                              ; preds = %219
  invoke void @__cxa_end_catch()
          to label %227 unwind label %243

227:                                              ; preds = %226, %210, %202, %192, %184, %79
  %228 = phi i32 [ 0, %79 ], [ -4, %184 ], [ -3, %192 ], [ -2, %202 ], [ -2, %210 ], [ -1, %226 ]
  %229 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  %230 = load i64, ptr %229, align 8, !tbaa !203
  %231 = icmp eq i64 %230, 0
  br i1 %231, label %242, label %232

232:                                              ; preds = %227
  %233 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %234 = load ptr, ptr %233, align 8, !tbaa !204
  %235 = load ptr, ptr %5, align 8, !tbaa !205
  %236 = load ptr, ptr %235, align 8, !tbaa !120
  %237 = getelementptr inbounds ptr, ptr %236, i64 3
  %238 = load ptr, ptr %237, align 8
  invoke void %238(ptr noundef nonnull align 8 dereferenceable(8) %235, ptr noundef %234)
          to label %242 unwind label %239

239:                                              ; preds = %232
  %240 = landingpad { ptr, i32 }
          catch ptr null
  %241 = extractvalue { ptr, i32 } %240, 0
  call void @__clang_call_terminate(ptr %241) #20
  unreachable

242:                                              ; preds = %227, %232
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  ret i32 %228

243:                                              ; preds = %226
  %244 = landingpad { ptr, i32 }
          cleanup
  br label %245

245:                                              ; preds = %213, %205, %195, %187, %179, %243, %211, %203, %193, %185, %163
  %246 = phi { ptr, i32 } [ %97, %163 ], [ %186, %185 ], [ %194, %193 ], [ %204, %203 ], [ %212, %211 ], [ %244, %243 ], [ %180, %179 ], [ %188, %187 ], [ %196, %195 ], [ %206, %205 ], [ %214, %213 ]
  %247 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  %248 = load i64, ptr %247, align 8, !tbaa !203
  %249 = icmp eq i64 %248, 0
  br i1 %249, label %260, label %250

250:                                              ; preds = %245
  %251 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !204
  %253 = load ptr, ptr %5, align 8, !tbaa !205
  %254 = load ptr, ptr %253, align 8, !tbaa !120
  %255 = getelementptr inbounds ptr, ptr %254, i64 3
  %256 = load ptr, ptr %255, align 8
  invoke void %256(ptr noundef nonnull align 8 dereferenceable(8) %253, ptr noundef %252)
          to label %260 unwind label %257

257:                                              ; preds = %250
  %258 = landingpad { ptr, i32 }
          catch ptr null
  %259 = extractvalue { ptr, i32 } %258, 0
  call void @__clang_call_terminate(ptr %259) #20
  unreachable

260:                                              ; preds = %245, %250
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  resume { ptr, i32 } %246

261:                                              ; preds = %213, %205, %195, %187, %179
  %262 = landingpad { ptr, i32 }
          catch ptr null
  %263 = extractvalue { ptr, i32 } %262, 0
  call void @__clang_call_terminate(ptr %263) #20
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #9 comdat align 2 !prof !253 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !151
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !254

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %33, !prof !255

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !152
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !256

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !153
  %17 = getelementptr inbounds i8, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !151
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %33, label %20, !prof !256

20:                                               ; preds = %14
  %21 = getelementptr inbounds i8, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %25, %22 ], [ %21, %20 ]
  %24 = load i8, ptr %2, align 1, !tbaa !137
  store i8 %24, ptr %23, align 1, !tbaa !137
  %25 = getelementptr inbounds i8, ptr %23, i64 1
  %26 = load i64, ptr %4, align 8, !tbaa !151
  %27 = add i64 %26, 1
  store i64 %27, ptr %4, align 8, !tbaa !151
  %28 = icmp eq ptr %25, %17
  br i1 %28, label %33, label %22, !prof !257, !llvm.loop !258

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !151
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  store i64 %32, ptr %4, align 8, !tbaa !151
  br label %33

33:                                               ; preds = %22, %14, %29, %7
  ret void
}

declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefault6createERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #10

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = load ptr, ptr %0, align 8, !tbaa !120
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %8 = load ptr, ptr %0, align 8, !tbaa !120
  %9 = getelementptr inbounds ptr, ptr %8, i64 23
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef nonnull align 8 dereferenceable(36) ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %12 unwind label %47

12:                                               ; preds = %3
  %13 = load ptr, ptr %1, align 8, !tbaa !120
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(12) %1)
          to label %17 unwind label %49

17:                                               ; preds = %12
  %18 = zext i32 %16 to i64
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %18, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %20 unwind label %49

20:                                               ; preds = %17
  %21 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 150, ptr noundef nonnull align 8 dereferenceable(36) %19)
          to label %22 unwind label %49

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %21, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !202
  %25 = icmp eq i64 %24, 0
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %21, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8
  %28 = select i1 %25, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %27
  %29 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %28, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %30 unwind label %49

30:                                               ; preds = %22
  %31 = load ptr, ptr %0, align 8, !tbaa !120
  %32 = getelementptr inbounds ptr, ptr %31, i64 24
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %38 unwind label %35

35:                                               ; preds = %30
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #20
  unreachable

38:                                               ; preds = %30
  %39 = load ptr, ptr %0, align 8, !tbaa !120
  %40 = getelementptr inbounds ptr, ptr %39, i64 24
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %46 unwind label %43

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  tail call void @__clang_call_terminate(ptr %45) #20
  unreachable

46:                                               ; preds = %38
  ret void

47:                                               ; preds = %3
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %58

49:                                               ; preds = %22, %20, %17, %12
  %50 = landingpad { ptr, i32 }
          cleanup
  %51 = load ptr, ptr %0, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 24
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef zeroext i1 %53(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %58 unwind label %55

55:                                               ; preds = %49
  %56 = landingpad { ptr, i32 }
          catch ptr null
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #20
  unreachable

58:                                               ; preds = %47, %49
  %59 = phi { ptr, i32 } [ %48, %47 ], [ %50, %49 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !120
  %61 = getelementptr inbounds ptr, ptr %60, i64 24
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %67 unwind label %64

64:                                               ; preds = %58
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #20
  unreachable

67:                                               ; preds = %58
  resume { ptr, i32 } %59
}

declare void @__cxa_end_catch() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = alloca i16, align 2
  %5 = load ptr, ptr %0, align 8, !tbaa !120
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #19
  store i16 0, ptr %4, align 2, !tbaa !259
  %9 = invoke noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %10 unwind label %73

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !120
  %12 = getelementptr inbounds ptr, ptr %11, i64 23
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef nonnull align 8 dereferenceable(36) ptr %13(ptr noundef nonnull align 8 dereferenceable(24) %0)
          to label %15 unwind label %73

15:                                               ; preds = %10
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %14, i32 noundef 0, i32 noundef -1)
          to label %16 unwind label %46

16:                                               ; preds = %15
  %17 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str)
          to label %18 unwind label %46

18:                                               ; preds = %16
  %19 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull @.str, i32 noundef %17)
          to label %20 unwind label %46

20:                                               ; preds = %18
  %21 = load ptr, ptr %1, align 8, !tbaa !120
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %25 unwind label %46

25:                                               ; preds = %20
  %26 = icmp eq ptr %9, null
  %27 = select i1 %26, ptr %4, ptr %9
  %28 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %29 unwind label %46

29:                                               ; preds = %25
  %30 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1)
          to label %31 unwind label %46

31:                                               ; preds = %29
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %14, i64 0, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !202
  %34 = icmp eq i64 %33, 0
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %14, i64 0, i32 3
  %36 = load ptr, ptr %35, align 8
  %37 = select i1 %34, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %36
  invoke void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtS2_llS2_RNS_14XalanDOMStringE(ptr noundef %24, ptr noundef nonnull %27, i64 noundef %28, i64 noundef %30, ptr noundef %37, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %38 unwind label %46

38:                                               ; preds = %31
  %39 = load ptr, ptr %0, align 8, !tbaa !120
  %40 = getelementptr inbounds ptr, ptr %39, i64 24
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %56 unwind label %43

43:                                               ; preds = %38
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #20
  unreachable

46:                                               ; preds = %31, %29, %25, %20, %18, %16, %15
  %47 = landingpad { ptr, i32 }
          cleanup
  %48 = load ptr, ptr %0, align 8, !tbaa !120
  %49 = getelementptr inbounds ptr, ptr %48, i64 24
  %50 = load ptr, ptr %49, align 8
  %51 = invoke noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %14)
          to label %55 unwind label %52

52:                                               ; preds = %46
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #20
  unreachable

55:                                               ; preds = %46
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  br label %75

56:                                               ; preds = %38
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %8, i64 0, i32 1
  %58 = load i64, ptr %57, align 8, !tbaa !202
  %59 = icmp eq i64 %58, 0
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %8, i64 0, i32 3
  %61 = load ptr, ptr %60, align 8
  %62 = select i1 %59, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %61
  %63 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %62, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true)
          to label %64 unwind label %73

64:                                               ; preds = %56
  %65 = load ptr, ptr %0, align 8, !tbaa !120
  %66 = getelementptr inbounds ptr, ptr %65, i64 24
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef zeroext i1 %67(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %72 unwind label %69

69:                                               ; preds = %64
  %70 = landingpad { ptr, i32 }
          catch ptr null
  %71 = extractvalue { ptr, i32 } %70, 0
  call void @__clang_call_terminate(ptr %71) #20
  unreachable

72:                                               ; preds = %64
  ret void

73:                                               ; preds = %56, %10, %3
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %75

75:                                               ; preds = %73, %55
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %47, %55 ]
  %77 = load ptr, ptr %0, align 8, !tbaa !120
  %78 = getelementptr inbounds ptr, ptr %77, i64 24
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef zeroext i1 %79(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %84 unwind label %81

81:                                               ; preds = %75
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  call void @__clang_call_terminate(ptr %83) #20
  unreachable

84:                                               ; preds = %75
  resume { ptr, i32 } %76
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !187 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !170
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %5, ptr noundef %8, ptr nonnull %3)
  %10 = load ptr, ptr %4, align 8, !tbaa !170
  %11 = load i64, ptr %6, align 8, !tbaa !171
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !149
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call fastcc void @_ZN11xalanc_1_10L16LoadErrorMessageERNS_21XPathExecutionContextENS_13XalanMessages5CodesERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef 151, ptr noundef nonnull align 8 dereferenceable(32) %17)
  br label %38

18:                                               ; preds = %2
  %19 = getelementptr inbounds ptr, ptr %9, i64 1
  %20 = icmp eq ptr %12, %19
  br i1 %20, label %25, label %21

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %12 to i64
  %24 = sub i64 %23, %22
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %9, ptr nonnull align 8 %19, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %18, %21
  %26 = load i64, ptr %6, align 8, !tbaa !171
  %27 = add i64 %26, -1
  store i64 %27, ptr %6, align 8, !tbaa !171
  %28 = load ptr, ptr %3, align 8, !tbaa !123
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !146
  %33 = load ptr, ptr %28, align 8, !tbaa !120
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull align 8 dereferenceable(8) %28) #19
  %35 = load ptr, ptr %32, align 8, !tbaa !120
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  call void %37(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %28)
  br label %38

38:                                               ; preds = %30, %25, %14
  %39 = phi i32 [ -1, %14 ], [ 0, %25 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: cold mustprogress uwtable
define internal fastcc void @_ZN11xalanc_1_10L16LoadErrorMessageERNS_21XPathExecutionContextENS_13XalanMessages5CodesERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #4 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 1
  %5 = load ptr, ptr %0, align 8, !tbaa !120
  %6 = getelementptr inbounds ptr, ptr %5, i64 23
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %9 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef %1)
          to label %10 unwind label %11

10:                                               ; preds = %3
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %26 unwind label %13

11:                                               ; preds = %21, %3
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %37

13:                                               ; preds = %10
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = tail call ptr @__cxa_begin_catch(ptr %15) #19
  %17 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef nonnull @.str.1)
          to label %18 unwind label %35

18:                                               ; preds = %13
  %19 = add i32 %17, 1
  %20 = zext i32 %19 to i64
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %4) #19
  store i8 0, ptr %4, align 1, !tbaa !260
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %21 unwind label %35

21:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %2, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !153
  %24 = zext i32 %17 to i64
  %25 = call ptr @strncpy(ptr noundef %23, ptr noundef nonnull dereferenceable(48) @.str.1, i64 noundef %24) #19
  invoke void @__cxa_end_catch()
          to label %26 unwind label %11

26:                                               ; preds = %21, %10
  %27 = load ptr, ptr %0, align 8, !tbaa !120
  %28 = getelementptr inbounds ptr, ptr %27, i64 24
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef zeroext i1 %29(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %34 unwind label %31

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %18, %13
  %36 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %37 unwind label %47

37:                                               ; preds = %35, %11
  %38 = phi { ptr, i32 } [ %12, %11 ], [ %36, %35 ]
  %39 = load ptr, ptr %0, align 8, !tbaa !120
  %40 = getelementptr inbounds ptr, ptr %39, i64 24
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %46 unwind label %43

43:                                               ; preds = %37
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #20
  unreachable

46:                                               ; preds = %37
  resume { ptr, i32 } %38

47:                                               ; preds = %35
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #20
  unreachable
}

declare noundef ptr @_ZN11xalanc_1_1021XercesDOMParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZNK11xalanc_1_1012XSLException13defaultFormatERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !119 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !175
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %5, ptr noundef %8, ptr nonnull %3)
  %10 = load ptr, ptr %4, align 8, !tbaa !167
  %11 = load i64, ptr %6, align 8, !tbaa !175
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %14, label %18, !prof !166

14:                                               ; preds = %2
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %16 = load ptr, ptr %15, align 8, !tbaa !149
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call fastcc void @_ZN11xalanc_1_10L16LoadErrorMessageERNS_21XPathExecutionContextENS_13XalanMessages5CodesERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %16, i32 noundef 152, ptr noundef nonnull align 8 dereferenceable(32) %17)
  br label %38

18:                                               ; preds = %2
  %19 = getelementptr inbounds ptr, ptr %9, i64 1
  %20 = icmp eq ptr %12, %19
  br i1 %20, label %25, label %21, !prof !138

21:                                               ; preds = %18
  %22 = ptrtoint ptr %19 to i64
  %23 = ptrtoint ptr %12 to i64
  %24 = sub i64 %23, %22
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %9, ptr nonnull align 8 %19, i64 %24, i1 false)
  br label %25

25:                                               ; preds = %18, %21
  %26 = load i64, ptr %6, align 8, !tbaa !175
  %27 = add i64 %26, -1
  store i64 %27, ptr %6, align 8, !tbaa !175
  %28 = load ptr, ptr %3, align 8, !tbaa !123
  %29 = icmp eq ptr %28, null
  br i1 %29, label %38, label %30, !prof !166

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !146
  %33 = load ptr, ptr %28, align 8, !tbaa !120
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull align 8 dereferenceable(8) %28) #19, !prof !262
  %35 = load ptr, ptr %32, align 8, !tbaa !120
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  call void %37(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull %28), !prof !168
  br label %38

38:                                               ; preds = %30, %25, %14
  %39 = phi i32 [ -1, %14 ], [ 0, %25 ], [ 0, %30 ]
  ret i32 %39
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = alloca %"struct.std::pair.8", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !146
  %7 = load ptr, ptr %6, align 8, !tbaa !120
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 40)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %6, i32 noundef 0, i32 noundef -1)
          to label %23 unwind label %11

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %10, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %6, align 8, !tbaa !120
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %10)
          to label %21 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #20
  unreachable

21:                                               ; preds = %29, %32, %11, %14
  %22 = phi { ptr, i32 } [ %12, %14 ], [ %12, %11 ], [ %30, %32 ], [ %30, %29 ]
  resume { ptr, i32 } %22

23:                                               ; preds = %3
  %24 = load ptr, ptr %5, align 8, !tbaa !146
  %25 = load ptr, ptr %24, align 8, !tbaa !120
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %24, i64 noundef 40)
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %28, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %24, i32 noundef 0, i32 noundef -1)
          to label %39 unwind label %29

29:                                               ; preds = %23
  %30 = landingpad { ptr, i32 }
          cleanup
  %31 = icmp eq ptr %28, null
  br i1 %31, label %21, label %32

32:                                               ; preds = %29
  %33 = load ptr, ptr %24, align 8, !tbaa !120
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull %28)
          to label %21 unwind label %36

36:                                               ; preds = %32
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #20
  unreachable

39:                                               ; preds = %23
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  store ptr %10, ptr %4, align 8, !tbaa !183
  %41 = getelementptr inbounds %"struct.std::pair.8", ptr %4, i64 0, i32 1
  store ptr %28, ptr %41, align 8, !tbaa !185
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %40, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  %8 = load ptr, ptr %6, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef -1)
          to label %9 unwind label %39

9:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %10 unwind label %41

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !203
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = load ptr, ptr %5, align 8, !tbaa !205
  %18 = load ptr, ptr %17, align 8, !tbaa !120
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %16)
          to label %24 unwind label %21

21:                                               ; preds = %14
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #20
  unreachable

24:                                               ; preds = %10, %14
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !203
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !204
  %31 = load ptr, ptr %4, align 8, !tbaa !205
  %32 = load ptr, ptr %31, align 8, !tbaa !120
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %30)
          to label %38 unwind label %35

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #20
  unreachable

38:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  ret void

39:                                               ; preds = %3
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %56

41:                                               ; preds = %9
  %42 = landingpad { ptr, i32 }
          cleanup
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  %44 = load i64, ptr %43, align 8, !tbaa !203
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %56, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !204
  %49 = load ptr, ptr %5, align 8, !tbaa !205
  %50 = load ptr, ptr %49, align 8, !tbaa !120
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %46
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #20
  unreachable

56:                                               ; preds = %46, %41, %39
  %57 = phi { ptr, i32 } [ %40, %39 ], [ %42, %41 ], [ %42, %46 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 2
  %59 = load i64, ptr %58, align 8, !tbaa !203
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %4, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !204
  %64 = load ptr, ptr %4, align 8, !tbaa !205
  %65 = load ptr, ptr %64, align 8, !tbaa !120
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  invoke void %67(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %63)
          to label %71 unwind label %68

68:                                               ; preds = %61
  %69 = landingpad { ptr, i32 }
          catch ptr null
  %70 = extractvalue { ptr, i32 } %69, 0
  call void @__clang_call_terminate(ptr %70) #20
  unreachable

71:                                               ; preds = %56, %61
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  resume { ptr, i32 } %57
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1016XalanTransformer19removeTraceListenerEPNS_13TraceListenerE(ptr nocapture noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !187 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !160
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !263
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %5, ptr noundef %8, ptr nonnull %3)
  %10 = load ptr, ptr %4, align 8, !tbaa !160
  %11 = load i64, ptr %6, align 8, !tbaa !263
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = icmp ne ptr %9, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = getelementptr inbounds ptr, ptr %9, i64 1
  %16 = icmp eq ptr %12, %15
  br i1 %16, label %21, label %17

17:                                               ; preds = %14
  %18 = ptrtoint ptr %15 to i64
  %19 = ptrtoint ptr %12 to i64
  %20 = sub i64 %19, %18
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %9, ptr nonnull align 8 %15, i64 %20, i1 false)
  br label %21

21:                                               ; preds = %14, %17
  %22 = load i64, ptr %6, align 8, !tbaa !263
  %23 = add i64 %22, -1
  store i64 %23, ptr %6, align 8, !tbaa !263
  br label %24

24:                                               ; preds = %21, %2
  ret i1 %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1016XalanTransformer21createDocumentBuilderERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 align 2 !prof !187 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !175
  %7 = add i64 %6, 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !165
  %10 = icmp ult i64 %9, %7
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %7)
  br label %12

12:                                               ; preds = %2, %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !146
  %15 = tail call noundef ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(36) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr %15, ptr %3, align 8, !tbaa !123
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %15
}

declare noundef ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer22destroyDocumentBuilderEPNS_20XalanDocumentBuilderE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !187 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1), !range !196
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer23installExternalFunctionERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #4 align 2 !prof !187 {
  %5 = alloca %"struct.std::pair", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !146
  %9 = tail call noundef ptr @_ZN11xalanc_1_1017XalanQNameByValue6createERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %10 = load ptr, ptr %7, align 8, !tbaa !146
  %11 = load ptr, ptr %3, align 8, !tbaa !120
  %12 = getelementptr inbounds ptr, ptr %11, i64 7
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %10)
  store ptr %9, ptr %5, align 8, !tbaa !264
  %15 = getelementptr inbounds %"struct.std::pair", ptr %5, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(16) %5)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1017XalanQNameByValue6createERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #4 align 2 !prof !187 {
  tail call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret void
}

declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer25uninstallExternalFunctionERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %4 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !176
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  br label %12

11:                                               ; preds = %79, %3
  ret void

12:                                               ; preds = %8, %79
  %13 = phi i64 [ 0, %8 ], [ %80, %79 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !162
  %15 = getelementptr inbounds %"struct.std::pair", ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !264
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %19 = load ptr, ptr %9, align 8, !tbaa !162
  %20 = getelementptr inbounds %"struct.std::pair", ptr %19, i64 %13
  %21 = load ptr, ptr %20, align 8, !tbaa !264
  %22 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %21)
          to label %23 unwind label %74

23:                                               ; preds = %18, %12
  %24 = phi i1 [ %22, %18 ], [ false, %12 ]
  br i1 %17, label %26, label %25

25:                                               ; preds = %23
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br label %26

26:                                               ; preds = %23, %25
  br i1 %24, label %27, label %79

27:                                               ; preds = %26
  %28 = load ptr, ptr %9, align 8, !tbaa !162
  %29 = getelementptr inbounds %"struct.std::pair", ptr %28, i64 %13
  %30 = load ptr, ptr %29, align 8, !tbaa !264
  %31 = icmp eq ptr %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %27
  %33 = load ptr, ptr %10, align 8, !tbaa !146
  %34 = load ptr, ptr %30, align 8, !tbaa !120
  %35 = load ptr, ptr %34, align 8
  call void %35(ptr noundef nonnull align 8 dereferenceable(88) %30) #19
  %36 = load ptr, ptr %33, align 8, !tbaa !120
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %30)
  br label %39

39:                                               ; preds = %27, %32
  %40 = load ptr, ptr %9, align 8, !tbaa !162
  %41 = getelementptr inbounds %"struct.std::pair", ptr %40, i64 %13, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !179
  %43 = icmp eq ptr %42, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load ptr, ptr %10, align 8, !tbaa !146
  %46 = load ptr, ptr %42, align 8, !tbaa !120
  %47 = load ptr, ptr %46, align 8
  call void %47(ptr noundef nonnull align 8 dereferenceable(8) %42) #19
  %48 = load ptr, ptr %45, align 8, !tbaa !120
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  call void %50(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull %42)
  br label %51

51:                                               ; preds = %39, %44
  %52 = load ptr, ptr %9, align 8, !tbaa !162
  %53 = getelementptr inbounds %"struct.std::pair", ptr %52, i64 %13
  %54 = getelementptr inbounds %"struct.std::pair", ptr %53, i64 1
  %55 = load i64, ptr %5, align 8, !tbaa !176
  %56 = getelementptr inbounds %"struct.std::pair", ptr %52, i64 %55
  %57 = ptrtoint ptr %56 to i64
  %58 = ptrtoint ptr %54 to i64
  %59 = sub i64 %57, %58
  %60 = ashr exact i64 %59, 4
  %61 = icmp sgt i64 %60, 0
  br i1 %61, label %62, label %76

62:                                               ; preds = %51, %62
  %63 = phi i64 [ %72, %62 ], [ %60, %51 ]
  %64 = phi ptr [ %71, %62 ], [ %53, %51 ]
  %65 = phi ptr [ %70, %62 ], [ %54, %51 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !264
  store ptr %66, ptr %64, align 8, !tbaa !264
  %67 = getelementptr inbounds %"struct.std::pair", ptr %65, i64 0, i32 1
  %68 = load ptr, ptr %67, align 8, !tbaa !179
  %69 = getelementptr inbounds %"struct.std::pair", ptr %64, i64 0, i32 1
  store ptr %68, ptr %69, align 8, !tbaa !179
  %70 = getelementptr inbounds %"struct.std::pair", ptr %65, i64 1
  %71 = getelementptr inbounds %"struct.std::pair", ptr %64, i64 1
  %72 = add nsw i64 %63, -1
  %73 = icmp sgt i64 %63, 1
  br i1 %73, label %62, label %76, !llvm.loop !265

74:                                               ; preds = %18
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #19
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  resume { ptr, i32 } %75

76:                                               ; preds = %62, %51
  %77 = load i64, ptr %5, align 8, !tbaa !176
  %78 = add i64 %77, -1
  store i64 %78, ptr %5, align 8, !tbaa !176
  br label %79

79:                                               ; preds = %76, %26
  %80 = add nuw i64 %13, 1
  %81 = load i64, ptr %5, align 8, !tbaa !176
  %82 = icmp ult i64 %80, %81
  br i1 %82, label %12, label %11, !llvm.loop !266
}

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #11 comdat align 2 !prof !267 {
  %3 = load ptr, ptr %0, align 8, !tbaa !120
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !268
  %7 = load ptr, ptr %1, align 8, !tbaa !120
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !269
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %10)
  br i1 %11, label %12, label %22, !prof !270

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !120
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !271
  %17 = load ptr, ptr %1, align 8, !tbaa !120
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !272
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #4 align 2 !prof !187 {
  tail call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret void
}

declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1016XalanTransformer9getIndentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0) local_unnamed_addr #4 align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds ptr, ptr %4, i64 75
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(2069) %3)
  ret i32 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer9setIndentEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !187 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds ptr, ptr %5, i64 76
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(2069) %4, i32 noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1016XalanTransformer13getEscapeURLsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0) local_unnamed_addr #4 align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds ptr, ptr %4, i64 122
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(2069) %3)
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %7, 2
  %11 = select i1 %10, i32 2, i32 %9
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer13setEscapeURLsENS0_11eEscapeURLsE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !187 {
  %3 = icmp eq i32 %1, 1
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, i32 2, i32 %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds ptr, ptr %9, i64 123
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(2069) %8, i32 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1016XalanTransformer14getOmitMETATagEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0) local_unnamed_addr #4 align 2 !prof !187 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = load ptr, ptr %3, align 8, !tbaa !120
  %5 = getelementptr inbounds ptr, ptr %4, i64 124
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(2069) %3)
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %7, 2
  %11 = select i1 %10, i32 2, i32 %9
  ret i32 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer14setOmitMETATagENS0_12eOmitMETATagE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #4 align 2 !prof !187 {
  %3 = icmp eq i32 %1, 1
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, i32 2, i32 %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !149
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds ptr, ptr %9, i64 125
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(2069) %8, i32 noundef %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer5resetEv(ptr nocapture noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !149
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %3, i64 0, i32 1, i32 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %3, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !273
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %3, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !276
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %7 = load ptr, ptr %3, align 8, !tbaa !120
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(2069) %3)
          to label %10 unwind label %20, !prof !356

10:                                               ; preds = %1
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !178
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %30, label %15, !prof !138

15:                                               ; preds = %10
  %16 = load ptr, ptr %11, align 8, !tbaa !164
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  br label %31

18:                                               ; preds = %49
  %19 = icmp eq i64 %52, 0
  br i1 %19, label %30, label %28, !prof !138

20:                                               ; preds = %1
  %21 = landingpad { ptr, i32 }
          catch ptr null
  br label %24

22:                                               ; preds = %44, %35
  %23 = landingpad { ptr, i32 }
          catch ptr null
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  %26 = extractvalue { ptr, i32 } %25, 0
  %27 = tail call ptr @__cxa_begin_catch(ptr %26) #19
  tail call void @__cxa_end_catch()
  br label %30

28:                                               ; preds = %18
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 1
  store i64 0, ptr %29, align 8, !tbaa !178
  br label %30

30:                                               ; preds = %10, %28, %18, %24
  ret void

31:                                               ; preds = %15, %49
  %32 = phi ptr [ %16, %15 ], [ %50, %49 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !183
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %17, align 8, !tbaa !146
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #19
  %37 = load ptr, ptr %36, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull %33)
          to label %40 unwind label %22

40:                                               ; preds = %31, %35
  %41 = getelementptr inbounds %"struct.std::pair.8", ptr %32, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !185
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %40
  %45 = load ptr, ptr %17, align 8, !tbaa !146
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %42) #19
  %46 = load ptr, ptr %45, align 8, !tbaa !120
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef nonnull %42)
          to label %49 unwind label %22

49:                                               ; preds = %40, %44
  %50 = getelementptr inbounds %"struct.std::pair.8", ptr %32, i64 1
  %51 = load ptr, ptr %11, align 8, !tbaa !164
  %52 = load i64, ptr %12, align 8, !tbaa !178
  %53 = getelementptr inbounds %"struct.std::pair.8", ptr %51, i64 %52
  %54 = icmp eq ptr %50, %53
  br i1 %54, label %18, label %31, !prof !138, !llvm.loop !357
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %2 = load ptr, ptr %0, align 8, !tbaa !358
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !149
  %5 = load ptr, ptr %4, align 8, !tbaa !120
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(2069) %4)
          to label %8 unwind label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !358
  invoke void @_ZN11xalanc_1_1016XalanTransformer5resetEv(ptr noundef nonnull align 8 dereferenceable(384) %9)
          to label %10 unwind label %11

10:                                               ; preds = %8
  ret void

11:                                               ; preds = %8, %1
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #20
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(112) %4) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %6 = alloca i8, align 1
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", align 8
  %9 = alloca %"class.xalanc_1_10::XObjectFactoryDefault", align 8
  %10 = alloca %"class.xalanc_1_10::XPathFactoryBlock", align 8
  %11 = alloca %"class.xalanc_1_10::XSLTEngineImpl", align 8
  %12 = alloca %"class.xalanc_1_10::DOMStringPrintWriter", align 8
  %13 = alloca %"class.xalanc_1_10::XalanTransformerProblemListener", align 8
  %14 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %15 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %16 = alloca %"class.xalanc_1_10::StylesheetConstructionContextDefault", align 8
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  store i8 0, ptr %6, align 1, !tbaa !137
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %17, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #19
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !146
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %19)
  %20 = load ptr, ptr %1, align 8, !tbaa !120
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %24 unwind label %77, !prof !360

24:                                               ; preds = %5
  %25 = load ptr, ptr %18, align 8, !tbaa !146
  %26 = load ptr, ptr %1, align 8, !tbaa !120
  %27 = getelementptr inbounds ptr, ptr %26, i64 3
  %28 = load ptr, ptr %27, align 8
  %29 = invoke noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %30 unwind label %79, !prof !361

30:                                               ; preds = %24
  %31 = load ptr, ptr %29, align 8, !tbaa !120
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  %34 = invoke noundef nonnull align 8 dereferenceable(8) ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %35 unwind label %81, !prof !362

35:                                               ; preds = %30
  %36 = load ptr, ptr %29, align 8, !tbaa !120
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef nonnull align 8 dereferenceable(8) ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %40 unwind label %83, !prof !363

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %42 = load ptr, ptr %41, align 8, !tbaa !149
  %43 = load ptr, ptr %39, align 8, !tbaa !120
  %44 = getelementptr inbounds ptr, ptr %43, i64 5
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(16) %42)
          to label %46 unwind label %83, !prof !364

46:                                               ; preds = %40
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %48 = load ptr, ptr %47, align 8, !tbaa !200
  %49 = load ptr, ptr %39, align 8, !tbaa !120
  %50 = getelementptr inbounds ptr, ptr %49, i64 15
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %48)
          to label %52 unwind label %83, !prof !365

52:                                               ; preds = %46
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 10
  %54 = load ptr, ptr %53, align 8, !tbaa !199
  %55 = load ptr, ptr %39, align 8, !tbaa !120
  %56 = getelementptr inbounds ptr, ptr %55, i64 17
  %57 = load ptr, ptr %56, align 8
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef %54)
          to label %58 unwind label %83, !prof !366

58:                                               ; preds = %52
  %59 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 8
  %60 = load i8, ptr %59, align 8, !tbaa !139, !range !197, !noundef !198
  %61 = icmp ne i8 %60, 0
  %62 = load ptr, ptr %39, align 8, !tbaa !120
  %63 = getelementptr inbounds ptr, ptr %62, i64 12
  %64 = load ptr, ptr %63, align 8
  invoke void %64(ptr noundef nonnull align 8 dereferenceable(8) %39, i1 noundef zeroext %61)
          to label %65 unwind label %83, !prof !367

65:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %8) #19
  %66 = load ptr, ptr %18, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296) %8, ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef null)
          to label %67 unwind label %85, !prof !138

67:                                               ; preds = %65
  %68 = load ptr, ptr %1, align 8, !tbaa !120
  %69 = getelementptr inbounds ptr, ptr %68, i64 4
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef nonnull align 8 dereferenceable(36) ptr %70(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %72 unwind label %87, !prof !368

72:                                               ; preds = %67
  %73 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %71, i64 0, i32 1
  %74 = load i32, ptr %73, align 8, !tbaa !201
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %89, label %76, !prof !166

76:                                               ; preds = %72
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(296) %8, ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef %23)
          to label %89 unwind label %87, !prof !138

77:                                               ; preds = %5
  %78 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %321

79:                                               ; preds = %24
  %80 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %321

81:                                               ; preds = %30
  %82 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %309

83:                                               ; preds = %58, %52, %46, %40, %35
  %84 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %309

85:                                               ; preds = %65
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %307

87:                                               ; preds = %76, %67
  %88 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %305

89:                                               ; preds = %76, %72
  %90 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5, i32 1
  %91 = load i64, ptr %90, align 8, !tbaa !176
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %95, label %93, !prof !138

93:                                               ; preds = %89
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5, i32 3
  br label %99

95:                                               ; preds = %120, %89
  call void @llvm.lifetime.start.p0(i64 664, ptr nonnull %9) #19
  %96 = load ptr, ptr %18, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %9, ptr noundef nonnull align 8 dereferenceable(8) %96, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 5)
          to label %124 unwind label %149, !prof !138

97:                                               ; preds = %116, %108, %99
  %98 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %305

99:                                               ; preds = %93, %120
  %100 = phi i64 [ 0, %93 ], [ %121, %120 ]
  %101 = load ptr, ptr %94, align 8, !tbaa !162
  %102 = getelementptr inbounds %"struct.std::pair", ptr %101, i64 %100
  %103 = load ptr, ptr %102, align 8, !tbaa !264
  %104 = load ptr, ptr %103, align 8, !tbaa !120
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef nonnull align 8 dereferenceable(36) ptr %106(ptr noundef nonnull align 8 dereferenceable(88) %103)
          to label %108 unwind label %97

108:                                              ; preds = %99
  %109 = load ptr, ptr %94, align 8, !tbaa !162
  %110 = getelementptr inbounds %"struct.std::pair", ptr %109, i64 %100
  %111 = load ptr, ptr %110, align 8, !tbaa !264
  %112 = load ptr, ptr %111, align 8, !tbaa !120
  %113 = getelementptr inbounds ptr, ptr %112, i64 2
  %114 = load ptr, ptr %113, align 8
  %115 = invoke noundef nonnull align 8 dereferenceable(36) ptr %114(ptr noundef nonnull align 8 dereferenceable(88) %111)
          to label %116 unwind label %97

116:                                              ; preds = %108
  %117 = load ptr, ptr %94, align 8, !tbaa !162
  %118 = getelementptr inbounds %"struct.std::pair", ptr %117, i64 %100, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !179
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(296) %8, ptr noundef nonnull align 8 dereferenceable(36) %107, ptr noundef nonnull align 8 dereferenceable(36) %115, ptr noundef nonnull align 8 dereferenceable(8) %119)
          to label %120 unwind label %97

120:                                              ; preds = %116
  %121 = add nuw i64 %100, 1
  %122 = load i64, ptr %90, align 8, !tbaa !176
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %99, label %95, !prof !166, !llvm.loop !369

124:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #19
  %125 = load ptr, ptr %18, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(8) %125, i32 noundef 20)
          to label %126 unwind label %151, !prof !138

126:                                              ; preds = %124
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %11) #19
  %127 = load ptr, ptr %18, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull align 8 dereferenceable(8) %127, ptr noundef nonnull align 8 dereferenceable(8) %39, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %128 unwind label %153, !prof !138

128:                                              ; preds = %126
  %129 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %8, i64 0, i32 2
  store ptr %11, ptr %129, align 8, !tbaa !370
  %130 = load ptr, ptr %41, align 8, !tbaa !149
  %131 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %130, i64 0, i32 1, i32 1
  store ptr %8, ptr %131, align 8, !tbaa !381
  %132 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %130, i64 0, i32 1, i32 2
  store ptr %34, ptr %132, align 8, !tbaa !382
  %133 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %130, i64 0, i32 1, i32 0, i32 1
  store ptr %9, ptr %133, align 8, !tbaa !273
  %134 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %130, i64 0, i32 1
  store ptr %9, ptr %134, align 8, !tbaa !273
  %135 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %130, i64 0, i32 2
  store ptr %11, ptr %135, align 8, !tbaa !276
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %136 unwind label %155, !prof !138

136:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %13) #19
  %137 = load ptr, ptr %18, align 8, !tbaa !146
  %138 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 14
  %139 = load ptr, ptr %138, align 8, !tbaa !148
  invoke void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(8) %137, ptr noundef %139, ptr noundef nonnull %12)
          to label %140 unwind label %157, !prof !138

140:                                              ; preds = %136
  %141 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 13
  %142 = load ptr, ptr %141, align 8, !tbaa !147
  %143 = icmp eq ptr %142, null
  %144 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %11, i64 0, i32 10
  %145 = select i1 %143, ptr %13, ptr %142, !prof !138
  store ptr %145, ptr %144, align 8, !tbaa !213
  %146 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 1
  %147 = load i64, ptr %146, align 8, !tbaa !178
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %159, label %163, !prof !138

149:                                              ; preds = %95
  %150 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %303

151:                                              ; preds = %124
  %152 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %301

153:                                              ; preds = %126
  %154 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %299

155:                                              ; preds = %128
  %156 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %288

157:                                              ; preds = %136
  %158 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %286

159:                                              ; preds = %171, %140
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %14) #19
  %160 = load ptr, ptr %18, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %160)
          to label %175 unwind label %221, !prof !138

161:                                              ; preds = %163
  %162 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %284

163:                                              ; preds = %140, %171
  %164 = phi i64 [ %172, %171 ], [ 0, %140 ]
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4, i32 3
  %166 = load ptr, ptr %165, align 8, !tbaa !164
  %167 = getelementptr inbounds %"struct.std::pair.8", ptr %166, i64 %164
  %168 = load ptr, ptr %167, align 8, !tbaa !183
  %169 = getelementptr inbounds %"struct.std::pair.8", ptr %166, i64 %164, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !185
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull align 8 dereferenceable(36) %168, ptr noundef nonnull align 8 dereferenceable(36) %170)
          to label %171 unwind label %161

171:                                              ; preds = %163
  %172 = add nuw i64 %164, 1
  %173 = load i64, ptr %146, align 8, !tbaa !178
  %174 = icmp ult i64 %172, %173
  br i1 %174, label %163, label %159, !prof !166, !llvm.loop !383

175:                                              ; preds = %159
  %176 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %71, i64 0, i32 1
  %177 = load i64, ptr %176, align 8, !tbaa !202
  %178 = icmp eq i64 %177, 0
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %71, i64 0, i32 3
  %180 = load ptr, ptr %179, align 8
  %181 = select i1 %178, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %180, !prof !166
  invoke void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41) %14, ptr noundef %181)
          to label %182 unwind label %225, !prof !138

182:                                              ; preds = %175
  %183 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6, i32 1
  %184 = load i64, ptr %183, align 8, !tbaa !263
  %185 = icmp eq i64 %184, 0
  br i1 %185, label %203, label %186, !prof !138

186:                                              ; preds = %182
  %187 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6, i32 3
  %188 = load ptr, ptr %187, align 8, !tbaa !160
  %189 = getelementptr inbounds ptr, ptr %188, i64 %184
  br label %194

190:                                              ; preds = %200
  %191 = load ptr, ptr %11, align 8, !tbaa !120
  %192 = getelementptr inbounds ptr, ptr %191, i64 34
  %193 = load ptr, ptr %192, align 8
  invoke void %193(ptr noundef nonnull align 8 dereferenceable(1000) %11, i1 noundef zeroext true)
          to label %203 unwind label %225

194:                                              ; preds = %186, %200
  %195 = phi ptr [ %201, %200 ], [ %188, %186 ]
  %196 = load ptr, ptr %195, align 8, !tbaa !123
  %197 = load ptr, ptr %11, align 8, !tbaa !120
  %198 = getelementptr inbounds ptr, ptr %197, i64 19
  %199 = load ptr, ptr %198, align 8
  invoke void %199(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef %196)
          to label %200 unwind label %223

200:                                              ; preds = %194
  %201 = getelementptr inbounds ptr, ptr %195, i64 1
  %202 = icmp eq ptr %201, %189
  br i1 %202, label %190, label %194, !llvm.loop !384

203:                                              ; preds = %182, %190
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %15) #19
  %204 = load ptr, ptr %18, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(8) %204)
          to label %205 unwind label %227, !prof !138

205:                                              ; preds = %203
  %206 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %15, i64 0, i32 2
  %207 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %15, i64 0, i32 2, i32 1
  %208 = load i32, ptr %207, align 8, !tbaa !201
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %231, !prof !138

210:                                              ; preds = %205
  %211 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 15
  %212 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 15, i32 1
  %213 = load i32, ptr %212, align 8, !tbaa !201
  %214 = icmp eq i32 %213, 0
  %215 = icmp eq ptr %206, %211
  %216 = or i1 %215, %214
  br i1 %216, label %231, label %217, !prof !138

217:                                              ; preds = %210
  %218 = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %206, ptr noundef nonnull align 8 dereferenceable(32) %211)
          to label %219 unwind label %229

219:                                              ; preds = %217
  %220 = load i32, ptr %212, align 8, !tbaa !201
  store i32 %220, ptr %207, align 8, !tbaa !201
  br label %231

221:                                              ; preds = %159
  %222 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %282

223:                                              ; preds = %194
  %224 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %280

225:                                              ; preds = %175, %190
  %226 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %280

227:                                              ; preds = %203
  %228 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %278

229:                                              ; preds = %217, %243, %239, %233
  %230 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %276

231:                                              ; preds = %219, %210, %205
  %232 = icmp eq ptr %2, null
  br i1 %232, label %245, label %233, !prof !138

233:                                              ; preds = %231
  %234 = load ptr, ptr %41, align 8, !tbaa !149
  %235 = load ptr, ptr %2, align 8, !tbaa !120
  %236 = getelementptr inbounds ptr, ptr %235, i64 2
  %237 = load ptr, ptr %236, align 8
  %238 = invoke noundef ptr %237(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %239 unwind label %229

239:                                              ; preds = %233
  %240 = load ptr, ptr %234, align 8, !tbaa !120
  %241 = getelementptr inbounds ptr, ptr %240, i64 55
  %242 = load ptr, ptr %241, align 8
  invoke void %242(ptr noundef nonnull align 8 dereferenceable(2069) %234, ptr noundef %238)
          to label %243 unwind label %229

243:                                              ; preds = %239
  %244 = load ptr, ptr %41, align 8, !tbaa !149
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef nonnull align 8 dereferenceable(24) %244)
          to label %256 unwind label %229

245:                                              ; preds = %231
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %16) #19
  %246 = load ptr, ptr %18, align 8, !tbaa !146
  invoke void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200) %16, ptr noundef nonnull align 8 dereferenceable(8) %246, ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 1024, i64 noundef 128, i64 noundef 128, i64 noundef 128, i64 noundef 32, i64 noundef 512)
          to label %247 unwind label %250, !prof !138

247:                                              ; preds = %245
  %248 = load ptr, ptr %41, align 8, !tbaa !149
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %15, ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull align 8 dereferenceable(24) %248)
          to label %249 unwind label %252, !prof !138

249:                                              ; preds = %247
  call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %16) #19
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %16) #19
  br label %256

250:                                              ; preds = %245
  %251 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %254

252:                                              ; preds = %247
  %253 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %16) #19
  br label %254

254:                                              ; preds = %252, %250
  %255 = phi { ptr, i32 } [ %253, %252 ], [ %251, %250 ]
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %16) #19
  br label %276

256:                                              ; preds = %243, %249
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #19
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %15) #19
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %14) #19
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #19
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #19
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  %257 = load ptr, ptr %41, align 8, !tbaa !149
  %258 = load ptr, ptr %257, align 8, !tbaa !120
  %259 = getelementptr inbounds ptr, ptr %258, i64 5
  %260 = load ptr, ptr %259, align 8
  invoke void %260(ptr noundef nonnull align 8 dereferenceable(2069) %257)
          to label %261 unwind label %262, !prof !356

261:                                              ; preds = %256
  invoke void @_ZN11xalanc_1_1016XalanTransformer5resetEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %265 unwind label %262, !prof !138

262:                                              ; preds = %261, %256
  %263 = landingpad { ptr, i32 }
          catch ptr null
  %264 = extractvalue { ptr, i32 } %263, 0
  call void @__clang_call_terminate(ptr %264) #20
  unreachable

265:                                              ; preds = %261
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %11) #19
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #19
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %9) #19
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %8) #19
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %8) #19
  %266 = icmp eq ptr %25, null
  br i1 %266, label %446, label %267, !prof !166

267:                                              ; preds = %265
  %268 = load ptr, ptr %29, align 8, !tbaa !120
  %269 = load ptr, ptr %268, align 8
  call void %269(ptr noundef nonnull align 8 dereferenceable(8) %29) #19, !prof !385
  %270 = load ptr, ptr %25, align 8, !tbaa !120
  %271 = getelementptr inbounds ptr, ptr %270, i64 3
  %272 = load ptr, ptr %271, align 8
  invoke void %272(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %29)
          to label %446 unwind label %273, !prof !168

273:                                              ; preds = %267
  %274 = landingpad { ptr, i32 }
          catch ptr null
  %275 = extractvalue { ptr, i32 } %274, 0
  call void @__clang_call_terminate(ptr %275) #20
  unreachable

276:                                              ; preds = %254, %229
  %277 = phi { ptr, i32 } [ %230, %229 ], [ %255, %254 ]
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %15) #19
  br label %278

278:                                              ; preds = %276, %227
  %279 = phi { ptr, i32 } [ %277, %276 ], [ %228, %227 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %15) #19
  br label %280

280:                                              ; preds = %223, %225, %278
  %281 = phi { ptr, i32 } [ %279, %278 ], [ %224, %223 ], [ %226, %225 ]
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %14) #19
  br label %282

282:                                              ; preds = %280, %221
  %283 = phi { ptr, i32 } [ %281, %280 ], [ %222, %221 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %14) #19
  br label %284

284:                                              ; preds = %282, %161
  %285 = phi { ptr, i32 } [ %162, %161 ], [ %283, %282 ]
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #19
  br label %286

286:                                              ; preds = %284, %157
  %287 = phi { ptr, i32 } [ %285, %284 ], [ %158, %157 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #19
  br label %288

288:                                              ; preds = %286, %155
  %289 = phi { ptr, i32 } [ %287, %286 ], [ %156, %155 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  %290 = load ptr, ptr %41, align 8, !tbaa !149
  %291 = load ptr, ptr %290, align 8, !tbaa !120
  %292 = getelementptr inbounds ptr, ptr %291, i64 5
  %293 = load ptr, ptr %292, align 8
  invoke void %293(ptr noundef nonnull align 8 dereferenceable(2069) %290)
          to label %294 unwind label %295

294:                                              ; preds = %288
  invoke void @_ZN11xalanc_1_1016XalanTransformer5resetEv(ptr noundef nonnull align 8 dereferenceable(384) %0)
          to label %298 unwind label %295

295:                                              ; preds = %294, %288
  %296 = landingpad { ptr, i32 }
          catch ptr null
  %297 = extractvalue { ptr, i32 } %296, 0
  call void @__clang_call_terminate(ptr %297) #20
  unreachable

298:                                              ; preds = %294
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %11) #19
  br label %299

299:                                              ; preds = %298, %153
  %300 = phi { ptr, i32 } [ %289, %298 ], [ %154, %153 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #19
  br label %301

301:                                              ; preds = %299, %151
  %302 = phi { ptr, i32 } [ %300, %299 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %9) #19
  br label %303

303:                                              ; preds = %301, %149
  %304 = phi { ptr, i32 } [ %302, %301 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %9) #19
  br label %305

305:                                              ; preds = %303, %97, %87
  %306 = phi { ptr, i32 } [ %98, %97 ], [ %304, %303 ], [ %88, %87 ]
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %8) #19
  br label %307

307:                                              ; preds = %305, %85
  %308 = phi { ptr, i32 } [ %306, %305 ], [ %86, %85 ]
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %8) #19
  br label %309

309:                                              ; preds = %83, %307, %81
  %310 = phi { ptr, i32 } [ %82, %81 ], [ %308, %307 ], [ %84, %83 ]
  %311 = icmp eq ptr %25, null
  br i1 %311, label %321, label %312

312:                                              ; preds = %309
  %313 = load ptr, ptr %29, align 8, !tbaa !120
  %314 = load ptr, ptr %313, align 8
  call void %314(ptr noundef nonnull align 8 dereferenceable(8) %29) #19
  %315 = load ptr, ptr %25, align 8, !tbaa !120
  %316 = getelementptr inbounds ptr, ptr %315, i64 3
  %317 = load ptr, ptr %316, align 8
  invoke void %317(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull %29)
          to label %321 unwind label %318

318:                                              ; preds = %312
  %319 = landingpad { ptr, i32 }
          catch ptr null
  %320 = extractvalue { ptr, i32 } %319, 0
  call void @__clang_call_terminate(ptr %320) #20
  unreachable

321:                                              ; preds = %79, %309, %312, %77
  %322 = phi { ptr, i32 } [ %78, %77 ], [ %80, %79 ], [ %310, %309 ], [ %310, %312 ]
  %323 = extractvalue { ptr, i32 } %322, 0
  %324 = extractvalue { ptr, i32 } %322, 1
  %325 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1012XSLExceptionE) #19
  %326 = icmp eq i32 %324, %325
  br i1 %326, label %327, label %333

327:                                              ; preds = %321
  %328 = call ptr @__cxa_begin_catch(ptr %323) #19
  %329 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %330 = load i32, ptr %329, align 8, !tbaa !201
  %331 = icmp eq i32 %330, 0
  br i1 %331, label %332, label %437

332:                                              ; preds = %327
  invoke void @_ZNK11xalanc_1_1012XSLException13defaultFormatERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %328, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %437 unwind label %435

333:                                              ; preds = %321
  %334 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE) #19
  %335 = icmp eq i32 %324, %334
  br i1 %335, label %336, label %349

336:                                              ; preds = %333
  %337 = call ptr @__cxa_begin_catch(ptr %323) #19
  %338 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %339 = load i32, ptr %338, align 8, !tbaa !201
  %340 = icmp eq i32 %339, 0
  br i1 %340, label %429, label %341

341:                                              ; preds = %336
  %342 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 1
  %343 = load i64, ptr %342, align 8, !tbaa !202
  %344 = icmp eq i64 %343, 0
  %345 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 3
  %346 = load ptr, ptr %345, align 8
  %347 = select i1 %344, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %346
  %348 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %347, ptr noundef nonnull align 8 dereferenceable(32) %17, i1 noundef zeroext true)
          to label %432 unwind label %427

349:                                              ; preds = %333
  %350 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #19
  %351 = icmp eq i32 %324, %350
  br i1 %351, label %352, label %367

352:                                              ; preds = %349
  %353 = call ptr @__cxa_begin_catch(ptr %323) #19
  %354 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %355 = load i32, ptr %354, align 8, !tbaa !201
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %419, label %357

357:                                              ; preds = %352
  %358 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 1
  %359 = load i64, ptr %358, align 8, !tbaa !202
  %360 = icmp eq i64 %359, 0
  %361 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 3
  %362 = load ptr, ptr %361, align 8
  %363 = select i1 %360, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %362
  br label %364

364:                                              ; preds = %419, %357
  %365 = phi ptr [ %363, %357 ], [ %423, %419 ]
  %366 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %365, ptr noundef nonnull align 8 dereferenceable(32) %17, i1 noundef zeroext true)
          to label %424 unwind label %417

367:                                              ; preds = %349
  %368 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %369 = icmp eq i32 %324, %368
  br i1 %369, label %370, label %385

370:                                              ; preds = %367
  %371 = call ptr @__cxa_begin_catch(ptr %323) #19
  %372 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %373 = load i32, ptr %372, align 8, !tbaa !201
  %374 = icmp eq i32 %373, 0
  br i1 %374, label %411, label %375

375:                                              ; preds = %370
  %376 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 1
  %377 = load i64, ptr %376, align 8, !tbaa !202
  %378 = icmp eq i64 %377, 0
  %379 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 3
  %380 = load ptr, ptr %379, align 8
  %381 = select i1 %378, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %380
  br label %382

382:                                              ; preds = %411, %375
  %383 = phi ptr [ %381, %375 ], [ %413, %411 ]
  %384 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %383, ptr noundef nonnull align 8 dereferenceable(32) %17, i1 noundef zeroext true)
          to label %414 unwind label %409

385:                                              ; preds = %367
  %386 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE) #19
  %387 = icmp eq i32 %324, %386
  br i1 %387, label %388, label %464

388:                                              ; preds = %385
  %389 = call ptr @__cxa_begin_catch(ptr %323) #19
  %390 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %391 = load i32, ptr %390, align 8, !tbaa !201
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %403, label %393

393:                                              ; preds = %388
  %394 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 1
  %395 = load i64, ptr %394, align 8, !tbaa !202
  %396 = icmp eq i64 %395, 0
  %397 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 3
  %398 = load ptr, ptr %397, align 8
  %399 = select i1 %396, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %398
  %400 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %399, ptr noundef nonnull align 8 dereferenceable(32) %17, i1 noundef zeroext true)
          to label %406 unwind label %401

401:                                              ; preds = %393, %403
  %402 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %464 unwind label %480

403:                                              ; preds = %388
  %404 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %405 = load ptr, ptr %404, align 8, !tbaa !149
  invoke fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %405, ptr noundef nonnull align 8 dereferenceable(12) %389, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %406 unwind label %401

406:                                              ; preds = %403, %393
  invoke void @__cxa_end_catch()
          to label %446 unwind label %407

407:                                              ; preds = %406
  %408 = landingpad { ptr, i32 }
          cleanup
  br label %464

409:                                              ; preds = %382
  %410 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %464 unwind label %480

411:                                              ; preds = %370
  %412 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %371, i64 0, i32 4
  %413 = load ptr, ptr %412, align 8, !tbaa !206
  br label %382

414:                                              ; preds = %382
  invoke void @__cxa_end_catch()
          to label %446 unwind label %415

415:                                              ; preds = %414
  %416 = landingpad { ptr, i32 }
          cleanup
  br label %464

417:                                              ; preds = %364, %419
  %418 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %464 unwind label %480

419:                                              ; preds = %352
  %420 = load ptr, ptr %353, align 8, !tbaa !120
  %421 = getelementptr inbounds ptr, ptr %420, i64 2
  %422 = load ptr, ptr %421, align 8
  %423 = invoke noundef ptr %422(ptr noundef nonnull align 8 dereferenceable(24) %353)
          to label %364 unwind label %417

424:                                              ; preds = %364
  invoke void @__cxa_end_catch()
          to label %446 unwind label %425

425:                                              ; preds = %424
  %426 = landingpad { ptr, i32 }
          cleanup
  br label %464

427:                                              ; preds = %341, %429
  %428 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %464 unwind label %480

429:                                              ; preds = %336
  %430 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %431 = load ptr, ptr %430, align 8, !tbaa !149
  invoke fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %431, ptr noundef nonnull align 8 dereferenceable(56) %337, ptr noundef nonnull align 8 dereferenceable(32) %17)
          to label %432 unwind label %427

432:                                              ; preds = %429, %341
  invoke void @__cxa_end_catch()
          to label %446 unwind label %433

433:                                              ; preds = %432
  %434 = landingpad { ptr, i32 }
          cleanup
  br label %464

435:                                              ; preds = %437, %332
  %436 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %464 unwind label %480

437:                                              ; preds = %332, %327
  %438 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 1
  %439 = load i64, ptr %438, align 8, !tbaa !202
  %440 = icmp eq i64 %439, 0
  %441 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 3
  %442 = load ptr, ptr %441, align 8
  %443 = select i1 %440, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %442
  %444 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %443, ptr noundef nonnull align 8 dereferenceable(32) %17, i1 noundef zeroext true)
          to label %445 unwind label %435

445:                                              ; preds = %437
  invoke void @__cxa_end_catch()
          to label %446 unwind label %462

446:                                              ; preds = %267, %265, %445, %432, %424, %414, %406
  %447 = phi i32 [ -4, %406 ], [ -3, %414 ], [ -2, %424 ], [ -2, %432 ], [ -1, %445 ], [ 0, %265 ], [ 0, %267 ]
  %448 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 2
  %449 = load i64, ptr %448, align 8, !tbaa !203
  %450 = icmp eq i64 %449, 0
  br i1 %450, label %461, label %451, !prof !138

451:                                              ; preds = %446
  %452 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !204
  %454 = load ptr, ptr %7, align 8, !tbaa !205
  %455 = load ptr, ptr %454, align 8, !tbaa !120
  %456 = getelementptr inbounds ptr, ptr %455, i64 3
  %457 = load ptr, ptr %456, align 8
  invoke void %457(ptr noundef nonnull align 8 dereferenceable(8) %454, ptr noundef %453)
          to label %461 unwind label %458

458:                                              ; preds = %451
  %459 = landingpad { ptr, i32 }
          catch ptr null
  %460 = extractvalue { ptr, i32 } %459, 0
  call void @__clang_call_terminate(ptr %460) #20
  unreachable

461:                                              ; preds = %446, %451
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #19
  ret i32 %447

462:                                              ; preds = %445
  %463 = landingpad { ptr, i32 }
          cleanup
  br label %464

464:                                              ; preds = %435, %427, %417, %409, %401, %462, %433, %425, %415, %407, %385
  %465 = phi { ptr, i32 } [ %322, %385 ], [ %408, %407 ], [ %416, %415 ], [ %426, %425 ], [ %434, %433 ], [ %463, %462 ], [ %402, %401 ], [ %410, %409 ], [ %418, %417 ], [ %428, %427 ], [ %436, %435 ]
  %466 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 2
  %467 = load i64, ptr %466, align 8, !tbaa !203
  %468 = icmp eq i64 %467, 0
  br i1 %468, label %479, label %469

469:                                              ; preds = %464
  %470 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %7, i64 0, i32 3
  %471 = load ptr, ptr %470, align 8, !tbaa !204
  %472 = load ptr, ptr %7, align 8, !tbaa !205
  %473 = load ptr, ptr %472, align 8, !tbaa !120
  %474 = getelementptr inbounds ptr, ptr %473, i64 3
  %475 = load ptr, ptr %474, align 8
  invoke void %475(ptr noundef nonnull align 8 dereferenceable(8) %472, ptr noundef %471)
          to label %479 unwind label %476

476:                                              ; preds = %469
  %477 = landingpad { ptr, i32 }
          catch ptr null
  %478 = extractvalue { ptr, i32 } %477, 0
  call void @__clang_call_terminate(ptr %478) #20
  unreachable

479:                                              ; preds = %464, %469
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #19
  resume { ptr, i32 } %465

480:                                              ; preds = %435, %427, %417, %409, %401
  %481 = landingpad { ptr, i32 }
          catch ptr null
  %482 = extractvalue { ptr, i32 } %481, 0
  call void @__clang_call_terminate(ptr %482) #20
  unreachable
}

declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1016XSLTResultTargetC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #2

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !191, !range !197, !noundef !198
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %19, !prof !386

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !193
  invoke void @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %7 unwind label %20, !prof !138

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !193
  invoke void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %9 unwind label %20, !prof !138

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !193
  invoke void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %11 unwind label %20, !prof !138

11:                                               ; preds = %9
  %12 = load ptr, ptr %0, align 8, !tbaa !193
  invoke void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %13 unwind label %20, !prof !138

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !193
  invoke void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %15 unwind label %20, !prof !138

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8, !tbaa !193
  invoke void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %17 unwind label %20, !prof !138

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !193
  invoke void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %19 unwind label %20, !prof !138

19:                                               ; preds = %17, %1
  ret void

20:                                               ; preds = %17, %15, %13, %11, %9, %7, %5
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #20
  unreachable
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 !prof !387 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !203
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !388

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !204
  %8 = load ptr, ptr %0, align 8, !tbaa !205
  %9 = load ptr, ptr %8, align 8, !tbaa !120
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !389

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtS2_llS2_RNS_14XalanDOMStringE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #4 comdat align 2 !prof !187 {
  %7 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0)
  %8 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %9 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %4)
  tail call void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtjS2_jllS2_jRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %7, ptr noundef %1, i32 noundef %8, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(36) %5)
  ret void
}

declare noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtjS2_jllS2_jRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

declare void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #13

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !390 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !391

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !203
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !202
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !392

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !205
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !205
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !202
  %16 = load i64, ptr %6, align 8, !tbaa !203
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !204
  %19 = load ptr, ptr %3, align 8, !tbaa !205
  store ptr %19, ptr %0, align 8, !tbaa !205
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !202
  store i64 %21, ptr %14, align 8, !tbaa !202
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !203
  store i64 %23, ptr %6, align 8, !tbaa !203
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !204
  store ptr %25, ptr %17, align 8, !tbaa !204
  store ptr %13, ptr %3, align 8, !tbaa !205
  store i64 %15, ptr %20, align 8, !tbaa !202
  store i64 %16, ptr %22, align 8, !tbaa !203
  store ptr %18, ptr %24, align 8, !tbaa !204
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !393

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !120
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !394

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #20
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !204
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !202
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !395

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !396

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !204
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !202
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !202
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !204
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !397

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !204
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !398
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !399 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  store ptr %2, ptr %0, align 8, !tbaa !205
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !202
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !400

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !205
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !202
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !203
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !120
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !401
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !204
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !204
  %24 = load i64, ptr %9, align 8, !tbaa !202
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !402

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !205
  %28 = load i64, ptr %6, align 8, !tbaa !202
  %29 = load i64, ptr %7, align 8, !tbaa !203
  %30 = load ptr, ptr %8, align 8, !tbaa !204
  %31 = load ptr, ptr %5, align 8, !tbaa !205
  store ptr %31, ptr %0, align 8, !tbaa !205
  %32 = load i64, ptr %14, align 8, !tbaa !202
  store i64 %32, ptr %6, align 8, !tbaa !202
  %33 = load i64, ptr %15, align 8, !tbaa !203
  store i64 %33, ptr %7, align 8, !tbaa !203
  %34 = load ptr, ptr %21, align 8, !tbaa !204
  store ptr %34, ptr %8, align 8, !tbaa !204
  store ptr %27, ptr %5, align 8, !tbaa !205
  store i64 %28, ptr %14, align 8, !tbaa !202
  store i64 %29, ptr %15, align 8, !tbaa !203
  store ptr %30, ptr %21, align 8, !tbaa !204
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !402

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !203
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !204
  %50 = load ptr, ptr %5, align 8, !tbaa !205
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !403

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !120
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !404
  store ptr %65, ptr %8, align 8, !tbaa !204
  store i64 %3, ptr %7, align 8, !tbaa !203
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !405 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !406

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !202
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !204
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !203
  br i1 %18, label %21, label %39, !prof !407

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !408

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !409

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !204
  %28 = load i64, ptr %12, align 8, !tbaa !202
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !259
  store i16 %34, ptr %32, align 2, !tbaa !259
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !410, !llvm.loop !411

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !412

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !205
  store ptr %42, ptr %5, align 8, !tbaa !205
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !202
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !203
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !120
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !413
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !204
  %51 = load i64, ptr %43, align 8, !tbaa !202
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !204
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !414

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !204
  %56 = load i64, ptr %43, align 8, !tbaa !202
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !414

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !204
  %60 = load i64, ptr %43, align 8, !tbaa !202
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !204
  %63 = load i64, ptr %12, align 8, !tbaa !202
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !414

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !205
  %67 = load i64, ptr %12, align 8, !tbaa !202
  %68 = load i64, ptr %19, align 8, !tbaa !203
  %69 = load ptr, ptr %15, align 8, !tbaa !204
  %70 = load ptr, ptr %5, align 8, !tbaa !205
  store ptr %70, ptr %0, align 8, !tbaa !205
  %71 = load i64, ptr %43, align 8, !tbaa !202
  store i64 %71, ptr %12, align 8, !tbaa !202
  %72 = load i64, ptr %44, align 8, !tbaa !203
  store i64 %72, ptr %19, align 8, !tbaa !203
  %73 = load ptr, ptr %50, align 8, !tbaa !204
  store ptr %73, ptr %15, align 8, !tbaa !204
  store ptr %66, ptr %5, align 8, !tbaa !205
  store i64 %67, ptr %43, align 8, !tbaa !202
  store i64 %68, ptr %44, align 8, !tbaa !203
  store ptr %69, ptr %50, align 8, !tbaa !204
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !415

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !120
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !416

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !203
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !204
  %89 = load ptr, ptr %5, align 8, !tbaa !205
  %90 = load ptr, ptr %89, align 8, !tbaa !120
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !417

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !418

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !418

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !419, !llvm.loop !420

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !421, !llvm.loop !422

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !423
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
  br i1 %123, label %124, label %120, !llvm.loop !424

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
  store i64 %36, ptr %12, align 8, !tbaa !202
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !425 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !202
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !203
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !426

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !204
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !259
  store i16 %13, ptr %12, align 2, !tbaa !259
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !202
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !205
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !205
  %24 = load i64, ptr %4, align 8, !tbaa !202
  %25 = load i64, ptr %6, align 8, !tbaa !203
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !204
  %28 = load ptr, ptr %3, align 8, !tbaa !205
  store ptr %28, ptr %0, align 8, !tbaa !205
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !202
  store i64 %30, ptr %4, align 8, !tbaa !202
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !203
  store i64 %32, ptr %6, align 8, !tbaa !203
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !204
  store ptr %34, ptr %26, align 8, !tbaa !204
  store ptr %23, ptr %3, align 8, !tbaa !205
  store i64 %24, ptr %29, align 8, !tbaa !202
  store i64 %25, ptr %31, align 8, !tbaa !203
  store ptr %27, ptr %33, align 8, !tbaa !204
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !203
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !204
  %52 = load ptr, ptr %3, align 8, !tbaa !205
  %53 = load ptr, ptr %52, align 8, !tbaa !120
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !427 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !205
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !202
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !400

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !205
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !202
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !203
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !120
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !428
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !204
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !204
  %20 = load i64, ptr %5, align 8, !tbaa !202
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !402

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !205
  %24 = load i64, ptr %10, align 8, !tbaa !202
  %25 = load i64, ptr %11, align 8, !tbaa !203
  %26 = load ptr, ptr %17, align 8, !tbaa !204
  store ptr %4, ptr %3, align 8, !tbaa !205
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !203
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !204
  %33 = load ptr, ptr %3, align 8, !tbaa !205
  %34 = load ptr, ptr %33, align 8, !tbaa !120
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #20
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !403

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !120
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !429
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !205
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !203
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !204
  store ptr %53, ptr %0, align 8, !tbaa !205
  store i64 %52, ptr %5, align 8, !tbaa !202
  store i64 %51, ptr %55, align 8, !tbaa !203
  store ptr %50, ptr %57, align 8, !tbaa !204
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !430

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !120
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !431

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #20
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #14

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #15

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !151
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !153
  %11 = getelementptr inbounds i8, ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !152
  br i1 %12, label %15, label %33, !prof !138

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18, !prof !138

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %131, label %20, !prof !432

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !153
  %22 = load i64, ptr %6, align 8, !tbaa !151
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load i8, ptr %3, align 1, !tbaa !137
  store i8 %27, ptr %25, align 1, !tbaa !137
  %28 = getelementptr inbounds i8, ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !151
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !151
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %131, label %24, !prof !433, !llvm.loop !434

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %90

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %36 = load ptr, ptr %0, align 8, !tbaa !150
  store ptr %36, ptr %5, align 8, !tbaa !150
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !151
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !152
  %39 = load ptr, ptr %36, align 8, !tbaa !120
  %40 = getelementptr inbounds ptr, ptr %39, i64 2
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %8)
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  store ptr %42, ptr %43, align 8, !tbaa !153
  %44 = load i64, ptr %37, align 8, !tbaa !151
  %45 = getelementptr inbounds i8, ptr %42, i64 %44
  %46 = load ptr, ptr %9, align 8, !tbaa !153
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %45, ptr noundef %46, ptr noundef %1)
          to label %47 unwind label %76

47:                                               ; preds = %35
  %48 = load ptr, ptr %43, align 8, !tbaa !153
  %49 = load i64, ptr %37, align 8, !tbaa !151
  %50 = getelementptr inbounds i8, ptr %48, i64 %49
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %51 unwind label %76

51:                                               ; preds = %47
  %52 = load ptr, ptr %43, align 8, !tbaa !153
  %53 = load i64, ptr %37, align 8, !tbaa !151
  %54 = getelementptr inbounds i8, ptr %52, i64 %53
  %55 = load ptr, ptr %9, align 8, !tbaa !153
  %56 = load i64, ptr %6, align 8, !tbaa !151
  %57 = getelementptr inbounds i8, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %54, ptr noundef %1, ptr noundef %57)
          to label %58 unwind label %76

58:                                               ; preds = %51
  %59 = load ptr, ptr %0, align 8, !tbaa !150
  %60 = load i64, ptr %6, align 8, !tbaa !151
  %61 = load i64, ptr %13, align 8, !tbaa !152
  %62 = load ptr, ptr %9, align 8, !tbaa !153
  %63 = load ptr, ptr %5, align 8, !tbaa !150
  store ptr %63, ptr %0, align 8, !tbaa !150
  %64 = load i64, ptr %37, align 8, !tbaa !151
  store i64 %64, ptr %6, align 8, !tbaa !151
  %65 = load i64, ptr %38, align 8, !tbaa !152
  store i64 %65, ptr %13, align 8, !tbaa !152
  %66 = load ptr, ptr %43, align 8, !tbaa !153
  store ptr %66, ptr %9, align 8, !tbaa !153
  store ptr %59, ptr %5, align 8, !tbaa !150
  store i64 %60, ptr %37, align 8, !tbaa !151
  store i64 %61, ptr %38, align 8, !tbaa !152
  store ptr %62, ptr %43, align 8, !tbaa !153
  %67 = icmp eq i64 %61, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %58
  %69 = load ptr, ptr %59, align 8, !tbaa !120
  %70 = getelementptr inbounds ptr, ptr %69, i64 3
  %71 = load ptr, ptr %70, align 8
  invoke void %71(ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef %62)
          to label %75 unwind label %72

72:                                               ; preds = %68
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #20
  unreachable

75:                                               ; preds = %58, %68
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %131

76:                                               ; preds = %51, %47, %35
  %77 = landingpad { ptr, i32 }
          cleanup
  %78 = load i64, ptr %38, align 8, !tbaa !152
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %89, label %80

80:                                               ; preds = %76
  %81 = load ptr, ptr %43, align 8, !tbaa !153
  %82 = load ptr, ptr %5, align 8, !tbaa !150
  %83 = load ptr, ptr %82, align 8, !tbaa !120
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %81)
          to label %89 unwind label %86

86:                                               ; preds = %80
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #20
  unreachable

89:                                               ; preds = %76, %80
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %77

90:                                               ; preds = %33
  %91 = ptrtoint ptr %11 to i64
  %92 = ptrtoint ptr %1 to i64
  %93 = sub i64 %91, %92
  %94 = icmp ugt i64 %93, %2
  br i1 %94, label %112, label %95

95:                                               ; preds = %90
  %96 = icmp eq i64 %93, %2
  br i1 %96, label %100, label %97

97:                                               ; preds = %95
  %98 = sub i64 %2, %93
  %99 = tail call i64 @llvm.umax.i64(i64 %98, i64 1)
  br label %102

100:                                              ; preds = %102, %95
  %101 = icmp eq ptr %11, %1
  br i1 %101, label %110, label %106

102:                                              ; preds = %97, %102
  %103 = phi i64 [ %104, %102 ], [ 0, %97 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %3)
  %104 = add nuw i64 %103, 1
  %105 = icmp eq i64 %104, %99
  br i1 %105, label %100, label %102, !llvm.loop !435

106:                                              ; preds = %100, %106
  %107 = phi ptr [ %108, %106 ], [ %1, %100 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %107)
  %108 = getelementptr inbounds i8, ptr %107, i64 1
  %109 = icmp eq ptr %108, %11
  br i1 %109, label %110, label %106, !llvm.loop !436

110:                                              ; preds = %106, %100
  %111 = load i8, ptr %3, align 1, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %111, i64 %93, i1 false)
  br label %131

112:                                              ; preds = %90
  %113 = sub i64 0, %2
  %114 = getelementptr inbounds i8, ptr %11, i64 %113
  %115 = icmp eq i64 %2, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %112, %116
  %117 = phi ptr [ %118, %116 ], [ %114, %112 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %117)
  %118 = getelementptr inbounds i8, ptr %117, i64 1
  %119 = icmp eq ptr %118, %11
  br i1 %119, label %120, label %116, !llvm.loop !437

120:                                              ; preds = %116, %112
  %121 = icmp eq ptr %114, %1
  br i1 %121, label %127, label %122

122:                                              ; preds = %120
  %123 = ptrtoint ptr %114 to i64
  %124 = sub i64 %123, %92
  %125 = sub i64 0, %124
  %126 = getelementptr inbounds i8, ptr %11, i64 %125
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %126, ptr align 1 %1, i64 %124, i1 false)
  br label %127

127:                                              ; preds = %120, %122
  %128 = icmp eq i64 %2, 0
  br i1 %128, label %131, label %129

129:                                              ; preds = %127
  %130 = load i8, ptr %3, align 1, !tbaa !137
  tail call void @llvm.memset.p0.i64(ptr align 1 %1, i8 %130, i64 %2, i1 false)
  br label %131

131:                                              ; preds = %24, %18, %129, %127, %110, %75
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = icmp eq ptr %3, %2
  br i1 %9, label %130, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !151
  %13 = add i64 %12, %8
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !153
  %16 = getelementptr inbounds i8, ptr %15, i64 %12
  %17 = icmp eq ptr %16, %1
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !152
  br i1 %17, label %20, label %38

20:                                               ; preds = %10
  %21 = icmp ult i64 %19, %13
  br i1 %21, label %22, label %23

22:                                               ; preds = %20
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %13)
  br label %23

23:                                               ; preds = %20, %22
  %24 = icmp eq ptr %2, %3
  br i1 %24, label %130, label %25

25:                                               ; preds = %23
  %26 = load ptr, ptr %14, align 8, !tbaa !153
  %27 = load i64, ptr %11, align 8, !tbaa !151
  %28 = getelementptr i8, ptr %26, i64 %27
  br label %29

29:                                               ; preds = %25, %29
  %30 = phi ptr [ %36, %29 ], [ %2, %25 ]
  %31 = phi ptr [ %33, %29 ], [ %28, %25 ]
  %32 = load i8, ptr %30, align 1, !tbaa !137
  store i8 %32, ptr %31, align 1, !tbaa !137
  %33 = getelementptr inbounds i8, ptr %31, i64 1
  %34 = load i64, ptr %11, align 8, !tbaa !151
  %35 = add i64 %34, 1
  store i64 %35, ptr %11, align 8, !tbaa !151
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %130, label %29, !llvm.loop !438

38:                                               ; preds = %10
  %39 = icmp ugt i64 %13, %19
  br i1 %39, label %40, label %95

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %41 = load ptr, ptr %0, align 8, !tbaa !150
  store ptr %41, ptr %5, align 8, !tbaa !150
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !151
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  store i64 %13, ptr %43, align 8, !tbaa !152
  %44 = load ptr, ptr %41, align 8, !tbaa !120
  %45 = getelementptr inbounds ptr, ptr %44, i64 2
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %13)
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  store ptr %47, ptr %48, align 8, !tbaa !153
  %49 = load i64, ptr %42, align 8, !tbaa !151
  %50 = getelementptr inbounds i8, ptr %47, i64 %49
  %51 = load ptr, ptr %14, align 8, !tbaa !153
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %50, ptr noundef %51, ptr noundef %1)
          to label %52 unwind label %81

52:                                               ; preds = %40
  %53 = load ptr, ptr %48, align 8, !tbaa !153
  %54 = load i64, ptr %42, align 8, !tbaa !151
  %55 = getelementptr inbounds i8, ptr %53, i64 %54
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %2, ptr noundef %3)
          to label %56 unwind label %81

56:                                               ; preds = %52
  %57 = load ptr, ptr %48, align 8, !tbaa !153
  %58 = load i64, ptr %42, align 8, !tbaa !151
  %59 = getelementptr inbounds i8, ptr %57, i64 %58
  %60 = load ptr, ptr %14, align 8, !tbaa !153
  %61 = load i64, ptr %11, align 8, !tbaa !151
  %62 = getelementptr inbounds i8, ptr %60, i64 %61
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %59, ptr noundef %1, ptr noundef %62)
          to label %63 unwind label %81

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !150
  %65 = load i64, ptr %11, align 8, !tbaa !151
  %66 = load i64, ptr %18, align 8, !tbaa !152
  %67 = load ptr, ptr %14, align 8, !tbaa !153
  %68 = load ptr, ptr %5, align 8, !tbaa !150
  store ptr %68, ptr %0, align 8, !tbaa !150
  %69 = load i64, ptr %42, align 8, !tbaa !151
  store i64 %69, ptr %11, align 8, !tbaa !151
  %70 = load i64, ptr %43, align 8, !tbaa !152
  store i64 %70, ptr %18, align 8, !tbaa !152
  %71 = load ptr, ptr %48, align 8, !tbaa !153
  store ptr %71, ptr %14, align 8, !tbaa !153
  store ptr %64, ptr %5, align 8, !tbaa !150
  store i64 %65, ptr %42, align 8, !tbaa !151
  store i64 %66, ptr %43, align 8, !tbaa !152
  store ptr %67, ptr %48, align 8, !tbaa !153
  %72 = icmp eq i64 %66, 0
  br i1 %72, label %80, label %73

73:                                               ; preds = %63
  %74 = load ptr, ptr %64, align 8, !tbaa !120
  %75 = getelementptr inbounds ptr, ptr %74, i64 3
  %76 = load ptr, ptr %75, align 8
  invoke void %76(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %67)
          to label %80 unwind label %77

77:                                               ; preds = %73
  %78 = landingpad { ptr, i32 }
          catch ptr null
  %79 = extractvalue { ptr, i32 } %78, 0
  call void @__clang_call_terminate(ptr %79) #20
  unreachable

80:                                               ; preds = %63, %73
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %130

81:                                               ; preds = %56, %52, %40
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = load i64, ptr %43, align 8, !tbaa !152
  %84 = icmp eq i64 %83, 0
  br i1 %84, label %94, label %85

85:                                               ; preds = %81
  %86 = load ptr, ptr %48, align 8, !tbaa !153
  %87 = load ptr, ptr %5, align 8, !tbaa !150
  %88 = load ptr, ptr %87, align 8, !tbaa !120
  %89 = getelementptr inbounds ptr, ptr %88, i64 3
  %90 = load ptr, ptr %89, align 8
  invoke void %90(ptr noundef nonnull align 8 dereferenceable(8) %87, ptr noundef %86)
          to label %94 unwind label %91

91:                                               ; preds = %85
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #20
  unreachable

94:                                               ; preds = %81, %85
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %82

95:                                               ; preds = %38
  %96 = ptrtoint ptr %16 to i64
  %97 = ptrtoint ptr %1 to i64
  %98 = sub i64 %96, %97
  %99 = icmp ugt i64 %98, %8
  br i1 %99, label %114, label %100

100:                                              ; preds = %95
  %101 = getelementptr inbounds i8, ptr %2, i64 %98
  %102 = icmp eq ptr %101, %3
  br i1 %102, label %103, label %105

103:                                              ; preds = %105, %100
  %104 = icmp eq ptr %16, %1
  br i1 %104, label %113, label %109

105:                                              ; preds = %100, %105
  %106 = phi ptr [ %107, %105 ], [ %101, %100 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %106)
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  %108 = icmp eq ptr %107, %3
  br i1 %108, label %103, label %105, !llvm.loop !439

109:                                              ; preds = %103, %109
  %110 = phi ptr [ %111, %109 ], [ %1, %103 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %110)
  %111 = getelementptr inbounds i8, ptr %110, i64 1
  %112 = icmp eq ptr %111, %16
  br i1 %112, label %113, label %109, !llvm.loop !440

113:                                              ; preds = %109, %103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %98, i1 false)
  br label %130

114:                                              ; preds = %95
  %115 = sub i64 0, %8
  %116 = getelementptr inbounds i8, ptr %16, i64 %115
  %117 = icmp eq ptr %3, %2
  br i1 %117, label %122, label %118

118:                                              ; preds = %114, %118
  %119 = phi ptr [ %120, %118 ], [ %116, %114 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %119)
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  %121 = icmp eq ptr %120, %16
  br i1 %121, label %122, label %118, !llvm.loop !441

122:                                              ; preds = %118, %114
  %123 = icmp eq ptr %116, %1
  br i1 %123, label %129, label %124

124:                                              ; preds = %122
  %125 = ptrtoint ptr %116 to i64
  %126 = sub i64 %125, %97
  %127 = sub i64 0, %126
  %128 = getelementptr inbounds i8, ptr %16, i64 %127
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %128, ptr align 1 %1, i64 %126, i1 false)
  br label %129

129:                                              ; preds = %124, %122
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %1, ptr align 1 %2, i64 %8, i1 false)
  br label %130

130:                                              ; preds = %29, %23, %80, %113, %129, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !151
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !152
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !138

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = getelementptr inbounds i8, ptr %11, i64 %5
  %13 = load i8, ptr %1, align 1, !tbaa !137
  store i8 %13, ptr %12, align 1, !tbaa !137
  %14 = load i64, ptr %4, align 8, !tbaa !151
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !151
  br label %61

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %22 = load ptr, ptr %0, align 8, !tbaa !150
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
          to label %23 unwind label %45

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !150
  %25 = load i64, ptr %4, align 8, !tbaa !151
  %26 = load i64, ptr %6, align 8, !tbaa !152
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !153
  %29 = load ptr, ptr %3, align 8, !tbaa !150
  store ptr %29, ptr %0, align 8, !tbaa !150
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !151
  store i64 %31, ptr %4, align 8, !tbaa !151
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !152
  store i64 %33, ptr %6, align 8, !tbaa !152
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !153
  store ptr %35, ptr %27, align 8, !tbaa !153
  store ptr %24, ptr %3, align 8, !tbaa !150
  store i64 %25, ptr %30, align 8, !tbaa !151
  store i64 %26, ptr %32, align 8, !tbaa !152
  store ptr %28, ptr %34, align 8, !tbaa !153
  %36 = icmp eq i64 %26, 0
  br i1 %36, label %44, label %37

37:                                               ; preds = %23
  %38 = load ptr, ptr %24, align 8, !tbaa !120
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  invoke void %40(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %28)
          to label %44 unwind label %41

41:                                               ; preds = %37
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  call void @__clang_call_terminate(ptr %43) #20
  unreachable

44:                                               ; preds = %23, %37
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %61

45:                                               ; preds = %16
  %46 = landingpad { ptr, i32 }
          cleanup
  %47 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %48 = load i64, ptr %47, align 8, !tbaa !152
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %60, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !153
  %53 = load ptr, ptr %3, align 8, !tbaa !150
  %54 = load ptr, ptr %53, align 8, !tbaa !120
  %55 = getelementptr inbounds ptr, ptr %54, i64 3
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef %52)
          to label %60 unwind label %57

57:                                               ; preds = %50
  %58 = landingpad { ptr, i32 }
          catch ptr null
  %59 = extractvalue { ptr, i32 } %58, 0
  call void @__clang_call_terminate(ptr %59) #20
  unreachable

60:                                               ; preds = %45, %50
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %46

61:                                               ; preds = %44, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !150
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !150
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !151
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !153
  %12 = load ptr, ptr %3, align 8, !tbaa !150
  store ptr %12, ptr %0, align 8, !tbaa !150
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !151
  store i64 %14, ptr %6, align 8, !tbaa !151
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !152
  store i64 %16, ptr %8, align 8, !tbaa !152
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !153
  store ptr %18, ptr %10, align 8, !tbaa !153
  store ptr %5, ptr %3, align 8, !tbaa !150
  store i64 %7, ptr %13, align 8, !tbaa !151
  store i64 %9, ptr %15, align 8, !tbaa !152
  store ptr %11, ptr %17, align 8, !tbaa !153
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !159

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !120
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !157 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  store ptr %2, ptr %0, align 8, !tbaa !150
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !151
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %57, label %12, !prof !159

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !150
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !151
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !152
  %16 = load ptr, ptr %2, align 8, !tbaa !120
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13)
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  store ptr %19, ptr %20, align 8, !tbaa !153
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !153
  %23 = load i64, ptr %9, align 8, !tbaa !151
  %24 = getelementptr inbounds i8, ptr %22, i64 %23
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %19, ptr noundef %22, ptr noundef %24)
          to label %25 unwind label %43

25:                                               ; preds = %12
  %26 = load ptr, ptr %0, align 8, !tbaa !150
  %27 = load i64, ptr %6, align 8, !tbaa !151
  %28 = load i64, ptr %7, align 8, !tbaa !152
  %29 = load ptr, ptr %8, align 8, !tbaa !153
  %30 = load ptr, ptr %5, align 8, !tbaa !150
  store ptr %30, ptr %0, align 8, !tbaa !150
  %31 = load i64, ptr %14, align 8, !tbaa !151
  store i64 %31, ptr %6, align 8, !tbaa !151
  %32 = load i64, ptr %15, align 8, !tbaa !152
  store i64 %32, ptr %7, align 8, !tbaa !152
  %33 = load ptr, ptr %20, align 8, !tbaa !153
  store ptr %33, ptr %8, align 8, !tbaa !153
  store ptr %26, ptr %5, align 8, !tbaa !150
  store i64 %27, ptr %14, align 8, !tbaa !151
  store i64 %28, ptr %15, align 8, !tbaa !152
  store ptr %29, ptr %20, align 8, !tbaa !153
  %34 = icmp eq i64 %28, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %25
  %36 = load ptr, ptr %26, align 8, !tbaa !120
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %29)
          to label %42 unwind label %39

39:                                               ; preds = %35
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #20
  unreachable

42:                                               ; preds = %25, %35
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %64

43:                                               ; preds = %12
  %44 = landingpad { ptr, i32 }
          cleanup
  %45 = load i64, ptr %15, align 8, !tbaa !152
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr %20, align 8, !tbaa !153
  %49 = load ptr, ptr %5, align 8, !tbaa !150
  %50 = load ptr, ptr %49, align 8, !tbaa !120
  %51 = getelementptr inbounds ptr, ptr %50, i64 3
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %48)
          to label %56 unwind label %53

53:                                               ; preds = %47
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  call void @__clang_call_terminate(ptr %55) #20
  unreachable

56:                                               ; preds = %43, %47
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %44

57:                                               ; preds = %4
  %58 = icmp eq i64 %3, 0
  br i1 %58, label %64, label %59, !prof !442

59:                                               ; preds = %57
  %60 = load ptr, ptr %2, align 8, !tbaa !120
  %61 = getelementptr inbounds ptr, ptr %60, i64 2
  %62 = load ptr, ptr %61, align 8
  %63 = tail call noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3), !prof !443
  store ptr %63, ptr %8, align 8, !tbaa !153
  store i64 %3, ptr %7, align 8, !tbaa !152
  br label %64

64:                                               ; preds = %57, %59, %42
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #15

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108XSLTInitD1Ev(ptr noundef nonnull align 1 dereferenceable(10)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !126
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !126
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !171
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !169
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  %12 = load ptr, ptr %3, align 8, !tbaa !126
  store ptr %12, ptr %0, align 8, !tbaa !126
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !171
  store i64 %14, ptr %6, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !169
  store i64 %16, ptr %8, align 8, !tbaa !169
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !170
  store ptr %18, ptr %10, align 8, !tbaa !170
  store ptr %5, ptr %3, align 8, !tbaa !126
  store i64 %7, ptr %13, align 8, !tbaa !171
  store i64 %9, ptr %15, align 8, !tbaa !169
  store ptr %11, ptr %17, align 8, !tbaa !170
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !120
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !126
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !171
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !126
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !171
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !169
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !120
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !170
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !170
  %24 = load i64, ptr %9, align 8, !tbaa !171
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !126
  %28 = load i64, ptr %6, align 8, !tbaa !171
  %29 = load i64, ptr %7, align 8, !tbaa !169
  %30 = load ptr, ptr %8, align 8, !tbaa !170
  %31 = load ptr, ptr %5, align 8, !tbaa !126
  store ptr %31, ptr %0, align 8, !tbaa !126
  %32 = load i64, ptr %14, align 8, !tbaa !171
  store i64 %32, ptr %6, align 8, !tbaa !171
  %33 = load i64, ptr %15, align 8, !tbaa !169
  store i64 %33, ptr %7, align 8, !tbaa !169
  %34 = load ptr, ptr %21, align 8, !tbaa !170
  store ptr %34, ptr %8, align 8, !tbaa !170
  store ptr %27, ptr %5, align 8, !tbaa !126
  store i64 %28, ptr %14, align 8, !tbaa !171
  store i64 %29, ptr %15, align 8, !tbaa !169
  store ptr %30, ptr %21, align 8, !tbaa !170
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !169
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !170
  %50 = load ptr, ptr %5, align 8, !tbaa !126
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !120
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !170
  store i64 %3, ptr %7, align 8, !tbaa !169
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !171
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !170
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !169
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !170
  %28 = load i64, ptr %12, align 8, !tbaa !171
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !123
  store ptr %34, ptr %32, align 8, !tbaa !123
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !444

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !126
  store ptr %42, ptr %5, align 8, !tbaa !126
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !171
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !169
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !120
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !170
  %51 = load i64, ptr %43, align 8, !tbaa !171
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !170
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !170
  %56 = load i64, ptr %43, align 8, !tbaa !171
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !170
  %60 = load i64, ptr %43, align 8, !tbaa !171
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !170
  %63 = load i64, ptr %12, align 8, !tbaa !171
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !126
  %67 = load i64, ptr %12, align 8, !tbaa !171
  %68 = load i64, ptr %19, align 8, !tbaa !169
  %69 = load ptr, ptr %15, align 8, !tbaa !170
  %70 = load ptr, ptr %5, align 8, !tbaa !126
  store ptr %70, ptr %0, align 8, !tbaa !126
  %71 = load i64, ptr %43, align 8, !tbaa !171
  store i64 %71, ptr %12, align 8, !tbaa !171
  %72 = load i64, ptr %44, align 8, !tbaa !169
  store i64 %72, ptr %19, align 8, !tbaa !169
  %73 = load ptr, ptr %50, align 8, !tbaa !170
  store ptr %73, ptr %15, align 8, !tbaa !170
  store ptr %66, ptr %5, align 8, !tbaa !126
  store i64 %67, ptr %43, align 8, !tbaa !171
  store i64 %68, ptr %44, align 8, !tbaa !169
  store ptr %69, ptr %50, align 8, !tbaa !170
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !120
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !169
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !170
  %89 = load ptr, ptr %5, align 8, !tbaa !126
  %90 = load ptr, ptr %89, align 8, !tbaa !120
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !445

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !446

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !447

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
  store i64 %36, ptr %12, align 8, !tbaa !171
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !169
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !170
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !123
  store ptr %13, ptr %12, align 8, !tbaa !123
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !171
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !126
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !126
  %24 = load i64, ptr %4, align 8, !tbaa !171
  %25 = load i64, ptr %6, align 8, !tbaa !169
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !170
  %28 = load ptr, ptr %3, align 8, !tbaa !126
  store ptr %28, ptr %0, align 8, !tbaa !126
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !171
  store i64 %30, ptr %4, align 8, !tbaa !171
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !169
  store i64 %32, ptr %6, align 8, !tbaa !169
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !170
  store ptr %34, ptr %26, align 8, !tbaa !170
  store ptr %23, ptr %3, align 8, !tbaa !126
  store i64 %24, ptr %29, align 8, !tbaa !171
  store i64 %25, ptr %31, align 8, !tbaa !169
  store ptr %27, ptr %33, align 8, !tbaa !170
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !169
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !170
  %52 = load ptr, ptr %3, align 8, !tbaa !126
  %53 = load ptr, ptr %52, align 8, !tbaa !120
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat !prof !187 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !123
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !448

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
  %40 = load ptr, ptr %35, align 8, !tbaa !123
  %41 = load ptr, ptr %2, align 8, !tbaa !123
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !123
  %48 = load ptr, ptr %2, align 8, !tbaa !123
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !123
  %55 = load ptr, ptr %2, align 8, !tbaa !123
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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !129
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !175
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !165
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !167
  %12 = load ptr, ptr %3, align 8, !tbaa !129
  store ptr %12, ptr %0, align 8, !tbaa !129
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !175
  store i64 %14, ptr %6, align 8, !tbaa !175
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !165
  store i64 %16, ptr %8, align 8, !tbaa !165
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !167
  store ptr %18, ptr %10, align 8, !tbaa !167
  store ptr %5, ptr %3, align 8, !tbaa !129
  store i64 %7, ptr %13, align 8, !tbaa !175
  store i64 %9, ptr %15, align 8, !tbaa !165
  store ptr %11, ptr %17, align 8, !tbaa !167
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !138

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !120
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !129
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !175
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !138

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !129
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !175
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !165
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !120
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !167
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !167
  %24 = load i64, ptr %9, align 8, !tbaa !175
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !129
  %28 = load i64, ptr %6, align 8, !tbaa !175
  %29 = load i64, ptr %7, align 8, !tbaa !165
  %30 = load ptr, ptr %8, align 8, !tbaa !167
  %31 = load ptr, ptr %5, align 8, !tbaa !129
  store ptr %31, ptr %0, align 8, !tbaa !129
  %32 = load i64, ptr %14, align 8, !tbaa !175
  store i64 %32, ptr %6, align 8, !tbaa !175
  %33 = load i64, ptr %15, align 8, !tbaa !165
  store i64 %33, ptr %7, align 8, !tbaa !165
  %34 = load ptr, ptr %21, align 8, !tbaa !167
  store ptr %34, ptr %8, align 8, !tbaa !167
  store ptr %27, ptr %5, align 8, !tbaa !129
  store i64 %28, ptr %14, align 8, !tbaa !175
  store i64 %29, ptr %15, align 8, !tbaa !165
  store ptr %30, ptr %21, align 8, !tbaa !167
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !165
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !167
  %50 = load ptr, ptr %5, align 8, !tbaa !129
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !166

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !120
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !449
  store ptr %65, ptr %8, align 8, !tbaa !167
  store i64 %3, ptr %7, align 8, !tbaa !165
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !175
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !167
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !165
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !167
  %28 = load i64, ptr %12, align 8, !tbaa !175
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !123
  store ptr %34, ptr %32, align 8, !tbaa !123
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !450

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %42 = load ptr, ptr %0, align 8, !tbaa !129
  store ptr %42, ptr %5, align 8, !tbaa !129
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !175
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !165
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !120
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !167
  %51 = load i64, ptr %43, align 8, !tbaa !175
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !167
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !167
  %56 = load i64, ptr %43, align 8, !tbaa !175
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !167
  %60 = load i64, ptr %43, align 8, !tbaa !175
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !167
  %63 = load i64, ptr %12, align 8, !tbaa !175
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !129
  %67 = load i64, ptr %12, align 8, !tbaa !175
  %68 = load i64, ptr %19, align 8, !tbaa !165
  %69 = load ptr, ptr %15, align 8, !tbaa !167
  %70 = load ptr, ptr %5, align 8, !tbaa !129
  store ptr %70, ptr %0, align 8, !tbaa !129
  %71 = load i64, ptr %43, align 8, !tbaa !175
  store i64 %71, ptr %12, align 8, !tbaa !175
  %72 = load i64, ptr %44, align 8, !tbaa !165
  store i64 %72, ptr %19, align 8, !tbaa !165
  %73 = load ptr, ptr %50, align 8, !tbaa !167
  store ptr %73, ptr %15, align 8, !tbaa !167
  store ptr %66, ptr %5, align 8, !tbaa !129
  store i64 %67, ptr %43, align 8, !tbaa !175
  store i64 %68, ptr %44, align 8, !tbaa !165
  store ptr %69, ptr %50, align 8, !tbaa !167
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !120
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #20
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !165
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !167
  %89 = load ptr, ptr %5, align 8, !tbaa !129
  %90 = load ptr, ptr %89, align 8, !tbaa !120
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #20
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !451

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !452

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !453

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
  store i64 %36, ptr %12, align 8, !tbaa !175
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !119 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !175
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !165
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !138

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !167
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !123
  store ptr %13, ptr %12, align 8, !tbaa !123
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !175
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !129
  %24 = load i64, ptr %4, align 8, !tbaa !175
  %25 = load i64, ptr %6, align 8, !tbaa !165
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !167
  %28 = load ptr, ptr %3, align 8, !tbaa !129
  store ptr %28, ptr %0, align 8, !tbaa !129
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !175
  store i64 %30, ptr %4, align 8, !tbaa !175
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !165
  store i64 %32, ptr %6, align 8, !tbaa !165
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !167
  store ptr %34, ptr %26, align 8, !tbaa !167
  store ptr %23, ptr %3, align 8, !tbaa !129
  store i64 %24, ptr %29, align 8, !tbaa !175
  store i64 %25, ptr %31, align 8, !tbaa !165
  store ptr %27, ptr %33, align 8, !tbaa !167
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !165
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !167
  %52 = load ptr, ptr %3, align 8, !tbaa !129
  %53 = load ptr, ptr %52, align 8, !tbaa !120
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat !prof !119 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34, !prof !166

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !123
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !prof !166, !llvm.loop !454

34:                                               ; preds = %30, %3
  %35 = phi ptr [ %0, %3 ], [ %12, %30 ]
  %36 = ptrtoint ptr %35 to i64
  %37 = sub i64 %4, %36
  %38 = ashr exact i64 %37, 3
  switch i64 %38, label %57 [
    i64 3, label %39
    i64 2, label %45
    i64 1, label %52
  ], !prof !455

39:                                               ; preds = %34
  %40 = load ptr, ptr %35, align 8, !tbaa !123
  %41 = load ptr, ptr %2, align 8, !tbaa !123
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !123
  %48 = load ptr, ptr %2, align 8, !tbaa !123
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !123
  %55 = load ptr, ptr %2, align 8, !tbaa !123
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %64, label %57, !prof !138

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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !178
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !163
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = getelementptr inbounds %"struct.std::pair.8", ptr %11, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %13 = load i64, ptr %4, align 8, !tbaa !178
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !178
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !131
  %24 = load i64, ptr %4, align 8, !tbaa !178
  %25 = load i64, ptr %6, align 8, !tbaa !163
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !164
  %28 = load ptr, ptr %3, align 8, !tbaa !131
  store ptr %28, ptr %0, align 8, !tbaa !131
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !178
  store i64 %30, ptr %4, align 8, !tbaa !178
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !163
  store i64 %32, ptr %6, align 8, !tbaa !163
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !164
  store ptr %34, ptr %26, align 8, !tbaa !164
  store ptr %23, ptr %3, align 8, !tbaa !131
  store i64 %24, ptr %29, align 8, !tbaa !178
  store i64 %25, ptr %31, align 8, !tbaa !163
  store ptr %27, ptr %33, align 8, !tbaa !164
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !163
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !164
  %52 = load ptr, ptr %3, align 8, !tbaa !131
  %53 = load ptr, ptr %52, align 8, !tbaa !120
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !178
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !131
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !178
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !163
  %16 = shl i64 %13, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !120
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !164
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !164
  %24 = load i64, ptr %9, align 8, !tbaa !178
  %25 = getelementptr inbounds %"struct.std::pair.8", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !131
  %28 = load i64, ptr %6, align 8, !tbaa !178
  %29 = load i64, ptr %7, align 8, !tbaa !163
  %30 = load ptr, ptr %8, align 8, !tbaa !164
  %31 = load ptr, ptr %5, align 8, !tbaa !131
  store ptr %31, ptr %0, align 8, !tbaa !131
  %32 = load i64, ptr %14, align 8, !tbaa !178
  store i64 %32, ptr %6, align 8, !tbaa !178
  %33 = load i64, ptr %15, align 8, !tbaa !163
  store i64 %33, ptr %7, align 8, !tbaa !163
  %34 = load ptr, ptr %21, align 8, !tbaa !164
  store ptr %34, ptr %8, align 8, !tbaa !164
  store ptr %27, ptr %5, align 8, !tbaa !131
  store i64 %28, ptr %14, align 8, !tbaa !178
  store i64 %29, ptr %15, align 8, !tbaa !163
  store ptr %30, ptr %21, align 8, !tbaa !164
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !163
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !164
  %50 = load ptr, ptr %5, align 8, !tbaa !131
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 4
  %62 = load ptr, ptr %2, align 8, !tbaa !120
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !164
  store i64 %3, ptr %7, align 8, !tbaa !163
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %168, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !178
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !164
  %17 = getelementptr inbounds %"struct.std::pair.8", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !163
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %168, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !164
  %28 = load i64, ptr %12, align 8, !tbaa !178
  %29 = getelementptr %"struct.std::pair.8", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false)
  %33 = getelementptr inbounds %"struct.std::pair.8", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !178
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !178
  %36 = getelementptr inbounds %"struct.std::pair.8", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %168, label %30, !llvm.loop !456

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %96

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %41 = load ptr, ptr %0, align 8, !tbaa !131
  store ptr %41, ptr %5, align 8, !tbaa !131
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !178
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !163
  %44 = shl i64 %14, 4
  %45 = load ptr, ptr %41, align 8, !tbaa !120
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !164
  %50 = load i64, ptr %42, align 8, !tbaa !178
  %51 = getelementptr inbounds %"struct.std::pair.8", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !164
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %82

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !164
  %55 = load i64, ptr %42, align 8, !tbaa !178
  %56 = getelementptr inbounds %"struct.std::pair.8", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %82

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !164
  %59 = load i64, ptr %42, align 8, !tbaa !178
  %60 = getelementptr inbounds %"struct.std::pair.8", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !164
  %62 = load i64, ptr %12, align 8, !tbaa !178
  %63 = getelementptr inbounds %"struct.std::pair.8", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %82

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !131
  %66 = load i64, ptr %12, align 8, !tbaa !178
  %67 = load i64, ptr %19, align 8, !tbaa !163
  %68 = load ptr, ptr %15, align 8, !tbaa !164
  %69 = load ptr, ptr %5, align 8, !tbaa !131
  store ptr %69, ptr %0, align 8, !tbaa !131
  %70 = load i64, ptr %42, align 8, !tbaa !178
  store i64 %70, ptr %12, align 8, !tbaa !178
  %71 = load i64, ptr %43, align 8, !tbaa !163
  store i64 %71, ptr %19, align 8, !tbaa !163
  %72 = load ptr, ptr %49, align 8, !tbaa !164
  store ptr %72, ptr %15, align 8, !tbaa !164
  store ptr %65, ptr %5, align 8, !tbaa !131
  store i64 %66, ptr %42, align 8, !tbaa !178
  store i64 %67, ptr %43, align 8, !tbaa !163
  store ptr %68, ptr %49, align 8, !tbaa !164
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %65, align 8, !tbaa !120
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %68)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #20
  unreachable

81:                                               ; preds = %64, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %168

82:                                               ; preds = %57, %53, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load i64, ptr %43, align 8, !tbaa !163
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8, !tbaa !164
  %88 = load ptr, ptr %5, align 8, !tbaa !131
  %89 = load ptr, ptr %88, align 8, !tbaa !120
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #20
  unreachable

95:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %83

96:                                               ; preds = %38
  %97 = ptrtoint ptr %17 to i64
  %98 = ptrtoint ptr %1 to i64
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %99, %8
  br i1 %100, label %129, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, ptr %2, i64 %99
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %106

104:                                              ; preds = %106, %101
  %105 = icmp eq ptr %17, %1
  br i1 %105, label %114, label %110

106:                                              ; preds = %101, %106
  %107 = phi ptr [ %108, %106 ], [ %102, %101 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %107)
  %108 = getelementptr inbounds %"struct.std::pair.8", ptr %107, i64 1
  %109 = icmp eq ptr %108, %3
  br i1 %109, label %104, label %106, !llvm.loop !457

110:                                              ; preds = %104, %110
  %111 = phi ptr [ %112, %110 ], [ %1, %104 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %111)
  %112 = getelementptr inbounds %"struct.std::pair.8", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !458

114:                                              ; preds = %110, %104
  %115 = ashr exact i64 %99, 4
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %168

117:                                              ; preds = %114, %117
  %118 = phi i64 [ %127, %117 ], [ %115, %114 ]
  %119 = phi ptr [ %126, %117 ], [ %1, %114 ]
  %120 = phi ptr [ %125, %117 ], [ %2, %114 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !183
  store ptr %121, ptr %119, align 8, !tbaa !183
  %122 = getelementptr inbounds %"struct.std::pair.8", ptr %120, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !185
  %124 = getelementptr inbounds %"struct.std::pair.8", ptr %119, i64 0, i32 1
  store ptr %123, ptr %124, align 8, !tbaa !185
  %125 = getelementptr inbounds %"struct.std::pair.8", ptr %120, i64 1
  %126 = getelementptr inbounds %"struct.std::pair.8", ptr %119, i64 1
  %127 = add nsw i64 %118, -1
  %128 = icmp sgt i64 %118, 1
  br i1 %128, label %117, label %168, !llvm.loop !459

129:                                              ; preds = %96
  %130 = sub nsw i64 0, %9
  %131 = getelementptr inbounds %"struct.std::pair.8", ptr %17, i64 %130
  %132 = icmp eq ptr %3, %2
  br i1 %132, label %137, label %133

133:                                              ; preds = %129, %133
  %134 = phi ptr [ %135, %133 ], [ %131, %129 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %134)
  %135 = getelementptr inbounds %"struct.std::pair.8", ptr %134, i64 1
  %136 = icmp eq ptr %135, %17
  br i1 %136, label %137, label %133, !llvm.loop !460

137:                                              ; preds = %133, %129
  %138 = ptrtoint ptr %131 to i64
  %139 = sub i64 %138, %98
  %140 = ashr exact i64 %139, 4
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %144, %137
  %143 = icmp sgt i64 %9, 0
  br i1 %143, label %156, label %168

144:                                              ; preds = %137, %144
  %145 = phi i64 [ %154, %144 ], [ %140, %137 ]
  %146 = phi ptr [ %149, %144 ], [ %17, %137 ]
  %147 = phi ptr [ %148, %144 ], [ %131, %137 ]
  %148 = getelementptr inbounds %"struct.std::pair.8", ptr %147, i64 -1
  %149 = getelementptr inbounds %"struct.std::pair.8", ptr %146, i64 -1
  %150 = load ptr, ptr %148, align 8, !tbaa !183
  store ptr %150, ptr %149, align 8, !tbaa !183
  %151 = getelementptr %"struct.std::pair.8", ptr %147, i64 -1, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !185
  %153 = getelementptr %"struct.std::pair.8", ptr %146, i64 -1, i32 1
  store ptr %152, ptr %153, align 8, !tbaa !185
  %154 = add nsw i64 %145, -1
  %155 = icmp sgt i64 %145, 1
  br i1 %155, label %144, label %142, !llvm.loop !461

156:                                              ; preds = %142, %156
  %157 = phi i64 [ %166, %156 ], [ %9, %142 ]
  %158 = phi ptr [ %165, %156 ], [ %1, %142 ]
  %159 = phi ptr [ %164, %156 ], [ %2, %142 ]
  %160 = load ptr, ptr %159, align 8, !tbaa !183
  store ptr %160, ptr %158, align 8, !tbaa !183
  %161 = getelementptr inbounds %"struct.std::pair.8", ptr %159, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !185
  %163 = getelementptr inbounds %"struct.std::pair.8", ptr %158, i64 0, i32 1
  store ptr %162, ptr %163, align 8, !tbaa !185
  %164 = getelementptr inbounds %"struct.std::pair.8", ptr %159, i64 1
  %165 = getelementptr inbounds %"struct.std::pair.8", ptr %158, i64 1
  %166 = add nsw i64 %157, -1
  %167 = icmp sgt i64 %157, 1
  br i1 %167, label %156, label %168, !llvm.loop !459

168:                                              ; preds = %117, %156, %30, %114, %142, %24, %81, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !131
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !131
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !178
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !163
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !164
  %12 = load ptr, ptr %3, align 8, !tbaa !131
  store ptr %12, ptr %0, align 8, !tbaa !131
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !178
  store i64 %14, ptr %6, align 8, !tbaa !178
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !163
  store i64 %16, ptr %8, align 8, !tbaa !163
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !164
  store ptr %18, ptr %10, align 8, !tbaa !164
  store ptr %5, ptr %3, align 8, !tbaa !131
  store i64 %7, ptr %13, align 8, !tbaa !178
  store i64 %9, ptr %15, align 8, !tbaa !163
  store ptr %11, ptr %17, align 8, !tbaa !164
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !120
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #4 comdat !prof !187 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !123
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !123
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !123
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !123
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !123
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !462

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
  %40 = load ptr, ptr %35, align 8, !tbaa !123
  %41 = load ptr, ptr %2, align 8, !tbaa !123
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !123
  %48 = load ptr, ptr %2, align 8, !tbaa !123
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !123
  %55 = load ptr, ptr %2, align 8, !tbaa !123
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

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !176
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !161
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = getelementptr inbounds %"struct.std::pair", ptr %11, i64 %5
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %13 = load i64, ptr %4, align 8, !tbaa !176
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !176
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !133
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !133
  %24 = load i64, ptr %4, align 8, !tbaa !176
  %25 = load i64, ptr %6, align 8, !tbaa !161
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !162
  %28 = load ptr, ptr %3, align 8, !tbaa !133
  store ptr %28, ptr %0, align 8, !tbaa !133
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !176
  store i64 %30, ptr %4, align 8, !tbaa !176
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !161
  store i64 %32, ptr %6, align 8, !tbaa !161
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !162
  store ptr %34, ptr %26, align 8, !tbaa !162
  store ptr %23, ptr %3, align 8, !tbaa !133
  store i64 %24, ptr %29, align 8, !tbaa !176
  store i64 %25, ptr %31, align 8, !tbaa !161
  store ptr %27, ptr %33, align 8, !tbaa !162
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !161
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !162
  %52 = load ptr, ptr %3, align 8, !tbaa !133
  %53 = load ptr, ptr %52, align 8, !tbaa !120
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #20
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !133
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !176
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !133
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !176
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !161
  %16 = shl i64 %13, 4
  %17 = load ptr, ptr %2, align 8, !tbaa !120
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !162
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !162
  %24 = load i64, ptr %9, align 8, !tbaa !176
  %25 = getelementptr inbounds %"struct.std::pair", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !133
  %28 = load i64, ptr %6, align 8, !tbaa !176
  %29 = load i64, ptr %7, align 8, !tbaa !161
  %30 = load ptr, ptr %8, align 8, !tbaa !162
  %31 = load ptr, ptr %5, align 8, !tbaa !133
  store ptr %31, ptr %0, align 8, !tbaa !133
  %32 = load i64, ptr %14, align 8, !tbaa !176
  store i64 %32, ptr %6, align 8, !tbaa !176
  %33 = load i64, ptr %15, align 8, !tbaa !161
  store i64 %33, ptr %7, align 8, !tbaa !161
  %34 = load ptr, ptr %21, align 8, !tbaa !162
  store ptr %34, ptr %8, align 8, !tbaa !162
  store ptr %27, ptr %5, align 8, !tbaa !133
  store i64 %28, ptr %14, align 8, !tbaa !176
  store i64 %29, ptr %15, align 8, !tbaa !161
  store ptr %30, ptr %21, align 8, !tbaa !162
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !120
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #20
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !161
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !162
  %50 = load ptr, ptr %5, align 8, !tbaa !133
  %51 = load ptr, ptr %50, align 8, !tbaa !120
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #20
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 4
  %62 = load ptr, ptr %2, align 8, !tbaa !120
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !162
  store i64 %3, ptr %7, align 8, !tbaa !161
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 4
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %168, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !176
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !162
  %17 = getelementptr inbounds %"struct.std::pair", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !161
  br i1 %18, label %21, label %38

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %168, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !162
  %28 = load i64, ptr %12, align 8, !tbaa !176
  %29 = getelementptr %"struct.std::pair", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %36, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %33, %30 ], [ %29, %26 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %32, ptr noundef nonnull align 8 dereferenceable(16) %31, i64 16, i1 false)
  %33 = getelementptr inbounds %"struct.std::pair", ptr %32, i64 1
  %34 = load i64, ptr %12, align 8, !tbaa !176
  %35 = add i64 %34, 1
  store i64 %35, ptr %12, align 8, !tbaa !176
  %36 = getelementptr inbounds %"struct.std::pair", ptr %31, i64 1
  %37 = icmp eq ptr %36, %3
  br i1 %37, label %168, label %30, !llvm.loop !463

38:                                               ; preds = %11
  %39 = icmp ugt i64 %14, %20
  br i1 %39, label %40, label %96

40:                                               ; preds = %38
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %41 = load ptr, ptr %0, align 8, !tbaa !133
  store ptr %41, ptr %5, align 8, !tbaa !133
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %42, align 8, !tbaa !176
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %43, align 8, !tbaa !161
  %44 = shl i64 %14, 4
  %45 = load ptr, ptr %41, align 8, !tbaa !120
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %41, i64 noundef %44)
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %48, ptr %49, align 8, !tbaa !162
  %50 = load i64, ptr %42, align 8, !tbaa !176
  %51 = getelementptr inbounds %"struct.std::pair", ptr %48, i64 %50
  %52 = load ptr, ptr %15, align 8, !tbaa !162
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, ptr noundef %52, ptr noundef %1)
          to label %53 unwind label %82

53:                                               ; preds = %40
  %54 = load ptr, ptr %49, align 8, !tbaa !162
  %55 = load i64, ptr %42, align 8, !tbaa !176
  %56 = getelementptr inbounds %"struct.std::pair", ptr %54, i64 %55
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %56, ptr noundef %2, ptr noundef %3)
          to label %57 unwind label %82

57:                                               ; preds = %53
  %58 = load ptr, ptr %49, align 8, !tbaa !162
  %59 = load i64, ptr %42, align 8, !tbaa !176
  %60 = getelementptr inbounds %"struct.std::pair", ptr %58, i64 %59
  %61 = load ptr, ptr %15, align 8, !tbaa !162
  %62 = load i64, ptr %12, align 8, !tbaa !176
  %63 = getelementptr inbounds %"struct.std::pair", ptr %61, i64 %62
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %60, ptr noundef %1, ptr noundef %63)
          to label %64 unwind label %82

64:                                               ; preds = %57
  %65 = load ptr, ptr %0, align 8, !tbaa !133
  %66 = load i64, ptr %12, align 8, !tbaa !176
  %67 = load i64, ptr %19, align 8, !tbaa !161
  %68 = load ptr, ptr %15, align 8, !tbaa !162
  %69 = load ptr, ptr %5, align 8, !tbaa !133
  store ptr %69, ptr %0, align 8, !tbaa !133
  %70 = load i64, ptr %42, align 8, !tbaa !176
  store i64 %70, ptr %12, align 8, !tbaa !176
  %71 = load i64, ptr %43, align 8, !tbaa !161
  store i64 %71, ptr %19, align 8, !tbaa !161
  %72 = load ptr, ptr %49, align 8, !tbaa !162
  store ptr %72, ptr %15, align 8, !tbaa !162
  store ptr %65, ptr %5, align 8, !tbaa !133
  store i64 %66, ptr %42, align 8, !tbaa !176
  store i64 %67, ptr %43, align 8, !tbaa !161
  store ptr %68, ptr %49, align 8, !tbaa !162
  %73 = icmp eq i64 %67, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %64
  %75 = load ptr, ptr %65, align 8, !tbaa !120
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  invoke void %77(ptr noundef nonnull align 8 dereferenceable(8) %65, ptr noundef %68)
          to label %81 unwind label %78

78:                                               ; preds = %74
  %79 = landingpad { ptr, i32 }
          catch ptr null
  %80 = extractvalue { ptr, i32 } %79, 0
  call void @__clang_call_terminate(ptr %80) #20
  unreachable

81:                                               ; preds = %64, %74
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %168

82:                                               ; preds = %57, %53, %40
  %83 = landingpad { ptr, i32 }
          cleanup
  %84 = load i64, ptr %43, align 8, !tbaa !161
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %95, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %49, align 8, !tbaa !162
  %88 = load ptr, ptr %5, align 8, !tbaa !133
  %89 = load ptr, ptr %88, align 8, !tbaa !120
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  invoke void %91(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87)
          to label %95 unwind label %92

92:                                               ; preds = %86
  %93 = landingpad { ptr, i32 }
          catch ptr null
  %94 = extractvalue { ptr, i32 } %93, 0
  call void @__clang_call_terminate(ptr %94) #20
  unreachable

95:                                               ; preds = %82, %86
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %83

96:                                               ; preds = %38
  %97 = ptrtoint ptr %17 to i64
  %98 = ptrtoint ptr %1 to i64
  %99 = sub i64 %97, %98
  %100 = icmp ugt i64 %99, %8
  br i1 %100, label %129, label %101

101:                                              ; preds = %96
  %102 = getelementptr inbounds i8, ptr %2, i64 %99
  %103 = icmp eq ptr %102, %3
  br i1 %103, label %104, label %106

104:                                              ; preds = %106, %101
  %105 = icmp eq ptr %17, %1
  br i1 %105, label %114, label %110

106:                                              ; preds = %101, %106
  %107 = phi ptr [ %108, %106 ], [ %102, %101 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %107)
  %108 = getelementptr inbounds %"struct.std::pair", ptr %107, i64 1
  %109 = icmp eq ptr %108, %3
  br i1 %109, label %104, label %106, !llvm.loop !464

110:                                              ; preds = %104, %110
  %111 = phi ptr [ %112, %110 ], [ %1, %104 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %111)
  %112 = getelementptr inbounds %"struct.std::pair", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !465

114:                                              ; preds = %110, %104
  %115 = ashr exact i64 %99, 4
  %116 = icmp sgt i64 %115, 0
  br i1 %116, label %117, label %168

117:                                              ; preds = %114, %117
  %118 = phi i64 [ %127, %117 ], [ %115, %114 ]
  %119 = phi ptr [ %126, %117 ], [ %1, %114 ]
  %120 = phi ptr [ %125, %117 ], [ %2, %114 ]
  %121 = load ptr, ptr %120, align 8, !tbaa !264
  store ptr %121, ptr %119, align 8, !tbaa !264
  %122 = getelementptr inbounds %"struct.std::pair", ptr %120, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !179
  %124 = getelementptr inbounds %"struct.std::pair", ptr %119, i64 0, i32 1
  store ptr %123, ptr %124, align 8, !tbaa !179
  %125 = getelementptr inbounds %"struct.std::pair", ptr %120, i64 1
  %126 = getelementptr inbounds %"struct.std::pair", ptr %119, i64 1
  %127 = add nsw i64 %118, -1
  %128 = icmp sgt i64 %118, 1
  br i1 %128, label %117, label %168, !llvm.loop !466

129:                                              ; preds = %96
  %130 = sub nsw i64 0, %9
  %131 = getelementptr inbounds %"struct.std::pair", ptr %17, i64 %130
  %132 = icmp eq ptr %3, %2
  br i1 %132, label %137, label %133

133:                                              ; preds = %129, %133
  %134 = phi ptr [ %135, %133 ], [ %131, %129 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %134)
  %135 = getelementptr inbounds %"struct.std::pair", ptr %134, i64 1
  %136 = icmp eq ptr %135, %17
  br i1 %136, label %137, label %133, !llvm.loop !467

137:                                              ; preds = %133, %129
  %138 = ptrtoint ptr %131 to i64
  %139 = sub i64 %138, %98
  %140 = ashr exact i64 %139, 4
  %141 = icmp sgt i64 %140, 0
  br i1 %141, label %144, label %142

142:                                              ; preds = %144, %137
  %143 = icmp sgt i64 %9, 0
  br i1 %143, label %156, label %168

144:                                              ; preds = %137, %144
  %145 = phi i64 [ %154, %144 ], [ %140, %137 ]
  %146 = phi ptr [ %149, %144 ], [ %17, %137 ]
  %147 = phi ptr [ %148, %144 ], [ %131, %137 ]
  %148 = getelementptr inbounds %"struct.std::pair", ptr %147, i64 -1
  %149 = getelementptr inbounds %"struct.std::pair", ptr %146, i64 -1
  %150 = load ptr, ptr %148, align 8, !tbaa !264
  store ptr %150, ptr %149, align 8, !tbaa !264
  %151 = getelementptr %"struct.std::pair", ptr %147, i64 -1, i32 1
  %152 = load ptr, ptr %151, align 8, !tbaa !179
  %153 = getelementptr %"struct.std::pair", ptr %146, i64 -1, i32 1
  store ptr %152, ptr %153, align 8, !tbaa !179
  %154 = add nsw i64 %145, -1
  %155 = icmp sgt i64 %145, 1
  br i1 %155, label %144, label %142, !llvm.loop !468

156:                                              ; preds = %142, %156
  %157 = phi i64 [ %166, %156 ], [ %9, %142 ]
  %158 = phi ptr [ %165, %156 ], [ %1, %142 ]
  %159 = phi ptr [ %164, %156 ], [ %2, %142 ]
  %160 = load ptr, ptr %159, align 8, !tbaa !264
  store ptr %160, ptr %158, align 8, !tbaa !264
  %161 = getelementptr inbounds %"struct.std::pair", ptr %159, i64 0, i32 1
  %162 = load ptr, ptr %161, align 8, !tbaa !179
  %163 = getelementptr inbounds %"struct.std::pair", ptr %158, i64 0, i32 1
  store ptr %162, ptr %163, align 8, !tbaa !179
  %164 = getelementptr inbounds %"struct.std::pair", ptr %159, i64 1
  %165 = getelementptr inbounds %"struct.std::pair", ptr %158, i64 1
  %166 = add nsw i64 %157, -1
  %167 = icmp sgt i64 %157, 1
  br i1 %167, label %156, label %168, !llvm.loop !466

168:                                              ; preds = %117, %156, %30, %114, %142, %24, %81, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !133
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !133
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !176
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !161
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !162
  %12 = load ptr, ptr %3, align 8, !tbaa !133
  store ptr %12, ptr %0, align 8, !tbaa !133
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !176
  store i64 %14, ptr %6, align 8, !tbaa !176
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !161
  store i64 %16, ptr %8, align 8, !tbaa !161
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !162
  store ptr %18, ptr %10, align 8, !tbaa !162
  store ptr %5, ptr %3, align 8, !tbaa !133
  store i64 %7, ptr %13, align 8, !tbaa !176
  store i64 %9, ptr %15, align 8, !tbaa !161
  store ptr %11, ptr %17, align 8, !tbaa !162
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !120
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #20
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanTransformer.cpp() #17 section ".text.startup" !prof !119 !PGOFuncName !469 {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit)
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #18

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #18

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind }
attributes #4 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind memory(none) }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!118}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117}
!35 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!37 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 3}
!40 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9terminateEv, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9terminateEv, ptr @_ZN11xalanc_1_108XSLTInitD1Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag, i64 1}
!70 = !{ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 536868638}
!71 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, i64 1}
!77 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE, i64 1}
!83 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, i64 1}
!84 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XSLTResultTargetC1ERKS0_RN11xercesc_2_713MemoryManagerE, i64 1}
!85 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, i64 1}
!86 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XSLTResultTargetD1Ev, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev, i64 1}
!91 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XSLTEngineImplD1Ev, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev, i64 1}
!96 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev, i64 1}
!97 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!98 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!101 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!103 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 1}
!116 = !{ptr @_GLOBAL__sub_I_XalanTransformer.cpp, ptr @_ZNSt8ios_base4InitC1Ev, i64 1}
!117 = !{ptr @_GLOBAL__sub_I_XalanTransformer.cpp, ptr @__cxa_atexit, i64 1}
!118 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!119 = !{!"function_entry_count", i64 1}
!120 = !{!121, !121, i64 0}
!121 = !{!"vtable pointer", !122, i64 0}
!122 = !{!"Simple C++ TBAA"}
!123 = !{!124, !124, i64 0}
!124 = !{!"any pointer", !125, i64 0}
!125 = !{!"omnipotent char", !122, i64 0}
!126 = !{!127, !124, i64 0}
!127 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!128 = !{!"long", !125, i64 0}
!129 = !{!130, !124, i64 0}
!130 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!131 = !{!132, !124, i64 0}
!132 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!133 = !{!134, !124, i64 0}
!134 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!135 = !{!136, !124, i64 0}
!136 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!137 = !{!125, !125, i64 0}
!138 = !{!"branch_weights", i32 1, i32 0}
!139 = !{!140, !142, i64 208}
!140 = !{!"_ZTSN11xalanc_1_1016XalanTransformerE", !124, i64 8, !127, i64 16, !130, i64 48, !132, i64 80, !134, i64 112, !136, i64 144, !141, i64 176, !142, i64 208, !124, i64 216, !124, i64 224, !143, i64 232, !143, i64 272, !124, i64 312, !124, i64 320, !143, i64 328, !142, i64 368, !124, i64 376}
!141 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!142 = !{!"bool", !125, i64 0}
!143 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !144, i64 0, !145, i64 32}
!144 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!145 = !{!"int", !125, i64 0}
!146 = !{!140, !124, i64 8}
!147 = !{!140, !124, i64 312}
!148 = !{!140, !124, i64 320}
!149 = !{!140, !124, i64 376}
!150 = !{!141, !124, i64 0}
!151 = !{!141, !128, i64 8}
!152 = !{!141, !128, i64 16}
!153 = !{!141, !124, i64 24}
!154 = !{!"function_entry_count", i64 3}
!155 = !{!"branch_weights", i32 1, i32 2}
!156 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!157 = !{!"function_entry_count", i64 2}
!158 = !{!136, !128, i64 16}
!159 = !{!"branch_weights", i32 2, i32 0}
!160 = !{!136, !124, i64 24}
!161 = !{!134, !128, i64 16}
!162 = !{!134, !124, i64 24}
!163 = !{!132, !128, i64 16}
!164 = !{!132, !124, i64 24}
!165 = !{!130, !128, i64 16}
!166 = !{!"branch_weights", i32 0, i32 1}
!167 = !{!130, !124, i64 24}
!168 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!169 = !{!127, !128, i64 16}
!170 = !{!127, !124, i64 24}
!171 = !{!127, !128, i64 8}
!172 = distinct !{!172, !173, !174}
!173 = !{!"llvm.loop.mustprogress"}
!174 = !{!"llvm.loop.unroll.disable"}
!175 = !{!130, !128, i64 8}
!176 = !{!134, !128, i64 8}
!177 = distinct !{!177, !173, !174}
!178 = !{!132, !128, i64 8}
!179 = !{!180, !124, i64 8}
!180 = !{!"_ZTSSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEE", !124, i64 0, !124, i64 8}
!181 = distinct !{!181, !173, !174}
!182 = !{!"VP", i32 0, i64 1, i64 5588641177513083380, i64 1}
!183 = !{!184, !124, i64 0}
!184 = !{!"_ZTSSt4pairIPN11xalanc_1_1014XalanDOMStringES2_E", !124, i64 0, !124, i64 8}
!185 = !{!184, !124, i64 8}
!186 = distinct !{!186, !173, !174}
!187 = !{!"function_entry_count", i64 0}
!188 = !{!189, !124, i64 0}
!189 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEE", !124, i64 0, !124, i64 8}
!190 = !{!189, !124, i64 8}
!191 = !{!192, !142, i64 8}
!192 = !{!"_ZTSN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationE", !124, i64 0, !142, i64 8}
!193 = !{!192, !124, i64 0}
!194 = !{!"VP", i32 0, i64 1, i64 6745432627626125699, i64 1}
!195 = !{i32 -4, i32 1}
!196 = !{i32 -1, i32 1}
!197 = !{i8 0, i8 2}
!198 = !{}
!199 = !{!140, !124, i64 224}
!200 = !{!140, !124, i64 216}
!201 = !{!143, !145, i64 32}
!202 = !{!144, !128, i64 8}
!203 = !{!144, !128, i64 16}
!204 = !{!144, !124, i64 24}
!205 = !{!144, !124, i64 0}
!206 = !{!207, !124, i64 32}
!207 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !208, i64 8, !124, i64 16, !145, i64 24, !124, i64 32, !124, i64 40}
!208 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !125, i64 0}
!209 = !{!142, !142, i64 0}
!210 = !{!211, !124, i64 8}
!211 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !212, i64 0, !124, i64 8}
!212 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!213 = !{!214, !124, i64 216}
!214 = !{!"_ZTSN11xalanc_1_1014XSLTEngineImplE", !215, i64 0, !216, i64 8, !143, i64 16, !143, i64 56, !124, i64 96, !124, i64 104, !217, i64 112, !220, i64 128, !221, i64 160, !222, i64 192, !124, i64 216, !124, i64 224, !142, i64 232, !142, i64 233, !124, i64 240, !136, i64 248, !128, i64 280, !224, i64 288, !124, i64 320, !124, i64 328, !124, i64 336, !124, i64 344, !225, i64 352, !229, i64 456, !233, i64 600, !143, i64 672, !236, i64 712, !142, i64 744, !237, i64 752}
!215 = !{!"_ZTSN11xalanc_1_1013XSLTProcessorE"}
!216 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!217 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EEE", !218, i64 0}
!218 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EE17MemMgrAutoPtrDataE", !219, i64 0}
!219 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XPathProcessorEE", !124, i64 0, !124, i64 8}
!220 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!221 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!222 = !{!"_ZTSN11xalanc_1_1022ProblemListenerDefaultE", !223, i64 0, !124, i64 8, !124, i64 16}
!223 = !{!"_ZTSN11xalanc_1_1015ProblemListenerE"}
!224 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!225 = !{!"_ZTSN11xalanc_1_1018OutputContextStackE", !226, i64 0, !228, i64 80, !128, i64 96}
!226 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !227, i64 16, !227, i64 48}
!227 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!228 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !124, i64 0, !128, i64 8}
!229 = !{!"_ZTSN11xalanc_1_1020XalanNamespacesStackE", !230, i64 0, !232, i64 80, !232, i64 96, !220, i64 112}
!230 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !231, i64 16, !231, i64 48}
!231 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!232 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_20XalanNamespacesStack25XalanNamespacesStackEntryEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !124, i64 0, !128, i64 8}
!233 = !{!"_ZTSN11xalanc_1_1017AttributeListImplE", !234, i64 0, !235, i64 8, !235, i64 40}
!234 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!235 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!236 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!237 = !{!"_ZTSN11xalanc_1_1031XPathConstructionContextDefaultE", !238, i64 0, !239, i64 16, !246, i64 128}
!238 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !124, i64 8}
!239 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !240, i64 8, !128, i64 48, !243, i64 56}
!240 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !241, i64 0}
!241 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !128, i64 8, !242, i64 16}
!242 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!243 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !128, i64 0, !128, i64 8, !244, i64 16, !128, i64 40, !145, i64 48}
!244 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !245, i64 0}
!245 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !124, i64 0, !124, i64 8, !128, i64 16}
!246 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !247, i64 0, !247, i64 32, !145, i64 64, !248, i64 72}
!247 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!248 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !249, i64 0}
!249 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !250, i64 0, !142, i64 40}
!250 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !251, i64 8, !252, i64 16}
!251 = !{!"short", !125, i64 0}
!252 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!253 = !{!"function_entry_count", i64 244781}
!254 = !{!"branch_weights", i32 122391, i32 122390}
!255 = !{!"branch_weights", i32 122389, i32 1}
!256 = !{!"branch_weights", i32 1, i32 122388}
!257 = !{!"branch_weights", i32 122388, i32 62663681}
!258 = distinct !{!258, !173, !174}
!259 = !{!251, !251, i64 0}
!260 = !{!261, !125, i64 0}
!261 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerIcEE", !125, i64 0}
!262 = !{!"VP", i32 0, i64 1, i64 -4794871813964348005, i64 1}
!263 = !{!136, !128, i64 8}
!264 = !{!180, !124, i64 0}
!265 = distinct !{!265, !173, !174}
!266 = distinct !{!266, !173, !174}
!267 = !{!"function_entry_count", i64 335474016}
!268 = !{!"VP", i32 0, i64 335474016, i64 1429807492782621726, i64 335473740, i64 6313752753425413918, i64 276}
!269 = !{!"VP", i32 0, i64 335474016, i64 6313752753425413918, i64 201224632, i64 1429807492782621726, i64 134249384}
!270 = !{!"branch_weights", i32 201394622, i32 134079394}
!271 = !{!"VP", i32 0, i64 201394622, i64 8049669377434801377, i64 201394614, i64 7946378714684030190, i64 8}
!272 = !{!"VP", i32 0, i64 201394622, i64 7946378714684030190, i64 111850953, i64 8049669377434801377, i64 89543669}
!273 = !{!274, !124, i64 16}
!274 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !275, i64 0, !124, i64 16}
!275 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !124, i64 8}
!276 = !{!277, !124, i64 456}
!277 = !{!"_ZTSN11xalanc_1_1033StylesheetExecutionContextDefaultE", !278, i64 0, !279, i64 24, !124, i64 456, !124, i64 464, !290, i64 472, !124, i64 504, !291, i64 512, !292, i64 544, !293, i64 576, !124, i64 608, !124, i64 616, !294, i64 624, !297, i64 744, !298, i64 776, !304, i64 912, !309, i64 1048, !311, i64 1112, !124, i64 1128, !314, i64 1136, !145, i64 1168, !315, i64 1176, !319, i64 1224, !323, i64 1272, !220, i64 1320, !327, i64 1352, !328, i64 1384, !329, i64 1416, !330, i64 1448, !332, i64 1512, !220, i64 1544, !220, i64 1576, !333, i64 1608, !337, i64 1672, !220, i64 1736, !342, i64 1768, !347, i64 1832, !290, i64 1864, !348, i64 1896, !349, i64 1928, !142, i64 2056, !354, i64 2060, !355, i64 2064, !142, i64 2068}
!278 = !{!"_ZTSN11xalanc_1_1026StylesheetExecutionContextE", !274, i64 0}
!279 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefaultE", !274, i64 0, !124, i64 24, !124, i64 32, !280, i64 40, !281, i64 72, !124, i64 104, !143, i64 112, !282, i64 152, !246, i64 208, !287, i64 328, !288, i64 344}
!280 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!281 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!282 = !{!"_ZTSN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEEE", !283, i64 0, !284, i64 8, !285, i64 16, !286, i64 24}
!283 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEE"}
!284 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18MutableNodeRefListEEE", !124, i64 0}
!285 = !{!"_ZTSN11xalanc_1_1022ClearCacheResetFunctorINS_18MutableNodeRefListEEE"}
!286 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!287 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefault28ContextNodeListPositionCacheE", !124, i64 0, !145, i64 8}
!288 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !289, i64 0, !143, i64 8, !143, i64 48}
!289 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!290 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!291 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17FormatterListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!292 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_11PrintWriterENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!293 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17XalanOutputStreamENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!294 = !{!"_ZTSN11xalanc_1_1014VariablesStackE", !295, i64 0, !128, i64 32, !142, i64 40, !128, i64 48, !296, i64 56, !290, i64 88}
!295 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!296 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!297 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!298 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringESt4pairIPKNS_5XPathElENS_17XalanMapKeyTraitsIS1_EEEE", !299, i64 0, !300, i64 1, !124, i64 8, !301, i64 16, !128, i64 24, !128, i64 32, !302, i64 40, !302, i64 64, !303, i64 88, !128, i64 120, !128, i64 128}
!299 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!300 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!301 = !{!"float", !125, i64 0}
!302 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringESt4pairIPKNS_5XPathElENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!303 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringESt4pairIPKNS_5XPathElENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!304 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_9XalanNodeEPNS_8KeyTableENS_17XalanMapKeyTraitsIS3_EEEE", !305, i64 0, !306, i64 1, !124, i64 8, !301, i64 16, !128, i64 24, !128, i64 32, !307, i64 40, !307, i64 64, !308, i64 88, !128, i64 120, !128, i64 128}
!305 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_9XalanNodeEEE"}
!306 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_109XalanNodeEE"}
!307 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_9XalanNodeEPNS_8KeyTableENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!308 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_9XalanNodeEPNS_8KeyTableENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!309 = !{!"_ZTSN11xalanc_1_1013CountersTableE", !310, i64 0, !280, i64 32}
!310 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!311 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeDocumentELb1EEE", !312, i64 0}
!312 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeDocumentELb1EE17MemMgrAutoPtrDataE", !313, i64 0}
!313 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanSourceTreeDocumentEE", !124, i64 0, !124, i64 8}
!314 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_12ElemTemplateENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!315 = !{!"_ZTSN11xalanc_1_1024XResultTreeFragAllocatorE", !316, i64 0}
!316 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_15XResultTreeFragEEE", !317, i64 0, !142, i64 40}
!317 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_15XResultTreeFragENS_18ReusableArenaBlockIS1_tEEEE", !251, i64 8, !318, i64 16}
!318 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_15XResultTreeFragEtEEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!319 = !{!"_ZTSN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorE", !320, i64 0}
!320 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE", !321, i64 0, !142, i64 40}
!321 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE", !251, i64 8, !322, i64 16}
!322 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!323 = !{!"_ZTSN11xalanc_1_1032XalanSourceTreeDocumentAllocatorE", !324, i64 0}
!324 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_23XalanSourceTreeDocumentEEE", !325, i64 0, !142, i64 40}
!325 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_23XalanSourceTreeDocumentENS_18ReusableArenaBlockIS1_tEEEE", !251, i64 8, !326, i64 16}
!326 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_23XalanSourceTreeDocumentEtEEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!327 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!328 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!329 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!330 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_24DefaultCacheResetFunctorIS1_EEEE", !283, i64 0, !284, i64 8, !331, i64 16, !286, i64 24, !128, i64 56}
!331 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_18MutableNodeRefListEEE"}
!332 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_33StylesheetExecutionContextDefault16NodesToTransformENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!333 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_14XalanDOMStringENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_24DefaultCacheResetFunctorIS1_EEEE", !334, i64 0, !335, i64 8, !336, i64 16, !247, i64 24, !128, i64 56}
!334 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_14XalanDOMStringEEE"}
!335 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_14XalanDOMStringEEE", !124, i64 0}
!336 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_14XalanDOMStringEEE"}
!337 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringENS_31DefaultCacheCreateFunctorMemMgrIS2_EENS_13DeleteFunctorIS2_EENS_24DefaultCacheResetFunctorIS2_EEEE", !338, i64 0, !339, i64 8, !340, i64 16, !341, i64 24, !128, i64 56}
!338 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringEEE"}
!339 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringEEE", !124, i64 0}
!340 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringEEE"}
!341 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!342 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_21FormatterToSourceTreeENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_24DefaultCacheResetFunctorIS1_EEEE", !343, i64 0, !344, i64 8, !345, i64 16, !346, i64 24, !128, i64 56}
!343 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_21FormatterToSourceTreeEEE"}
!344 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_21FormatterToSourceTreeEEE", !124, i64 0}
!345 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_21FormatterToSourceTreeEEE"}
!346 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_21FormatterToSourceTreeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!347 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEENS3_IS5_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!348 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_26StylesheetExecutionContext22UseAttributeSetIndexesENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!349 = !{!"_ZTSN11xalanc_1_1010NodeSorterE", !350, i64 0, !351, i64 32, !352, i64 64, !353, i64 96}
!350 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!351 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!352 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!353 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!354 = !{!"_ZTSN11xalanc_1_1026StylesheetExecutionContext11eEscapeURLsE", !125, i64 0}
!355 = !{!"_ZTSN11xalanc_1_1026StylesheetExecutionContext12eOmitMETATagE", !125, i64 0}
!356 = !{!"VP", i32 0, i64 1, i64 -7470080193416743366, i64 1}
!357 = distinct !{!357, !173, !174}
!358 = !{!359, !124, i64 0}
!359 = !{!"_ZTSN11xalanc_1_1016XalanTransformer11EnsureResetE", !124, i64 0}
!360 = !{!"VP", i32 0, i64 1, i64 -7540811270350734874, i64 1}
!361 = !{!"VP", i32 0, i64 1, i64 8410021231074218105, i64 1}
!362 = !{!"VP", i32 0, i64 1, i64 -5301959025798417029, i64 1}
!363 = !{!"VP", i32 0, i64 1, i64 2462956635470308356, i64 1}
!364 = !{!"VP", i32 0, i64 1, i64 -248323389509873836, i64 1}
!365 = !{!"VP", i32 0, i64 1, i64 3883235828099755786, i64 1}
!366 = !{!"VP", i32 0, i64 1, i64 -8947152676449275756, i64 1}
!367 = !{!"VP", i32 0, i64 1, i64 5457511342809024748, i64 1}
!368 = !{!"VP", i32 0, i64 1, i64 -1559730004406402059, i64 1}
!369 = distinct !{!369, !173, !174}
!370 = !{!371, !124, i64 288}
!371 = !{!"_ZTSN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE", !372, i64 0, !374, i64 8, !124, i64 288}
!372 = !{!"_ZTSN11xalanc_1_1023XSLTProcessorEnvSupportE", !373, i64 0}
!373 = !{!"_ZTSN11xalanc_1_1015XPathEnvSupportE"}
!374 = !{!"_ZTSN11xalanc_1_1022XPathEnvSupportDefaultE", !373, i64 0, !375, i64 8, !378, i64 144}
!375 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEE", !299, i64 0, !300, i64 1, !124, i64 8, !301, i64 16, !128, i64 24, !128, i64 32, !376, i64 40, !376, i64 64, !377, i64 88, !128, i64 120, !128, i64 128}
!376 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!377 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!378 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EE", !299, i64 0, !300, i64 1, !124, i64 8, !301, i64 16, !128, i64 24, !128, i64 32, !379, i64 40, !379, i64 64, !380, i64 88, !128, i64 120, !128, i64 128}
!379 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEEE", !124, i64 0, !124, i64 8, !124, i64 16}
!380 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !124, i64 0, !128, i64 8, !128, i64 16, !124, i64 24}
!381 = !{!279, !124, i64 24}
!382 = !{!279, !124, i64 32}
!383 = distinct !{!383, !173, !174}
!384 = distinct !{!384, !173, !174}
!385 = !{!"VP", i32 0, i64 1, i64 5274892207158121247, i64 1}
!386 = !{!"branch_weights", i32 1, i32 1}
!387 = !{!"function_entry_count", i64 42470003}
!388 = !{!"branch_weights", i32 52000, i32 42418003}
!389 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!390 = !{!"function_entry_count", i64 41614}
!391 = !{!"branch_weights", i32 0, i32 41614}
!392 = !{!"branch_weights", i32 12, i32 41602}
!393 = !{!"branch_weights", i32 5, i32 7}
!394 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!395 = !{!"branch_weights", i32 354, i32 41248}
!396 = !{!"branch_weights", i32 40889, i32 359}
!397 = !{!"branch_weights", i32 40581, i32 1021}
!398 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!399 = !{!"function_entry_count", i64 22}
!400 = !{!"branch_weights", i32 64551590, i32 18}
!401 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!402 = !{!"branch_weights", i32 18, i32 0}
!403 = !{!"branch_weights", i32 4, i32 64551586}
!404 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!405 = !{!"function_entry_count", i64 155828046}
!406 = !{!"branch_weights", i32 0, i32 155828046}
!407 = !{!"branch_weights", i32 133170777, i32 22657269}
!408 = !{!"branch_weights", i32 20, i32 133170757}
!409 = !{!"branch_weights", i32 1, i32 19024395}
!410 = !{!"branch_weights", i32 19024395, i32 -26420601}
!411 = distinct !{!411, !173, !174}
!412 = !{!"branch_weights", i32 20748786, i32 1908483}
!413 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!414 = !{!"branch_weights", i32 20748786, i32 0}
!415 = !{!"branch_weights", i32 0, i32 20748786}
!416 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!417 = !{!"branch_weights", i32 0, i32 1908483}
!418 = !{!"branch_weights", i32 1, i32 1908482}
!419 = !{!"branch_weights", i32 1908482, i32 49797853}
!420 = distinct !{!420, !173, !174}
!421 = !{!"branch_weights", i32 1908482, i32 1}
!422 = distinct !{!422, !173, !174}
!423 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!424 = distinct !{!424, !173, !174}
!425 = !{!"function_entry_count", i64 124150652}
!426 = !{!"branch_weights", i32 124150652, i32 0}
!427 = !{!"function_entry_count", i64 64551586}
!428 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!429 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!430 = !{!"branch_weights", i32 42418193, i32 22133393}
!431 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!432 = !{!"branch_weights", i32 1, i32 127}
!433 = !{!"branch_weights", i32 127, i32 1}
!434 = distinct !{!434, !173, !174}
!435 = distinct !{!435, !173, !174}
!436 = distinct !{!436, !173, !174}
!437 = distinct !{!437, !173, !174}
!438 = distinct !{!438, !173, !174}
!439 = distinct !{!439, !173, !174}
!440 = distinct !{!440, !173, !174}
!441 = distinct !{!441, !173, !174}
!442 = !{!"branch_weights", i32 0, i32 2}
!443 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!444 = distinct !{!444, !173, !174}
!445 = distinct !{!445, !173, !174}
!446 = distinct !{!446, !173, !174}
!447 = distinct !{!447, !173, !174}
!448 = distinct !{!448, !173, !174}
!449 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!450 = distinct !{!450, !173, !174}
!451 = distinct !{!451, !173, !174}
!452 = distinct !{!452, !173, !174}
!453 = distinct !{!453, !173, !174}
!454 = distinct !{!454, !173, !174}
!455 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 1}
!456 = distinct !{!456, !173, !174}
!457 = distinct !{!457, !173, !174}
!458 = distinct !{!458, !173, !174}
!459 = distinct !{!459, !173, !174}
!460 = distinct !{!460, !173, !174}
!461 = distinct !{!461, !173, !174}
!462 = distinct !{!462, !173, !174}
!463 = distinct !{!463, !173, !174}
!464 = distinct !{!464, !173, !174}
!465 = distinct !{!465, !173, !174}
!466 = distinct !{!466, !173, !174}
!467 = distinct !{!467, !173, !174}
!468 = distinct !{!468, !173, !174}
!469 = !{!"XalanTransformer.cpp;_GLOBAL__sub_I_XalanTransformer.cpp"}
