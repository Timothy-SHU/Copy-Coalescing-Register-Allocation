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
%"struct.std::pair.6" = type { ptr, ptr }
%"struct.xalanc_1_10::DeleteFunctor" = type { ptr }
%"struct.xalanc_1_10::DeleteFunctor.8" = type { ptr }
%"struct.xalanc_1_10::XalanDestroyFunctor" = type { i8 }
%"struct.xalanc_1_10::XalanDestroyFunctor.10" = type { i8 }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.77" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XSLTInit>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XSLTInit>::MemMgrAutoPtrData" = type { %"struct.std::pair.78" }
%"struct.std::pair.78" = type { ptr, ptr }
%"class.xalanc_1_10::XalanAutoPtr" = type { ptr }
%"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation" = type <{ ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.192" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanParsedSourceHelper>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanParsedSourceHelper>::MemMgrAutoPtrData" = type { %"struct.std::pair.193" }
%"struct.std::pair.193" = type { ptr, ptr }
%"class.xalanc_1_10::XSLTProcessorEnvSupportDefault" = type { %"class.xalanc_1_10::XSLTProcessorEnvSupport", %"class.xalanc_1_10::XPathEnvSupportDefault", ptr }
%"class.xalanc_1_10::XSLTProcessorEnvSupport" = type { %"class.xalanc_1_10::XPathEnvSupport" }
%"class.xalanc_1_10::XPathEnvSupport" = type { ptr }
%"class.xalanc_1_10::XPathEnvSupportDefault" = type { %"class.xalanc_1_10::XPathEnvSupport", %"class.xalanc_1_10::XalanMap.90", %"class.xalanc_1_10::XalanMap.93" }
%"class.xalanc_1_10::XalanMap.90" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.91", %"class.xalanc_1_10::XalanList.91", %"class.xalanc_1_10::XalanVector.92", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.91" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.92" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.93" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.94", %"class.xalanc_1_10::XalanList.94", %"class.xalanc_1_10::XalanVector.95", i64, i64 }
%"class.xalanc_1_10::XalanList.94" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.95" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XObjectFactoryDefault" = type { %"class.xalanc_1_10::XObjectFactory", %"class.xalanc_1_10::XStringAdapterAllocator", %"class.xalanc_1_10::XStringAllocator", %"class.xalanc_1_10::XStringCachedAllocator", %"class.xalanc_1_10::XStringReferenceAllocator", %"class.xalanc_1_10::XNumberAllocator", %"class.xalanc_1_10::XNodeSetAllocator", %"class.xalanc_1_10::XNodeSetNodeProxyAllocator", %"class.xalanc_1_10::XTokenNumberAdapterAllocator", %"class.xalanc_1_10::XTokenStringAdapterAllocator", %"class.xalanc_1_10::XalanVector.132", %"class.xalanc_1_10::XalanVector.133", %"class.xalanc_1_10::XalanVector.134", %"class.xalanc_1_10::XalanVector.135", %"class.xalanc_1_10::XNull", %"class.xalanc_1_10::XBoolean", %"class.xalanc_1_10::XBoolean" }
%"class.xalanc_1_10::XObjectFactory" = type { ptr, ptr }
%"class.xalanc_1_10::XStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.96" }
%"class.xalanc_1_10::ReusableArenaAllocator.96" = type <{ %"class.xalanc_1_10::ArenaAllocator.97", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.97" = type { ptr, i16, %"class.xalanc_1_10::XalanList.98" }
%"class.xalanc_1_10::XalanList.98" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.100" }
%"class.xalanc_1_10::ReusableArenaAllocator.100" = type <{ %"class.xalanc_1_10::ArenaAllocator.101", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.101" = type { ptr, i16, %"class.xalanc_1_10::XalanList.102" }
%"class.xalanc_1_10::XalanList.102" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringCachedAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.104" }
%"class.xalanc_1_10::ReusableArenaAllocator.104" = type <{ %"class.xalanc_1_10::ArenaAllocator.105", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.105" = type { ptr, i16, %"class.xalanc_1_10::XalanList.106" }
%"class.xalanc_1_10::XalanList.106" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringReferenceAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.108" }
%"class.xalanc_1_10::ReusableArenaAllocator.108" = type <{ %"class.xalanc_1_10::ArenaAllocator.109", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.109" = type { ptr, i16, %"class.xalanc_1_10::XalanList.110" }
%"class.xalanc_1_10::XalanList.110" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNumberAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.112" }
%"class.xalanc_1_10::ReusableArenaAllocator.112" = type <{ %"class.xalanc_1_10::ArenaAllocator.113", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.113" = type { ptr, i16, %"class.xalanc_1_10::XalanList.114" }
%"class.xalanc_1_10::XalanList.114" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.116" }
%"class.xalanc_1_10::ReusableArenaAllocator.116" = type <{ %"class.xalanc_1_10::ArenaAllocator.117", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.117" = type { ptr, i16, %"class.xalanc_1_10::XalanList.118" }
%"class.xalanc_1_10::XalanList.118" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetNodeProxyAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.120" }
%"class.xalanc_1_10::ReusableArenaAllocator.120" = type <{ %"class.xalanc_1_10::ArenaAllocator.121", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.121" = type { ptr, i16, %"class.xalanc_1_10::XalanList.122" }
%"class.xalanc_1_10::XalanList.122" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenNumberAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.124" }
%"class.xalanc_1_10::ReusableArenaAllocator.124" = type <{ %"class.xalanc_1_10::ArenaAllocator.125", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.125" = type { ptr, i16, %"class.xalanc_1_10::XalanList.126" }
%"class.xalanc_1_10::XalanList.126" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.128" }
%"class.xalanc_1_10::ReusableArenaAllocator.128" = type <{ %"class.xalanc_1_10::ArenaAllocator.129", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.129" = type { ptr, i16, %"class.xalanc_1_10::XalanList.130" }
%"class.xalanc_1_10::XalanList.130" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.132" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.133" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.134" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.135" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XNull" = type { %"class.xalanc_1_10::XObject" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XBoolean" = type <{ %"class.xalanc_1_10::XObject", i8, [7 x i8] }>
%"class.xalanc_1_10::XPathFactoryBlock" = type { %"class.xalanc_1_10::XPathFactory", %"class.xalanc_1_10::XPathAllocator" }
%"class.xalanc_1_10::XPathFactory" = type { ptr }
%"class.xalanc_1_10::XPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.136" }
%"class.xalanc_1_10::ArenaAllocator.136" = type { ptr, i64, %"class.xalanc_1_10::XalanList.137" }
%"class.xalanc_1_10::XalanList.137" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XSLTEngineImpl" = type { %"class.xalanc_1_10::XSLTProcessor", %"class.xalanc_1_10::PrefixResolver", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr.138", %"class.xalanc_1_10::XalanVector.49", %"class.xalanc_1_10::XalanVector.141", %"class.xalanc_1_10::ProblemListenerDefault", ptr, ptr, i8, i8, ptr, %"class.xalanc_1_10::XalanVector.3", i64, %"class.xalanc_1_10::XalanVector.142", ptr, ptr, ptr, ptr, %"class.xalanc_1_10::OutputContextStack", %"class.xalanc_1_10::XalanNamespacesStack", %"class.xalanc_1_10::AttributeListImpl", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.148", i8, %"class.xalanc_1_10::XPathConstructionContextDefault" }
%"class.xalanc_1_10::XSLTProcessor" = type { ptr }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.138" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" = type { %"struct.std::pair.139" }
%"struct.std::pair.139" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.49" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.141" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::XalanVector.142" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::OutputContextStack" = type { %"class.xalanc_1_10::XalanDeque", %"struct.xalanc_1_10::XalanDequeIterator", i64 }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.143", %"class.xalanc_1_10::XalanVector.143" }
%"class.xalanc_1_10::XalanVector.143" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator" = type { ptr, i64 }
%"class.xalanc_1_10::XalanNamespacesStack" = type { %"class.xalanc_1_10::XalanDeque.144", %"struct.xalanc_1_10::XalanDequeIterator.146", %"struct.xalanc_1_10::XalanDequeIterator.146", %"class.xalanc_1_10::XalanVector.49" }
%"class.xalanc_1_10::XalanDeque.144" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.145", %"class.xalanc_1_10::XalanVector.145" }
%"class.xalanc_1_10::XalanVector.145" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator.146" = type { ptr, i64 }
%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector.147", %"class.xalanc_1_10::XalanVector.147" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.147" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.148" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContextDefault" = type { %"class.xalanc_1_10::XPathConstructionContext", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringCache" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.149" }
%"class.xalanc_1_10::ArenaAllocator.149" = type { ptr, i64, %"class.xalanc_1_10::XalanList.150" }
%"class.xalanc_1_10::XalanList.150" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.16", %"class.xalanc_1_10::XalanVector.16", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.16" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanTransformer::EnsureReset" = type { ptr }
%"class.xalanc_1_10::DOMStringPrintWriter" = type { %"class.xalanc_1_10::PrintWriter", ptr }
%"class.xalanc_1_10::PrintWriter" = type { %"class.xalanc_1_10::Writer", i8, ptr }
%"class.xalanc_1_10::Writer" = type { ptr }
%"class.xalanc_1_10::XalanTransformerProblemListener" = type { %"class.xalanc_1_10::ProblemListener", %"class.xalanc_1_10::ProblemListenerDefault", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XSLTInputSource" = type { %"class.xercesc_2_7::InputSource.base", ptr, ptr }
%"class.xercesc_2_7::InputSource.base" = type <{ ptr, ptr, ptr, ptr, ptr, i8 }>
%"class.xalanc_1_10::XSLTResultTarget" = type { %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, ptr }
%"class.xalanc_1_10::StylesheetConstructionContextDefault" = type { %"class.xalanc_1_10::StylesheetConstructionContext", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr.138", %"class.xalanc_1_10::XalanVector.151", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanArrayAllocator", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanQNameByValue", %"class.xalanc_1_10::XalanDOMStringCache", %"class.xalanc_1_10::XalanAVTAllocator", %"class.xalanc_1_10::XalanAVTPartSimpleAllocator", %"class.xalanc_1_10::XalanAVTPartXPathAllocator", %"class.xalanc_1_10::XalanQNameByValueAllocator", %"class.xalanc_1_10::XalanQNameByReference", %"class.xalanc_1_10::XalanArrayAllocator.161", %"class.xalanc_1_10::XalanVector.163", %"class.xalanc_1_10::XalanElemApplyTemplatesAllocator", %"class.xalanc_1_10::XalanElemAttributeAllocator", %"class.xalanc_1_10::XalanElemAttributeSetAllocator", %"class.xalanc_1_10::XalanElemCallTemplateAllocator", %"class.xalanc_1_10::XalanElemElementAllocator", %"class.xalanc_1_10::XalanElemLiteralResultAllocator", %"class.xalanc_1_10::XalanElemTemplateAllocator", %"class.xalanc_1_10::XalanElemTextLiteralAllocator", %"class.xalanc_1_10::XalanElemValueOfAllocator", %"class.xalanc_1_10::XalanElemVariableAllocator", %"class.xalanc_1_10::XalanMatchPatternDataAllocator", %"class.xalanc_1_10::XalanQNameByReference" }
%"class.xalanc_1_10::StylesheetConstructionContext" = type { %"class.xalanc_1_10::XPathConstructionContext" }
%"class.xalanc_1_10::XalanVector.151" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanArrayAllocator" = type { %"class.xalanc_1_10::XalanList.152", i64, ptr }
%"class.xalanc_1_10::XalanList.152" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanAVTAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.153" }
%"class.xalanc_1_10::ArenaAllocator.153" = type { ptr, i64, %"class.xalanc_1_10::XalanList.154" }
%"class.xalanc_1_10::XalanList.154" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartSimpleAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.155" }
%"class.xalanc_1_10::ArenaAllocator.155" = type { ptr, i64, %"class.xalanc_1_10::XalanList.156" }
%"class.xalanc_1_10::XalanList.156" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartXPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.157" }
%"class.xalanc_1_10::ArenaAllocator.157" = type { ptr, i64, %"class.xalanc_1_10::XalanList.158" }
%"class.xalanc_1_10::XalanList.158" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValueAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.159" }
%"class.xalanc_1_10::ArenaAllocator.159" = type { ptr, i64, %"class.xalanc_1_10::XalanList.160" }
%"class.xalanc_1_10::XalanList.160" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanArrayAllocator.161" = type { %"class.xalanc_1_10::XalanList.162", i64, ptr }
%"class.xalanc_1_10::XalanList.162" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.163" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanElemApplyTemplatesAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.164" }
%"class.xalanc_1_10::ArenaAllocator.164" = type { ptr, i64, %"class.xalanc_1_10::XalanList.165" }
%"class.xalanc_1_10::XalanList.165" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.166" }
%"class.xalanc_1_10::ArenaAllocator.166" = type { ptr, i64, %"class.xalanc_1_10::XalanList.167" }
%"class.xalanc_1_10::XalanList.167" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeSetAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.168" }
%"class.xalanc_1_10::ArenaAllocator.168" = type { ptr, i64, %"class.xalanc_1_10::XalanList.169" }
%"class.xalanc_1_10::XalanList.169" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemCallTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.170" }
%"class.xalanc_1_10::ArenaAllocator.170" = type { ptr, i64, %"class.xalanc_1_10::XalanList.171" }
%"class.xalanc_1_10::XalanList.171" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemElementAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.172" }
%"class.xalanc_1_10::ArenaAllocator.172" = type { ptr, i64, %"class.xalanc_1_10::XalanList.173" }
%"class.xalanc_1_10::XalanList.173" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemLiteralResultAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.174" }
%"class.xalanc_1_10::ArenaAllocator.174" = type { ptr, i64, %"class.xalanc_1_10::XalanList.175" }
%"class.xalanc_1_10::XalanList.175" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.176" }
%"class.xalanc_1_10::ArenaAllocator.176" = type { ptr, i64, %"class.xalanc_1_10::XalanList.177" }
%"class.xalanc_1_10::XalanList.177" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTextLiteralAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.178" }
%"class.xalanc_1_10::ArenaAllocator.178" = type { ptr, i64, %"class.xalanc_1_10::XalanList.179" }
%"class.xalanc_1_10::XalanList.179" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemValueOfAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.180" }
%"class.xalanc_1_10::ArenaAllocator.180" = type { ptr, i64, %"class.xalanc_1_10::XalanList.181" }
%"class.xalanc_1_10::XalanList.181" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemVariableAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.182" }
%"class.xalanc_1_10::ArenaAllocator.182" = type { ptr, i64, %"class.xalanc_1_10::XalanList.183" }
%"class.xalanc_1_10::XalanList.183" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMatchPatternDataAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.184" }
%"class.xalanc_1_10::ArenaAllocator.184" = type { ptr, i64, %"class.xalanc_1_10::XalanList.185" }
%"class.xalanc_1_10::XalanList.185" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"class.xalanc_1_10::XalanTransformerOutputStream" = type { %"class.xalanc_1_10::XalanOutputStream", ptr, ptr, ptr }
%"class.xalanc_1_10::XalanOutputStream" = type { ptr, i32, ptr, i32, %"class.xalanc_1_10::XalanVector.5", %"class.xalanc_1_10::XalanDOMString", i8, i8, %"class.xalanc_1_10::XalanVector.4" }
%"class.xalanc_1_10::XalanOutputStreamPrintWriter" = type <{ %"class.xalanc_1_10::PrintWriter", ptr, %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8] }>
%"class.xalanc_1_10::XalanSourceTreeDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", ptr }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.87", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap.80", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanMap.80" = type { %"class.xalanc_1_10::XalanHasher.81", %"struct.std::equal_to.83", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.85", %"class.xalanc_1_10::XalanList.85", %"class.xalanc_1_10::XalanVector.86", i64, i64 }
%"class.xalanc_1_10::XalanHasher.81" = type { i8 }
%"struct.std::equal_to.83" = type { i8 }
%"class.xalanc_1_10::XalanList.85" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.86" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.87" = type { %"class.xalanc_1_10::XalanHasher.81", %"struct.std::equal_to.83", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.88", %"class.xalanc_1_10::XalanList.88", %"class.xalanc_1_10::XalanVector.89", i64, i64 }
%"class.xalanc_1_10::XalanList.88" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.89" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xalanc_1_10::XSLException" = type { ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i64, i64 }
%"struct.__gnu_cxx::__ops::_Iter_equals_val" = type { ptr }
%"struct.xalanc_1_10::ConstructValueWithNoMemoryManager" = type { i8 }
%"struct.__gnu_cxx::__ops::_Iter_equals_val.186" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr.187" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMString, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanDOMString, false>::MemMgrAutoPtrData" = type { %"struct.std::pair.188" }
%"struct.std::pair.188" = type { ptr, ptr }
%"struct.__gnu_cxx::__ops::_Iter_equals_val.190" = type { ptr }
%"class.xalanc_1_10::StylesheetExecutionContextDefault" = type <{ %"class.xalanc_1_10::StylesheetExecutionContext", %"class.xalanc_1_10::XPathExecutionContextDefault", ptr, ptr, %"class.xalanc_1_10::XalanVector.17", ptr, %"class.xalanc_1_10::XalanVector.18", %"class.xalanc_1_10::XalanVector.19", %"class.xalanc_1_10::XalanVector.20", ptr, ptr, %"class.xalanc_1_10::VariablesStack", %"class.xalanc_1_10::XalanVector.23", %"class.xalanc_1_10::XalanMap", %"class.xalanc_1_10::XalanMap.27", %"class.xalanc_1_10::CountersTable", %"class.xalanc_1_10::XalanMemMgrAutoPtr", ptr, %"class.xalanc_1_10::XalanVector.36", i32, [4 x i8], %"class.xalanc_1_10::XResultTreeFragAllocator", %"class.xalanc_1_10::XalanSourceTreeDocumentFragmentAllocator", %"class.xalanc_1_10::XalanSourceTreeDocumentAllocator", %"class.xalanc_1_10::XalanVector.49", %"class.xalanc_1_10::XalanVector.50", %"class.xalanc_1_10::XalanVector.51", %"class.xalanc_1_10::XalanVector.52", %"class.xalanc_1_10::XalanObjectStackCache", %"class.xalanc_1_10::XalanVector.53", %"class.xalanc_1_10::XalanVector.49", %"class.xalanc_1_10::XalanVector.49", %"class.xalanc_1_10::XalanObjectStackCache.54", %"class.xalanc_1_10::XalanObjectStackCache.59", %"class.xalanc_1_10::XalanVector.49", %"class.xalanc_1_10::XalanObjectStackCache.65", %"class.xalanc_1_10::XalanVector.71", %"class.xalanc_1_10::XalanVector.17", %"class.xalanc_1_10::XalanVector.72", %"class.xalanc_1_10::NodeSorter", i8, [3 x i8], i32, i32, i8, [3 x i8] }>
%"class.xalanc_1_10::StylesheetExecutionContext" = type { %"class.xalanc_1_10::XPathExecutionContext" }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContextDefault" = type { %"class.xalanc_1_10::XPathExecutionContext", ptr, ptr, %"class.xalanc_1_10::XalanVector.11", %"class.xalanc_1_10::XalanVector.12", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanObjectCache", %"class.xalanc_1_10::XalanDOMStringCache", %"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache", %"class.xalanc_1_10::XalanQNameByValue" }
%"class.xalanc_1_10::XalanVector.11" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.12" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectCache" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr", %"struct.xalanc_1_10::DeleteFunctor.13", %"class.xalanc_1_10::ClearCacheResetFunctor", %"class.xalanc_1_10::XalanVector.15" }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.13" = type { ptr }
%"class.xalanc_1_10::ClearCacheResetFunctor" = type { i8 }
%"class.xalanc_1_10::XalanVector.15" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XPathExecutionContextDefault::ContextNodeListPositionCache" = type <{ ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.18" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.19" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.20" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::VariablesStack" = type { %"class.xalanc_1_10::XalanVector.21", i64, i8, i64, %"class.xalanc_1_10::XalanVector.22", %"class.xalanc_1_10::XalanVector.17" }
%"class.xalanc_1_10::XalanVector.21" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.22" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.23" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.25", %"class.xalanc_1_10::XalanList.25", %"class.xalanc_1_10::XalanVector.26", i64, i64 }
%"class.xalanc_1_10::XalanList.25" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.26" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.27" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to.29", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.31", %"class.xalanc_1_10::XalanList.31", %"class.xalanc_1_10::XalanVector.32", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to.29" = type { i8 }
%"class.xalanc_1_10::XalanList.31" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.32" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::CountersTable" = type { %"class.xalanc_1_10::XalanVector.33", %"class.xalanc_1_10::XalanVector.11" }
%"class.xalanc_1_10::XalanVector.33" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeDocument>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XalanSourceTreeDocument>::MemMgrAutoPtrData" = type { %"struct.std::pair.34" }
%"struct.std::pair.34" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.36" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XResultTreeFragAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.37" }
%"class.xalanc_1_10::ReusableArenaAllocator.37" = type <{ %"class.xalanc_1_10::ArenaAllocator.38", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.38" = type { ptr, i16, %"class.xalanc_1_10::XalanList.39" }
%"class.xalanc_1_10::XalanList.39" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeDocumentFragmentAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.41" }
%"class.xalanc_1_10::ReusableArenaAllocator.41" = type <{ %"class.xalanc_1_10::ArenaAllocator.42", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.42" = type { ptr, i16, %"class.xalanc_1_10::XalanList.43" }
%"class.xalanc_1_10::XalanList.43" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanSourceTreeDocumentAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.45" }
%"class.xalanc_1_10::ReusableArenaAllocator.45" = type <{ %"class.xalanc_1_10::ArenaAllocator.46", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.46" = type { ptr, i16, %"class.xalanc_1_10::XalanList.47" }
%"class.xalanc_1_10::XalanList.47" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.50" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.51" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.52" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectStackCache" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr", %"struct.xalanc_1_10::DeleteFunctor.13", %"class.xalanc_1_10::DefaultCacheResetFunctor", %"class.xalanc_1_10::XalanVector.15", i64 }
%"class.xalanc_1_10::DefaultCacheResetFunctor" = type { i8 }
%"class.xalanc_1_10::XalanVector.53" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectStackCache.54" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.55", %"struct.xalanc_1_10::DeleteFunctor.56", %"class.xalanc_1_10::DefaultCacheResetFunctor.58", %"class.xalanc_1_10::XalanVector.16", i64 }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.55" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.56" = type { ptr }
%"class.xalanc_1_10::DefaultCacheResetFunctor.58" = type { i8 }
%"class.xalanc_1_10::XalanObjectStackCache.59" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.60", %"struct.xalanc_1_10::DeleteFunctor.61", %"class.xalanc_1_10::DefaultCacheResetFunctor.63", %"class.xalanc_1_10::XalanVector.64", i64 }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.60" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.61" = type { ptr }
%"class.xalanc_1_10::DefaultCacheResetFunctor.63" = type { i8 }
%"class.xalanc_1_10::XalanVector.64" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanObjectStackCache.65" = type { %"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.66", %"struct.xalanc_1_10::DeleteFunctor.67", %"class.xalanc_1_10::DefaultCacheResetFunctor.69", %"class.xalanc_1_10::XalanVector.70", i64 }
%"class.xalanc_1_10::DefaultCacheCreateFunctorMemMgr.66" = type { i8 }
%"struct.xalanc_1_10::DeleteFunctor.67" = type { ptr }
%"class.xalanc_1_10::DefaultCacheResetFunctor.69" = type { i8 }
%"class.xalanc_1_10::XalanVector.70" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.71" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.17" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.72" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeSorter" = type { %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanVector.74", %"class.xalanc_1_10::XalanVector.75", %"class.xalanc_1_10::XalanVector.76" }
%"class.xalanc_1_10::XalanVector.73" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.74" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.75" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.76" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc = comdat any

$_ZSt4fillIPccEvT_S1_RKT0_ = comdat any

$_ZSt13copy_backwardIPcS0_ET0_T_S2_S1_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv = comdat any

$_ZSt4copyIPKcPcET0_T_S4_S3_ = comdat any

$_ZSt13__copy_move_aILb0EPKcPcET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKcET_S2_ = comdat any

$_ZSt12__niter_wrapIPcET_RKS1_S1_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKcET_S2_ = comdat any

$_ZSt12__niter_baseIPcET_S1_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_ = comdat any

$_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZSt8__fill_aIPccEvT_S1_RKT0_ = comdat any

$_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsr9__is_byteIT_EE7__valueEvE6__typeEPS2_S5_RKS2_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPcS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPcET_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPcS0_ET1_T0_S2_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPcS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10deallocateEPS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE7destroyEPS4_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10deallocateEPS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE7destroyERS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZSt8for_eachIPPKN11xalanc_1_1023XalanCompiledStylesheetENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZSt8for_eachIPPKN11xalanc_1_1017XalanParsedSourceENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_ = comdat any

$_ZN11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm = comdat any

$_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8FunctionEEEvPKT_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1020destroyObjWithMemMgrINS_14XalanDOMStringEEEvPKT_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1020destroyObjWithMemMgrINS_33StylesheetExecutionContextDefaultEEEvPKT_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_23XalanCompiledStylesheetEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclERS1_ = comdat any

$_ZNK11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEclEPKS1_ = comdat any

$_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_17XalanParsedSourceEEENS_19XalanDestroyFunctorIT_EEPKS3_ = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclEPKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclEPS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclERS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEEC2EPS1_ = comdat any

$_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE10releasePtrEv = comdat any

$_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEE7releaseEv = comdat any

$_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8XSLTInitEEEvPKT_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev = comdat any

$_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc = comdat any

$_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE = comdat any

$_ZN11xalanc_1_1014XSLTEngineImpl18setProblemListenerEPNS_15ProblemListenerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_ = comdat any

$_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb = comdat any

$_ZNK11xercesc_2_712XMLException10getMessageEv = comdat any

$_ZNK11xalanc_1_1012XSLException10getMessageEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_23XalanCompiledStylesheetEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZSt4copyIPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET0_T_S8_S7_ = comdat any

$_ZSt13copy_backwardIPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET0_T_S6_S5_ = comdat any

$_ZSt8distanceIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E15difference_typeES7_S7_ = comdat any

$_ZSt10__distanceIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E17iterator_categoryERKS7_ = comdat any

$_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__miter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_ = comdat any

$_ZSt12__niter_wrapIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_RKS5_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_ = comdat any

$_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1023XalanCompiledStylesheetEEEPT_PKS7_SA_S8_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1023XalanCompiledStylesheetEEEPT_PKS7_SA_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString6lengthEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString10invariantsEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString4sizeEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5c_strEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignEPKc = comdat any

$_ZN11xalanc_1_1012XSLException13defaultFormatEPKtS2_llS2_RNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1014XalanDOMString6appendEPKc = comdat any

$_ZSt4findIPPKN11xalanc_1_1023XalanCompiledStylesheetES3_ET_S5_S5_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_ = comdat any

$_ZN11xalanc_1_1020destroyObjWithMemMgrINS_23XalanCompiledStylesheetEEEvPKT_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEENS0_16_Iter_equals_valIT_EERS8_ = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEC2ERS6_ = comdat any

$_ZN11xalanc_1_106lengthEPKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEm = comdat any

$_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerIcEC2ERN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_ = comdat any

$_ZSt4copyIPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET0_T_S6_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9push_backERKc = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv = comdat any

$_ZNK11xalanc_1_1016XalanTransformer25getExternalSchemaLocationEv = comdat any

$_ZNK11xalanc_1_1016XalanTransformer36getExternalNoNamespaceSchemaLocationEv = comdat any

$_ZN11xalanc_1_1023XalanSourceTreeDocument19getPoolAllTextNodesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_17XalanParsedSourceEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_ = comdat any

$_ZSt4copyIPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET0_T_S8_S7_ = comdat any

$_ZSt13copy_backwardIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_ = comdat any

$_ZSt8distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_ = comdat any

$_ZSt10__distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS7_ = comdat any

$_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__miter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_ = comdat any

$_ZSt12__niter_wrapIPPKN11xalanc_1_1017XalanParsedSourceEET_RKS5_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_ = comdat any

$_ZSt12__niter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_ = comdat any

$_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_ = comdat any

$_ZSt12__miter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1014XalanDOMString5emptyEv = comdat any

$_ZSt4findIPPKN11xalanc_1_1017XalanParsedSourceES3_ET_S5_S5_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_ = comdat any

$_ZN11xalanc_1_1020destroyObjWithMemMgrINS_17XalanParsedSourceEEEvPKT_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEENS0_16_Iter_equals_valIT_EERS8_ = comdat any

$_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEC2ERS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_ = comdat any

$_ZSt4copyIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9push_backERKS4_ = comdat any

$_ZN11xalanc_1_1018cloneObjWithMemMgrINS_14XalanDOMStringEEEPT_RKS2_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZNSt4pairIPN11xalanc_1_1014XalanDOMStringES2_EC2IS2_S2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_14XalanDOMStringES3_EE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4swapERS7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE14local_distanceEPKS4_S9_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8capacityEv = comdat any

$_ZSt4copyIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET0_T_S9_S8_ = comdat any

$_ZSt13copy_backwardIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET0_T_S7_S6_ = comdat any

$_ZSt8distanceIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E15difference_typeES8_S8_ = comdat any

$_ZSt10__distanceIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E17iterator_categoryERKS8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_ = comdat any

$_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_ = comdat any

$_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_RKS6_S6_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_ = comdat any

$_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_ = comdat any

$_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES6_EPS7_EET0_T_SC_SB_ = comdat any

$_ZNSt4pairIPN11xalanc_1_1014XalanDOMStringES2_EaSERKS3_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_ = comdat any

$_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN11xalanc_1_1014XalanDOMStringES6_ES8_EET0_T_SA_S9_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XalanDOMStringEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZSt4findIPPN11xalanc_1_1013TraceListenerES2_ET_S4_S4_RKT0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_ = comdat any

$_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1013TraceListenerEEENS0_16_Iter_equals_valIT_EERS7_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E17iterator_categoryERKS5_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_ = comdat any

$_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEC2ERS5_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_ = comdat any

$_ZSt4copyIPPN11xalanc_1_1013TraceListenerES3_ET0_T_S5_S4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_ = comdat any

$_ZSt13__copy_move_aILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__miter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_ = comdat any

$_ZSt12__niter_wrapIPPN11xalanc_1_1013TraceListenerEET_RKS4_S4_ = comdat any

$_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_ = comdat any

$_ZSt12__niter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_ = comdat any

$_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1013TraceListenerEEEPT_PKS6_S9_S7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv = comdat any

$_ZSt8distanceIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E15difference_typeES6_S6_ = comdat any

$_ZSt10__distanceIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E17iterator_categoryERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_ = comdat any

$_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEC2IS2_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_ = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEEE9constructEPS6_RKS6_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14ensureCapacityEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv = comdat any

$_ZSt4copyIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET0_T_SB_SA_ = comdat any

$_ZSt13copy_backwardIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET0_T_S9_S8_ = comdat any

$_ZSt8distanceIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E15difference_typeESA_SA_ = comdat any

$_ZSt10__distanceIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm = comdat any

$_ZSt13__copy_move_aILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_ = comdat any

$_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_ = comdat any

$_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_RKS8_S8_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_ = comdat any

$_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_ = comdat any

$_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEEPS9_EET0_T_SE_SD_ = comdat any

$_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEaSERKS5_ = comdat any

$_ZSt22__copy_move_backward_aILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEESA_EET0_T_SC_SB_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv = comdat any

$_ZNK11xalanc_1_1010XalanQName6equalsERKS0_ = comdat any

$_ZN11xalanc_1_1020destroyObjWithMemMgrINS_17XalanQNameByValueEEEvPKT_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5eraseEPS6_ = comdat any

$_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5eraseEPS6_SA_ = comdat any

$_ZSt4copyIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET0_T_S9_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE11shrinkCountEm = comdat any

$_ZSt13__copy_move_aILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt14__copy_move_a1ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_ = comdat any

$_ZSt14__copy_move_a2ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_ = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEESA_EET0_T_SC_SB_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1033StylesheetExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE = comdat any

$_ZN11xalanc_1_1033StylesheetExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE = comdat any

$_ZN11xalanc_1_1033StylesheetExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE = comdat any

$_ZN11xalanc_1_1033StylesheetExecutionContextDefault16setXSLTProcessorEPNS_14XSLTEngineImplE = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5clearEv = comdat any

$_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE = comdat any

$_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE = comdat any

$_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8pop_backEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEptEv = comdat any

$_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault12setProcessorEPNS_13XSLTProcessorE = comdat any

$_ZN11xalanc_1_1016XalanTransformer11EnsureResetC2ERS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEixEm = comdat any

$_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1016XSLTResultTarget11getEncodingEv = comdat any

$_ZN11xalanc_1_1016XSLTResultTarget11setEncodingERKNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringaSERKS0_ = comdat any

$_ZN11xalanc_1_1014XalanDOMString6assignERKS0_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZSt4copyIPKtPtET0_T_S4_S3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_ = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm = comdat any

$_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_ = comdat any

$_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_ = comdat any

$_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag = comdat any

$_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__miter_baseIPtET_S1_ = comdat any

$_ZSt12__niter_wrapIPtET_RKS1_S1_ = comdat any

$_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZSt12__niter_baseIPtET_S1_ = comdat any

$_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_ = comdat any

$_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_ = comdat any

$_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__miter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZSt12__niter_baseIPKtET_S2_ = comdat any

$_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_ = comdat any

$_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_ = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10deallocateEv = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZTSN11xercesc_2_712SAXExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_712SAXExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xalanc_1_1016XalanTransformerE = dso_local unnamed_addr constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016XalanTransformerE, ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1016XalanTransformerD0Ev] }, align 8
@_ZTSN11xalanc_1_1016XalanTransformerE = dso_local constant [34 x i8] c"N11xalanc_1_1016XalanTransformerE\00", align 1
@_ZTIN11xalanc_1_1016XalanTransformerE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016XalanTransformerE }, align 8
@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE = dso_local local_unnamed_addr global ptr null, align 8
@_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE = dso_local local_unnamed_addr global ptr null, align 8
@_ZSt4cerr = external global %"class.std::basic_ostream", align 8
@_ZN11xalanc_1_10L19s_initMemoryManagerE = internal unnamed_addr global ptr null, align 8
@_ZTIN11xalanc_1_1012XSLExceptionE = external constant ptr
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant [30 x i8] c"N11xercesc_2_712SAXExceptionE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712SAXExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712SAXExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@.str = private unnamed_addr constant [18 x i8] c"SAXParseException\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"An error occurred transcoding an error message.\00", align 1
@_ZN11xalanc_1_1023XalanSourceTreeDocument18s_poolAllTextNodesE = external local_unnamed_addr global i8, align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanTransformer.cpp, ptr null }]

@_ZN11xalanc_1_1016XalanTransformerC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1016XalanTransformerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev
@_ZN11xalanc_1_1016XalanTransformer11EnsureResetD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev
@_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformerD0Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1016XalanTransformerD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) #16
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #2 section ".text.startup" {
  tail call void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1) @_ZStL8__ioinit) #18
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZNSt8ios_base4InitD1Ev, ptr nonnull @_ZStL8__ioinit, ptr nonnull @__dso_handle) #19
  ret void
}

; Function Attrs: optsize
declare void @_ZNSt8ios_base4InitC1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZNSt8ios_base4InitD1Ev(ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %3 = alloca i8, align 1
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1016XalanTransformerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !423
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !426
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0) #18
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 0) #18
          to label %8 unwind label %38

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 0) #18
          to label %11 unwind label %40

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0) #18
          to label %14 unwind label %42

14:                                               ; preds = %11
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 0) #18
          to label %17 unwind label %44

17:                                               ; preds = %14
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  store i8 0, ptr %3, align 1, !tbaa !442
  %19 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %18, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %19) #18
          to label %20 unwind label %46

20:                                               ; preds = %17
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 8
  store i8 0, ptr %21, align 8, !tbaa !443
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %24 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %23, ptr noundef nonnull align 8 dereferenceable(8) %24) #18
          to label %25 unwind label %48

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12
  %27 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %26, ptr noundef nonnull align 8 dereferenceable(8) %27) #18
          to label %28 unwind label %50

28:                                               ; preds = %25
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 13
  store ptr null, ptr %29, align 8, !tbaa !444
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 14
  store ptr @_ZSt4cerr, ptr %30, align 8, !tbaa !445
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 15
  %32 = load ptr, ptr %4, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %31, ptr noundef nonnull align 8 dereferenceable(8) %32) #18
          to label %33 unwind label %52

33:                                               ; preds = %28
  %34 = load ptr, ptr %4, align 8, !tbaa !429
  %35 = invoke noundef ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef null, ptr noundef null, ptr noundef null) #18
          to label %36 unwind label %54

36:                                               ; preds = %33
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  store ptr %35, ptr %37, align 8, !tbaa !446
  ret void

38:                                               ; preds = %2
  %39 = landingpad { ptr, i32 }
          cleanup
  br label %70

40:                                               ; preds = %8
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %68

42:                                               ; preds = %11
  %43 = landingpad { ptr, i32 }
          cleanup
  br label %66

44:                                               ; preds = %14
  %45 = landingpad { ptr, i32 }
          cleanup
  br label %64

46:                                               ; preds = %17
  %47 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  br label %62

48:                                               ; preds = %20
  %49 = landingpad { ptr, i32 }
          cleanup
  br label %60

50:                                               ; preds = %25
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %58

52:                                               ; preds = %28
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %56

54:                                               ; preds = %33
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %31) #16
  br label %56

56:                                               ; preds = %54, %52
  %57 = phi { ptr, i32 } [ %55, %54 ], [ %53, %52 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %26) #16
  br label %58

58:                                               ; preds = %56, %50
  %59 = phi { ptr, i32 } [ %57, %56 ], [ %51, %50 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %23) #16
  br label %60

60:                                               ; preds = %58, %48
  %61 = phi { ptr, i32 } [ %59, %58 ], [ %49, %48 ]
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %18) #16
  br label %62

62:                                               ; preds = %60, %46
  %63 = phi { ptr, i32 } [ %61, %60 ], [ %47, %46 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #16
  br label %64

64:                                               ; preds = %62, %44
  %65 = phi { ptr, i32 } [ %63, %62 ], [ %45, %44 ]
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  br label %66

66:                                               ; preds = %64, %42
  %67 = phi { ptr, i32 } [ %65, %64 ], [ %43, %42 ]
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  br label %68

68:                                               ; preds = %66, %40
  %69 = phi { ptr, i32 } [ %67, %66 ], [ %41, %40 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  br label %70

70:                                               ; preds = %68, %38
  %71 = phi { ptr, i32 } [ %69, %68 ], [ %39, %38 ]
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  resume { ptr, i32 } %71
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !447
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !448
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !449
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !450

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !451
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !452
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !453
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !454
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !450

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !455
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !456
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !457
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !458
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !450

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !459
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !460
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !461
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !462
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !450

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !463
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !464 {
  store ptr %1, ptr %0, align 8, !tbaa !465
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !466
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !467
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !468

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !469
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  store ptr %3, ptr %0, align 8, !tbaa !470
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %8 unwind label %11

8:                                                ; preds = %4
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %7, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
          to label %9 unwind label %11

9:                                                ; preds = %8
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %10 unwind label %11

10:                                               ; preds = %9
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  ret void

11:                                               ; preds = %9, %8, %4
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !471 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #16
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !472 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !473
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %13, label %5, !prof !474

5:                                                ; preds = %1
  %6 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %7 unwind label %14

7:                                                ; preds = %5
  %8 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %9 unwind label %14

9:                                                ; preds = %7
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %6, ptr noundef %8) #18
          to label %10 unwind label %14

10:                                               ; preds = %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !475
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %12) #18
          to label %13 unwind label %14

13:                                               ; preds = %10, %1
  ret void

14:                                               ; preds = %10, %9, %7, %5
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !467
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !468

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !469
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !462
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !450

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !463
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10deallocateEPS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !458
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !450

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE7destroyEPS4_S8_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !459
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10deallocateEPS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !454
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !476

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !455
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !449
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !450

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !451
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !447
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !478 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !452
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !479 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = shl i64 %1, 4
  %4 = load ptr, ptr %0, align 8, !tbaa !456
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !480 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = shl i64 %1, 4
  %4 = load ptr, ptr %0, align 8, !tbaa !460
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !478 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = shl i64 %1, 3
  %4 = load ptr, ptr %0, align 8, !tbaa !465
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !481 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !482 {
  store ptr %1, ptr %0, align 8, !tbaa !470
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !483
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !473
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !484

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !475
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = add i64 %6, %2
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %9 = icmp eq ptr %8, %1
  br i1 %9, label %10, label %25, !prof !450

10:                                               ; preds = %4
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %7) #18
  %12 = icmp eq i64 %2, 0
  br i1 %12, label %78, label %13, !prof !485

13:                                               ; preds = %10
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %13, %15
  %16 = phi ptr [ %11, %13 ], [ %20, %15 ]
  %17 = phi i64 [ 0, %13 ], [ %23, %15 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !470
  %19 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %16, ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  %20 = getelementptr inbounds i8, ptr %16, i64 1
  %21 = load i64, ptr %14, align 8, !tbaa !483
  %22 = add i64 %21, 1
  store i64 %22, ptr %14, align 8, !tbaa !483
  %23 = add nuw i64 %17, 1
  %24 = icmp eq i64 %23, %2
  br i1 %24, label %78, label %15, !prof !486, !llvm.loop !487

25:                                               ; preds = %4
  %26 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %27 = icmp ugt i64 %7, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %29 = load ptr, ptr %0, align 8, !tbaa !470
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %7) #18
  %30 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %31 unwind label %44

31:                                               ; preds = %28
  %32 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %33 unwind label %44

33:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %30, ptr noundef %32, ptr noundef %1) #18
          to label %34 unwind label %44

34:                                               ; preds = %33
  %35 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %36 unwind label %44

36:                                               ; preds = %34
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %35, i64 noundef %2, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
          to label %37 unwind label %44

37:                                               ; preds = %36
  %38 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %39 unwind label %44

39:                                               ; preds = %37
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %41 unwind label %44

41:                                               ; preds = %39
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %1, ptr noundef %40) #18
          to label %42 unwind label %44

42:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %43 unwind label %44

43:                                               ; preds = %42
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %78

44:                                               ; preds = %42, %41, %39, %37, %36, %34, %33, %31, %28
  %45 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %45

46:                                               ; preds = %25
  %47 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %48 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %47) #18
  %49 = icmp ugt i64 %48, %2
  br i1 %49, label %65, label %50

50:                                               ; preds = %46
  %51 = sub i64 %2, %48
  %52 = icmp eq i64 %48, %2
  br i1 %52, label %53, label %55

53:                                               ; preds = %55, %50
  %54 = icmp eq ptr %47, %1
  br i1 %54, label %63, label %59

55:                                               ; preds = %50, %55
  %56 = phi i64 [ %57, %55 ], [ 0, %50 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  %57 = add nuw i64 %56, 1
  %58 = icmp eq i64 %57, %51
  br i1 %58, label %53, label %55, !llvm.loop !489

59:                                               ; preds = %53, %59
  %60 = phi ptr [ %61, %59 ], [ %1, %53 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %60) #18
  %61 = getelementptr inbounds i8, ptr %60, i64 1
  %62 = icmp eq ptr %61, %47
  br i1 %62, label %63, label %59, !llvm.loop !490

63:                                               ; preds = %59, %53
  %64 = getelementptr inbounds i8, ptr %1, i64 %48
  tail call void @_ZSt4fillIPccEvT_S1_RKT0_(ptr noundef %1, ptr noundef %64, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  br label %78

65:                                               ; preds = %46
  %66 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %67 = sub i64 0, %2
  %68 = getelementptr inbounds i8, ptr %66, i64 %67
  %69 = icmp eq ptr %68, %47
  br i1 %69, label %74, label %70

70:                                               ; preds = %65, %70
  %71 = phi ptr [ %72, %70 ], [ %68, %65 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %71) #18
  %72 = getelementptr inbounds i8, ptr %71, i64 1
  %73 = icmp eq ptr %72, %47
  br i1 %73, label %74, label %70, !llvm.loop !491

74:                                               ; preds = %70, %65
  %75 = getelementptr inbounds i8, ptr %47, i64 %67
  %76 = tail call noundef ptr @_ZSt13copy_backwardIPcS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef %75, ptr noundef %47) #18
  %77 = getelementptr inbounds i8, ptr %1, i64 %2
  tail call void @_ZSt4fillIPccEvT_S1_RKT0_(ptr noundef %1, ptr noundef %77, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  br label %78

78:                                               ; preds = %15, %10, %63, %74, %43
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !482 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !475
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 !prof !482 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !470
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !475
  %7 = load ptr, ptr %1, align 8, !tbaa !470
  store ptr %7, ptr %0, align 8, !tbaa !470
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !475
  store ptr %11, ptr %5, align 8, !tbaa !475
  store ptr %3, ptr %1, align 8, !tbaa !470
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !492
  store <2 x i64> %9, ptr %4, align 8, !tbaa !492
  store <2 x i64> %12, ptr %8, align 8, !tbaa !492
  store ptr %6, ptr %10, align 8, !tbaa !475
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !493 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !464 {
  %3 = load ptr, ptr %0, align 8, !tbaa !470
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %1) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !494 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !483
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !482 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !450

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !495 {
  %4 = load i8, ptr %1, align 1, !tbaa !442
  store i8 %4, ptr %0, align 1, !tbaa !442
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !473
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %82, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %81, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !470
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 1 dereferenceable(1) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %23 = getelementptr inbounds i8, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !483
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !483
  %26 = getelementptr inbounds i8, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %81, label %18, !llvm.loop !496

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !470
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #18
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %34 unwind label %47

34:                                               ; preds = %31
  %35 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %36 unwind label %47

36:                                               ; preds = %34
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #18
          to label %37 unwind label %47

37:                                               ; preds = %36
  %38 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %39 unwind label %47

39:                                               ; preds = %37
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %38, ptr noundef %2, ptr noundef %3) #18
          to label %40 unwind label %47

40:                                               ; preds = %39
  %41 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %42 unwind label %47

42:                                               ; preds = %40
  %43 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %44 unwind label %47

44:                                               ; preds = %42
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %41, ptr noundef %1, ptr noundef %43) #18
          to label %45 unwind label %47

45:                                               ; preds = %44
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %46 unwind label %47

46:                                               ; preds = %45
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %81

47:                                               ; preds = %45, %44, %42, %40, %39, %37, %36, %34, %31
  %48 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %48

49:                                               ; preds = %28
  %50 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %51 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %50) #18
  %52 = icmp ugt i64 %51, %6
  br i1 %52, label %68, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds i8, ptr %2, i64 %51
  %55 = icmp eq ptr %54, %3
  br i1 %55, label %56, label %58

56:                                               ; preds = %58, %53
  %57 = icmp eq ptr %50, %1
  br i1 %57, label %66, label %62

58:                                               ; preds = %53, %58
  %59 = phi ptr [ %60, %58 ], [ %54, %53 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %59) #18
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  %61 = icmp eq ptr %60, %3
  br i1 %61, label %56, label %58, !llvm.loop !497

62:                                               ; preds = %56, %62
  %63 = phi ptr [ %64, %62 ], [ %1, %56 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %63) #18
  %64 = getelementptr inbounds i8, ptr %63, i64 1
  %65 = icmp eq ptr %64, %50
  br i1 %65, label %66, label %62, !llvm.loop !498

66:                                               ; preds = %62, %56
  %67 = tail call noundef ptr @_ZSt4copyIPKcPcET0_T_S4_S3_(ptr noundef %2, ptr noundef %54, ptr noundef %1) #18
  br label %81

68:                                               ; preds = %49
  %69 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %70 = sub i64 0, %6
  %71 = getelementptr inbounds i8, ptr %69, i64 %70
  %72 = icmp eq ptr %71, %50
  br i1 %72, label %77, label %73

73:                                               ; preds = %68, %73
  %74 = phi ptr [ %75, %73 ], [ %71, %68 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %74) #18
  %75 = getelementptr inbounds i8, ptr %74, i64 1
  %76 = icmp eq ptr %75, %50
  br i1 %76, label %77, label %73, !llvm.loop !499

77:                                               ; preds = %73, %68
  %78 = getelementptr inbounds i8, ptr %50, i64 %70
  %79 = tail call noundef ptr @_ZSt13copy_backwardIPcS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %78, ptr noundef %50) #18
  %80 = tail call noundef ptr @_ZSt4copyIPKcPcET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %81

81:                                               ; preds = %18, %13, %66, %77, %46
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %82

82:                                               ; preds = %4, %81
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14local_distanceEPKcS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !483
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !473
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !450

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !470
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %13 = load i64, ptr %4, align 8, !tbaa !483
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !483
  br label %26

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !470
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
          to label %22 unwind label %24

22:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
          to label %23 unwind label %24

23:                                               ; preds = %22
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %26

24:                                               ; preds = %22, %15
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %25

26:                                               ; preds = %23, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt4fillIPccEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !477 {
  tail call void @_ZSt8__fill_aIPccEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPcS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPcET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPcET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !500 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !475
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !483
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !470
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
          to label %5 unwind label %6

5:                                                ; preds = %2
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  store ptr %2, ptr %0, align 8, !tbaa !470
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !483
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %24, label %12, !prof !468

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #18
  %14 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %15 unwind label %22

15:                                               ; preds = %12
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %17 unwind label %22

17:                                               ; preds = %15
  %18 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %19 unwind label %22

19:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcPKcS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %16, ptr noundef %18) #18
          to label %20 unwind label %22

20:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %21 unwind label %22

21:                                               ; preds = %20
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %28

22:                                               ; preds = %20, %19, %17, %15, %12
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %23

24:                                               ; preds = %4
  %25 = icmp eq i64 %3, 0
  br i1 %25, label %28, label %26, !prof !501

26:                                               ; preds = %24
  %27 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #18
  store ptr %27, ptr %8, align 8, !tbaa !475
  store i64 %3, ptr %7, align 8, !tbaa !473
  br label %28

28:                                               ; preds = %24, %26, %21
  call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !475
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !475
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !483
  %6 = getelementptr inbounds i8, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKcPcET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKcET_S2_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKcET_S2_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKcPcET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKcET_S2_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKcET_S2_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKcET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKcET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKcPcET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %2, ptr align 1 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  ret i64 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZSt8__fill_aIPccEvT_S1_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat !prof !477 {
  tail call void @_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsr9__is_byteIT_EE7__valueEvE6__typeEPS2_S5_RKS2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt9__fill_a1IcEN9__gnu_cxx11__enable_ifIXsr9__is_byteIT_EE7__valueEvE6__typeEPS2_S5_RKS2_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat !prof !477 {
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %10, label %5

5:                                                ; preds = %3
  %6 = ptrtoint ptr %0 to i64
  %7 = ptrtoint ptr %1 to i64
  %8 = sub i64 %7, %6
  %9 = load i8, ptr %2, align 1, !tbaa !442
  tail call void @llvm.memset.p0.i64(ptr align 1 %0, i8 %9, i64 %8, i1 false)
  br label %10

10:                                               ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPcET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPcET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPcET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPcS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIcEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  %8 = sub i64 0, %6
  br i1 %7, label %11, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %10, ptr align 1 %0, i64 %6, i1 false)
  br label %11

11:                                               ; preds = %3, %9
  %12 = getelementptr inbounds i8, ptr %2, i64 %8
  ret ptr %12
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !502 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !503
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !504

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #18
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !505
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #18
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !506 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #20
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !507 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !508

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #18
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !509, !llvm.loop !510

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !511 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !505
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !512 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !507 {
  %3 = load ptr, ptr %0, align 8, !tbaa !513
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !514 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !515 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !505
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !516
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !464 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !517

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  %6 = getelementptr inbounds i8, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !518, !llvm.loop !519

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !464 {
  %3 = load ptr, ptr %0, align 8, !tbaa !470
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %0) local_unnamed_addr #0 comdat align 2 !prof !495 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyEPS2_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !520

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !469
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10deallocateEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %0, align 8, !tbaa !465
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !469
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !466
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyEPS6_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %6 = getelementptr inbounds %"struct.std::pair", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !521

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !463
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10deallocateEPS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %0, align 8, !tbaa !460
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !463
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !461
  %6 = getelementptr inbounds %"struct.std::pair", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE7destroyEPS4_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE7destroyERS4_(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %6 = getelementptr inbounds %"struct.std::pair.6", ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !522

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !464 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10deallocateEPS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %0, align 8, !tbaa !456
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE7destroyERS4_(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !457
  %6 = getelementptr inbounds %"struct.std::pair.6", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !523

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !524, !llvm.loop !525

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !482 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !455
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !526 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %3 = load ptr, ptr %0, align 8, !tbaa !452
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !472 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !455
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !453
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !llvm.loop !527

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %0, align 8, !tbaa !447
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !448
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformerD2Ev(ptr noundef nonnull align 8 dereferenceable(384) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %2 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  %3 = alloca %"struct.xalanc_1_10::DeleteFunctor.8", align 8
  store ptr getelementptr inbounds ({ [4 x ptr] }, ptr @_ZTVN11xalanc_1_1016XalanTransformerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !423
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %6 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
          to label %7 unwind label %70

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  %10 = load ptr, ptr %2, align 8
  %11 = invoke ptr @_ZSt8for_eachIPPKN11xalanc_1_1023XalanCompiledStylesheetENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_(ptr noundef %5, ptr noundef %6, ptr %10) #18
          to label %12 unwind label %70

12:                                               ; preds = %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  %15 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #18
          to label %16 unwind label %70

16:                                               ; preds = %12
  %17 = load ptr, ptr %8, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %17) #18
  %18 = load ptr, ptr %3, align 8
  %19 = invoke ptr @_ZSt8for_eachIPPKN11xalanc_1_1017XalanParsedSourceENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_(ptr noundef %14, ptr noundef %15, ptr %18) #18
          to label %20 unwind label %70

20:                                               ; preds = %16
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  %22 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %27, !prof !523

24:                                               ; preds = %38, %20
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  %26 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #18
  br label %42

27:                                               ; preds = %20, %38
  %28 = phi i64 [ %39, %38 ], [ 0, %20 ]
  %29 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %28) #18
  %30 = getelementptr inbounds %"struct.std::pair", ptr %29, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !528
  %32 = icmp eq ptr %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef %28) #18
  %35 = getelementptr inbounds %"struct.std::pair", ptr %34, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !528
  %37 = load ptr, ptr %8, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8FunctionEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %36, ptr noundef nonnull align 8 dereferenceable(8) %37) #18
          to label %38 unwind label %68

38:                                               ; preds = %27, %33
  %39 = add nuw i64 %28, 1
  %40 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %21) #18
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %27, label %24, !prof !530, !llvm.loop !531

42:                                               ; preds = %58, %24
  %43 = phi ptr [ %26, %24 ], [ %59, %58 ]
  %44 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %25) #18
          to label %45 unwind label %66

45:                                               ; preds = %42
  %46 = icmp eq ptr %43, %44
  br i1 %46, label %47, label %51, !prof !450

47:                                               ; preds = %45
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %49 = load ptr, ptr %48, align 8, !tbaa !446
  %50 = load ptr, ptr %8, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_33StylesheetExecutionContextDefaultEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %49, ptr noundef nonnull align 8 dereferenceable(8) %50) #18
          to label %60 unwind label %70

51:                                               ; preds = %45
  %52 = load ptr, ptr %43, align 8, !tbaa !532
  %53 = load ptr, ptr %8, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_14XalanDOMStringEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %52, ptr noundef nonnull align 8 dereferenceable(8) %53) #18
          to label %54 unwind label %66

54:                                               ; preds = %51
  %55 = getelementptr inbounds %"struct.std::pair.6", ptr %43, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !534
  %57 = load ptr, ptr %8, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_14XalanDOMStringEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %56, ptr noundef nonnull align 8 dereferenceable(8) %57) #18
          to label %58 unwind label %66

58:                                               ; preds = %54
  %59 = getelementptr inbounds %"struct.std::pair.6", ptr %43, i64 1
  br label %42, !llvm.loop !535

60:                                               ; preds = %47
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 15
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %61) #16
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %62) #16
  %63 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %63) #16
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %64) #16
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %65) #16
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %21) #16
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  ret void

66:                                               ; preds = %42, %51, %54
  %67 = landingpad { ptr, i32 }
          catch ptr null
  br label %72

68:                                               ; preds = %33
  %69 = landingpad { ptr, i32 }
          catch ptr null
  br label %72

70:                                               ; preds = %47, %16, %12, %7, %1
  %71 = landingpad { ptr, i32 }
          catch ptr null
  br label %72

72:                                               ; preds = %68, %70, %66
  %73 = phi { ptr, i32 } [ %67, %66 ], [ %69, %68 ], [ %71, %70 ]
  %74 = extractvalue { ptr, i32 } %73, 0
  call void @__clang_call_terminate(ptr %74) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPKN11xalanc_1_1023XalanCompiledStylesheetENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6, !prof !523

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !426
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !prof !524, !llvm.loop !536

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZSt8for_eachIPPKN11xalanc_1_1017XalanParsedSourceENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = alloca %"struct.xalanc_1_10::DeleteFunctor.8", align 8
  store ptr %2, ptr %4, align 8
  %5 = icmp eq ptr %0, %1
  br i1 %5, label %13, label %6, !prof !523

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %9, %6 ], [ %0, %3 ]
  %8 = load ptr, ptr %7, align 8, !tbaa !426
  call void @_ZNK11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  %9 = getelementptr inbounds ptr, ptr %7, i64 1
  %10 = icmp eq ptr %9, %1
  br i1 %10, label %11, label %6, !prof !524, !llvm.loop !537

11:                                               ; preds = %6
  %12 = load ptr, ptr %4, align 8
  br label %13

13:                                               ; preds = %11, %3
  %14 = phi ptr [ %12, %11 ], [ %2, %3 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !461
  ret i64 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !463
  %5 = getelementptr inbounds %"struct.std::pair", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8FunctionEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !423
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #18
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_14XalanDOMStringEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4

4:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) #16
  %5 = load ptr, ptr %1, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #18
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_33StylesheetExecutionContextDefaultEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !422 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !538

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !423
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(2069) %0) #16
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #18
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_23XalanCompiledStylesheetEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !539
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_23XalanCompiledStylesheetEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %6 = load ptr, ptr %2, align 8, !tbaa !423
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #18
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_23XalanCompiledStylesheetEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %1, align 8, !tbaa !423
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEclEPKS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = alloca %"struct.xalanc_1_10::XalanDestroyFunctor.10", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  tail call void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_17XalanParsedSourceEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %1) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !541
  call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1023makeXalanDestroyFunctorINS_17XalanParsedSourceEEENS_19XalanDestroyFunctorIT_EEPKS3_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclEPKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclEPS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %6 = load ptr, ptr %2, align 8, !tbaa !423
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %1) #18
  br label %9

9:                                                ; preds = %5, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanDestroyFunctorINS_17XalanParsedSourceEEclERS1_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %1, align 8, !tbaa !423
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(8) %1) #16
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %2 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.77", align 8
  %3 = alloca %"class.xalanc_1_10::XalanAutoPtr", align 8
  %4 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %5 = tail call noundef ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %5) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  %6 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef nonnull %0) #18
          to label %7 unwind label %13

7:                                                ; preds = %1
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
          to label %8 unwind label %15

8:                                                ; preds = %7
  call void @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull %6) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(9) %4, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  invoke void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv(ptr noundef nonnull align 8 dereferenceable(9) %4) #18
          to label %9 unwind label %17

9:                                                ; preds = %8
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %4) #18
  %10 = invoke noundef ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE10releasePtrEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #18
          to label %11 unwind label %17

11:                                               ; preds = %9
  store ptr %10, ptr @_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE, align 8, !tbaa !426
  %12 = call noundef ptr @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  store ptr %12, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !426
  store ptr %0, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !426
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void

13:                                               ; preds = %1
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %19

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef nonnull %0) #16
  br label %19

17:                                               ; preds = %9, %8
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #16
  br label %19

19:                                               ; preds = %17, %15, %13
  %20 = phi { ptr, i32 } [ %18, %17 ], [ %16, %15 ], [ %14, %13 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  resume { ptr, i32 } %20
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XSLTInputSourceC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEEC2EPS1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !543
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !464 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", ptr %0, i64 0, i32 1
  store i8 0, ptr %3, align 8, !tbaa !545
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0) local_unnamed_addr #6 align 2 !prof !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !547
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !547
  tail call void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = load ptr, ptr %0, align 8, !tbaa !547
  tail call void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = load ptr, ptr %0, align 8, !tbaa !547
  tail call void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  %6 = load ptr, ptr %0, align 8, !tbaa !547
  tail call void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  %7 = load ptr, ptr %0, align 8, !tbaa !547
  tail call void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  %8 = load ptr, ptr %0, align 8, !tbaa !547
  tail call void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7releaseEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", ptr %0, i64 0, i32 1
  store i8 1, ptr %2, align 8, !tbaa !545
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE10releasePtrEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %2 = tail call { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %3 = extractvalue { ptr, ptr } %2, 1
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !543
  store ptr null, ptr %0, align 8, !tbaa !543
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEED2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !543
  %3 = icmp eq ptr %2, null
  br i1 %3, label %8, label %4, !prof !450

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(64) %2) #16
  br label %8

8:                                                ; preds = %4, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !426
  store ptr %2, ptr %5, align 8, !tbaa !426
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !464 {
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %4, ptr %0, align 8, !tbaa !548
  %5 = getelementptr inbounds %"struct.std::pair.78", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !426
  store ptr %6, ptr %5, align 8, !tbaa !550
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !478 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #18
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  store ptr %1, ptr %0, align 8, !tbaa !548
  %4 = getelementptr inbounds %"struct.std::pair.78", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !550
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %2, label %3, label %11, !prof !538

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair.78", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !550
  tail call void @_ZN11xalanc_1_108XSLTInitD1Ev(ptr noundef nonnull align 1 dereferenceable(10) %5) #16
  %6 = load ptr, ptr %0, align 8, !tbaa !548
  %7 = load ptr, ptr %4, align 8, !tbaa !550
  %8 = load ptr, ptr %6, align 8, !tbaa !423
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %7) #18
  br label %11

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !548
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.78", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108XSLTInitD1Ev(ptr noundef nonnull align 1 dereferenceable(10)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer9terminateEv() local_unnamed_addr #6 align 2 !prof !422 {
  %1 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %1) #19
  %2 = load ptr, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !426
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(9) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  call void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr noundef nonnull align 8 dereferenceable(9) %1) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %1) #19
  %3 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !426
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %0
  %6 = load ptr, ptr %3, align 8, !tbaa !423
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  call void %8(ptr noundef nonnull align 8 dereferenceable(64) %3) #16
  br label %9

9:                                                ; preds = %5, %0
  %10 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE, align 8, !tbaa !426
  %11 = load ptr, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !426
  call void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8XSLTInitEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  store ptr null, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !426
  store ptr null, ptr @_ZN11xalanc_1_1016XalanTransformer10s_xsltInitE, align 8, !tbaa !426
  store ptr null, ptr @_ZN11xalanc_1_10L19s_initMemoryManagerE, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8XSLTInitEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !422 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %8, label %4, !prof !538

4:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_108XSLTInitD1Ev(ptr noundef nonnull align 1 dereferenceable(10) %0) #16
  %5 = load ptr, ptr %1, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #18
  br label %8

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer10ICUCleanUpEv() local_unnamed_addr #12 align 2 !prof !422 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1010ICUStartUpERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) local_unnamed_addr #12 !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !426
  %7 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false) #18, !range !551
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %10 = load ptr, ptr %5, align 8, !tbaa !426
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %10) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !426
  %12 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %15

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %12, %13 ], [ %7, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i32 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i1 noundef zeroext %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %5 = alloca i8, align 1
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %7) #18
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #19
  store i8 0, ptr %5, align 1, !tbaa !442
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 1 dereferenceable(1) %5) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #19
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %9 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %8) #18
  %10 = add i64 %9, 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %8, i64 noundef %10) #18
          to label %11 unwind label %27

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !429
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 8
  %15 = load i8, ptr %14, align 8, !tbaa !443, !range !552, !noundef !553
  %16 = icmp ne i8 %15, 0
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 10
  %18 = load ptr, ptr %17, align 8, !tbaa !554
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %20 = load ptr, ptr %19, align 8, !tbaa !555
  br i1 %3, label %21, label %77, !prof !538

21:                                               ; preds = %11
  %22 = invoke noundef ptr @_ZNK11xalanc_1_1016XalanTransformer25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(384) %0) #18
          to label %23 unwind label %27

23:                                               ; preds = %21
  %24 = invoke noundef ptr @_ZNK11xalanc_1_1016XalanTransformer36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(384) %0) #18
          to label %25 unwind label %27

25:                                               ; preds = %23
  %26 = invoke noundef ptr @_ZN11xalanc_1_1021XercesDOMParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %16, ptr noundef %18, ptr noundef %20, ptr noundef %22, ptr noundef %24) #18
          to label %84 unwind label %27

27:                                               ; preds = %84, %81, %79, %77, %25, %23, %21, %4
  %28 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = extractvalue { ptr, i32 } %28, 1
  %31 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1012XSLExceptionE) #19
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %45

33:                                               ; preds = %27
  %34 = call ptr @__cxa_begin_catch(ptr %29) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #19
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %36) #18
          to label %37 unwind label %94

37:                                               ; preds = %33
  invoke void @_ZNK11xalanc_1_1012XSLException13defaultFormatERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %34, ptr noundef nonnull align 8 dereferenceable(36) %6) #18
          to label %38 unwind label %96

38:                                               ; preds = %37
  %39 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true) #18
          to label %40 unwind label %96

40:                                               ; preds = %38
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  br label %41

41:                                               ; preds = %73, %66, %61, %48, %40
  %42 = phi i32 [ -1, %40 ], [ -2, %48 ], [ -2, %61 ], [ -3, %66 ], [ -4, %73 ]
  call void @__cxa_end_catch()
  br label %43

43:                                               ; preds = %41, %84
  %44 = phi i32 [ 0, %84 ], [ %42, %41 ]
  ret i32 %44

45:                                               ; preds = %27
  %46 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE) #19
  %47 = icmp eq i32 %30, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = call ptr @__cxa_begin_catch(ptr %29) #19
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %51 = load ptr, ptr %50, align 8, !tbaa !446
  invoke fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %51, ptr noundef nonnull align 8 dereferenceable(56) %49, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
          to label %41 unwind label %92

52:                                               ; preds = %45
  %53 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #19
  %54 = icmp eq i32 %30, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %52
  %56 = call ptr @__cxa_begin_catch(ptr %29) #19
  %57 = load ptr, ptr %56, align 8, !tbaa !423
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(24) %56) #18
          to label %61 unwind label %90

61:                                               ; preds = %55
  %62 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %60, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true) #18
          to label %41 unwind label %90

63:                                               ; preds = %52
  %64 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %65 = icmp eq i32 %30, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = call ptr @__cxa_begin_catch(ptr %29) #19
  %68 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %67) #18
  %69 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %68, ptr noundef nonnull align 8 dereferenceable(32) %7, i1 noundef zeroext true) #18
          to label %41 unwind label %88

70:                                               ; preds = %63
  %71 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE) #19
  %72 = icmp eq i32 %30, %71
  br i1 %72, label %73, label %100

73:                                               ; preds = %70
  %74 = call ptr @__cxa_begin_catch(ptr %29) #19
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %76 = load ptr, ptr %75, align 8, !tbaa !446
  invoke fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %76, ptr noundef nonnull align 8 dereferenceable(12) %74, ptr noundef nonnull align 8 dereferenceable(32) %7) #18
          to label %41 unwind label %86

77:                                               ; preds = %11
  %78 = invoke noundef ptr @_ZNK11xalanc_1_1016XalanTransformer25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(384) %0) #18
          to label %79 unwind label %27

79:                                               ; preds = %77
  %80 = invoke noundef ptr @_ZNK11xalanc_1_1016XalanTransformer36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(384) %0) #18
          to label %81 unwind label %27

81:                                               ; preds = %79
  %82 = call noundef zeroext i1 @_ZN11xalanc_1_1023XalanSourceTreeDocument19getPoolAllTextNodesEv() #18
  %83 = invoke noundef ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %16, ptr noundef %18, ptr noundef %20, ptr noundef %78, ptr noundef %80, i1 noundef zeroext %82) #18
          to label %84 unwind label %27

84:                                               ; preds = %81, %25
  %85 = phi ptr [ %26, %25 ], [ %83, %81 ]
  store ptr %85, ptr %2, align 8, !tbaa !426
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %43 unwind label %27

86:                                               ; preds = %73
  %87 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %100 unwind label %102

88:                                               ; preds = %66
  %89 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %100 unwind label %102

90:                                               ; preds = %61, %55
  %91 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %100 unwind label %102

92:                                               ; preds = %48
  %93 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %100 unwind label %102

94:                                               ; preds = %33
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %98

96:                                               ; preds = %38, %37
  %97 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %6) #16
  br label %98

98:                                               ; preds = %96, %94
  %99 = phi { ptr, i32 } [ %97, %96 ], [ %95, %94 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #19
  invoke void @__cxa_end_catch()
          to label %100 unwind label %102

100:                                              ; preds = %98, %92, %90, %88, %86, %70
  %101 = phi { ptr, i32 } [ %28, %70 ], [ %87, %86 ], [ %89, %88 ], [ %91, %90 ], [ %93, %92 ], [ %99, %98 ]
  resume { ptr, i32 } %101

102:                                              ; preds = %98, %92, %90, %88, %86
  %103 = landingpad { ptr, i32 }
          catch ptr null
  %104 = extractvalue { ptr, i32 } %103, 0
  call void @__clang_call_terminate(ptr %104) #20
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(384) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !556
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef null, ptr noundef nonnull align 8 dereferenceable(112) %3) #18, !range !551
  ret i32 %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !558
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !556
  %5 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %2, ptr noundef %4) #18
          to label %6 unwind label %7, !range !559

6:                                                ; preds = %1
  ret void

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          catch ptr null
  %9 = extractvalue { ptr, i32 } %8, 0
  tail call void @__clang_call_terminate(ptr %9) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(112) %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %6 = alloca i8, align 1
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.192", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", align 8
  %10 = alloca %"class.xalanc_1_10::XObjectFactoryDefault", align 8
  %11 = alloca %"class.xalanc_1_10::XPathFactoryBlock", align 8
  %12 = alloca %"class.xalanc_1_10::XSLTEngineImpl", align 8
  %13 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureReset", align 8
  %14 = alloca %"class.xalanc_1_10::DOMStringPrintWriter", align 8
  %15 = alloca %"class.xalanc_1_10::XalanTransformerProblemListener", align 8
  %16 = alloca %"class.xalanc_1_10::XSLTInputSource", align 8
  %17 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  %18 = alloca %"class.xalanc_1_10::StylesheetConstructionContextDefault", align 8
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %6) #19
  store i8 0, ptr %6, align 1, !tbaa !442
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %19, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %6) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #19
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %22 = load ptr, ptr %1, align 8, !tbaa !423
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
          to label %26 unwind label %82

26:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #19
  %27 = load ptr, ptr %20, align 8, !tbaa !429
  %28 = load ptr, ptr %1, align 8, !tbaa !423
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %27) #18
          to label %32 unwind label %84

32:                                               ; preds = %26
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %31) #18
          to label %33 unwind label %84

33:                                               ; preds = %32
  %34 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  %35 = load ptr, ptr %34, align 8, !tbaa !423
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef nonnull align 8 dereferenceable(8) ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %34) #18
          to label %39 unwind label %86

39:                                               ; preds = %33
  %40 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %8) #18
  %41 = load ptr, ptr %40, align 8, !tbaa !423
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef nonnull align 8 dereferenceable(8) ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %40) #18
          to label %45 unwind label %88

45:                                               ; preds = %39
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %47 = load ptr, ptr %46, align 8, !tbaa !446
  %48 = load ptr, ptr %44, align 8, !tbaa !423
  %49 = getelementptr inbounds ptr, ptr %48, i64 5
  %50 = load ptr, ptr %49, align 8
  invoke void %50(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(16) %47) #18
          to label %51 unwind label %88

51:                                               ; preds = %45
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !555
  %54 = load ptr, ptr %44, align 8, !tbaa !423
  %55 = getelementptr inbounds ptr, ptr %54, i64 15
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %53) #18
          to label %57 unwind label %88

57:                                               ; preds = %51
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 10
  %59 = load ptr, ptr %58, align 8, !tbaa !554
  %60 = load ptr, ptr %44, align 8, !tbaa !423
  %61 = getelementptr inbounds ptr, ptr %60, i64 17
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %59) #18
          to label %63 unwind label %88

63:                                               ; preds = %57
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 8
  %65 = load i8, ptr %64, align 8, !tbaa !443, !range !552, !noundef !553
  %66 = icmp ne i8 %65, 0
  %67 = load ptr, ptr %44, align 8, !tbaa !423
  %68 = getelementptr inbounds ptr, ptr %67, i64 12
  %69 = load ptr, ptr %68, align 8
  invoke void %69(ptr noundef nonnull align 8 dereferenceable(8) %44, i1 noundef zeroext %66) #18
          to label %70 unwind label %88

70:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %9) #19
  %71 = load ptr, ptr %20, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296) %9, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef null) #18
          to label %72 unwind label %90

72:                                               ; preds = %70
  %73 = load ptr, ptr %1, align 8, !tbaa !423
  %74 = getelementptr inbounds ptr, ptr %73, i64 4
  %75 = load ptr, ptr %74, align 8
  %76 = invoke noundef nonnull align 8 dereferenceable(36) ptr %75(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
          to label %77 unwind label %92

77:                                               ; preds = %72
  %78 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %76) #18
          to label %79 unwind label %92

79:                                               ; preds = %77
  %80 = icmp eq i32 %78, 0
  br i1 %80, label %94, label %81, !prof !538

81:                                               ; preds = %79
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(296) %9, ptr noundef nonnull align 8 dereferenceable(36) %76, ptr noundef %25) #18
          to label %94 unwind label %92

82:                                               ; preds = %5
  %83 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %258

84:                                               ; preds = %32, %26
  %85 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %256

86:                                               ; preds = %33
  %87 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %254

88:                                               ; preds = %63, %57, %51, %45, %39
  %89 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %254

90:                                               ; preds = %70
  %91 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %252

92:                                               ; preds = %81, %77, %72
  %93 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %250

94:                                               ; preds = %81, %79
  %95 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  %96 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %95) #18
  %97 = icmp eq i64 %96, 0
  br i1 %97, label %98, label %100, !prof !523

98:                                               ; preds = %119, %94
  call void @llvm.lifetime.start.p0(i64 664, ptr nonnull %10) #19
  %99 = load ptr, ptr %20, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %10, ptr noundef nonnull align 8 dereferenceable(8) %99, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 5) #18
          to label %125 unwind label %149

100:                                              ; preds = %94, %119
  %101 = phi i64 [ %120, %119 ], [ 0, %94 ]
  %102 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %95, i64 noundef %101) #18
  %103 = load ptr, ptr %102, align 8, !tbaa !560
  %104 = load ptr, ptr %103, align 8, !tbaa !423
  %105 = getelementptr inbounds ptr, ptr %104, i64 3
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef nonnull align 8 dereferenceable(36) ptr %106(ptr noundef nonnull align 8 dereferenceable(88) %103) #18
          to label %108 unwind label %123

108:                                              ; preds = %100
  %109 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %95, i64 noundef %101) #18
  %110 = load ptr, ptr %109, align 8, !tbaa !560
  %111 = load ptr, ptr %110, align 8, !tbaa !423
  %112 = getelementptr inbounds ptr, ptr %111, i64 2
  %113 = load ptr, ptr %112, align 8
  %114 = invoke noundef nonnull align 8 dereferenceable(36) ptr %113(ptr noundef nonnull align 8 dereferenceable(88) %110) #18
          to label %115 unwind label %123

115:                                              ; preds = %108
  %116 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %95, i64 noundef %101) #18
  %117 = getelementptr inbounds %"struct.std::pair", ptr %116, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !528
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(296) %9, ptr noundef nonnull align 8 dereferenceable(36) %107, ptr noundef nonnull align 8 dereferenceable(36) %114, ptr noundef nonnull align 8 dereferenceable(8) %118) #18
          to label %119 unwind label %123

119:                                              ; preds = %115
  %120 = add nuw i64 %101, 1
  %121 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %95) #18
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %100, label %98, !prof !530, !llvm.loop !561

123:                                              ; preds = %115, %108, %100
  %124 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %250

125:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %11) #19
  %126 = load ptr, ptr %20, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(8) %126, i32 noundef 20) #18
          to label %127 unwind label %151

127:                                              ; preds = %125
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %12) #19
  %128 = load ptr, ptr %20, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE(ptr noundef nonnull align 8 dereferenceable(1000) %12, ptr noundef nonnull align 8 dereferenceable(8) %128, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
          to label %129 unwind label %153

129:                                              ; preds = %127
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault12setProcessorEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296) %9, ptr noundef nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1016XalanTransformer11EnsureResetC2ERS0_(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(384) %0) #18
  %130 = load ptr, ptr %46, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(2069) %130, ptr noundef nonnull %9) #18
          to label %131 unwind label %155

131:                                              ; preds = %129
  %132 = load ptr, ptr %46, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(2069) %132, ptr noundef nonnull %38) #18
          to label %133 unwind label %155

133:                                              ; preds = %131
  %134 = load ptr, ptr %46, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(2069) %134, ptr noundef nonnull %10) #18
          to label %135 unwind label %155

135:                                              ; preds = %133
  %136 = load ptr, ptr %46, align 8, !tbaa !446
  call void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault16setXSLTProcessorEPNS_14XSLTEngineImplE(ptr noundef nonnull align 8 dereferenceable(2069) %136, ptr noundef nonnull %12) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %14) #19
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %137 unwind label %157

137:                                              ; preds = %135
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %15) #19
  %138 = load ptr, ptr %20, align 8, !tbaa !429
  %139 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 14
  %140 = load ptr, ptr %139, align 8, !tbaa !445
  invoke void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %15, ptr noundef nonnull align 8 dereferenceable(8) %138, ptr noundef %140, ptr noundef nonnull %14) #18
          to label %141 unwind label %159

141:                                              ; preds = %137
  %142 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 13
  %143 = load ptr, ptr %142, align 8, !tbaa !444
  %144 = icmp eq ptr %143, null
  %145 = select i1 %144, ptr %15, ptr %143, !prof !450
  call void @_ZN11xalanc_1_1014XSLTEngineImpl18setProblemListenerEPNS_15ProblemListenerE(ptr noundef nonnull align 8 dereferenceable(1000) %12, ptr noundef nonnull %145) #18
  %146 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  %147 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %146) #18
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %161, label %163, !prof !523

149:                                              ; preds = %98
  %150 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %248

151:                                              ; preds = %125
  %152 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %246

153:                                              ; preds = %127
  %154 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %244

155:                                              ; preds = %133, %131, %129
  %156 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %242

157:                                              ; preds = %135
  %158 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %240

159:                                              ; preds = %137
  %160 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %238

161:                                              ; preds = %170, %141
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %16) #19
  %162 = load ptr, ptr %20, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1015XSLTInputSourceC1EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef %25, ptr noundef nonnull align 8 dereferenceable(8) %162) #18
          to label %176 unwind label %194

163:                                              ; preds = %141, %170
  %164 = phi i64 [ %171, %170 ], [ 0, %141 ]
  %165 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %146, i64 noundef %164) #18
  %166 = load ptr, ptr %165, align 8, !tbaa !532
  %167 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %146, i64 noundef %164) #18
  %168 = getelementptr inbounds %"struct.std::pair.6", ptr %167, i64 0, i32 1
  %169 = load ptr, ptr %168, align 8, !tbaa !534
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(1000) %12, ptr noundef nonnull align 8 dereferenceable(36) %166, ptr noundef nonnull align 8 dereferenceable(36) %169) #18
          to label %170 unwind label %174

170:                                              ; preds = %163
  %171 = add nuw i64 %164, 1
  %172 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %146) #18
  %173 = icmp ult i64 %171, %172
  br i1 %173, label %163, label %161, !prof !530, !llvm.loop !562

174:                                              ; preds = %163
  %175 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %236

176:                                              ; preds = %161
  %177 = invoke noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %76) #18
          to label %178 unwind label %196

178:                                              ; preds = %176
  invoke void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41) %16, ptr noundef %177) #18
          to label %179 unwind label %196

179:                                              ; preds = %178
  %180 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6
  invoke fastcc void @_ZN11xalanc_1_10L17addTraceListenersERKNS_11XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEERNS_14XSLTEngineImplE(ptr noundef nonnull align 8 dereferenceable(32) %180, ptr noundef nonnull align 8 dereferenceable(1000) %12) #18
          to label %181 unwind label %196

181:                                              ; preds = %179
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %17) #19
  %182 = load ptr, ptr %20, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef nonnull align 8 dereferenceable(8) %182) #18
          to label %183 unwind label %198

183:                                              ; preds = %181
  %184 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016XSLTResultTarget11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(112) %17) #18
  %185 = invoke noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %184) #18
          to label %186 unwind label %200

186:                                              ; preds = %183
  %187 = icmp eq i32 %185, 0
  br i1 %187, label %188, label %202, !prof !450

188:                                              ; preds = %186
  %189 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 15
  %190 = invoke noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %189) #18
          to label %191 unwind label %200

191:                                              ; preds = %188
  %192 = icmp eq i32 %190, 0
  br i1 %192, label %202, label %193, !prof !450

193:                                              ; preds = %191
  invoke void @_ZN11xalanc_1_1016XSLTResultTarget11setEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull align 8 dereferenceable(36) %189) #18
          to label %202 unwind label %200

194:                                              ; preds = %161
  %195 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %234

196:                                              ; preds = %179, %178, %176
  %197 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %232

198:                                              ; preds = %181
  %199 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %230

200:                                              ; preds = %214, %210, %204, %193, %188, %183
  %201 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %228

202:                                              ; preds = %193, %191, %186
  %203 = icmp eq ptr %2, null
  br i1 %203, label %216, label %204, !prof !450

204:                                              ; preds = %202
  %205 = load ptr, ptr %46, align 8, !tbaa !446
  %206 = load ptr, ptr %2, align 8, !tbaa !423
  %207 = getelementptr inbounds ptr, ptr %206, i64 2
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef ptr %208(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %210 unwind label %200

210:                                              ; preds = %204
  %211 = load ptr, ptr %205, align 8, !tbaa !423
  %212 = getelementptr inbounds ptr, ptr %211, i64 55
  %213 = load ptr, ptr %212, align 8
  invoke void %213(ptr noundef nonnull align 8 dereferenceable(2069) %205, ptr noundef %209) #18
          to label %214 unwind label %200

214:                                              ; preds = %210
  %215 = load ptr, ptr %46, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %12, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull align 8 dereferenceable(24) %215) #18
          to label %227 unwind label %200

216:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 1200, ptr nonnull %18) #19
  %217 = load ptr, ptr %20, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200) %18, ptr noundef nonnull align 8 dereferenceable(8) %217, ptr noundef nonnull align 8 dereferenceable(1000) %12, ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 1024, i64 noundef 128, i64 noundef 128, i64 noundef 128, i64 noundef 32, i64 noundef 512) #18
          to label %218 unwind label %221

218:                                              ; preds = %216
  %219 = load ptr, ptr %46, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000) %12, ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull align 8 dereferenceable(24) %219) #18
          to label %220 unwind label %223

220:                                              ; preds = %218
  call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %18) #16
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %18) #19
  br label %227

221:                                              ; preds = %216
  %222 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %225

223:                                              ; preds = %218
  %224 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200) %18) #16
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi { ptr, i32 } [ %224, %223 ], [ %222, %221 ]
  call void @llvm.lifetime.end.p0(i64 1200, ptr nonnull %18) #19
  br label %228

227:                                              ; preds = %214, %220
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %17) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %17) #19
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %16) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #19
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %15) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  call void @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %12) #16
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %12) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %10) #16
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %9) #16
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %351

228:                                              ; preds = %225, %200
  %229 = phi { ptr, i32 } [ %201, %200 ], [ %226, %225 ]
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %17) #16
  br label %230

230:                                              ; preds = %228, %198
  %231 = phi { ptr, i32 } [ %229, %228 ], [ %199, %198 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %17) #19
  br label %232

232:                                              ; preds = %230, %196
  %233 = phi { ptr, i32 } [ %231, %230 ], [ %197, %196 ]
  call void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(64) %16) #16
  br label %234

234:                                              ; preds = %232, %194
  %235 = phi { ptr, i32 } [ %233, %232 ], [ %195, %194 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %16) #19
  br label %236

236:                                              ; preds = %234, %174
  %237 = phi { ptr, i32 } [ %175, %174 ], [ %235, %234 ]
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %15) #16
  br label %238

238:                                              ; preds = %236, %159
  %239 = phi { ptr, i32 } [ %237, %236 ], [ %160, %159 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %15) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #16
  br label %240

240:                                              ; preds = %238, %157
  %241 = phi { ptr, i32 } [ %239, %238 ], [ %158, %157 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %14) #19
  br label %242

242:                                              ; preds = %240, %155
  %243 = phi { ptr, i32 } [ %241, %240 ], [ %156, %155 ]
  call void @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %12) #16
  br label %244

244:                                              ; preds = %242, %153
  %245 = phi { ptr, i32 } [ %243, %242 ], [ %154, %153 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %12) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #16
  br label %246

246:                                              ; preds = %244, %151
  %247 = phi { ptr, i32 } [ %245, %244 ], [ %152, %151 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %10) #16
  br label %248

248:                                              ; preds = %246, %149
  %249 = phi { ptr, i32 } [ %247, %246 ], [ %150, %149 ]
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %10) #19
  br label %250

250:                                              ; preds = %248, %123, %92
  %251 = phi { ptr, i32 } [ %124, %123 ], [ %249, %248 ], [ %93, %92 ]
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %9) #16
  br label %252

252:                                              ; preds = %250, %90
  %253 = phi { ptr, i32 } [ %251, %250 ], [ %91, %90 ]
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %9) #19
  br label %254

254:                                              ; preds = %88, %252, %86
  %255 = phi { ptr, i32 } [ %87, %86 ], [ %253, %252 ], [ %89, %88 ]
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #16
  br label %256

256:                                              ; preds = %254, %84
  %257 = phi { ptr, i32 } [ %255, %254 ], [ %85, %84 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #19
  br label %258

258:                                              ; preds = %256, %82
  %259 = phi { ptr, i32 } [ %257, %256 ], [ %83, %82 ]
  %260 = extractvalue { ptr, i32 } %259, 0
  %261 = extractvalue { ptr, i32 } %259, 1
  %262 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1012XSLExceptionE) #19
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %270

264:                                              ; preds = %258
  %265 = call ptr @__cxa_begin_catch(ptr %260) #19
  %266 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %267 unwind label %346

267:                                              ; preds = %264
  %268 = icmp eq i32 %266, 0
  br i1 %268, label %269, label %348

269:                                              ; preds = %267
  invoke void @_ZNK11xalanc_1_1012XSLException13defaultFormatERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %265, ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %348 unwind label %346

270:                                              ; preds = %258
  %271 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE) #19
  %272 = icmp eq i32 %261, %271
  br i1 %272, label %273, label %280

273:                                              ; preds = %270
  %274 = call ptr @__cxa_begin_catch(ptr %260) #19
  %275 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %276 unwind label %338

276:                                              ; preds = %273
  %277 = icmp eq i32 %275, 0
  br i1 %277, label %340, label %278

278:                                              ; preds = %276
  %279 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true) #18
          to label %343 unwind label %338

280:                                              ; preds = %270
  %281 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #19
  %282 = icmp eq i32 %261, %281
  br i1 %282, label %283, label %290

283:                                              ; preds = %280
  %284 = call ptr @__cxa_begin_catch(ptr %260) #19
  %285 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %286 unwind label %326

286:                                              ; preds = %283
  %287 = icmp eq i32 %285, 0
  br i1 %287, label %328, label %288

288:                                              ; preds = %286
  %289 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true) #18
          to label %335 unwind label %326

290:                                              ; preds = %280
  %291 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %292 = icmp eq i32 %261, %291
  br i1 %292, label %293, label %300

293:                                              ; preds = %290
  %294 = call ptr @__cxa_begin_catch(ptr %260) #19
  %295 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %296 unwind label %318

296:                                              ; preds = %293
  %297 = icmp eq i32 %295, 0
  br i1 %297, label %320, label %298

298:                                              ; preds = %296
  %299 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true) #18
          to label %323 unwind label %318

300:                                              ; preds = %290
  %301 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE) #19
  %302 = icmp eq i32 %261, %301
  br i1 %302, label %303, label %355

303:                                              ; preds = %300
  %304 = call ptr @__cxa_begin_catch(ptr %260) #19
  %305 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %306 unwind label %310

306:                                              ; preds = %303
  %307 = icmp eq i32 %305, 0
  br i1 %307, label %312, label %308

308:                                              ; preds = %306
  %309 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true) #18
          to label %315 unwind label %310

310:                                              ; preds = %312, %308, %303
  %311 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %355 unwind label %357

312:                                              ; preds = %306
  %313 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %314 = load ptr, ptr %313, align 8, !tbaa !446
  invoke fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %314, ptr noundef nonnull align 8 dereferenceable(12) %304, ptr noundef nonnull align 8 dereferenceable(32) %19) #18
          to label %315 unwind label %310

315:                                              ; preds = %312, %308
  invoke void @__cxa_end_catch()
          to label %351 unwind label %316

316:                                              ; preds = %315
  %317 = landingpad { ptr, i32 }
          cleanup
  br label %355

318:                                              ; preds = %320, %298, %293
  %319 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %355 unwind label %357

320:                                              ; preds = %296
  %321 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %294) #18
  %322 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %321, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true) #18
          to label %323 unwind label %318

323:                                              ; preds = %320, %298
  invoke void @__cxa_end_catch()
          to label %351 unwind label %324

324:                                              ; preds = %323
  %325 = landingpad { ptr, i32 }
          cleanup
  br label %355

326:                                              ; preds = %333, %328, %288, %283
  %327 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %355 unwind label %357

328:                                              ; preds = %286
  %329 = load ptr, ptr %284, align 8, !tbaa !423
  %330 = getelementptr inbounds ptr, ptr %329, i64 2
  %331 = load ptr, ptr %330, align 8
  %332 = invoke noundef ptr %331(ptr noundef nonnull align 8 dereferenceable(24) %284) #18
          to label %333 unwind label %326

333:                                              ; preds = %328
  %334 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %332, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true) #18
          to label %335 unwind label %326

335:                                              ; preds = %333, %288
  invoke void @__cxa_end_catch()
          to label %351 unwind label %336

336:                                              ; preds = %335
  %337 = landingpad { ptr, i32 }
          cleanup
  br label %355

338:                                              ; preds = %340, %278, %273
  %339 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %355 unwind label %357

340:                                              ; preds = %276
  %341 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %342 = load ptr, ptr %341, align 8, !tbaa !446
  invoke fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %342, ptr noundef nonnull align 8 dereferenceable(56) %274, ptr noundef nonnull align 8 dereferenceable(32) %19) #18
          to label %343 unwind label %338

343:                                              ; preds = %340, %278
  invoke void @__cxa_end_catch()
          to label %351 unwind label %344

344:                                              ; preds = %343
  %345 = landingpad { ptr, i32 }
          cleanup
  br label %355

346:                                              ; preds = %348, %269, %264
  %347 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %355 unwind label %357

348:                                              ; preds = %269, %267
  %349 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(32) %19, i1 noundef zeroext true) #18
          to label %350 unwind label %346

350:                                              ; preds = %348
  invoke void @__cxa_end_catch()
          to label %351 unwind label %353

351:                                              ; preds = %350, %343, %335, %323, %315, %227
  %352 = phi i32 [ 0, %227 ], [ -4, %315 ], [ -3, %323 ], [ -2, %335 ], [ -2, %343 ], [ -1, %350 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #19
  ret i32 %352

353:                                              ; preds = %350
  %354 = landingpad { ptr, i32 }
          cleanup
  br label %355

355:                                              ; preds = %353, %346, %344, %338, %336, %326, %324, %318, %316, %310, %300
  %356 = phi { ptr, i32 } [ %259, %300 ], [ %317, %316 ], [ %311, %310 ], [ %325, %324 ], [ %319, %318 ], [ %337, %336 ], [ %327, %326 ], [ %345, %344 ], [ %339, %338 ], [ %354, %353 ], [ %347, %346 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #19
  resume { ptr, i32 } %356

357:                                              ; preds = %346, %338, %326, %318, %310
  %358 = landingpad { ptr, i32 }
          catch ptr null
  %359 = extractvalue { ptr, i32 } %358, 0
  call void @__clang_call_terminate(ptr %359) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !422 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !426
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %7 = call noundef ptr @_ZSt4findIPPKN11xalanc_1_1017XalanParsedSourceES3_ET_S5_S5_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %8 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14, !prof !538

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !446
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call fastcc void @_ZN11xalanc_1_10L16LoadErrorMessageERNS_21XPathExecutionContextENS_13XalanMessages5CodesERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 152, ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  br label %19

14:                                               ; preds = %2
  %15 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %7) #18
  %16 = load ptr, ptr %3, align 8, !tbaa !426
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_17XalanParsedSourceEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i32 [ -1, %10 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %5 = alloca ptr, align 8
  %6 = alloca %"class.xalanc_1_10::XalanTransformer::EnsureDestroyParsedSource", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  store ptr null, ptr %5, align 8, !tbaa !426
  %7 = call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %5, i1 noundef zeroext false) #18, !range !551
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %16, !prof !450

9:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  %10 = load ptr, ptr %5, align 8, !tbaa !426
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %10) #18
  %11 = load ptr, ptr %5, align 8, !tbaa !426
  %12 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) #18
          to label %13 unwind label %14

13:                                               ; preds = %9
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %16

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  resume { ptr, i32 } %15

16:                                               ; preds = %4, %13
  %17 = phi i32 [ %12, %13 ], [ %7, %4 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  ret i32 %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %3) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %5 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(112) %3) #18, !range !551
  ret i32 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_PvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %7 = alloca %"class.xalanc_1_10::XalanTransformerOutputStream", align 8
  %8 = alloca %"class.xalanc_1_10::XalanOutputStreamPrintWriter", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #19
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #19
  invoke void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull align 8 dereferenceable(144) %7, i1 noundef zeroext false) #18
          to label %12 unwind label %17

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #19
  %13 = load ptr, ptr %10, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(8) %13) #18
          to label %14 unwind label %19

14:                                               ; preds = %12
  %15 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %2, ptr noundef nonnull align 8 dereferenceable(112) %9) #18
          to label %16 unwind label %21

16:                                               ; preds = %14
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #16
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
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #16
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #16
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #16
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #19
  resume { ptr, i32 } %26
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73), ptr noundef nonnull align 8 dereferenceable(144), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPvPFmPKcmS7_EPFvS7_E(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %7 = alloca %"class.xalanc_1_10::XalanTransformerOutputStream", align 8
  %8 = alloca %"class.xalanc_1_10::XalanOutputStreamPrintWriter", align 8
  %9 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %7) #19
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168) %7, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %3, ptr noundef %4, ptr noundef %5) #18
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %8) #19
  invoke void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %8, ptr noundef nonnull align 8 dereferenceable(144) %7, i1 noundef zeroext false) #18
          to label %12 unwind label %17

12:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %9) #19
  %13 = load ptr, ptr %10, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %9, ptr noundef nonnull %8, ptr noundef nonnull align 8 dereferenceable(8) %13) #18
          to label %14 unwind label %19

14:                                               ; preds = %12
  %15 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetERKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(112) %9) #18
          to label %16 unwind label %21

16:                                               ; preds = %14
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #16
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
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %9) #16
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %8) #16
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %7) #16
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %7) #19
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %6 = alloca %"class.xalanc_1_10::XalanTransformerOutputStream", align 8
  %7 = alloca %"class.xalanc_1_10::XalanOutputStreamPrintWriter", align 8
  %8 = alloca %"class.xalanc_1_10::XSLTResultTarget", align 8
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %6) #19
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamC1ERN11xercesc_2_713MemoryManagerEPvPFmPKcmS4_EPFvS4_E(ptr noundef nonnull align 8 dereferenceable(168) %6, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %2, ptr noundef %3, ptr noundef %4) #18
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %7) #19
  invoke void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterC1ERNS_17XalanOutputStreamEb(ptr noundef nonnull align 8 dereferenceable(73) %7, ptr noundef nonnull align 8 dereferenceable(144) %6, i1 noundef zeroext false) #18
          to label %11 unwind label %17

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %8) #19
  %12 = load ptr, ptr %9, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1016XSLTResultTargetC1EPNS_6WriterERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef nonnull %7, ptr noundef nonnull align 8 dereferenceable(8) %12) #18
          to label %13 unwind label %19

13:                                               ; preds = %11
  %14 = load ptr, ptr @_ZN11xalanc_1_1016XalanTransformer18s_emptyInputSourceE, align 8, !tbaa !426
  %15 = invoke noundef i32 @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(112) %8) #18
          to label %16 unwind label %21

16:                                               ; preds = %13
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #16
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %6) #16
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
  call void @_ZN11xalanc_1_1016XSLTResultTargetD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %8) #16
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanOutputStreamPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(73) %7) #16
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1028XalanTransformerOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(168) %6) #16
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %6) #19
  resume { ptr, i32 } %26
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer17compileStylesheetERKNS_15XSLTInputSourceERPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !477 {
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
  store i8 0, ptr %4, align 1, !tbaa !442
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %14, i64 noundef 1, ptr noundef nonnull align 1 dereferenceable(1) %4) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %16) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #18
          to label %17 unwind label %46

17:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 448, ptr nonnull %7) #19
  %18 = load ptr, ptr %15, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %7, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
          to label %19 unwind label %48

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 9
  %21 = load ptr, ptr %20, align 8, !tbaa !555
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448) %7, ptr noundef %21) #18
          to label %22 unwind label %50

22:                                               ; preds = %19
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !554
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448) %7, ptr noundef %24) #18
          to label %25 unwind label %50

25:                                               ; preds = %22
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %7) #18
  call void @llvm.lifetime.start.p0(i64 296, ptr nonnull %8) #19
  %26 = load ptr, ptr %15, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296) %8, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef null) #18
          to label %27 unwind label %52

27:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 664, ptr nonnull %9) #19
  %28 = load ptr, ptr %15, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %9, ptr noundef nonnull align 8 dereferenceable(8) %28, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 10, i16 noundef zeroext 5) #18
          to label %29 unwind label %54

29:                                               ; preds = %27
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %10) #19
  %30 = load ptr, ptr %15, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 20) #18
          to label %31 unwind label %56

31:                                               ; preds = %29
  call void @llvm.lifetime.start.p0(i64 1000, ptr nonnull %11) #19
  %32 = load ptr, ptr %15, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %33 unwind label %58

33:                                               ; preds = %31
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %12) #19
  invoke void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %34 unwind label %60

34:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %13) #19
  %35 = load ptr, ptr %15, align 8, !tbaa !429
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !445
  invoke void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80) %13, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %37, ptr noundef nonnull %12) #18
          to label %38 unwind label %62

38:                                               ; preds = %34
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 13
  %40 = load ptr, ptr %39, align 8, !tbaa !444
  %41 = icmp eq ptr %40, null
  %42 = select i1 %41, ptr %13, ptr %40
  call void @_ZN11xalanc_1_1014XSLTEngineImpl18setProblemListenerEPNS_15ProblemListenerE(ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef nonnull %42) #18
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2
  %44 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %43) #18
  %45 = add i64 %44, 1
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %43, i64 noundef %45) #18
          to label %66 unwind label %64

46:                                               ; preds = %3
  %47 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %89

48:                                               ; preds = %17
  %49 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %87

50:                                               ; preds = %22, %19
  %51 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %85

52:                                               ; preds = %25
  %53 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %83

54:                                               ; preds = %27
  %55 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %81

56:                                               ; preds = %29
  %57 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %79

58:                                               ; preds = %31
  %59 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %77

60:                                               ; preds = %33
  %61 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %75

62:                                               ; preds = %34
  %63 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  br label %73

64:                                               ; preds = %71, %66, %38
  %65 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xalanc_1_1012XSLExceptionE
          catch ptr @_ZTIN11xercesc_2_717SAXParseExceptionE
          catch ptr @_ZTIN11xercesc_2_712SAXExceptionE
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
          catch ptr @_ZTIN11xalanc_1_1017XalanDOMExceptionE
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #16
  br label %73

66:                                               ; preds = %38
  %67 = load ptr, ptr %15, align 8, !tbaa !429
  %68 = load ptr, ptr %23, align 8, !tbaa !554
  %69 = load ptr, ptr %20, align 8, !tbaa !555
  %70 = invoke noundef ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefault6createERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 8 dereferenceable(1000) %11, ptr noundef %68, ptr noundef %69) #18
          to label %71 unwind label %64

71:                                               ; preds = %66
  store ptr %70, ptr %2, align 8, !tbaa !426
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %43, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
          to label %72 unwind label %64

72:                                               ; preds = %71
  call void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80) %13) #16
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %11) #16
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #16
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %9) #16
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %8) #16
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %8) #19
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %7) #16
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  br label %184

73:                                               ; preds = %64, %62
  %74 = phi { ptr, i32 } [ %65, %64 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %13) #19
  call void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %12) #16
  br label %75

75:                                               ; preds = %73, %60
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %61, %60 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %12) #19
  call void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000) %11) #16
  br label %77

77:                                               ; preds = %75, %58
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %59, %58 ]
  call void @llvm.lifetime.end.p0(i64 1000, ptr nonnull %11) #19
  call void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #16
  br label %79

79:                                               ; preds = %77, %56
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %57, %56 ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %10) #19
  call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664) %9) #16
  br label %81

81:                                               ; preds = %79, %54
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %55, %54 ]
  call void @llvm.lifetime.end.p0(i64 664, ptr nonnull %9) #19
  call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296) %8) #16
  br label %83

83:                                               ; preds = %81, %52
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 296, ptr nonnull %8) #19
  br label %85

85:                                               ; preds = %83, %50
  %86 = phi { ptr, i32 } [ %84, %83 ], [ %51, %50 ]
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %7) #16
  br label %87

87:                                               ; preds = %85, %48
  %88 = phi { ptr, i32 } [ %86, %85 ], [ %49, %48 ]
  call void @llvm.lifetime.end.p0(i64 448, ptr nonnull %7) #19
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #16
  br label %89

89:                                               ; preds = %87, %46
  %90 = phi { ptr, i32 } [ %88, %87 ], [ %47, %46 ]
  %91 = extractvalue { ptr, i32 } %90, 0
  %92 = extractvalue { ptr, i32 } %90, 1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  %93 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1012XSLExceptionE) #19
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %89
  %96 = call ptr @__cxa_begin_catch(ptr %91) #19
  %97 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %98 unwind label %176

98:                                               ; preds = %95
  %99 = icmp eq i32 %97, 0
  br i1 %99, label %178, label %180

100:                                              ; preds = %89
  %101 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE) #19
  %102 = icmp eq i32 %92, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = call ptr @__cxa_begin_catch(ptr %91) #19
  %105 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %106 unwind label %168

106:                                              ; preds = %103
  %107 = icmp eq i32 %105, 0
  br i1 %107, label %170, label %108

108:                                              ; preds = %106
  %109 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true) #18
          to label %173 unwind label %168

110:                                              ; preds = %100
  %111 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712SAXExceptionE) #19
  %112 = icmp eq i32 %92, %111
  br i1 %112, label %113, label %120

113:                                              ; preds = %110
  %114 = call ptr @__cxa_begin_catch(ptr %91) #19
  %115 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %116 unwind label %156

116:                                              ; preds = %113
  %117 = icmp eq i32 %115, 0
  br i1 %117, label %158, label %118

118:                                              ; preds = %116
  %119 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true) #18
          to label %165 unwind label %156

120:                                              ; preds = %110
  %121 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #19
  %122 = icmp eq i32 %92, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %120
  %124 = call ptr @__cxa_begin_catch(ptr %91) #19
  %125 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %126 unwind label %148

126:                                              ; preds = %123
  %127 = icmp eq i32 %125, 0
  br i1 %127, label %150, label %128

128:                                              ; preds = %126
  %129 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true) #18
          to label %153 unwind label %148

130:                                              ; preds = %120
  %131 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE) #19
  %132 = icmp eq i32 %92, %131
  br i1 %132, label %133, label %188

133:                                              ; preds = %130
  %134 = call ptr @__cxa_begin_catch(ptr %91) #19
  %135 = invoke noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %136 unwind label %140

136:                                              ; preds = %133
  %137 = icmp eq i32 %135, 0
  br i1 %137, label %142, label %138

138:                                              ; preds = %136
  %139 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true) #18
          to label %145 unwind label %140

140:                                              ; preds = %142, %138, %133
  %141 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %188 unwind label %190

142:                                              ; preds = %136
  %143 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %144 = load ptr, ptr %143, align 8, !tbaa !446
  invoke fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %144, ptr noundef nonnull align 8 dereferenceable(12) %134, ptr noundef nonnull align 8 dereferenceable(32) %14) #18
          to label %145 unwind label %140

145:                                              ; preds = %142, %138
  invoke void @__cxa_end_catch()
          to label %184 unwind label %146

146:                                              ; preds = %145
  %147 = landingpad { ptr, i32 }
          cleanup
  br label %188

148:                                              ; preds = %150, %128, %123
  %149 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %188 unwind label %190

150:                                              ; preds = %126
  %151 = call noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %124) #18
  %152 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %151, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true) #18
          to label %153 unwind label %148

153:                                              ; preds = %150, %128
  invoke void @__cxa_end_catch()
          to label %184 unwind label %154

154:                                              ; preds = %153
  %155 = landingpad { ptr, i32 }
          cleanup
  br label %188

156:                                              ; preds = %163, %158, %118, %113
  %157 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %188 unwind label %190

158:                                              ; preds = %116
  %159 = load ptr, ptr %114, align 8, !tbaa !423
  %160 = getelementptr inbounds ptr, ptr %159, i64 2
  %161 = load ptr, ptr %160, align 8
  %162 = invoke noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(24) %114) #18
          to label %163 unwind label %156

163:                                              ; preds = %158
  %164 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %162, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true) #18
          to label %165 unwind label %156

165:                                              ; preds = %163, %118
  invoke void @__cxa_end_catch()
          to label %184 unwind label %166

166:                                              ; preds = %165
  %167 = landingpad { ptr, i32 }
          cleanup
  br label %188

168:                                              ; preds = %170, %108, %103
  %169 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %188 unwind label %190

170:                                              ; preds = %106
  %171 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %172 = load ptr, ptr %171, align 8, !tbaa !446
  invoke fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %172, ptr noundef nonnull align 8 dereferenceable(56) %104, ptr noundef nonnull align 8 dereferenceable(32) %14) #18
          to label %173 unwind label %168

173:                                              ; preds = %170, %108
  invoke void @__cxa_end_catch()
          to label %184 unwind label %174

174:                                              ; preds = %173
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %188

176:                                              ; preds = %180, %95
  %177 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %188 unwind label %190

178:                                              ; preds = %98
  %179 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XSLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(104) %96) #18
  br label %180

180:                                              ; preds = %98, %178
  %181 = phi ptr [ %179, %178 ], [ %5, %98 ]
  %182 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %181, ptr noundef nonnull align 8 dereferenceable(32) %14, i1 noundef zeroext true) #18
          to label %183 unwind label %176

183:                                              ; preds = %180
  invoke void @__cxa_end_catch()
          to label %184 unwind label %186

184:                                              ; preds = %183, %173, %165, %153, %145, %72
  %185 = phi i32 [ 0, %72 ], [ -4, %145 ], [ -3, %153 ], [ -2, %165 ], [ -2, %173 ], [ -1, %183 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  ret i32 %185

186:                                              ; preds = %183
  %187 = landingpad { ptr, i32 }
          cleanup
  br label %188

188:                                              ; preds = %186, %176, %174, %168, %166, %156, %154, %148, %146, %140, %130
  %189 = phi { ptr, i32 } [ %90, %130 ], [ %147, %146 ], [ %141, %140 ], [ %155, %154 ], [ %149, %148 ], [ %167, %166 ], [ %157, %156 ], [ %175, %174 ], [ %169, %168 ], [ %187, %186 ], [ %177, %176 ]
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  resume { ptr, i32 } %189

190:                                              ; preds = %176, %168, %156, %148, %140
  %191 = landingpad { ptr, i32 }
          catch ptr null
  %192 = extractvalue { ptr, i32 } %191, 0
  call void @__clang_call_terminate(ptr %192) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #6 comdat align 2 !prof !494 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !483
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %7, label %8, !prof !563

7:                                                ; preds = %3
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %24

8:                                                ; preds = %3
  %9 = icmp ult i64 %5, %1
  br i1 %9, label %10, label %24, !prof !564

10:                                               ; preds = %8
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !475
  %13 = getelementptr inbounds i8, ptr %12, i64 %1
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %15 = icmp eq ptr %14, %13
  br i1 %15, label %24, label %16, !prof !565

16:                                               ; preds = %10, %16
  %17 = phi ptr [ %20, %16 ], [ %14, %10 ]
  %18 = load ptr, ptr %0, align 8, !tbaa !470
  %19 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE(ptr noundef %17, ptr noundef nonnull align 1 dereferenceable(1) %2, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  %20 = getelementptr inbounds i8, ptr %17, i64 1
  %21 = load i64, ptr %4, align 8, !tbaa !483
  %22 = add i64 %21, 1
  store i64 %22, ptr %4, align 8, !tbaa !483
  %23 = icmp eq ptr %20, %13
  br i1 %23, label %24, label %16, !prof !566, !llvm.loop !567

24:                                               ; preds = %16, %10, %8, %7
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupport16setParserLiaisonEPKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !568
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XSLTEngineImpl18setProblemListenerEPNS_15ProblemListenerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %0, i64 0, i32 10
  store ptr %1, ptr %3, align 8, !tbaa !571
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !449
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !448
  ret i64 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1030XalanCompiledStylesheetDefault6createERN11xercesc_2_713MemoryManagerERKNS_15XSLTInputSourceERNS_14XSLTEngineImplEPNS1_12ErrorHandlerEPNS1_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev(ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1014XSLTEngineImplD1Ev(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(664)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(296)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #13

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat !prof !611 {
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %5 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2) #18
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(12) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !477 !PGOFuncName !612 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %0) #18
          to label %6 unwind label %21

6:                                                ; preds = %3
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  %8 = load ptr, ptr %1, align 8, !tbaa !423
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(12) %1) #18
          to label %12 unwind label %23

12:                                               ; preds = %6
  %13 = zext i32 %11 to i64
  %14 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %13, ptr noundef nonnull align 8 dereferenceable(36) %14) #18
          to label %16 unwind label %23

16:                                               ; preds = %12
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 150, ptr noundef nonnull align 8 dereferenceable(36) %15) #18
          to label %18 unwind label %23

18:                                               ; preds = %16
  %19 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true) #18
          to label %20 unwind label %23

20:                                               ; preds = %18
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void

21:                                               ; preds = %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %18, %16, %12, %6
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  resume { ptr, i32 } %26
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageEPKtRNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_712XMLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !613
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !477 !PGOFuncName !616 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  %6 = invoke fastcc noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %7 unwind label %10

7:                                                ; preds = %3
  %8 = invoke noundef zeroext i1 @_ZN11xalanc_1_1024TranscodeToLocalCodePageERKNS_14XalanDOMStringERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEEb(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(32) %2, i1 noundef zeroext true) #18
          to label %9 unwind label %10

9:                                                ; preds = %7
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void

10:                                               ; preds = %7, %3
  %11 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  resume { ptr, i32 } %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1012XSLException10getMessageEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLException", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !617 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %5 = load i64, ptr %3, align 8, !tbaa !483
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !618, !llvm.loop !619

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !620 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !473
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !621

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !622 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !483
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !483
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !475
  %7 = getelementptr inbounds i8, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc(ptr noundef nonnull align 1 dereferenceable(1) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !447
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !447
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !448
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #18
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #18
  store ptr %24, ptr %8, align 8, !tbaa !451
  store i64 %3, ptr %7, align 8, !tbaa !449
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !447
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !451
  %7 = load ptr, ptr %1, align 8, !tbaa !447
  store ptr %7, ptr %0, align 8, !tbaa !447
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !451
  store ptr %11, ptr %5, align 8, !tbaa !451
  store ptr %3, ptr %1, align 8, !tbaa !447
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !492
  store <2 x i64> %9, ptr %4, align 8, !tbaa !492
  store <2 x i64> %12, ptr %8, align 8, !tbaa !492
  store ptr %6, ptr %10, align 8, !tbaa !451
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !447
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_23XalanCompiledStylesheetEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !448
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !448
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !623

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !447
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #18
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #18
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #18
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #18
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #18
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds ptr, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #18
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !624

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #18
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !625

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #18
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #18
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !626

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET0_T_S6_S5_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #18
  %78 = tail call noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_23XalanCompiledStylesheetEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %4, ptr %0, align 8, !tbaa !426
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !449
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !448
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !449
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !447
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_23XalanCompiledStylesheetEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %13 = load i64, ptr %4, align 8, !tbaa !448
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !448
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !447
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1023XalanCompiledStylesheetEET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1023XalanCompiledStylesheetEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1023XalanCompiledStylesheetEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1023XalanCompiledStylesheetEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1023XalanCompiledStylesheetEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1023XalanCompiledStylesheetEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds ptr, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !451
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !448
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !627 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %2 = tail call noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !628 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1014XalanDOMString4sizeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !629 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !630
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat align 2 !prof !631 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br i1 %2, label %5, label %3, !prof !632

3:                                                ; preds = %1
  %4 = tail call noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #18
  br label %5

5:                                                ; preds = %1, %3
  %6 = phi ptr [ %4, %3 ], [ @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, %1 ]
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !633 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !516
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 2 dereferenceable(2) ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !634 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !505
  %5 = getelementptr inbounds i16, ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #6 comdat align 2 !prof !635 {
  store ptr %1, ptr %0, align 8, !tbaa !636
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
  store ptr %7, ptr %3, align 8, !tbaa !638
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !639 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !638
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !640 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !638
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !641

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !636
  %7 = load ptr, ptr %6, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(36) %3) #18
          to label %11 unwind label %12

11:                                               ; preds = %5, %1
  ret void

12:                                               ; preds = %5
  %13 = landingpad { ptr, i32 }
          catch ptr null
  %14 = extractvalue { ptr, i32 } %13, 0
  tail call void @__clang_call_terminate(ptr %14) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull returned align 8 dereferenceable(36) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !477 !PGOFuncName !642 {
  %4 = alloca i16, align 2
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #19
  store i16 0, ptr %4, align 2, !tbaa !643
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %7 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  %8 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull @.str) #18
          to label %9 unwind label %24

9:                                                ; preds = %3
  %10 = load ptr, ptr %1, align 8, !tbaa !423
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %1) #18
          to label %14 unwind label %24

14:                                               ; preds = %9
  %15 = icmp eq ptr %6, null
  %16 = select i1 %15, ptr %4, ptr %6
  %17 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
          to label %18 unwind label %24

18:                                               ; preds = %14
  %19 = invoke noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56) %1) #18
          to label %20 unwind label %24

20:                                               ; preds = %18
  %21 = invoke noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %7) #18
          to label %22 unwind label %24

22:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtS2_llS2_RNS_14XalanDOMStringE(ptr noundef %13, ptr noundef nonnull %16, i64 noundef %17, i64 noundef %19, ptr noundef %21, ptr noundef nonnull align 8 dereferenceable(36) %2) #18
          to label %23 unwind label %24

23:                                               ; preds = %22
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  ret ptr %2

24:                                               ; preds = %22, %20, %18, %14, %9, %3
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #19
  resume { ptr, i32 } %25
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_717SAXParseException11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1) #18
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtS2_llS2_RNS_14XalanDOMStringE(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %5) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %7 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %0) #18
  %8 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1) #18
  %9 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %4) #18
  tail call void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtjS2_jllS2_jRNS_14XalanDOMStringE(ptr noundef %0, i32 noundef %7, ptr noundef %1, i32 noundef %8, i64 noundef %2, i64 noundef %3, ptr noundef %4, i32 noundef %9, ptr noundef nonnull align 8 dereferenceable(36) %5) #18
  ret void
}

; Function Attrs: optsize
declare noundef i64 @_ZNK11xercesc_2_717SAXParseException13getLineNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i64 @_ZNK11xercesc_2_717SAXParseException15getColumnNumberEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKc(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %1) #18
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3) #18
  ret ptr %4
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKcj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XSLException13defaultFormatEPKtjS2_jllS2_jRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1016XalanTransformer17destroyStylesheetEPKNS_23XalanCompiledStylesheetE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !477 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !426
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %7 = call noundef ptr @_ZSt4findIPPKN11xalanc_1_1023XalanCompiledStylesheetES3_ET_S5_S5_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %8 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %9 = icmp eq ptr %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %12 = load ptr, ptr %11, align 8, !tbaa !446
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 7
  call fastcc void @_ZN11xalanc_1_10L16LoadErrorMessageERNS_21XPathExecutionContextENS_13XalanMessages5CodesERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 151, ptr noundef nonnull align 8 dereferenceable(32) %13) #18
  br label %19

14:                                               ; preds = %2
  %15 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %7) #18
  %16 = load ptr, ptr %3, align 8, !tbaa !426
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_23XalanCompiledStylesheetEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
  br label %19

19:                                               ; preds = %14, %10
  %20 = phi i32 [ -1, %10 ], [ 0, %14 ]
  ret i32 %20
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPKN11xalanc_1_1023XalanCompiledStylesheetES3_ET_S5_S5_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN11xalanc_1_10L16LoadErrorMessageERNS_21XPathExecutionContextENS_13XalanMessages5CodesERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #6 personality ptr @__gxx_personality_v0 !prof !477 !PGOFuncName !644 {
  %4 = alloca %"class.xalanc_1_10::XPathExecutionContext::GetAndReleaseCachedString", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(24) %0) #18
  %5 = call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedString3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  %6 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %1) #18
          to label %7 unwind label %8

7:                                                ; preds = %3
  invoke void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(32) %2) #18
          to label %23 unwind label %10

8:                                                ; preds = %20, %3
  %9 = landingpad { ptr, i32 }
          cleanup
  br label %26

10:                                               ; preds = %7
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  %13 = call ptr @__cxa_begin_catch(ptr %12) #19
  %14 = invoke noundef i32 @_ZN11xalanc_1_106lengthEPKc(ptr noundef nonnull @.str.1) #18
          to label %15 unwind label %24

15:                                               ; preds = %10
  %16 = add i32 %14, 1
  %17 = zext i32 %16 to i64
  invoke void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %17) #18
          to label %18 unwind label %24

18:                                               ; preds = %15
  %19 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #18
          to label %20 unwind label %24

20:                                               ; preds = %18
  %21 = zext i32 %14 to i64
  %22 = call ptr @strncpy(ptr noundef %19, ptr noundef nonnull dereferenceable(48) @.str.1, i64 noundef %21) #16
  invoke void @__cxa_end_catch()
          to label %23 unwind label %8

23:                                               ; preds = %20, %7
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void

24:                                               ; preds = %18, %15, %10
  %25 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %26 unwind label %28

26:                                               ; preds = %24, %8
  %27 = phi { ptr, i32 } [ %9, %8 ], [ %25, %24 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  resume { ptr, i32 } %27

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_23XalanCompiledStylesheetEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !423
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #18
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !477 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1023XalanCompiledStylesheetEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #18
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #18
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #18
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #18
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !645

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %5, %28
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i64 [ %29, %27 ], [ %7, %3 ]
  %32 = phi ptr [ %24, %27 ], [ %0, %3 ]
  %33 = ashr exact i64 %31, 3
  switch i64 %33, label %46 [
    i64 3, label %34
    i64 2, label %38
    i64 1, label %43
  ]

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #18
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #18
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #18
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPKN11xalanc_1_1023XalanCompiledStylesheetEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %1, align 8, !tbaa !426
  %4 = load ptr, ptr %0, align 8, !tbaa !646
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !477 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1014XalanDOMString9transcodeERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xalanc_1_106lengthEPKc(ptr noundef %0) local_unnamed_addr #6 comdat !prof !477 {
  %2 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKc(ptr noundef %0) #18
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !648 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithNoMemoryManager", align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !470
  call void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerIcEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %3) #18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerIcEC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !648 {
  store i8 0, ptr %0, align 1, !tbaa !649
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = tail call noundef ptr @_ZSt4copyIPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #18
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #18
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !651

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_S5_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1023XalanCompiledStylesheetEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1023XalanCompiledStylesheetES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1023XalanCompiledStylesheetEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !448
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !448
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !451
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !483
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !538

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #18
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9push_backERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %4 = load i64, ptr %3, align 8, !tbaa !454
  %5 = icmp ult i64 %4, %1
  br i1 %5, label %6, label %7, !prof !450

6:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %7

7:                                                ; preds = %6, %2
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !453
  ret i64 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1021XercesDOMParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1016XalanTransformer25getExternalSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 11
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  br i1 %3, label %6, label %4, !prof !450

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1016XalanTransformer36getExternalNoNamespaceSchemaLocationEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 12
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  br i1 %3, label %6, label %4, !prof !450

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  br label %6

6:                                                ; preds = %1, %4
  %7 = phi ptr [ %5, %4 ], [ null, %1 ]
  ret ptr %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1023XalanSourceTreeDocument19getPoolAllTextNodesEv() local_unnamed_addr #0 comdat align 2 !prof !422 {
  %1 = load i8, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument18s_poolAllTextNodesE, align 1, !tbaa !652, !range !552, !noundef !553
  %2 = icmp ne i8 %1, 0
  ret i1 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1012XSLException13defaultFormatERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !452
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !452
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !453
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !450

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #18
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !538

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #18
  store ptr %24, ptr %8, align 8, !tbaa !455
  store i64 %3, ptr %7, align 8, !tbaa !454
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !452
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !455
  %7 = load ptr, ptr %1, align 8, !tbaa !452
  store ptr %7, ptr %0, align 8, !tbaa !452
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !455
  store ptr %11, ptr %5, align 8, !tbaa !455
  store ptr %3, ptr %1, align 8, !tbaa !452
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !492
  store <2 x i64> %9, ptr %4, align 8, !tbaa !492
  store <2 x i64> %12, ptr %8, align 8, !tbaa !492
  store ptr %6, ptr %10, align 8, !tbaa !455
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !452
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_17XalanParsedSourceEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !453
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !453
  %26 = getelementptr inbounds ptr, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !653

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !452
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #18
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #18
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #18
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE6insertEPS3_PKS3_S9_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #18
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #18
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds ptr, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %57) #18
  %58 = getelementptr inbounds ptr, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !654

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %61) #18
  %62 = getelementptr inbounds ptr, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !655

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #18
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %72) #18
  %73 = getelementptr inbounds ptr, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !656

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds ptr, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #18
  %78 = tail call noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET0_T_S8_S7_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !455
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_17XalanParsedSourceEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %4, ptr %0, align 8, !tbaa !426
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !454
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !453
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !454
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !450

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !452
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_17XalanParsedSourceEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %13 = load i64, ptr %4, align 8, !tbaa !453
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !453
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !452
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1) #18
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !422 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !422 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !422 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1017XalanParsedSourceEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1017XalanParsedSourceEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !422 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKPKN11xalanc_1_1017XalanParsedSourceEET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !482 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKPKN11xalanc_1_1017XalanParsedSourceEPS3_ET1_T0_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !450

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1017XalanParsedSourceEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !464 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 3
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds ptr, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %11, ptr align 8 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds ptr, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !455
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !453
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1014XalanDOMString5emptyEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 comdat align 2 !prof !657 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !630
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPKN11xalanc_1_1017XalanParsedSourceES3_ET_S5_S5_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_17XalanParsedSourceEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !422 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4, !prof !538

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !423
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %0) #16
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #18
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = call noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEENS0_16_Iter_equals_valIT_EERS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !422 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val.186", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val.186", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30, !prof !523

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #18
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #18
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #18
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #18
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !prof !530, !llvm.loop !658

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %5, %28
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i64 [ %29, %27 ], [ %7, %3 ]
  %32 = phi ptr [ %24, %27 ], [ %0, %3 ]
  %33 = ashr exact i64 %31, 3
  switch i64 %33, label %46 [
    i64 3, label %34
    i64 2, label %38
    i64 1, label %43
  ], !prof !659

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #18
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #18
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #18
  br i1 %45, label %47, label %46, !prof !450

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !422 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %3 = load ptr, ptr %1, align 8, !tbaa !426
  %4 = load ptr, ptr %0, align 8, !tbaa !660
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEC2ERS6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5, !prof !538

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = tail call noundef ptr @_ZSt4copyIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #18
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #18
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !422 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4, !prof !485

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !prof !486, !llvm.loop !662

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1017XalanParsedSourceEET_RKS5_S5_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !422 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat !prof !422 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !453
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !453
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !455
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #6 align 2 !prof !477 {
  %4 = alloca %"struct.std::pair.6", align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #19
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !429
  %10 = tail call noundef ptr @_ZN11xalanc_1_1018cloneObjWithMemMgrINS_14XalanDOMStringEEEPT_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %9) #18
  store ptr %10, ptr %5, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %11 = load ptr, ptr %8, align 8, !tbaa !429
  %12 = tail call noundef ptr @_ZN11xalanc_1_1018cloneObjWithMemMgrINS_14XalanDOMStringEEEPT_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  store ptr %12, ptr %6, align 8, !tbaa !426
  call void @_ZNSt4pairIPN11xalanc_1_1014XalanDOMStringES2_EC2IS2_S2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(16) %4) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9push_backERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018cloneObjWithMemMgrINS_14XalanDOMStringEEEPT_RKS2_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 !prof !477 {
  %3 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr.187", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #19
  %4 = load ptr, ptr %1, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 40) #18
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %7) #18
  %8 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1) #18
          to label %9 unwind label %12

9:                                                ; preds = %2
  %10 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #18
          to label %11 unwind label %12

11:                                               ; preds = %9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  ret ptr %8

12:                                               ; preds = %9, %2
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #16
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #19
  resume { ptr, i32 } %13
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xalanc_1_1014XalanDOMStringES2_EC2IS2_S2_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS6_S7_EEEbE4typeELb1EEEOS6_OS7_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %4, ptr %0, align 8, !tbaa !532
  %5 = getelementptr inbounds %"struct.std::pair.6", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !426
  store ptr %6, ptr %5, align 8, !tbaa !534
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !457
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !458
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !456
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_14XalanDOMStringES3_EE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %13 = load i64, ptr %4, align 8, !tbaa !457
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !457
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !456
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_14XalanDOMStringES3_EE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !456
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !457
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #18
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #18
  store ptr %24, ptr %8, align 8, !tbaa !459
  store i64 %3, ptr %7, align 8, !tbaa !458
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !456
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = load ptr, ptr %1, align 8, !tbaa !456
  store ptr %7, ptr %0, align 8, !tbaa !456
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !459
  store ptr %11, ptr %5, align 8, !tbaa !459
  store ptr %3, ptr %1, align 8, !tbaa !456
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !492
  store <2 x i64> %9, ptr %4, align 8, !tbaa !492
  store <2 x i64> %12, ptr %8, align 8, !tbaa !492
  store ptr %6, ptr %10, align 8, !tbaa !459
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE14local_distanceEPKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !456
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_14XalanDOMStringES3_EE9constructEPS4_RKS4_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %23 = getelementptr inbounds %"struct.std::pair.6", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !457
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !457
  %26 = getelementptr inbounds %"struct.std::pair.6", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !663

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !456
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #18
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #18
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #18
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #18
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE14local_distanceEPKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #18
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"struct.std::pair.6", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %57) #18
  %58 = getelementptr inbounds %"struct.std::pair.6", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !664

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %61) #18
  %62 = getelementptr inbounds %"struct.std::pair.6", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !665

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET0_T_S9_S8_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #18
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"struct.std::pair.6", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %72) #18
  %73 = getelementptr inbounds %"struct.std::pair.6", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !666

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"struct.std::pair.6", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET0_T_S7_S6_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #18
  %78 = tail call noundef ptr @_ZSt4copyIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET0_T_S9_S8_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE14local_distanceEPKS4_S9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !457
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !458
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET0_T_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E15difference_typeES8_S8_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E15difference_typeES8_S8_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 4
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EENSt15iterator_traitsIT_E17iterator_categoryERKS8_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !456
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4swapERS7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S7_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EPS4_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES6_EPS7_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt4pairIPN11xalanc_1_1014XalanDOMStringES6_EPS7_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %17, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %16, %11 ], [ %0, %3 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIPN11xalanc_1_1014XalanDOMStringES2_EaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  %16 = getelementptr inbounds %"struct.std::pair.6", ptr %14, i64 1
  %17 = getelementptr inbounds %"struct.std::pair.6", ptr %13, i64 1
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %9, !llvm.loop !667
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIPN11xalanc_1_1014XalanDOMStringES2_EaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !426
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !426
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_RKS6_S6_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_EET_S6_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPSt4pairIPN11xalanc_1_1014XalanDOMStringES3_ES5_ET1_T0_S7_S6_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN11xalanc_1_1014XalanDOMStringES6_ES8_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN11xalanc_1_1014XalanDOMStringES6_ES8_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %16, %9 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %9 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"struct.std::pair.6", ptr %12, i64 -1
  %14 = getelementptr inbounds %"struct.std::pair.6", ptr %11, i64 -1
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIPN11xalanc_1_1014XalanDOMStringES2_EaSERKS3_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  %16 = add nsw i64 %10, -1
  %17 = icmp ugt i64 %10, 1
  br i1 %17, label %9, label %18, !llvm.loop !668

18:                                               ; preds = %9, %3
  %19 = phi ptr [ %2, %3 ], [ %14, %9 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !459
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !457
  %6 = getelementptr inbounds %"struct.std::pair.6", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !464 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %2 = getelementptr inbounds %"struct.std::pair.188", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !669
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !464 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #18
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !464 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !426
  store ptr %2, ptr %5, align 8, !tbaa !426
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XalanDOMStringEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XalanDOMStringEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !464 {
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %4, ptr %0, align 8, !tbaa !671
  %5 = getelementptr inbounds %"struct.std::pair.188", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !426
  store ptr %6, ptr %5, align 8, !tbaa !669
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !672 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !464 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  store ptr %1, ptr %0, align 8, !tbaa !671
  %4 = getelementptr inbounds %"struct.std::pair.188", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !669
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !464 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %2, label %3, label %10, !prof !501

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !671
  %5 = getelementptr inbounds %"struct.std::pair.188", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !669
  %7 = load ptr, ptr %4, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #18
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %2 = load ptr, ptr %0, align 8, !tbaa !671
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.188", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamEPKcS2_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #19
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %7, i32 noundef -1) #18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #19
  %8 = load ptr, ptr %6, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %8, i32 noundef -1) #18
          to label %9 unwind label %11

9:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1016XalanTransformer18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5) #18
          to label %10 unwind label %13

10:                                               ; preds = %9
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  ret void

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %15

13:                                               ; preds = %9
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %5) #16
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #19
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %4) #16
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #19
  resume { ptr, i32 } %16
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1EPKcRN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1016XalanTransformer19removeTraceListenerEPNS_13TraceListenerE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !477 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !426
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 6
  %5 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %7 = call noundef ptr @_ZSt4findIPPN11xalanc_1_1013TraceListenerES2_ET_S4_S4_RKT0_(ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %8 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %9 = icmp ne ptr %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %7) #18
  br label %12

12:                                               ; preds = %2, %10
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4findIPPN11xalanc_1_1013TraceListenerES2_ET_S4_S4_RKT0_(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1013TraceListenerEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  %5 = tail call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %4) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %0, ptr %4, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %4) #18
  %5 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) #18
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPN11xalanc_1_1013TraceListenerEEENS0_16_Iter_equals_valIT_EERS7_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #6 comdat !prof !477 {
  %2 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val.190", align 8
  call void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %3 = load ptr, ptr %2, align 8
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1013TraceListenerEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca %"struct.__gnu_cxx::__ops::_Iter_equals_val.190", align 8
  store ptr %2, ptr %4, align 8
  %5 = ptrtoint ptr %1 to i64
  %6 = ptrtoint ptr %0 to i64
  %7 = sub i64 %5, %6
  %8 = ashr i64 %7, 5
  %9 = icmp sgt i64 %8, 0
  br i1 %9, label %10, label %30

10:                                               ; preds = %3, %23
  %11 = phi i64 [ %25, %23 ], [ %8, %3 ]
  %12 = phi ptr [ %24, %23 ], [ %0, %3 ]
  %13 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %12) #18
  br i1 %13, label %47, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds ptr, ptr %12, i64 1
  %16 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %15) #18
  br i1 %16, label %47, label %17

17:                                               ; preds = %14
  %18 = getelementptr inbounds ptr, ptr %12, i64 2
  %19 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %18) #18
  br i1 %19, label %47, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds ptr, ptr %12, i64 3
  %22 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull %21) #18
  br i1 %22, label %47, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds ptr, ptr %12, i64 4
  %25 = add nsw i64 %11, -1
  %26 = icmp sgt i64 %11, 1
  br i1 %26, label %10, label %27, !llvm.loop !673

27:                                               ; preds = %23
  %28 = ptrtoint ptr %24 to i64
  %29 = sub i64 %5, %28
  br label %30

30:                                               ; preds = %27, %3
  %31 = phi i64 [ %29, %27 ], [ %7, %3 ]
  %32 = phi ptr [ %24, %27 ], [ %0, %3 ]
  %33 = ashr exact i64 %31, 3
  switch i64 %33, label %46 [
    i64 3, label %34
    i64 2, label %38
    i64 1, label %43
  ]

34:                                               ; preds = %30
  %35 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %32) #18
  br i1 %35, label %47, label %36

36:                                               ; preds = %34
  %37 = getelementptr inbounds ptr, ptr %32, i64 1
  br label %38

38:                                               ; preds = %30, %36
  %39 = phi ptr [ %32, %30 ], [ %37, %36 ]
  %40 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %39) #18
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = getelementptr inbounds ptr, ptr %39, i64 1
  br label %43

43:                                               ; preds = %30, %41
  %44 = phi ptr [ %32, %30 ], [ %42, %41 ]
  %45 = call noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %44) #18
  br i1 %45, label %47, label %46

46:                                               ; preds = %43, %30
  br label %47

47:                                               ; preds = %20, %17, %14, %10, %43, %38, %34, %46
  %48 = phi ptr [ %1, %46 ], [ %32, %34 ], [ %39, %38 ], [ %44, %43 ], [ %21, %20 ], [ %18, %17 ], [ %15, %14 ], [ %12, %10 ]
  ret ptr %48
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E17iterator_categoryERKS5_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEclIPS4_EEbT_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = load ptr, ptr %1, align 8, !tbaa !426
  %4 = load ptr, ptr %0, align 8, !tbaa !674
  %5 = load ptr, ptr %4, align 8, !tbaa !426
  %6 = icmp eq ptr %3, %5
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEC2ERS5_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !477 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5eraseEPS2_S6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = tail call noundef ptr @_ZSt4copyIPPN11xalanc_1_1013TraceListenerES3_ET0_T_S5_S4_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #18
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #18
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPPN11xalanc_1_1013TraceListenerES3_ET0_T_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !676

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE14local_distanceEPKS2_S7_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1013TraceListenerEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPPN11xalanc_1_1013TraceListenerEET_RKS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPPN11xalanc_1_1013TraceListenerEET_S4_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPPN11xalanc_1_1013TraceListenerES3_ET1_T0_S5_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1013TraceListenerEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPN11xalanc_1_1013TraceListenerEEEPT_PKS6_S9_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %2, ptr align 8 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !466
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !466
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !469
  %7 = getelementptr inbounds ptr, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE7destroyERS2_(ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E15difference_typeES6_S6_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E15difference_typeES6_S6_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 3
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKPN11xalanc_1_1013TraceListenerEENSt15iterator_traitsIT_E17iterator_categoryERKS6_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1016XalanTransformer21createDocumentBuilderERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 !prof !477 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 3
  %5 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #18
  %6 = add i64 %5, 1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %6) #18
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !429
  %9 = tail call noundef ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #19
  store ptr %9, ptr %3, align 8, !tbaa !426
  call void @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #19
  ret ptr %9
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1027XalanDefaultDocumentBuilder6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer22destroyDocumentBuilderEPNS_20XalanDocumentBuilderE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) local_unnamed_addr #6 align 2 !prof !477 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef %1) #18, !range !559
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer23installExternalFunctionERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #6 align 2 !prof !477 {
  %5 = alloca %"struct.std::pair", align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #19
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !429
  %11 = tail call noundef ptr @_ZN11xalanc_1_1017XalanQNameByValue6createERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %10) #18
  store ptr %11, ptr %6, align 8, !tbaa !426
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #19
  %12 = load ptr, ptr %9, align 8, !tbaa !429
  %13 = load ptr, ptr %3, align 8, !tbaa !423
  %14 = getelementptr inbounds ptr, ptr %13, i64 7
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %12) #18
  store ptr %16, ptr %7, align 8, !tbaa !426
  call void @_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEC2IS2_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(16) %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xalanc_1_1017XalanQNameByValue6createERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEC2IS2_S4_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairIS8_S9_EEEbE4typeELb1EEEOS8_OS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %4, ptr %0, align 8, !tbaa !560
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !426
  store ptr %6, ptr %5, align 8, !tbaa !528
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !461
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !462
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !460
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEEE9constructEPS6_RKS6_RN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %13 = load i64, ptr %4, align 8, !tbaa !461
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !461
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !460
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(16) %1) #18
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEEE9constructEPS6_RKS6_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !460
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !461
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #18
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #18
  store ptr %24, ptr %8, align 8, !tbaa !463
  store i64 %3, ptr %7, align 8, !tbaa !462
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !460
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !463
  %7 = load ptr, ptr %1, align 8, !tbaa !460
  store ptr %7, ptr %0, align 8, !tbaa !460
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !463
  store ptr %11, ptr %5, align 8, !tbaa !463
  store ptr %3, ptr %1, align 8, !tbaa !460
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !492
  store <2 x i64> %9, ptr %4, align 8, !tbaa !492
  store <2 x i64> %12, ptr %8, align 8, !tbaa !492
  store ptr %6, ptr %10, align 8, !tbaa !463
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !460
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEEE9constructEPS6_RKS6_RN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %23 = getelementptr inbounds %"struct.std::pair", ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !461
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !461
  %26 = getelementptr inbounds %"struct.std::pair", ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !llvm.loop !677

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !460
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #18
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #18
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #18
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #18
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #18
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51

51:                                               ; preds = %47
  %52 = getelementptr inbounds %"struct.std::pair", ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %57) #18
  %58 = getelementptr inbounds %"struct.std::pair", ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !llvm.loop !678

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %61) #18
  %62 = getelementptr inbounds %"struct.std::pair", ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !llvm.loop !679

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET0_T_SB_SA_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #18
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds %"struct.std::pair", ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %72) #18
  %73 = getelementptr inbounds %"struct.std::pair", ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !680

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds %"struct.std::pair", ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET0_T_S9_S8_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #18
  %78 = tail call noundef ptr @_ZSt4copyIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET0_T_SB_SA_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !463
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E15difference_typeESA_SA_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !462
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET0_T_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E15difference_typeESA_SA_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E15difference_typeESA_SA_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 4
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEENSt15iterator_traitsIT_E17iterator_categoryERKSA_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !477 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !460
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4swapERS9_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S9_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEPS6_ET1_T0_SB_SA_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEEPS9_EET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEEPS9_EET0_T_SE_SD_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %17, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %16, %11 ], [ %0, %3 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  %16 = getelementptr inbounds %"struct.std::pair", ptr %14, i64 1
  %17 = getelementptr inbounds %"struct.std::pair", ptr %13, i64 1
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %9, !llvm.loop !681
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = load <2 x ptr>, ptr %1, align 8, !tbaa !426
  store <2 x ptr> %3, ptr %0, align 8, !tbaa !426
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !477 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %3, %9
  %10 = phi i64 [ %16, %9 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %9 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %9 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"struct.std::pair", ptr %12, i64 -1
  %14 = getelementptr inbounds %"struct.std::pair", ptr %11, i64 -1
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef nonnull align 8 dereferenceable(16) %13) #18
  %16 = add nsw i64 %10, -1
  %17 = icmp ugt i64 %10, 1
  br i1 %17, label %9, label %18, !llvm.loop !682

18:                                               ; preds = %9, %3
  %19 = phi ptr [ %2, %3 ], [ %14, %9 ]
  ret ptr %19
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !463
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !461
  %6 = getelementptr inbounds %"struct.std::pair", ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #6 align 2 !prof !477 {
  tail call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault29installExternalFunctionGlobalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer25uninstallExternalFunctionERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(384) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !477 {
  %4 = alloca %"class.xalanc_1_10::XalanQNameByReference", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 5
  %6 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  br label %11

10:                                               ; preds = %34, %3
  ret void

11:                                               ; preds = %8, %34
  %12 = phi i64 [ 0, %8 ], [ %35, %34 ]
  %13 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %12) #18
  %14 = load ptr, ptr %13, align 8, !tbaa !560
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %11
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #19
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #18
  %17 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %12) #18
  %18 = load ptr, ptr %17, align 8, !tbaa !560
  %19 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %18) #18
          to label %20 unwind label %32

20:                                               ; preds = %16
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  br i1 %19, label %21, label %34

21:                                               ; preds = %20
  %22 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %12) #18
  %23 = load ptr, ptr %22, align 8, !tbaa !560
  %24 = load ptr, ptr %9, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_17XalanQNameByValueEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %23, ptr noundef nonnull align 8 dereferenceable(8) %24) #18
  %25 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %5, i64 noundef %12) #18
  %26 = getelementptr inbounds %"struct.std::pair", ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !528
  %28 = load ptr, ptr %9, align 8, !tbaa !429
  call void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8FunctionEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %27, ptr noundef nonnull align 8 dereferenceable(8) %28) #18
  %29 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %30 = getelementptr inbounds %"struct.std::pair", ptr %29, i64 %12
  %31 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5eraseEPS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %30) #18
  br label %34

32:                                               ; preds = %16
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #16
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #19
  resume { ptr, i32 } %33

34:                                               ; preds = %11, %20, %21
  %35 = add nuw i64 %12, 1
  %36 = call noundef i64 @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %11, label %10, !llvm.loop !683
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat align 2 !prof !684 {
  %3 = load ptr, ptr %0, align 8, !tbaa !423
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %10) #18
  br i1 %11, label %12, label %22, !prof !685

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !423
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0) #18
  %17 = load ptr, ptr %1, align 8, !tbaa !423
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1) #18
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %20) #18
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_17XalanQNameByValueEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #6 comdat !prof !477 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !423
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(88) %0) #16
  %7 = load ptr, ptr %1, align 8, !tbaa !423
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %0) #18
  br label %10

10:                                               ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5eraseEPS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds %"struct.std::pair", ptr %1, i64 1
  %4 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5eraseEPS6_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef nonnull %3) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat !prof !686 {
  %3 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE5eraseEPS6_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = tail call noundef ptr @_ZSt4copyIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET0_T_S9_S8_(ptr noundef %2, ptr noundef %6, ptr noundef %1) #18
  %8 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE14local_distanceEPKS6_SB_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8) #18
  br label %9

9:                                                ; preds = %5, %3
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET0_T_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE11shrinkCountEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = icmp eq i64 %1, 0
  br i1 %3, label %8, label %4

4:                                                ; preds = %2, %4
  %5 = phi i64 [ %6, %4 ], [ %1, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = add i64 %5, -1
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %8, label %4, !llvm.loop !687

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_S8_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEEET_RKS8_S8_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS1_8FunctionEES7_ET1_T0_S9_S8_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS4_8FunctionEESA_EET0_T_SC_SB_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 4
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %11, %3
  %10 = phi ptr [ %2, %3 ], [ %17, %11 ]
  ret ptr %10

11:                                               ; preds = %3, %11
  %12 = phi i64 [ %18, %11 ], [ %7, %3 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %3 ]
  %14 = phi ptr [ %16, %11 ], [ %0, %3 ]
  %15 = tail call noundef nonnull align 8 dereferenceable(16) ptr @_ZNSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEEaSERKS5_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14) #18
  %16 = getelementptr inbounds %"struct.std::pair", ptr %14, i64 1
  %17 = getelementptr inbounds %"struct.std::pair", ptr %13, i64 1
  %18 = add nsw i64 %12, -1
  %19 = icmp ugt i64 %12, 1
  br i1 %19, label %11, label %9, !llvm.loop !688
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !461
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !461
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !463
  %7 = getelementptr inbounds %"struct.std::pair", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE7destroyERS6_(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 align 2 !prof !477 {
  tail call void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault31uninstallExternalFunctionGlobalERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1016XalanTransformer9getIndentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0) local_unnamed_addr #6 align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 75
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(2069) %3) #18
  ret i32 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer9setIndentEi(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !477 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !446
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 76
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(2069) %4, i32 noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1016XalanTransformer13getEscapeURLsEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0) local_unnamed_addr #6 align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 122
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(2069) %3) #18
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %7, 2
  %11 = select i1 %10, i32 2, i32 %9
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer13setEscapeURLsENS0_11eEscapeURLsE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !477 {
  %3 = icmp eq i32 %1, 1
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, i32 2, i32 %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !446
  %9 = load ptr, ptr %8, align 8, !tbaa !423
  %10 = getelementptr inbounds ptr, ptr %9, i64 123
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(2069) %8, i32 noundef %6) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1016XalanTransformer14getOmitMETATagEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0) local_unnamed_addr #6 align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  %4 = load ptr, ptr %3, align 8, !tbaa !423
  %5 = getelementptr inbounds ptr, ptr %4, i64 124
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i32 %6(ptr noundef nonnull align 8 dereferenceable(2069) %3) #18
  %8 = icmp eq i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = icmp eq i32 %7, 2
  %11 = select i1 %10, i32 2, i32 %9
  ret i32 %11
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer14setOmitMETATagENS0_12eOmitMETATagE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(384) %0, i32 noundef %1) local_unnamed_addr #6 align 2 !prof !477 {
  %3 = icmp eq i32 %1, 1
  %4 = zext i1 %3 to i32
  %5 = icmp eq i32 %1, 2
  %6 = select i1 %5, i32 2, i32 %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !446
  %9 = load ptr, ptr %8, align 8, !tbaa !423
  %10 = getelementptr inbounds ptr, ptr %9, i64 125
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(2069) %8, i32 noundef %6) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer5resetEv(ptr noundef nonnull align 8 dereferenceable(384) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(2069) %3, ptr noundef null) #18
          to label %4 unwind label %23

4:                                                ; preds = %1
  %5 = load ptr, ptr %2, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(2069) %5, ptr noundef null) #18
          to label %6 unwind label %23

6:                                                ; preds = %4
  %7 = load ptr, ptr %2, align 8, !tbaa !446
  invoke void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(2069) %7, ptr noundef null) #18
          to label %8 unwind label %23

8:                                                ; preds = %6
  %9 = load ptr, ptr %2, align 8, !tbaa !446
  tail call void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault16setXSLTProcessorEPNS_14XSLTEngineImplE(ptr noundef nonnull align 8 dereferenceable(2069) %9, ptr noundef null) #18
  %10 = load ptr, ptr %2, align 8, !tbaa !446
  %11 = load ptr, ptr %10, align 8, !tbaa !423
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(2069) %10) #18
          to label %14 unwind label %23

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 4
  %16 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
  br label %17

17:                                               ; preds = %40, %14
  %18 = phi ptr [ %16, %14 ], [ %41, %40 ]
  %19 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
          to label %20 unwind label %25

20:                                               ; preds = %17
  %21 = icmp eq ptr %18, %19
  br i1 %21, label %22, label %32, !prof !450

22:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #18
          to label %31 unwind label %23

23:                                               ; preds = %22, %8, %6, %4, %1
  %24 = landingpad { ptr, i32 }
          catch ptr null
  br label %27

25:                                               ; preds = %36, %32, %17
  %26 = landingpad { ptr, i32 }
          catch ptr null
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %24, %23 ]
  %29 = extractvalue { ptr, i32 } %28, 0
  %30 = tail call ptr @__cxa_begin_catch(ptr %29) #19
  tail call void @__cxa_end_catch()
  br label %31

31:                                               ; preds = %22, %27
  ret void

32:                                               ; preds = %20
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %0, i64 0, i32 1
  %34 = load ptr, ptr %18, align 8, !tbaa !532
  %35 = load ptr, ptr %33, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_14XalanDOMStringEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(8) %35) #18
          to label %36 unwind label %25

36:                                               ; preds = %32
  %37 = getelementptr inbounds %"struct.std::pair.6", ptr %18, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !534
  %39 = load ptr, ptr %33, align 8, !tbaa !429
  invoke void @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_14XalanDOMStringEEEvPKT_RN11xercesc_2_713MemoryManagerE(ptr noundef %38, ptr noundef nonnull align 8 dereferenceable(8) %39) #18
          to label %40 unwind label %25

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"struct.std::pair.6", ptr %18, i64 1
  br label %17, !llvm.loop !689
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(2069) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !464 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(432) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(2069) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !464 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(432) %3, ptr noundef %1) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(2069) %0, ptr noundef %1) local_unnamed_addr #6 comdat align 2 !prof !464 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(432) %3, ptr noundef %1) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !690
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1033StylesheetExecutionContextDefault16setXSLTProcessorEPNS_14XSLTEngineImplE(ptr noundef nonnull align 8 dereferenceable(2069) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetExecutionContextDefault", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !693
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !457
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %6, label %5, !prof !450

5:                                                ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 0) #18
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !773
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContextDefault", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !774
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE(ptr noundef nonnull align 8 dereferenceable(432) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !690
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %5 = load i64, ptr %3, align 8, !tbaa !457
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !llvm.loop !775

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !457
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !457
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !459
  %7 = getelementptr inbounds %"struct.std::pair.6", ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE7destroyERS4_(ptr noundef nonnull align 8 dereferenceable(16) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !776
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer", ptr %2, i64 0, i32 17
  %4 = load ptr, ptr %3, align 8, !tbaa !446
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 5
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(2069) %4) #18
          to label %8 unwind label %11

8:                                                ; preds = %1
  %9 = load ptr, ptr %0, align 8, !tbaa !776
  invoke void @_ZN11xalanc_1_1016XalanTransformer5resetEv(ptr noundef nonnull align 8 dereferenceable(384) %9) #18
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

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %2 = getelementptr inbounds %"struct.std::pair.193", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !778
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault28installExternalFunctionLocalERKNS_14XalanDOMStringES3_RKNS_8FunctionE(ptr noundef nonnull align 8 dereferenceable(296), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault12setProcessorEPNS_13XSLTProcessorE(ptr noundef nonnull align 8 dereferenceable(296) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTProcessorEnvSupportDefault", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !780
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XalanTransformer11EnsureResetC2ERS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(384) %1) unnamed_addr #0 comdat align 2 !prof !422 {
  store ptr %1, ptr %0, align 8, !tbaa !426
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XSLTEngineImpl18setStylesheetParamERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !459
  %5 = getelementptr inbounds %"struct.std::pair.6", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1015XSLTInputSourceC1EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711InputSource11setSystemIdEPKt(ptr noundef nonnull align 8 dereferenceable(41), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #6 comdat !prof !791 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define internal fastcc void @_ZN11xalanc_1_10L17addTraceListenersERKNS_11XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEERNS_14XSLTEngineImplE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(1000) %1) unnamed_addr #6 !prof !422 !PGOFuncName !792 {
  %3 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br i1 %3, label %20, label %4, !prof !450

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %7 = icmp eq ptr %6, %5
  br i1 %7, label %8, label %12

8:                                                ; preds = %12, %4
  %9 = load ptr, ptr %1, align 8, !tbaa !423
  %10 = getelementptr inbounds ptr, ptr %9, i64 34
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(1000) %1, i1 noundef zeroext true) #18
  br label %20

12:                                               ; preds = %4, %12
  %13 = phi ptr [ %18, %12 ], [ %6, %4 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !426
  %15 = load ptr, ptr %1, align 8, !tbaa !423
  %16 = getelementptr inbounds ptr, ptr %15, i64 19
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(1000) %1, ptr noundef %14) #18
  %18 = getelementptr inbounds ptr, ptr %13, i64 1
  %19 = icmp eq ptr %18, %5
  br i1 %19, label %8, label %12, !llvm.loop !793

20:                                               ; preds = %8, %2
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016XSLTResultTargetC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016XSLTResultTarget11getEncodingEv(ptr noundef nonnull align 8 dereferenceable(112) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016XSLTResultTarget11setEncodingERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat align 2 !prof !477 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XSLTResultTarget", ptr %0, i64 0, i32 2
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceERNS_16XSLTResultTargetERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev(ptr noundef nonnull align 8 dereferenceable(1200)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711InputSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !422 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #20
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 comdat align 2 !prof !422 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !426
  store ptr %2, ptr %5, align 8, !tbaa !426
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #18
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 !prof !422 {
  %4 = load ptr, ptr %1, align 8, !tbaa !426
  store ptr %4, ptr %0, align 8, !tbaa !794
  %5 = getelementptr inbounds %"struct.std::pair.193", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !426
  store ptr %6, ptr %5, align 8, !tbaa !778
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !464 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !466
  %4 = icmp eq i64 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !469
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !469
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.3", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !466
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat align 2 !prof !795 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) #18
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) local_unnamed_addr #6 comdat align 2 !prof !795 {
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  %3 = icmp eq ptr %1, %0
  br i1 %3, label %9, label %4, !prof !796

4:                                                ; preds = %2
  %5 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !630
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  store i32 %7, ptr %8, align 8, !tbaa !630
  br label %9

9:                                                ; preds = %4, %2
  tail call void @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv(ptr noundef nonnull align 8 dereferenceable(36) %0) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !795 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %33, label %5, !prof !796

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !503
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !516
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %13, !prof !797

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %12 = load ptr, ptr %0, align 8, !tbaa !513
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %33

13:                                               ; preds = %5
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !516
  %17 = load i64, ptr %8, align 8, !tbaa !516
  %18 = icmp ugt i64 %16, %17
  br i1 %18, label %19, label %20, !prof !798

19:                                               ; preds = %13
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %17) #18
  br label %28

20:                                               ; preds = %13
  %21 = icmp ult i64 %16, %17
  br i1 %21, label %22, label %28, !prof !799

22:                                               ; preds = %20
  %23 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %24 = load i64, ptr %15, align 8, !tbaa !516
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %27 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %26, ptr noundef %25, ptr noundef %27) #18
  br label %28

28:                                               ; preds = %20, %22, %19
  %29 = phi ptr [ %14, %19 ], [ %25, %22 ], [ %14, %20 ]
  %30 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %31 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %32 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %30, ptr noundef %29, ptr noundef %31) #18
  br label %33

33:                                               ; preds = %11, %28, %2
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !800 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  store ptr %2, ptr %0, align 8, !tbaa !513
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !516
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %21, label %12, !prof !801

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %13 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10, i64 noundef %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %13) #18
  %14 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  %15 = call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
  %16 = invoke noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %1) #18
          to label %17 unwind label %19

17:                                               ; preds = %12
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %14, ptr noundef %15, ptr noundef %16) #18
          to label %18 unwind label %19

18:                                               ; preds = %17
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %25

19:                                               ; preds = %17, %12
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %20

21:                                               ; preds = %4
  %22 = icmp eq i64 %3, 0
  br i1 %22, label %25, label %23, !prof !802

23:                                               ; preds = %21
  %24 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %3) #18
  store ptr %24, ptr %8, align 8, !tbaa !505
  store i64 %3, ptr %7, align 8, !tbaa !503
  br label %25

25:                                               ; preds = %21, %23, %18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 !prof !803 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %3 = load ptr, ptr %0, align 8, !tbaa !513
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !505
  %7 = load ptr, ptr %1, align 8, !tbaa !513
  store ptr %7, ptr %0, align 8, !tbaa !513
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 1
  %9 = load <2 x i64>, ptr %8, align 8, !tbaa !492
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !505
  store ptr %11, ptr %5, align 8, !tbaa !505
  store ptr %3, ptr %1, align 8, !tbaa !513
  %12 = load <2 x i64>, ptr %4, align 8, !tbaa !492
  store <2 x i64> %9, ptr %4, align 8, !tbaa !492
  store <2 x i64> %12, ptr %8, align 8, !tbaa !492
  store ptr %6, ptr %10, align 8, !tbaa !505
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #6 comdat align 2 !prof !804 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !805 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  br label %4

4:                                                ; preds = %4, %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %5 = load i64, ptr %3, align 8, !tbaa !516
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %4, label %7, !prof !806, !llvm.loop !807

7:                                                ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !804 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !505
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !808 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %6 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, ptr noundef %3) #18
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %80, label %8, !prof !809

8:                                                ; preds = %4
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %10 = add i64 %9, %6
  %11 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %12 = icmp eq ptr %11, %1
  br i1 %12, label %13, label %28, !prof !810

13:                                               ; preds = %8
  %14 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %10) #18
  %15 = icmp eq ptr %2, %3
  br i1 %15, label %79, label %16, !prof !811

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi ptr [ %2, %16 ], [ %26, %18 ]
  %20 = phi ptr [ %14, %16 ], [ %23, %18 ]
  %21 = load ptr, ptr %0, align 8, !tbaa !513
  %22 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %20, ptr noundef nonnull align 2 dereferenceable(2) %19, ptr noundef nonnull align 8 dereferenceable(8) %21) #18
  %23 = getelementptr inbounds i16, ptr %20, i64 1
  %24 = load i64, ptr %17, align 8, !tbaa !516
  %25 = add i64 %24, 1
  store i64 %25, ptr %17, align 8, !tbaa !516
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %3
  br i1 %27, label %79, label %18, !prof !812, !llvm.loop !813

28:                                               ; preds = %8
  %29 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %30 = icmp ugt i64 %10, %29
  br i1 %30, label %31, label %47, !prof !814

31:                                               ; preds = %28
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #19
  %32 = load ptr, ptr %0, align 8, !tbaa !513
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %32, i64 noundef %10) #18
  %33 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %34 unwind label %45

34:                                               ; preds = %31
  %35 = call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %33, ptr noundef %35, ptr noundef %1) #18
          to label %36 unwind label %45

36:                                               ; preds = %34
  %37 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %38 unwind label %45

38:                                               ; preds = %36
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %37, ptr noundef %2, ptr noundef %3) #18
          to label %39 unwind label %45

39:                                               ; preds = %38
  %40 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %5) #18
          to label %41 unwind label %45

41:                                               ; preds = %39
  %42 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
          to label %43 unwind label %45

43:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %40, ptr noundef %1, ptr noundef %42) #18
          to label %44 unwind label %45

44:                                               ; preds = %43
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %5) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  br label %79

45:                                               ; preds = %43, %41, %39, %38, %36, %34, %31
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #19
  resume { ptr, i32 } %46

47:                                               ; preds = %28
  %48 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %49 = tail call noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %48) #18
  %50 = icmp ugt i64 %49, %6
  br i1 %50, label %66, label %51, !prof !815

51:                                               ; preds = %47
  %52 = getelementptr inbounds i16, ptr %2, i64 %49
  %53 = icmp eq ptr %52, %3
  br i1 %53, label %54, label %56, !prof !816

54:                                               ; preds = %56, %51
  %55 = icmp eq ptr %48, %1
  br i1 %55, label %64, label %60, !prof !816

56:                                               ; preds = %51, %56
  %57 = phi ptr [ %58, %56 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %57) #18
  %58 = getelementptr inbounds i16, ptr %57, i64 1
  %59 = icmp eq ptr %58, %3
  br i1 %59, label %54, label %56, !prof !817, !llvm.loop !818

60:                                               ; preds = %54, %60
  %61 = phi ptr [ %62, %60 ], [ %1, %54 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %61) #18
  %62 = getelementptr inbounds i16, ptr %61, i64 1
  %63 = icmp eq ptr %62, %48
  br i1 %63, label %64, label %60, !prof !819, !llvm.loop !820

64:                                               ; preds = %60, %54
  %65 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %52, ptr noundef %1) #18
  br label %79

66:                                               ; preds = %47
  %67 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %68 = sub i64 0, %6
  %69 = getelementptr inbounds i16, ptr %67, i64 %68
  %70 = icmp eq ptr %69, %48
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %71
  %72 = phi ptr [ %73, %71 ], [ %69, %66 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %72) #18
  %73 = getelementptr inbounds i16, ptr %72, i64 1
  %74 = icmp eq ptr %73, %48
  br i1 %74, label %75, label %71, !llvm.loop !821

75:                                               ; preds = %71, %66
  %76 = getelementptr inbounds i16, ptr %48, i64 %68
  %77 = tail call noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %1, ptr noundef nonnull %76, ptr noundef %48) #18
  %78 = tail call noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %2, ptr noundef %3, ptr noundef %1) #18
  br label %79

79:                                               ; preds = %18, %13, %64, %75, %44
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  br label %80

80:                                               ; preds = %4, %79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt4copyIPKtPtET0_T_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !822 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !823 {
  %4 = tail call i64 @llvm.umax.i64(i64 %1, i64 %2)
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #6 comdat align 2 !prof !824 {
  store ptr %1, ptr %0, align 8, !tbaa !513
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  store i64 0, ptr %4, align 8, !tbaa !516
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  store i64 %2, ptr %5, align 8, !tbaa !503
  %6 = icmp eq i64 %2, 0
  br i1 %6, label %9, label %7, !prof !825

7:                                                ; preds = %3
  %8 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2) #18
  br label %9

9:                                                ; preds = %3, %7
  %10 = phi ptr [ %8, %7 ], [ null, %3 ]
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !505
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !507 {
  %3 = shl i64 %1, 1
  %4 = load ptr, ptr %0, align 8, !tbaa !513
  %5 = load ptr, ptr %4, align 8, !tbaa !423
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %3) #18
  ret ptr %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !804 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !505
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !516
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !826 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !516
  %4 = add i64 %3, -1
  store i64 %4, ptr %2, align 8, !tbaa !516
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !505
  %7 = getelementptr inbounds i16, ptr %6, i64 %4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %7) #18
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat align 2 !prof !827 {
  %4 = tail call noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %1, ptr noundef %2) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !828 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !516
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !829 {
  %3 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = icmp ult i64 %3, %1
  br i1 %4, label %5, label %6, !prof !830

5:                                                ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) #18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret ptr %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %0, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 !prof !514 {
  %4 = load i16, ptr %1, align 2, !tbaa !643
  store i16 %4, ptr %0, align 2, !tbaa !643
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !831 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !503
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 !prof !832 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !516
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.5", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !503
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !833

9:                                                ; preds = %2
  %10 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  %11 = load ptr, ptr %0, align 8, !tbaa !513
  %12 = tail call noundef ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 2 dereferenceable(2) %1, ptr noundef nonnull align 8 dereferenceable(8) %11) #18
  %13 = load i64, ptr %4, align 8, !tbaa !516
  %14 = add i64 %13, 1
  store i64 %14, ptr %4, align 8, !tbaa !516
  br label %25

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %21 = load ptr, ptr %0, align 8, !tbaa !513
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20) #18
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1) #18
          to label %22 unwind label %23

22:                                               ; preds = %15
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  br label %25

23:                                               ; preds = %15
  %24 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  resume { ptr, i32 } %24

25:                                               ; preds = %22, %9
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) #18
  %5 = tail call noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %1) #18
  %6 = tail call noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %4, ptr noundef %5, ptr noundef %2) #18
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #6 comdat !prof !827 {
  %3 = alloca ptr, align 8
  store ptr %0, ptr %3, align 8, !tbaa !426
  call void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %3) #18
  %4 = call noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) #18
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !827 {
  %3 = ptrtoint ptr %1 to i64
  %4 = ptrtoint ptr %0 to i64
  %5 = sub i64 %3, %4
  %6 = ashr exact i64 %5, 1
  ret i64 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat !prof !827 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #6 comdat align 2 !prof !834 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.5", align 8
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #19
  %4 = load ptr, ptr %0, align 8, !tbaa !513
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3) #18
  call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #19
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt22__copy_move_backward_aILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !835 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 comdat !prof !836 {
  ret ptr %1
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a1ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !837 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt23__copy_move_backward_a2ILb0EPtS0_ET1_T0_S2_S1_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !477 {
  %4 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb1ESt26random_access_iterator_tagE13__copy_move_bItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !477 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 1
  %8 = icmp eq ptr %1, %0
  %9 = sub nsw i64 0, %7
  br i1 %8, label %12, label %10

10:                                               ; preds = %3
  %11 = getelementptr inbounds i16, ptr %2, i64 %9
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %11, ptr align 2 %0, i64 %6, i1 false)
  br label %12

12:                                               ; preds = %3, %10
  %13 = getelementptr inbounds i16, ptr %2, i64 %9
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !822 {
  %4 = alloca ptr, align 8
  store ptr %2, ptr %4, align 8, !tbaa !426
  %5 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) #16
  %6 = tail call noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %1) #16
  %7 = tail call noundef ptr @_ZSt12__niter_baseIPtET_S1_(ptr noundef %2) #16
  %8 = tail call noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %5, ptr noundef %6, ptr noundef %7) #18
  %9 = call noundef ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8) #18
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__miter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !838 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !822 {
  %4 = tail call noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt12__niter_baseIPKtET_S2_(ptr noundef %0) local_unnamed_addr #0 comdat !prof !838 {
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #6 comdat !prof !822 {
  %4 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) #18
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !836 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = icmp eq ptr %1, %0
  br i1 %7, label %9, label %8, !prof !839

8:                                                ; preds = %3
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %2, ptr align 2 %0, i64 %6, i1 false)
  br label %9

9:                                                ; preds = %8, %3
  %10 = getelementptr inbounds i8, ptr %2, i64 %6
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #6 comdat align 2 !prof !422 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #18
  br i1 %2, label %3, label %13, !prof !450

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"struct.std::pair.193", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !778
  %6 = load ptr, ptr %5, align 8, !tbaa !423
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %5) #16
  %8 = load ptr, ptr %0, align 8, !tbaa !794
  %9 = load ptr, ptr %4, align 8, !tbaa !778
  %10 = load ptr, ptr %8, align 8, !tbaa !423
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %9) #18
  br label %13

13:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !422 {
  %2 = load ptr, ptr %0, align 8, !tbaa !794
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair.193", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(9) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !464 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTransformer::EnsureFunctionsInstallation", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !545, !range !552, !noundef !553
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %5, label %19, !prof !476

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %6) #18
          to label %7 unwind label %20

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %8) #18
          to label %9 unwind label %20

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %10) #18
          to label %11 unwind label %20

11:                                               ; preds = %9
  %12 = load ptr, ptr %0, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %12) #18
          to label %13 unwind label %20

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %14) #18
          to label %15 unwind label %20

15:                                               ; preds = %13
  %16 = load ptr, ptr %0, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %16) #18
          to label %17 unwind label %20

17:                                               ; preds = %15
  %18 = load ptr, ptr %0, align 8, !tbaa !547
  invoke void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %18) #18
          to label %19 unwind label %20

19:                                               ; preds = %17, %1
  ret void

20:                                               ; preds = %17, %15, %13, %11, %9, %7, %5
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #20
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanTransformer.cpp() #2 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nosync nounwind memory(none) }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nounwind optsize }
attributes #17 = { builtin nounwind optsize }
attributes #18 = { optsize }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!421}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216, !217, !218, !219, !220, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231, !232, !233, !234, !235, !236, !237, !238, !239, !240, !241, !242, !243, !244, !245, !246, !247, !248, !249, !250, !251, !252, !253, !254, !255, !256, !257, !258, !259, !260, !261, !262, !263, !264, !265, !266, !267, !268, !269, !270, !271, !272, !273, !274, !275, !276, !277, !278, !279, !280, !281, !282, !283, !284, !285, !286, !287, !288, !289, !290, !291, !292, !293, !294, !295, !296, !297, !298, !299, !300, !301, !302, !303, !304, !305, !306, !307, !308, !309, !310, !311, !312, !313, !314, !315, !316, !317, !318, !319, !320, !321, !322, !323, !324, !325, !326, !327, !328, !329, !330, !331, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !371, !372, !373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385, !386, !387, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420}
!36 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!43 = !{ptr @_ZN11xalanc_1_1016XalanTransformerC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault6createERN11xercesc_2_713MemoryManagerEPNS_9XalanNodeEPKNS_15NodeRefListBaseEPKNS_14PrefixResolverE, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE8allocateEm, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2EmRKcRN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 6}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 2}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, i64 2}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, i64 2}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10deallocateEPc, i64 2}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 2}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5beginEv, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE3endEv, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!68 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10deallocateEPS3_, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!75 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 2}
!76 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv, i64 1}
!77 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6insertEPcmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, i64 5}
!81 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!82 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 6}
!83 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 244781}
!84 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 3}
!85 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 3}
!86 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 1}
!89 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 2}
!91 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 4}
!94 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 2}
!95 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE4swapERS3_, i64 2}
!96 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 2}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9local_maxEmm, i64 1}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5beginEv, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8allocateEm, i64 1}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 2}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 128698679}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 85300390}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 85300390}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, i64 85300308}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt, i64 85300227}
!107 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 244}
!108 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 28792555932}
!109 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 227375739}
!110 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 568333389}
!111 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 568333389}
!112 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyEPcS4_, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc, i64 36}
!113 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv, i64 2}
!114 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv, i64 2}
!115 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10endPointerEv, i64 2}
!116 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyEPS3_S7_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_, i64 1}
!117 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 3}
!118 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 5}
!119 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv, i64 5}
!120 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!121 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!122 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv, i64 1}
!123 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, i64 1}
!124 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 1}
!125 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!126 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZSt8for_eachIPPKN11xalanc_1_1023XalanCompiledStylesheetENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_, i64 1}
!127 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, i64 1}
!128 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 1}
!129 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!130 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZSt8for_eachIPPKN11xalanc_1_1017XalanParsedSourceENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_, i64 1}
!131 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv, i64 1}
!132 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv, i64 1}
!133 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv, i64 1}
!134 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_33StylesheetExecutionContextDefaultEEEvPKT_RN11xercesc_2_713MemoryManagerE, i64 1}
!135 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 3}
!136 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEED2Ev, i64 1}
!137 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!138 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, i64 1}
!139 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEED2Ev, i64 1}
!140 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!141 = !{ptr @_ZN11xalanc_1_1016XalanTransformerD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!142 = !{ptr @_ZSt8for_eachIPPKN11xalanc_1_1023XalanCompiledStylesheetENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEclEPKS1_, i64 1}
!143 = !{ptr @_ZSt8for_eachIPPKN11xalanc_1_1017XalanParsedSourceENS0_13DeleteFunctorIS1_EEET0_T_S8_S7_, ptr @_ZNK11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEclEPKS1_, i64 1}
!144 = !{ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE10invariantsEv, i64 2}
!145 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XSLTInit6createERN11xercesc_2_713MemoryManagerE, i64 1}
!146 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!147 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!148 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!149 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEEC2EPS1_, i64 1}
!150 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!151 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, i64 1}
!152 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7releaseEv, i64 1}
!153 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE10releasePtrEv, i64 1}
!154 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEE7releaseEv, i64 1}
!155 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, i64 1}
!156 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEED2Ev, i64 1}
!157 = !{ptr @_ZN11xalanc_1_1016XalanTransformer10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev, i64 1}
!158 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!159 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!160 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!161 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!162 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!163 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!164 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!165 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallation7installEv, ptr @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!166 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE10releasePtrEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE7releaseEv, i64 1}
!167 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10deallocateEv, i64 1}
!168 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 1}
!169 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!170 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!171 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!172 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!173 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_8XSLTInitELb1EE17MemMgrAutoPtrData12isInitilizedEv, i64 1}
!174 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9terminateEv, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!175 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9terminateEv, ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, i64 1}
!176 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9terminateEv, ptr @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8XSLTInitEEEvPKT_RN11xercesc_2_713MemoryManagerE, i64 1}
!177 = !{ptr @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_8XSLTInitEEEvPKT_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_108XSLTInitD1Ev, i64 1}
!178 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5clearEv, i64 1}
!179 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9push_backERKc, i64 1}
!180 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv, i64 1}
!181 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm, i64 1}
!182 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZNK11xalanc_1_1016XalanTransformer25getExternalSchemaLocationEv, i64 1}
!183 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZNK11xalanc_1_1016XalanTransformer36getExternalNoNamespaceSchemaLocationEv, i64 1}
!184 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1023XalanSourceTreeDocument19getPoolAllTextNodesEv, i64 1}
!185 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, i64 1}
!186 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_, i64 1}
!187 = !{ptr @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev, ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, i64 1}
!188 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, i64 1}
!189 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!190 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!191 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEptEv, i64 2}
!192 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultC1ERN11xercesc_2_713MemoryManagerEPNS_13XSLTProcessorE, i64 1}
!193 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, i64 1}
!194 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault17setSourceDocumentERKNS_14XalanDOMStringEPNS_13XalanDocumentE, i64 1}
!195 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEE4sizeEv, i64 1}
!196 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt, i64 1}
!197 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1017XPathFactoryBlockC1ERN11xercesc_2_713MemoryManagerEj, i64 1}
!198 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XSLTEngineImplC1ERN11xercesc_2_713MemoryManagerERNS_16XMLParserLiaisonERNS_15XPathEnvSupportERNS_10DOMSupportERNS_14XObjectFactoryERNS_12XPathFactoryE, i64 1}
!199 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefault12setProcessorEPNS_13XSLTProcessorE, i64 1}
!200 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer11EnsureResetC2ERS0_, i64 1}
!201 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE, i64 1}
!202 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE, i64 1}
!203 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE, i64 1}
!204 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault16setXSLTProcessorEPNS_14XSLTEngineImplE, i64 1}
!205 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1020DOMStringPrintWriterC1ERNS_14XalanDOMStringE, i64 1}
!206 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerC1ERN11xercesc_2_713MemoryManagerEPSoPNS_11PrintWriterE, i64 1}
!207 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl18setProblemListenerEPNS_15ProblemListenerE, i64 1}
!208 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4sizeEv, i64 1}
!209 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1015XSLTInputSourceC1EPNS_9XalanNodeERN11xercesc_2_713MemoryManagerE, i64 1}
!210 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, i64 1}
!211 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xercesc_2_711InputSource11setSystemIdEPKt, i64 1}
!212 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_10L17addTraceListenersERKNS_11XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEERNS_14XSLTEngineImplE, i64 1}
!213 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XSLTResultTargetC1ERKS0_RN11xercesc_2_713MemoryManagerE, i64 1}
!214 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZNK11xalanc_1_1016XSLTResultTarget11getEncodingEv, i64 1}
!215 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 2}
!216 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, i64 1}
!217 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XSLTEngineImpl7processERKNS_15XSLTInputSourceES3_RNS_16XSLTResultTargetERNS_29StylesheetConstructionContextERNS_26StylesheetExecutionContextE, i64 1}
!218 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev, i64 1}
!219 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XSLTResultTargetD1Ev, i64 1}
!220 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xercesc_2_711InputSourceD2Ev, i64 1}
!221 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1031XalanTransformerProblemListenerD1Ev, i64 1}
!222 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1020DOMStringPrintWriterD1Ev, i64 1}
!223 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev, i64 1}
!224 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XSLTEngineImplD1Ev, i64 1}
!225 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1017XPathFactoryBlockD1Ev, i64 1}
!226 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev, i64 1}
!227 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1030XSLTProcessorEnvSupportDefaultD1Ev, i64 1}
!228 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EED2Ev, i64 1}
!229 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, i64 1}
!230 = !{ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5beginEv, i64 1}
!231 = !{ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 2}
!232 = !{ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, ptr @_ZSt4findIPPKN11xalanc_1_1017XalanParsedSourceES3_ET_S5_S5_RKT0_, i64 1}
!233 = !{ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_, i64 1}
!234 = !{ptr @_ZN11xalanc_1_1016XalanTransformer19destroyParsedSourceEPKNS_17XalanParsedSourceE, ptr @_ZN11xalanc_1_1020destroyObjWithMemMgrINS_17XalanParsedSourceEEEvPKT_RN11xercesc_2_713MemoryManagerE, i64 1}
!235 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer11parseSourceERKNS_15XSLTInputSourceERPKNS_17XalanParsedSourceEb, i64 1}
!236 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceC2ERS0_PKNS_17XalanParsedSourceE, i64 1}
!237 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, i64 1}
!238 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_15XSLTInputSourceES3_RKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceD2Ev, i64 1}
!239 = !{ptr @_ZN11xalanc_1_1016XalanTransformer9transformERKNS_17XalanParsedSourceERKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, ptr @_ZN11xalanc_1_1016XalanTransformer11doTransformERKNS_17XalanParsedSourceEPKNS_23XalanCompiledStylesheetEPKNS_15XSLTInputSourceERKNS_16XSLTResultTargetE, i64 1}
!240 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 489562}
!241 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE12shrinkToSizeEm, i64 122391}
!242 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm, i64 122388}
!243 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10endPointerEv, i64 122388}
!244 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIcE9constructEPcRKcRN11xercesc_2_713MemoryManagerE, i64 62785040}
!245 = !{ptr @_ZN11xalanc_1_106lengthERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, i64 66708615}
!246 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8pop_backEv, i64 62785506}
!247 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 244778}
!248 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9doReserveEm, i64 2}
!249 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 125572036}
!250 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE7destroyERc, i64 62786018}
!251 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 230527000}
!252 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString6lengthEv, ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, i64 230527000}
!253 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString4sizeEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 1414337976}
!254 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 967143541}
!255 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, i64 967143541}
!256 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEixEm, i64 563515055}
!257 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 1083116306}
!258 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringD2Ev, ptr @__clang_call_terminate, i64 64}
!259 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEm, ptr @_ZN11xalanc_1_1033ConstructValueWithNoMemoryManagerIcEC2ERN11xercesc_2_713MemoryManagerE, i64 244780}
!260 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEm, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE6resizeEmRKc, i64 244780}
!261 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 2}
!262 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE12shrinkToSizeEm, i64 1}
!263 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9push_backERKc, ptr @_ZNK11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10invariantsEv, i64 2}
!264 = !{ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE9push_backERKc, ptr @_ZN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEE10doPushBackERKc, i64 1}
!265 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!266 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7reserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, i64 1}
!267 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!268 = !{ptr @_ZNK11xalanc_1_1016XalanTransformer25getExternalSchemaLocationEv, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 1}
!269 = !{ptr @_ZNK11xalanc_1_1016XalanTransformer36getExternalNoNamespaceSchemaLocationEv, ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, i64 1}
!270 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!271 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9push_backERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, i64 1}
!272 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!273 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, i64 1}
!274 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_, i64 1}
!275 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEED2Ev, i64 1}
!276 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEC2ERKS6_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 1}
!277 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE4swapERS6_, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!278 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_, ptr @_ZSt8distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_, i64 1}
!279 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!280 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10endPointerEv, i64 1}
!281 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10doPushBackERKS3_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerIPKNS_17XalanParsedSourceEE9constructEPS3_RKS3_RN11xercesc_2_713MemoryManagerE, i64 1}
!282 = !{ptr @_ZSt8distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_, ptr @_ZSt19__iterator_categoryIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS7_, i64 1}
!283 = !{ptr @_ZSt8distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_, ptr @_ZSt10__distanceIPKPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E15difference_typeES7_S7_St26random_access_iterator_tag, i64 1}
!284 = !{ptr @_ZNK11xalanc_1_1014XalanDOMString5emptyEv, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 6299974}
!285 = !{ptr @_ZSt4findIPPKN11xalanc_1_1017XalanParsedSourceES3_ET_S5_S5_RKT0_, ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEENS0_16_Iter_equals_valIT_EERS8_, i64 1}
!286 = !{ptr @_ZSt4findIPPKN11xalanc_1_1017XalanParsedSourceES3_ET_S5_S5_RKT0_, ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_, i64 1}
!287 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_, i64 1}
!288 = !{ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_, ptr @_ZSt19__iterator_categoryIPPKN11xalanc_1_1017XalanParsedSourceEENSt15iterator_traitsIT_E17iterator_categoryERKS6_, i64 1}
!289 = !{ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_, ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag, i64 1}
!290 = !{ptr @_ZN9__gnu_cxx5__ops17__iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEENS0_16_Iter_equals_valIT_EERS8_, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEC2ERS6_, i64 1}
!291 = !{ptr @_ZSt9__find_ifIPPKN11xalanc_1_1017XalanParsedSourceEN9__gnu_cxx5__ops16_Iter_equals_valIKS3_EEET_SA_SA_T0_St26random_access_iterator_tag, ptr @_ZN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEclIPS5_EEbT_, i64 1}
!292 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!293 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE3endEv, i64 1}
!294 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_, ptr @_ZSt4copyIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_, i64 1}
!295 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE14local_distanceEPKS3_S8_, i64 1}
!296 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE5eraseEPS3_S7_, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm, i64 1}
!297 = !{ptr @_ZSt4copyIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_, ptr @_ZSt12__miter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_, i64 2}
!298 = !{ptr @_ZSt4copyIPPKN11xalanc_1_1017XalanParsedSourceES4_ET0_T_S6_S5_, ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, i64 1}
!299 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE11shrinkCountEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv, i64 1}
!300 = !{ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, ptr @_ZSt12__niter_baseIPPKN11xalanc_1_1017XalanParsedSourceEET_S5_, i64 3}
!301 = !{ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, ptr @_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, i64 1}
!302 = !{ptr @_ZSt13__copy_move_aILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, ptr @_ZSt12__niter_wrapIPPKN11xalanc_1_1017XalanParsedSourceEET_RKS5_S5_, i64 1}
!303 = !{ptr @_ZSt14__copy_move_a1ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, ptr @_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, i64 1}
!304 = !{ptr @_ZSt14__copy_move_a2ILb0EPPKN11xalanc_1_1017XalanParsedSourceES4_ET1_T0_S6_S5_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1017XalanParsedSourceEEEPT_PKS7_SA_S8_, i64 1}
!305 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE10invariantsEv, i64 2}
!306 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEE7destroyERS3_, i64 1}
!307 = !{ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv, i64 1}
!308 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!309 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE7releaseEv, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, i64 2}
!310 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10deallocateEv, i64 2}
!311 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XalanDOMStringEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 2}
!312 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!313 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv, i64 4}
!314 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10invariantsEv, i64 2}
!315 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_14XalanDOMStringELb0EE17MemMgrAutoPtrData12isInitilizedEv, i64 2}
!316 = !{ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, i64 536868638}
!317 = !{ptr @_ZN11xalanc_1_10eqERKNS_14XalanDOMStringES2_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 555646850}
!318 = !{ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE, i64 1}
!319 = !{ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE, i64 1}
!320 = !{ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE, i64 1}
!321 = !{ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault16setXSLTProcessorEPNS_14XSLTEngineImplE, i64 1}
!322 = !{ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5beginEv, i64 1}
!323 = !{ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE3endEv, i64 1}
!324 = !{ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5clearEv, i64 1}
!325 = !{ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault18setXPathEnvSupportEPNS_15XPathEnvSupportE, i64 2}
!326 = !{ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault13setDOMSupportEPNS_10DOMSupportE, i64 2}
!327 = !{ptr @_ZN11xalanc_1_1033StylesheetExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE, ptr @_ZN11xalanc_1_1028XPathExecutionContextDefault17setXObjectFactoryEPNS_14XObjectFactoryE, i64 2}
!328 = !{ptr @_ZN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE5clearEv, ptr @_ZNK11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEE10invariantsEv, i64 2}
!329 = !{ptr @_ZN11xalanc_1_1016XalanTransformer11EnsureResetD2Ev, ptr @_ZN11xalanc_1_1016XalanTransformer5resetEv, i64 1}
!330 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EEC2ERN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, i64 1}
!331 = !{ptr @_ZN11xalanc_1_106c_wstrERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1014XalanDOMString5c_strEv, i64 12093723}
!332 = !{ptr @_ZN11xalanc_1_10L17addTraceListenersERKNS_11XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEERNS_14XSLTEngineImplE, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, i64 1}
!333 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EED2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10deallocateEv, i64 1}
!334 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanParsedSourceHelperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_, i64 1}
!335 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!336 = !{ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE5emptyEv, ptr @_ZNK11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEE10invariantsEv, i64 1}
!337 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringaSERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, i64 41614}
!338 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZNK11xalanc_1_1014XalanDOMString10invariantsEv, i64 83228}
!339 = !{ptr @_ZN11xalanc_1_1014XalanDOMString6assignERKS0_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 41613}
!340 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 83228}
!341 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 13}
!342 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 13}
!343 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 13}
!344 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 82485}
!345 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, i64 355}
!346 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 82485}
!347 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 40885}
!348 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40885}
!349 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 41600}
!350 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 41600}
!351 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9local_maxEmm, i64 19}
!352 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 19}
!353 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!354 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 19}
!355 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 19}
!356 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 19}
!357 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 19}
!358 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 19}
!359 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 64551584}
!360 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64551608}
!361 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 170601494}
!362 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!363 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 82509}
!364 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, i64 64729253}
!365 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 82509}
!366 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 311655952}
!367 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, i64 157736530}
!368 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, i64 155828045}
!369 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv, i64 240731456}
!370 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, i64 133170775}
!371 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 30012996397}
!372 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 22657270}
!373 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, i64 20748786}
!374 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv, i64 20748766}
!375 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246159}
!376 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 20748647}
!377 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 20748786}
!378 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614813}
!379 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, i64 1908484}
!380 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZSt13copy_backwardIPtS0_ET0_T_S2_S1_, i64 1}
!381 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt12__miter_baseIPKtET_S2_, i64 3901146}
!382 = !{ptr @_ZSt4copyIPKtPtET0_T_S4_S3_, ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!383 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8allocateEm, i64 1}
!384 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERN11xercesc_2_713MemoryManagerEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 64147281}
!385 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 2689195954}
!386 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8pop_backEv, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt, i64 1344597977}
!387 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14local_distanceEPKtS5_, ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, i64 185895030}
!388 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 156073599}
!389 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, i64 133170778}
!390 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 22}
!391 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE14ensureCapacityEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 133170778}
!392 = !{ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE8capacityEv, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 155828047}
!393 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 248301312}
!394 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv, i64 124150655}
!395 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1028ConstructWithNoMemoryManagerItE9constructEPtRKtRN11xercesc_2_713MemoryManagerE, i64 124150655}
!396 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 1}
!397 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 1}
!398 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 1}
!399 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!400 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt19__iterator_categoryIPKtENSt15iterator_traitsIT_E17iterator_categoryERKS3_, i64 185895030}
!401 = !{ptr @_ZSt8distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_, ptr @_ZSt10__distanceIPKtENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, i64 185895030}
!402 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv, i64 129103172}
!403 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 64551586}
!404 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE4swapERS3_, i64 64551586}
!405 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 64551586}
!406 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPKtET_S2_, i64 3901146}
!407 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_baseIPtET_S1_, i64 1950573}
!408 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!409 = !{ptr @_ZSt13__copy_move_aILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt12__niter_wrapIPtET_RKS1_S1_, i64 1950573}
!410 = !{ptr @_ZSt14__copy_move_a1ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, i64 1950573}
!411 = !{ptr @_ZSt14__copy_move_a2ILb0EPKtPtET1_T0_S4_S3_, ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mItEEPT_PKS3_S6_S4_, i64 1950573}
!412 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10invariantsEv, i64 1}
!413 = !{ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData10deallocateEv, ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanParsedSourceHelperELb1EE17MemMgrAutoPtrData12isInitilizedEv, i64 1}
!414 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!415 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1034XalanEXSLTCommonFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!416 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1035XalanEXSLTDynamicFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!417 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1032XalanEXSLTMathFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!418 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!419 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1034XalanEXSLTStringFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!420 = !{ptr @_ZN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationD2Ev, ptr @_ZN11xalanc_1_1036XalanEXSLTDateTimeFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, i64 1}
!421 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!422 = !{!"function_entry_count", i64 1}
!423 = !{!424, !424, i64 0}
!424 = !{!"vtable pointer", !425, i64 0}
!425 = !{!"Simple C++ TBAA"}
!426 = !{!427, !427, i64 0}
!427 = !{!"any pointer", !428, i64 0}
!428 = !{!"omnipotent char", !425, i64 0}
!429 = !{!430, !427, i64 8}
!430 = !{!"_ZTSN11xalanc_1_1016XalanTransformerE", !427, i64 8, !431, i64 16, !433, i64 48, !434, i64 80, !435, i64 112, !436, i64 144, !437, i64 176, !438, i64 208, !427, i64 216, !427, i64 224, !439, i64 232, !439, i64 272, !427, i64 312, !427, i64 320, !439, i64 328, !438, i64 368, !427, i64 376}
!431 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_23XalanCompiledStylesheetENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!432 = !{!"long", !428, i64 0}
!433 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_17XalanParsedSourceENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!434 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_14XalanDOMStringES3_ENS_31MemoryManagedConstructionTraitsIS4_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!435 = !{!"_ZTSN11xalanc_1_1011XalanVectorISt4pairIPNS_17XalanQNameByValueEPNS_8FunctionEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!436 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!437 = !{!"_ZTSN11xalanc_1_1011XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!438 = !{!"bool", !428, i64 0}
!439 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !440, i64 0, !441, i64 32}
!440 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!441 = !{!"int", !428, i64 0}
!442 = !{!428, !428, i64 0}
!443 = !{!430, !438, i64 208}
!444 = !{!430, !427, i64 312}
!445 = !{!430, !427, i64 320}
!446 = !{!430, !427, i64 376}
!447 = !{!431, !427, i64 0}
!448 = !{!431, !432, i64 8}
!449 = !{!431, !432, i64 16}
!450 = !{!"branch_weights", i32 2, i32 1}
!451 = !{!431, !427, i64 24}
!452 = !{!433, !427, i64 0}
!453 = !{!433, !432, i64 8}
!454 = !{!433, !432, i64 16}
!455 = !{!433, !427, i64 24}
!456 = !{!434, !427, i64 0}
!457 = !{!434, !432, i64 8}
!458 = !{!434, !432, i64 16}
!459 = !{!434, !427, i64 24}
!460 = !{!435, !427, i64 0}
!461 = !{!435, !432, i64 8}
!462 = !{!435, !432, i64 16}
!463 = !{!435, !427, i64 24}
!464 = !{!"function_entry_count", i64 2}
!465 = !{!436, !427, i64 0}
!466 = !{!436, !432, i64 8}
!467 = !{!436, !432, i64 16}
!468 = !{!"branch_weights", i32 3, i32 1}
!469 = !{!436, !427, i64 24}
!470 = !{!437, !427, i64 0}
!471 = !{!"function_entry_count", i64 43398227}
!472 = !{!"function_entry_count", i64 6}
!473 = !{!437, !432, i64 16}
!474 = !{!"branch_weights", i32 5, i32 3}
!475 = !{!437, !427, i64 24}
!476 = !{!"branch_weights", i32 2, i32 2}
!477 = !{!"function_entry_count", i64 0}
!478 = !{!"function_entry_count", i64 4}
!479 = !{!"function_entry_count", i64 27}
!480 = !{!"function_entry_count", i64 9}
!481 = !{!"function_entry_count", i64 252146470}
!482 = !{!"function_entry_count", i64 3}
!483 = !{!437, !432, i64 8}
!484 = !{!"branch_weights", i32 4, i32 1}
!485 = !{!"branch_weights", i32 1, i32 127}
!486 = !{!"branch_weights", i32 127, i32 1}
!487 = distinct !{!487, !488}
!488 = !{!"llvm.loop.mustprogress"}
!489 = distinct !{!489, !488}
!490 = distinct !{!490, !488}
!491 = distinct !{!491, !488}
!492 = !{!432, !432, i64 0}
!493 = !{!"function_entry_count", i64 126551194}
!494 = !{!"function_entry_count", i64 244781}
!495 = !{!"function_entry_count", i64 62786071}
!496 = distinct !{!496, !488}
!497 = distinct !{!497, !488}
!498 = distinct !{!498, !488}
!499 = distinct !{!499, !488}
!500 = !{!"function_entry_count", i64 122394}
!501 = !{!"branch_weights", i32 1, i32 3}
!502 = !{!"function_entry_count", i64 128698679}
!503 = !{!440, !432, i64 16}
!504 = !{!"branch_weights", i32 43398290, i32 85300391}
!505 = !{!440, !427, i64 24}
!506 = !{!"function_entry_count", i64 6521798503}
!507 = !{!"function_entry_count", i64 85300390}
!508 = !{!"branch_weights", i32 1, i32 12185770}
!509 = !{!"branch_weights", i32 12185770, i32 -193930395}
!510 = distinct !{!510, !488}
!511 = !{!"function_entry_count", i64 227375739}
!512 = !{!"function_entry_count", i64 568333389}
!513 = !{!440, !427, i64 0}
!514 = !{!"function_entry_count", i64 30137156670}
!515 = !{!"function_entry_count", i64 825654975}
!516 = !{!440, !432, i64 8}
!517 = !{!"branch_weights", i32 1, i32 191}
!518 = !{!"branch_weights", i32 191, i32 3265}
!519 = distinct !{!519, !488}
!520 = distinct !{!520, !488}
!521 = distinct !{!521, !488}
!522 = distinct !{!522, !488}
!523 = !{!"branch_weights", i32 1, i32 1}
!524 = !{!"branch_weights", i32 1, i32 0}
!525 = distinct !{!525, !488}
!526 = !{!"function_entry_count", i64 5}
!527 = distinct !{!527, !488}
!528 = !{!529, !427, i64 8}
!529 = !{!"_ZTSSt4pairIPN11xalanc_1_1017XalanQNameByValueEPNS0_8FunctionEE", !427, i64 0, !427, i64 8}
!530 = !{!"branch_weights", i32 0, i32 1}
!531 = distinct !{!531, !488}
!532 = !{!533, !427, i64 0}
!533 = !{!"_ZTSSt4pairIPN11xalanc_1_1014XalanDOMStringES2_E", !427, i64 0, !427, i64 8}
!534 = !{!533, !427, i64 8}
!535 = distinct !{!535, !488}
!536 = distinct !{!536, !488}
!537 = distinct !{!537, !488}
!538 = !{!"branch_weights", i32 1, i32 2}
!539 = !{!540, !427, i64 0}
!540 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_23XalanCompiledStylesheetEEE", !427, i64 0}
!541 = !{!542, !427, i64 0}
!542 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_17XalanParsedSourceEEE", !427, i64 0}
!543 = !{!544, !427, i64 0}
!544 = !{!"_ZTSN11xalanc_1_1012XalanAutoPtrINS_15XSLTInputSourceEEE", !427, i64 0}
!545 = !{!546, !438, i64 8}
!546 = !{!"_ZTSN11xalanc_1_1016XalanTransformer27EnsureFunctionsInstallationE", !427, i64 0, !438, i64 8}
!547 = !{!546, !427, i64 0}
!548 = !{!549, !427, i64 0}
!549 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_108XSLTInitEE", !427, i64 0, !427, i64 8}
!550 = !{!549, !427, i64 8}
!551 = !{i32 -4, i32 1}
!552 = !{i8 0, i8 2}
!553 = !{}
!554 = !{!430, !427, i64 224}
!555 = !{!430, !427, i64 216}
!556 = !{!557, !427, i64 8}
!557 = !{!"_ZTSN11xalanc_1_1016XalanTransformer25EnsureDestroyParsedSourceE", !427, i64 0, !427, i64 8}
!558 = !{!557, !427, i64 0}
!559 = !{i32 -1, i32 1}
!560 = !{!529, !427, i64 0}
!561 = distinct !{!561, !488}
!562 = distinct !{!562, !488}
!563 = !{!"branch_weights", i32 122392, i32 122391}
!564 = !{!"branch_weights", i32 122390, i32 2}
!565 = !{!"branch_weights", i32 1, i32 122389}
!566 = !{!"branch_weights", i32 122389, i32 62663681}
!567 = distinct !{!567, !488}
!568 = !{!569, !427, i64 8}
!569 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !570, i64 0, !427, i64 8}
!570 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!571 = !{!572, !427, i64 216}
!572 = !{!"_ZTSN11xalanc_1_1014XSLTEngineImplE", !573, i64 0, !574, i64 8, !439, i64 16, !439, i64 56, !427, i64 96, !427, i64 104, !575, i64 112, !578, i64 128, !579, i64 160, !580, i64 192, !427, i64 216, !427, i64 224, !438, i64 232, !438, i64 233, !427, i64 240, !436, i64 248, !432, i64 280, !582, i64 288, !427, i64 320, !427, i64 328, !427, i64 336, !427, i64 344, !583, i64 352, !587, i64 456, !591, i64 600, !439, i64 672, !594, i64 712, !438, i64 744, !595, i64 752}
!573 = !{!"_ZTSN11xalanc_1_1013XSLTProcessorE"}
!574 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!575 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EEE", !576, i64 0}
!576 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EE17MemMgrAutoPtrDataE", !577, i64 0}
!577 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XPathProcessorEE", !427, i64 0, !427, i64 8}
!578 = !{!"_ZTSN11xalanc_1_1011XalanVectorIbNS_31MemoryManagedConstructionTraitsIbEEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!579 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!580 = !{!"_ZTSN11xalanc_1_1022ProblemListenerDefaultE", !581, i64 0, !427, i64 8, !427, i64 16}
!581 = !{!"_ZTSN11xalanc_1_1015ProblemListenerE"}
!582 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11TopLevelArgENS_31MemoryManagedConstructionTraitsIS1_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!583 = !{!"_ZTSN11xalanc_1_1018OutputContextStackE", !584, i64 0, !586, i64 80, !432, i64 96}
!584 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !585, i64 16, !585, i64 48}
!585 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!586 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !427, i64 0, !432, i64 8}
!587 = !{!"_ZTSN11xalanc_1_1020XalanNamespacesStackE", !588, i64 0, !590, i64 80, !590, i64 96, !578, i64 112}
!588 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !589, i64 16, !589, i64 48}
!589 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_20XalanNamespacesStack25XalanNamespacesStackEntryENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!590 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_20XalanNamespacesStack25XalanNamespacesStackEntryEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !427, i64 0, !432, i64 8}
!591 = !{!"_ZTSN11xalanc_1_1017AttributeListImplE", !592, i64 0, !593, i64 8, !593, i64 40}
!592 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!593 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!594 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!595 = !{!"_ZTSN11xalanc_1_1031XPathConstructionContextDefaultE", !596, i64 0, !597, i64 16, !604, i64 128}
!596 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !427, i64 8}
!597 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !598, i64 8, !432, i64 48, !601, i64 56}
!598 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !599, i64 0}
!599 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !432, i64 8, !600, i64 16}
!600 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!601 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !432, i64 0, !432, i64 8, !602, i64 16, !432, i64 40, !441, i64 48}
!602 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !603, i64 0}
!603 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !427, i64 0, !427, i64 8, !432, i64 16}
!604 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !605, i64 0, !605, i64 32, !441, i64 64, !606, i64 72}
!605 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!606 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !607, i64 0}
!607 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !608, i64 0, !438, i64 40}
!608 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !609, i64 8, !610, i64 16}
!609 = !{!"short", !428, i64 0}
!610 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!611 = !{!"function_entry_count", i64 66708615}
!612 = !{!"XalanTransformer.cpp:_ZN11xalanc_1_10L23FormatXalanDOMExceptionERNS_21XPathExecutionContextERKNS_17XalanDOMExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE"}
!613 = !{!614, !427, i64 32}
!614 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !615, i64 8, !427, i64 16, !441, i64 24, !427, i64 32, !427, i64 40}
!615 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !428, i64 0}
!616 = !{!"XalanTransformer.cpp:_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE"}
!617 = !{!"function_entry_count", i64 122392}
!618 = !{!"branch_weights", i32 62663627, i32 122393}
!619 = distinct !{!619, !488}
!620 = !{!"function_entry_count", i64 122389}
!621 = !{!"branch_weights", i32 2, i32 122389}
!622 = !{!"function_entry_count", i64 62786018}
!623 = distinct !{!623, !488}
!624 = distinct !{!624, !488}
!625 = distinct !{!625, !488}
!626 = distinct !{!626, !488}
!627 = !{!"function_entry_count", i64 230527000}
!628 = !{!"function_entry_count", i64 3070433826}
!629 = !{!"function_entry_count", i64 1414337976}
!630 = !{!439, !441, i64 32}
!631 = !{!"function_entry_count", i64 967143541}
!632 = !{!"branch_weights", i32 403628487, i32 563515056}
!633 = !{!"function_entry_count", i64 1083116306}
!634 = !{!"function_entry_count", i64 565220908}
!635 = !{!"function_entry_count", i64 67594463}
!636 = !{!637, !427, i64 0}
!637 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext25GetAndReleaseCachedStringE", !427, i64 0, !427, i64 8}
!638 = !{!637, !427, i64 8}
!639 = !{!"function_entry_count", i64 201578993}
!640 = !{!"function_entry_count", i64 134708288}
!641 = !{!"branch_weights", i32 67113826, i32 67594464}
!642 = !{!"XalanTransformer.cpp:_ZN11xalanc_1_10L23FormatSAXParseExceptionERNS_21XPathExecutionContextERKN11xercesc_2_717SAXParseExceptionERNS_14XalanDOMStringE"}
!643 = !{!609, !609, i64 0}
!644 = !{!"XalanTransformer.cpp:_ZN11xalanc_1_10L16LoadErrorMessageERNS_21XPathExecutionContextENS_13XalanMessages5CodesERNS_11XalanVectorIcNS_31MemoryManagedConstructionTraitsIcEEEE"}
!645 = distinct !{!645, !488}
!646 = !{!647, !427, i64 0}
!647 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1023XalanCompiledStylesheetEEE", !427, i64 0}
!648 = !{!"function_entry_count", i64 244780}
!649 = !{!650, !428, i64 0}
!650 = !{!"_ZTSN11xalanc_1_1033ConstructValueWithNoMemoryManagerIcEE", !428, i64 0}
!651 = distinct !{!651, !488}
!652 = !{!438, !438, i64 0}
!653 = distinct !{!653, !488}
!654 = distinct !{!654, !488}
!655 = distinct !{!655, !488}
!656 = distinct !{!656, !488}
!657 = !{!"function_entry_count", i64 6299974}
!658 = distinct !{!658, !488}
!659 = !{!"branch_weights", i32 2, i32 1, i32 1, i32 2}
!660 = !{!661, !427, i64 0}
!661 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPKN11xalanc_1_1017XalanParsedSourceEEE", !427, i64 0}
!662 = distinct !{!662, !488}
!663 = distinct !{!663, !488}
!664 = distinct !{!664, !488}
!665 = distinct !{!665, !488}
!666 = distinct !{!666, !488}
!667 = distinct !{!667, !488}
!668 = distinct !{!668, !488}
!669 = !{!670, !427, i64 8}
!670 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XalanDOMStringEE", !427, i64 0, !427, i64 8}
!671 = !{!670, !427, i64 0}
!672 = !{!"function_entry_count", i64 8}
!673 = distinct !{!673, !488}
!674 = !{!675, !427, i64 0}
!675 = !{!"_ZTSN9__gnu_cxx5__ops16_Iter_equals_valIKPN11xalanc_1_1013TraceListenerEEE", !427, i64 0}
!676 = distinct !{!676, !488}
!677 = distinct !{!677, !488}
!678 = distinct !{!678, !488}
!679 = distinct !{!679, !488}
!680 = distinct !{!680, !488}
!681 = distinct !{!681, !488}
!682 = distinct !{!682, !488}
!683 = distinct !{!683, !488}
!684 = !{!"function_entry_count", i64 335474016}
!685 = !{!"branch_weights", i32 201394623, i32 134079395}
!686 = !{!"function_entry_count", i64 555646850}
!687 = distinct !{!687, !488}
!688 = distinct !{!688, !488}
!689 = distinct !{!689, !488}
!690 = !{!691, !427, i64 16}
!691 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !692, i64 0, !427, i64 16}
!692 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !427, i64 8}
!693 = !{!694, !427, i64 456}
!694 = !{!"_ZTSN11xalanc_1_1033StylesheetExecutionContextDefaultE", !695, i64 0, !696, i64 24, !427, i64 456, !427, i64 464, !707, i64 472, !427, i64 504, !708, i64 512, !709, i64 544, !710, i64 576, !427, i64 608, !427, i64 616, !711, i64 624, !714, i64 744, !715, i64 776, !721, i64 912, !726, i64 1048, !728, i64 1112, !427, i64 1128, !731, i64 1136, !441, i64 1168, !732, i64 1176, !736, i64 1224, !740, i64 1272, !578, i64 1320, !744, i64 1352, !745, i64 1384, !746, i64 1416, !747, i64 1448, !749, i64 1512, !578, i64 1544, !578, i64 1576, !750, i64 1608, !754, i64 1672, !578, i64 1736, !759, i64 1768, !764, i64 1832, !707, i64 1864, !765, i64 1896, !766, i64 1928, !438, i64 2056, !771, i64 2060, !772, i64 2064, !438, i64 2068}
!695 = !{!"_ZTSN11xalanc_1_1026StylesheetExecutionContextE", !691, i64 0}
!696 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefaultE", !691, i64 0, !427, i64 24, !427, i64 32, !697, i64 40, !698, i64 72, !427, i64 104, !439, i64 112, !699, i64 152, !604, i64 208, !704, i64 328, !705, i64 344}
!697 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!698 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_15NodeRefListBaseENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!699 = !{!"_ZTSN11xalanc_1_1016XalanObjectCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_22ClearCacheResetFunctorIS1_EEEE", !700, i64 0, !701, i64 8, !702, i64 16, !703, i64 24}
!700 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_18MutableNodeRefListEEE"}
!701 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_18MutableNodeRefListEEE", !427, i64 0}
!702 = !{!"_ZTSN11xalanc_1_1022ClearCacheResetFunctorINS_18MutableNodeRefListEEE"}
!703 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_18MutableNodeRefListENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!704 = !{!"_ZTSN11xalanc_1_1028XPathExecutionContextDefault28ContextNodeListPositionCacheE", !427, i64 0, !441, i64 8}
!705 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !706, i64 0, !439, i64 8, !439, i64 48}
!706 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!707 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!708 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17FormatterListenerENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!709 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_11PrintWriterENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!710 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17XalanOutputStreamENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!711 = !{!"_ZTSN11xalanc_1_1014VariablesStackE", !712, i64 0, !432, i64 32, !438, i64 40, !432, i64 48, !713, i64 56, !707, i64 88}
!712 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack10StackEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!713 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!714 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!715 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringESt4pairIPKNS_5XPathElENS_17XalanMapKeyTraitsIS1_EEEE", !716, i64 0, !717, i64 1, !427, i64 8, !718, i64 16, !432, i64 24, !432, i64 32, !719, i64 40, !719, i64 64, !720, i64 88, !432, i64 120, !432, i64 128}
!716 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!717 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!718 = !{!"float", !428, i64 0}
!719 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringESt4pairIPKNS_5XPathElENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!720 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringESt4pairIPKNS_5XPathElENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISD_E4NodeEEENS_31MemoryManagedConstructionTraitsISI_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!721 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_9XalanNodeEPNS_8KeyTableENS_17XalanMapKeyTraitsIS3_EEEE", !722, i64 0, !723, i64 1, !427, i64 8, !718, i64 16, !432, i64 24, !432, i64 32, !724, i64 40, !724, i64 64, !725, i64 88, !432, i64 120, !432, i64 128}
!722 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_9XalanNodeEEE"}
!723 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_109XalanNodeEE"}
!724 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_9XalanNodeEPNS_8KeyTableENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!725 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_9XalanNodeEPNS_8KeyTableENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!726 = !{!"_ZTSN11xalanc_1_1013CountersTableE", !727, i64 0, !697, i64 32}
!727 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_7CounterENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!728 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeDocumentELb1EEE", !729, i64 0}
!729 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_23XalanSourceTreeDocumentELb1EE17MemMgrAutoPtrDataE", !730, i64 0}
!730 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanSourceTreeDocumentEE", !427, i64 0, !427, i64 8}
!731 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_12ElemTemplateENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!732 = !{!"_ZTSN11xalanc_1_1024XResultTreeFragAllocatorE", !733, i64 0}
!733 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_15XResultTreeFragEEE", !734, i64 0, !438, i64 40}
!734 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_15XResultTreeFragENS_18ReusableArenaBlockIS1_tEEEE", !609, i64 8, !735, i64 16}
!735 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_15XResultTreeFragEtEEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!736 = !{!"_ZTSN11xalanc_1_1040XalanSourceTreeDocumentFragmentAllocatorE", !737, i64 0}
!737 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_31XalanSourceTreeDocumentFragmentEEE", !738, i64 0, !438, i64 40}
!738 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_31XalanSourceTreeDocumentFragmentENS_18ReusableArenaBlockIS1_tEEEE", !609, i64 8, !739, i64 16}
!739 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_31XalanSourceTreeDocumentFragmentEtEEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!740 = !{!"_ZTSN11xalanc_1_1032XalanSourceTreeDocumentAllocatorE", !741, i64 0}
!741 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_23XalanSourceTreeDocumentEEE", !742, i64 0, !438, i64 40}
!742 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_23XalanSourceTreeDocumentENS_18ReusableArenaBlockIS1_tEEEE", !609, i64 8, !743, i64 16}
!743 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_23XalanSourceTreeDocumentEtEEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!744 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!745 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!746 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!747 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_18MutableNodeRefListENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_24DefaultCacheResetFunctorIS1_EEEE", !700, i64 0, !701, i64 8, !748, i64 16, !703, i64 24, !432, i64 56}
!748 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_18MutableNodeRefListEEE"}
!749 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_33StylesheetExecutionContextDefault16NodesToTransformENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!750 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_14XalanDOMStringENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_24DefaultCacheResetFunctorIS1_EEEE", !751, i64 0, !752, i64 8, !753, i64 16, !605, i64 24, !432, i64 56}
!751 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_14XalanDOMStringEEE"}
!752 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_14XalanDOMStringEEE", !427, i64 0}
!753 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_14XalanDOMStringEEE"}
!754 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringENS_31DefaultCacheCreateFunctorMemMgrIS2_EENS_13DeleteFunctorIS2_EENS_24DefaultCacheResetFunctorIS2_EEEE", !755, i64 0, !756, i64 8, !757, i64 16, !758, i64 24, !432, i64 56}
!755 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringEEE"}
!756 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringEEE", !427, i64 0}
!757 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringEEE"}
!758 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_33StylesheetExecutionContextDefault24FormatterToTextDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!759 = !{!"_ZTSN11xalanc_1_1021XalanObjectStackCacheINS_21FormatterToSourceTreeENS_31DefaultCacheCreateFunctorMemMgrIS1_EENS_13DeleteFunctorIS1_EENS_24DefaultCacheResetFunctorIS1_EEEE", !760, i64 0, !761, i64 8, !762, i64 16, !763, i64 24, !432, i64 56}
!760 = !{!"_ZTSN11xalanc_1_1031DefaultCacheCreateFunctorMemMgrINS_21FormatterToSourceTreeEEE"}
!761 = !{!"_ZTSN11xalanc_1_1013DeleteFunctorINS_21FormatterToSourceTreeEEE", !427, i64 0}
!762 = !{!"_ZTSN11xalanc_1_1024DefaultCacheResetFunctorINS_21FormatterToSourceTreeEEE"}
!763 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_21FormatterToSourceTreeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!764 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_14VariablesStack17ParamsVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEENS3_IS5_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!765 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_26StylesheetExecutionContext22UseAttributeSetIndexesENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!766 = !{!"_ZTSN11xalanc_1_1010NodeSorterE", !767, i64 0, !768, i64 32, !769, i64 64, !770, i64 96}
!767 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_IdNS_31MemoryManagedConstructionTraitsIdEEEENS1_IS3_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!768 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEENS2_IS4_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!769 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_11NodeSortKeyENS_31MemoryManagedConstructionTraitsIS1_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!770 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10NodeSorter11VectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!771 = !{!"_ZTSN11xalanc_1_1026StylesheetExecutionContext11eEscapeURLsE", !428, i64 0}
!772 = !{!"_ZTSN11xalanc_1_1026StylesheetExecutionContext12eOmitMETATagE", !428, i64 0}
!773 = !{!696, !427, i64 24}
!774 = !{!696, !427, i64 32}
!775 = distinct !{!775, !488}
!776 = !{!777, !427, i64 0}
!777 = !{!"_ZTSN11xalanc_1_1016XalanTransformer11EnsureResetE", !427, i64 0}
!778 = !{!779, !427, i64 8}
!779 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1023XalanParsedSourceHelperEE", !427, i64 0, !427, i64 8}
!780 = !{!781, !427, i64 288}
!781 = !{!"_ZTSN11xalanc_1_1030XSLTProcessorEnvSupportDefaultE", !782, i64 0, !784, i64 8, !427, i64 288}
!782 = !{!"_ZTSN11xalanc_1_1023XSLTProcessorEnvSupportE", !783, i64 0}
!783 = !{!"_ZTSN11xalanc_1_1015XPathEnvSupportE"}
!784 = !{!"_ZTSN11xalanc_1_1022XPathEnvSupportDefaultE", !783, i64 0, !785, i64 8, !788, i64 144}
!785 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS1_EEEE", !716, i64 0, !717, i64 1, !427, i64 8, !718, i64 16, !432, i64 24, !432, i64 32, !786, i64 40, !786, i64 64, !787, i64 88, !432, i64 120, !432, i64 128}
!786 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!787 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_13XalanDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!788 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS0_IS1_PKNS_8FunctionENS_17XalanMapKeyTraitsIS1_EEEES6_EE", !716, i64 0, !717, i64 1, !427, i64 8, !718, i64 16, !432, i64 24, !432, i64 32, !789, i64 40, !789, i64 64, !790, i64 88, !432, i64 120, !432, i64 128}
!789 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS1_IS2_PKNS_8FunctionENS_17XalanMapKeyTraitsIS2_EEEES7_E5EntryEEE", !427, i64 0, !427, i64 8, !427, i64 16}
!790 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS3_IS4_PKNS_8FunctionENS_17XalanMapKeyTraitsIS4_EEEES9_E5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !427, i64 0, !432, i64 8, !432, i64 16, !427, i64 24}
!791 = !{!"function_entry_count", i64 12093723}
!792 = !{!"XalanTransformer.cpp:_ZN11xalanc_1_10L17addTraceListenersERKNS_11XalanVectorIPNS_13TraceListenerENS_31MemoryManagedConstructionTraitsIS2_EEEERNS_14XSLTEngineImplE"}
!793 = distinct !{!793, !488}
!794 = !{!779, !427, i64 0}
!795 = !{!"function_entry_count", i64 41614}
!796 = !{!"branch_weights", i32 1, i32 41615}
!797 = !{!"branch_weights", i32 13, i32 41603}
!798 = !{!"branch_weights", i32 355, i32 41249}
!799 = !{!"branch_weights", i32 40890, i32 360}
!800 = !{!"function_entry_count", i64 64551608}
!801 = !{!"branch_weights", i32 64551591, i32 19}
!802 = !{!"branch_weights", i32 5, i32 64551587}
!803 = !{!"function_entry_count", i64 85300747}
!804 = !{!"function_entry_count", i64 82509}
!805 = !{!"function_entry_count", i64 348020}
!806 = !{!"branch_weights", i32 64381419, i32 348021}
!807 = distinct !{!807, !488}
!808 = !{!"function_entry_count", i64 155828046}
!809 = !{!"branch_weights", i32 1, i32 155828047}
!810 = !{!"branch_weights", i32 133170778, i32 22657270}
!811 = !{!"branch_weights", i32 1, i32 19024396}
!812 = !{!"branch_weights", i32 19024396, i32 -26420600}
!813 = distinct !{!813, !488}
!814 = !{!"branch_weights", i32 20748787, i32 1908484}
!815 = !{!"branch_weights", i32 1, i32 1908484}
!816 = !{!"branch_weights", i32 1, i32 1908483}
!817 = !{!"branch_weights", i32 1908483, i32 49797857}
!818 = distinct !{!818, !488}
!819 = !{!"branch_weights", i32 1908483, i32 1}
!820 = distinct !{!820, !488}
!821 = distinct !{!821, !488}
!822 = !{!"function_entry_count", i64 1950573}
!823 = !{!"function_entry_count", i64 18}
!824 = !{!"function_entry_count", i64 64147281}
!825 = !{!"branch_weights", i32 64147282, i32 1}
!826 = !{!"function_entry_count", i64 1344597977}
!827 = !{!"function_entry_count", i64 185895030}
!828 = !{!"function_entry_count", i64 156073599}
!829 = !{!"function_entry_count", i64 133170778}
!830 = !{!"branch_weights", i32 22, i32 133170758}
!831 = !{!"function_entry_count", i64 155828047}
!832 = !{!"function_entry_count", i64 124150656}
!833 = !{!"branch_weights", i32 124150657, i32 1}
!834 = !{!"function_entry_count", i64 64551586}
!835 = !{!"function_entry_count", i64 56317002}
!836 = !{!"function_entry_count", i64 30109074}
!837 = !{!"function_entry_count", i64 86426076}
!838 = !{!"function_entry_count", i64 3901146}
!839 = !{!"branch_weights", i32 28199083, i32 1909993}
