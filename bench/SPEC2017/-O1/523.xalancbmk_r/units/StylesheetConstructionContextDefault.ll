; ModuleID = 'StylesheetConstructionContextDefault.cpp'
source_filename = "StylesheetConstructionContextDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" = type { ptr, i32 }
%"class.xalanc_1_10::StylesheetConstructionContextDefault" = type { %"class.xalanc_1_10::StylesheetConstructionContext", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanArrayAllocator", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanQNameByValue", %"class.xalanc_1_10::XalanDOMStringCache", %"class.xalanc_1_10::XalanAVTAllocator", %"class.xalanc_1_10::XalanAVTPartSimpleAllocator", %"class.xalanc_1_10::XalanAVTPartXPathAllocator", %"class.xalanc_1_10::XalanQNameByValueAllocator", %"class.xalanc_1_10::XalanQNameByReference", %"class.xalanc_1_10::XalanArrayAllocator.13", %"class.xalanc_1_10::XalanVector.15", %"class.xalanc_1_10::XalanElemApplyTemplatesAllocator", %"class.xalanc_1_10::XalanElemAttributeAllocator", %"class.xalanc_1_10::XalanElemAttributeSetAllocator", %"class.xalanc_1_10::XalanElemCallTemplateAllocator", %"class.xalanc_1_10::XalanElemElementAllocator", %"class.xalanc_1_10::XalanElemLiteralResultAllocator", %"class.xalanc_1_10::XalanElemTemplateAllocator", %"class.xalanc_1_10::XalanElemTextLiteralAllocator", %"class.xalanc_1_10::XalanElemValueOfAllocator", %"class.xalanc_1_10::XalanElemVariableAllocator", %"class.xalanc_1_10::XalanMatchPatternDataAllocator", %"class.xalanc_1_10::XalanQNameByReference" }
%"class.xalanc_1_10::StylesheetConstructionContext" = type { %"class.xalanc_1_10::XPathConstructionContext" }
%"class.xalanc_1_10::XPathConstructionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XPathProcessor>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XalanArrayAllocator" = type { %"class.xalanc_1_10::XalanList.0", i64, ptr }
%"class.xalanc_1_10::XalanList.0" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::XalanDOMStringCache" = type { %"class.xalanc_1_10::XalanVector.2", %"class.xalanc_1_10::XalanVector.2", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMStringReusableAllocator" }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMStringReusableAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator.3", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.3" = type { ptr, i16, %"class.xalanc_1_10::XalanList.4" }
%"class.xalanc_1_10::XalanList.4" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.5" }
%"class.xalanc_1_10::ArenaAllocator.5" = type { ptr, i64, %"class.xalanc_1_10::XalanList.6" }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartSimpleAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.7" }
%"class.xalanc_1_10::ArenaAllocator.7" = type { ptr, i64, %"class.xalanc_1_10::XalanList.8" }
%"class.xalanc_1_10::XalanList.8" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanAVTPartXPathAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.9" }
%"class.xalanc_1_10::ArenaAllocator.9" = type { ptr, i64, %"class.xalanc_1_10::XalanList.10" }
%"class.xalanc_1_10::XalanList.10" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByValueAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.11" }
%"class.xalanc_1_10::ArenaAllocator.11" = type { ptr, i64, %"class.xalanc_1_10::XalanList.12" }
%"class.xalanc_1_10::XalanList.12" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanArrayAllocator.13" = type { %"class.xalanc_1_10::XalanList.14", i64, ptr }
%"class.xalanc_1_10::XalanList.14" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.15" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanElemApplyTemplatesAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.16" }
%"class.xalanc_1_10::ArenaAllocator.16" = type { ptr, i64, %"class.xalanc_1_10::XalanList.17" }
%"class.xalanc_1_10::XalanList.17" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.18" }
%"class.xalanc_1_10::ArenaAllocator.18" = type { ptr, i64, %"class.xalanc_1_10::XalanList.19" }
%"class.xalanc_1_10::XalanList.19" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemAttributeSetAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.20" }
%"class.xalanc_1_10::ArenaAllocator.20" = type { ptr, i64, %"class.xalanc_1_10::XalanList.21" }
%"class.xalanc_1_10::XalanList.21" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemCallTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.22" }
%"class.xalanc_1_10::ArenaAllocator.22" = type { ptr, i64, %"class.xalanc_1_10::XalanList.23" }
%"class.xalanc_1_10::XalanList.23" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemElementAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.24" }
%"class.xalanc_1_10::ArenaAllocator.24" = type { ptr, i64, %"class.xalanc_1_10::XalanList.25" }
%"class.xalanc_1_10::XalanList.25" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemLiteralResultAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.26" }
%"class.xalanc_1_10::ArenaAllocator.26" = type { ptr, i64, %"class.xalanc_1_10::XalanList.27" }
%"class.xalanc_1_10::XalanList.27" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTemplateAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.28" }
%"class.xalanc_1_10::ArenaAllocator.28" = type { ptr, i64, %"class.xalanc_1_10::XalanList.29" }
%"class.xalanc_1_10::XalanList.29" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemTextLiteralAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.30" }
%"class.xalanc_1_10::ArenaAllocator.30" = type { ptr, i64, %"class.xalanc_1_10::XalanList.31" }
%"class.xalanc_1_10::XalanList.31" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemValueOfAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.32" }
%"class.xalanc_1_10::ArenaAllocator.32" = type { ptr, i64, %"class.xalanc_1_10::XalanList.33" }
%"class.xalanc_1_10::XalanList.33" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanElemVariableAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.34" }
%"class.xalanc_1_10::ArenaAllocator.34" = type { ptr, i64, %"class.xalanc_1_10::XalanList.35" }
%"class.xalanc_1_10::XalanList.35" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanMatchPatternDataAllocator" = type { %"class.xalanc_1_10::ArenaAllocator.36" }
%"class.xalanc_1_10::ArenaAllocator.36" = type { ptr, i64, %"class.xalanc_1_10::XalanList.37" }
%"class.xalanc_1_10::XalanList.37" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanQNameByReference" = type { %"class.xalanc_1_10::XalanQName", ptr, ptr }
%"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node" = type { %"struct.std::pair.209", ptr, ptr }
%"struct.std::pair.209" = type { i64, ptr }
%"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node" = type { %"struct.std::pair.216", ptr, ptr }
%"struct.std::pair.216" = type { i64, ptr }
%"class.xalanc_1_10::XalanVector.208" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanAutoPtr" = type { ptr }
%"class.xalanc_1_10::XPath" = type <{ %"class.xalanc_1_10::XPathExpression", ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XPathExpression" = type { %"class.xalanc_1_10::XalanVector.88", i32, %"class.xalanc_1_10::XalanVector.89", i32, ptr, %"class.xalanc_1_10::XalanVector.90" }
%"class.xalanc_1_10::XalanVector.88" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.89" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.90" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XSLTEngineImpl" = type { %"class.xalanc_1_10::XSLTProcessor", %"class.xalanc_1_10::PrefixResolver", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, ptr, %"class.xalanc_1_10::XalanMemMgrAutoPtr", %"class.xalanc_1_10::XalanVector.38", %"class.xalanc_1_10::XalanVector.39", %"class.xalanc_1_10::ProblemListenerDefault", ptr, ptr, i8, i8, ptr, %"class.xalanc_1_10::XalanVector.40", i64, %"class.xalanc_1_10::XalanVector.41", ptr, ptr, ptr, ptr, %"class.xalanc_1_10::OutputContextStack", %"class.xalanc_1_10::XalanNamespacesStack", %"class.xalanc_1_10::AttributeListImpl", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.47", i8, %"class.xalanc_1_10::XPathConstructionContextDefault" }
%"class.xalanc_1_10::XSLTProcessor" = type { ptr }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }
%"class.xalanc_1_10::XalanVector.38" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.39" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ProblemListenerDefault" = type { %"class.xalanc_1_10::ProblemListener", ptr, ptr }
%"class.xalanc_1_10::ProblemListener" = type { ptr }
%"class.xalanc_1_10::XalanVector.40" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.41" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::OutputContextStack" = type { %"class.xalanc_1_10::XalanDeque", %"struct.xalanc_1_10::XalanDequeIterator", i64 }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.42", %"class.xalanc_1_10::XalanVector.42" }
%"class.xalanc_1_10::XalanVector.42" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator" = type { ptr, i64 }
%"class.xalanc_1_10::XalanNamespacesStack" = type { %"class.xalanc_1_10::XalanDeque.43", %"struct.xalanc_1_10::XalanDequeIterator.45", %"struct.xalanc_1_10::XalanDequeIterator.45", %"class.xalanc_1_10::XalanVector.38" }
%"class.xalanc_1_10::XalanDeque.43" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.44", %"class.xalanc_1_10::XalanVector.44" }
%"class.xalanc_1_10::XalanVector.44" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator.45" = type { ptr, i64 }
%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector.46", %"class.xalanc_1_10::XalanVector.46" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.46" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.47" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathConstructionContextDefault" = type { %"class.xalanc_1_10::XPathConstructionContext", %"class.xalanc_1_10::XalanDOMStringPool", %"class.xalanc_1_10::XalanDOMStringCache" }
%"class.xalanc_1_10::Stylesheet" = type { %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.53", %"class.xalanc_1_10::XalanVector.54", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanVector.55", i64, %"class.xalanc_1_10::XalanDeque.56", %"class.xalanc_1_10::XalanDeque.58", i8, %"class.xalanc_1_10::XalanMap.60", ptr, %"class.xalanc_1_10::XalanVector.63", %"class.xalanc_1_10::XalanMap.64", %"class.xalanc_1_10::XalanVector.69", double, %"class.xalanc_1_10::XalanMap.70", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanMap.70", %"struct.xalanc_1_10::XalanMapIterator", %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanVector.73", %"class.xalanc_1_10::XalanVector.73", i64, %"class.xalanc_1_10::XalanVector.74", %"class.xalanc_1_10::NamespacesHandler" }
%"class.xalanc_1_10::XalanVector.53" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.54" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.55" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.56" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.57", %"class.xalanc_1_10::XalanVector.57" }
%"class.xalanc_1_10::XalanVector.57" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDeque.58" = type { ptr, i64, %"class.xalanc_1_10::XalanVector.59", %"class.xalanc_1_10::XalanVector.59" }
%"class.xalanc_1_10::XalanVector.59" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.60" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.61", %"class.xalanc_1_10::XalanList.61", %"class.xalanc_1_10::XalanVector.62", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.61" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.62" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.63" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.64" = type { %"struct.xalanc_1_10::XalanHashMemberReference", %"struct.std::equal_to.65", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.67", %"class.xalanc_1_10::XalanList.67", %"class.xalanc_1_10::XalanVector.68", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberReference" = type { i8 }
%"struct.std::equal_to.65" = type { i8 }
%"class.xalanc_1_10::XalanList.67" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.68" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.69" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.70" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.71", %"class.xalanc_1_10::XalanList.71", %"class.xalanc_1_10::XalanVector.72", i64, i64 }
%"class.xalanc_1_10::XalanList.71" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.72" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanMapIterator" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.73" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.74" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NamespacesHandler" = type { %"class.xalanc_1_10::XalanVector.75", %"class.xalanc_1_10::XalanVector.76", %"class.xalanc_1_10::XalanVector.47", %"class.xalanc_1_10::XalanMap.77" }
%"class.xalanc_1_10::XalanVector.75" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.76" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.77" = type { %"struct.xalanc_1_10::DOMStringPointerHashFunction", %"struct.xalanc_1_10::pointer_equal", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.80", %"class.xalanc_1_10::XalanList.80", %"class.xalanc_1_10::XalanVector.81", i64, i64 }
%"struct.xalanc_1_10::DOMStringPointerHashFunction" = type { i8 }
%"struct.xalanc_1_10::pointer_equal" = type { i8 }
%"class.xalanc_1_10::XalanList.80" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.81" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::StylesheetRoot" = type { %"class.xalanc_1_10::Stylesheet", %"class.xalanc_1_10::XalanDOMString", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8], %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i32, %"class.xalanc_1_10::XalanVector.82", i8, %"class.xalanc_1_10::XalanVector.63", ptr, ptr, ptr, i8, i8, i32, i8, i64, %"class.xalanc_1_10::XalanMap.83" }
%"class.xalanc_1_10::XalanVector.82" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.83" = type { %"struct.xalanc_1_10::XalanHashMemberPointer", %"struct.xalanc_1_10::pointer_equal.84", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.86", %"class.xalanc_1_10::XalanList.86", %"class.xalanc_1_10::XalanVector.87", i64, i64 }
%"struct.xalanc_1_10::XalanHashMemberPointer" = type { i8 }
%"struct.xalanc_1_10::pointer_equal.84" = type { i8 }
%"class.xalanc_1_10::XalanList.86" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.87" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase" = type { %"class.xalanc_1_10::XalanAllocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator" = type { ptr }
%"class.xalanc_1_10::AVT" = type { ptr, ptr, i64, ptr, i32, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.115" = type { %"class.xalanc_1_10::XalanAllocator.116", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.116" = type { ptr }
%"class.xalanc_1_10::AVTPartSimple" = type <{ %"class.xalanc_1_10::AVTPart", ptr, i32, [4 x i8] }>
%"class.xalanc_1_10::AVTPart" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.122" = type { %"class.xalanc_1_10::XalanAllocator.123", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.123" = type { ptr }
%"class.xalanc_1_10::AVTPartXPath" = type { %"class.xalanc_1_10::AVTPart", ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.129" = type { %"class.xalanc_1_10::XalanAllocator.130", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.130" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.136" = type { %"class.xalanc_1_10::XalanAllocator.137", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.137" = type { ptr }
%"class.xalanc_1_10::ElemApplyTemplates" = type { %"class.xalanc_1_10::ElemForEach", ptr }
%"class.xalanc_1_10::ElemForEach" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, %"class.xalanc_1_10::XalanVector.91", i64 }
%"class.xalanc_1_10::ElemTemplateElement.base" = type <{ %"class.xalanc_1_10::PrefixResolver", ptr, %"class.xalanc_1_10::NamespacesHandler", i32, [4 x i8], ptr, ptr, ptr, %union.anon, %"class.xalanc_1_10::ElemTemplateElement::LocatorProxy", i16 }>
%union.anon = type { ptr }
%"class.xalanc_1_10::ElemTemplateElement::LocatorProxy" = type { %"class.xalanc_1_10::XalanLocator", i64, i64, ptr }
%"class.xalanc_1_10::XalanLocator" = type { %"class.xercesc_2_7::Locator" }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xalanc_1_10::XalanVector.91" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.143" = type { %"class.xalanc_1_10::XalanAllocator.144", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.144" = type { ptr }
%"class.xalanc_1_10::ElemAttribute" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.150" = type { %"class.xalanc_1_10::XalanAllocator.151", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.151" = type { ptr }
%"class.xalanc_1_10::ElemAttributeSet" = type { %"class.xalanc_1_10::ElemUse", ptr }
%"class.xalanc_1_10::ElemUse" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, i64 }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.157" = type { %"class.xalanc_1_10::XalanAllocator.158", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.158" = type { ptr }
%"class.xalanc_1_10::ElemCallTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.164" = type { %"class.xalanc_1_10::XalanAllocator.165", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.165" = type { ptr }
%"class.xalanc_1_10::ElemElement" = type { %"class.xalanc_1_10::ElemUse", ptr, ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.171" = type { %"class.xalanc_1_10::XalanAllocator.172", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.172" = type { ptr }
%"class.xalanc_1_10::ElemLiteralResult" = type <{ %"class.xalanc_1_10::ElemUse", ptr, ptr, i32, [4 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.178" = type { %"class.xalanc_1_10::XalanAllocator.179", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.179" = type { ptr }
%"class.xalanc_1_10::ElemTemplate" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, ptr, double }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.185" = type { %"class.xalanc_1_10::XalanAllocator.186", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.186" = type { ptr }
%"class.xalanc_1_10::ElemTextLiteral" = type <{ %"class.xalanc_1_10::ElemTemplateElement.base", i8, [5 x i8], ptr, i32, [4 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.192" = type { %"class.xalanc_1_10::XalanAllocator.193", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.193" = type { ptr }
%"class.xalanc_1_10::ElemValueOf" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.199" = type { %"class.xalanc_1_10::XalanAllocator.200", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.200" = type { ptr }
%"class.xalanc_1_10::ElemVariable" = type { %"class.xalanc_1_10::ElemTemplateElement.base", ptr, ptr, i8, %"class.xalanc_1_10::XObjectPtr", ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::ArenaBlockBase.206" = type { %"class.xalanc_1_10::XalanAllocator.207", i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocator.207" = type { ptr }
%"class.xalanc_1_10::XalanMatchPatternData" = type <{ ptr, i64, %"class.xalanc_1_10::XalanDOMString", ptr, ptr, i32, [4 x i8] }>

$_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPKvED2Ev = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorItED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE5resetEv = comdat any

$_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_ = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorItE8allocateEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_13AVTPartSimpleEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_12AVTPartXPathEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_17XalanQNameByValueEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_13ElemAttributeEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_16ElemAttributeSetEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_16ElemCallTemplateEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_11ElemElementEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_17ElemLiteralResultEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_12ElemTemplateEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_15ElemTextLiteralEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_11ElemValueOfEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_12ElemVariableEmED2Ev = comdat any

$_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv = comdat any

$_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv = comdat any

$_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RNS1_13MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm = comdat any

$_ZNK11xalanc_1_1010XalanQName6equalsERKS0_ = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE11createEntryEmm = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE9findEntryEm = comdat any

$_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev = comdat any

$_ZNK11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5emptyEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_1014StylesheetRootEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_15ElemApplyImportENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ElemChooseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_11ElemCommentENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_8ElemCopyENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_10ElemCopyOfENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_17ElemDecimalFormatENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_12ElemFallbackENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_11ElemForEachENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_6ElemIfENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_11ElemMessageENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_13ElemOtherwiseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_9ElemParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_6ElemPIENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_8ElemSortENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_13ElemWithParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1014XalanConstructINS_8ElemWhenENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_ = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorItE11createEntryEmm = comdat any

$_ZN11xalanc_1_1019XalanArrayAllocatorItE9findEntryEm = comdat any

$_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE9push_backERKS7_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

@_ZTVN11xalanc_1_1036StylesheetConstructionContextDefaultE = dso_local unnamed_addr constant { [54 x ptr] } { [54 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1036StylesheetConstructionContextDefaultE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD0Ev, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getPooledStringERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getPooledStringEPKtj, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getCachedStringEv, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERNS_14StylesheetRootERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault7destroyEPNS_14StylesheetRootE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16getURLFromStringERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault22getURLStringFromStringERKNS_14XalanDOMStringERS1_, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16getURLFromStringERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault19getXSLTNamespaceURIEv, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtjRKNS_14PrefixResolverEbb, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault19getLocatorFromStackEv, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18pushLocatorOnStackEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15popLocatorStackEv, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault23getXalanXSLNameSpaceURLEv, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault8parseXMLERKNS_14XalanDOMStringEPN11xercesc_2_715DocumentHandlerEPNS_13XalanDocumentE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19isXMLSpaceAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault30isXSLUseAttributeSetsAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault12isValidQNameEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault15getElementTokenERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault23getXSLTVersionSupportedEv, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault26allocateXalanDOMCharVectorEj, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault26allocateXalanDOMCharVectorEPKtjb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9createAVTEPKN11xercesc_2_77LocatorEPKtS6_RKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createAVTPartEPKtj, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createAVTPartEPKN11xercesc_2_77LocatorEPKtjRKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault24allocateAVTPointerVectorEm, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault28allocateAVTPartPointerVectorEm, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16createXalanQNameERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16createXalanQNameEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault14tokenizeQNamesERmPKtRKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementERNS_10StylesheetEPKtjbbPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListERNS_18ExtensionNSHandlerEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault27createXalanMatchPatternDataERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE] }, align 8
@_ZN11xalanc_1_109Constants25ATTRNAME_USEATTRIBUTESETSE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_109Constants14ATTRNAME_SPACEE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault23s_elementTokenTableLastE = dso_local local_unnamed_addr constant ptr getelementptr inbounds ([37 x %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry"], ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19s_elementTokenTableE, i64 0, i64 35, i32 0), align 8
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault24s_elementTokenTableDummyE = dso_local local_unnamed_addr constant ptr getelementptr inbounds ([37 x %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry"], ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19s_elementTokenTableE, i64 0, i64 36, i32 0), align 8
@_ZN11xalanc_1_1015StringTokenizer15s_defaultTokensE = external constant [0 x i16], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault4s_ifE = dso_local constant [3 x i16] [i16 105, i16 102, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault5s_keyE = dso_local constant [4 x i16] [i16 107, i16 101, i16 121, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_copyE = dso_local constant [5 x i16] [i16 99, i16 111, i16 112, i16 121, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_sortE = dso_local constant [5 x i16] [i16 115, i16 111, i16 114, i16 116, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_textE = dso_local constant [5 x i16] [i16 116, i16 101, i16 120, i16 116, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_whenE = dso_local constant [5 x i16] [i16 119, i16 104, i16 101, i16 110, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault7s_emptyE = dso_local constant [6 x i16] [i16 101, i16 109, i16 112, i16 116, i16 121, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault7s_paramE = dso_local constant [6 x i16] [i16 112, i16 97, i16 114, i16 97, i16 109, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_chooseE = dso_local constant [7 x i16] [i16 99, i16 104, i16 111, i16 111, i16 115, i16 101, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_importE = dso_local constant [7 x i16] [i16 105, i16 109, i16 112, i16 111, i16 114, i16 116, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_numberE = dso_local constant [7 x i16] [i16 110, i16 117, i16 109, i16 98, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_outputE = dso_local constant [7 x i16] [i16 111, i16 117, i16 116, i16 112, i16 117, i16 116, i16 0], align 2
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_commentE = dso_local constant [8 x i16] [i16 99, i16 111, i16 109, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_copyOfE = dso_local constant [8 x i16] [i16 99, i16 111, i16 112, i16 121, i16 45, i16 111, i16 102, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_elementE = dso_local constant [8 x i16] [i16 101, i16 108, i16 101, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_includeE = dso_local constant [8 x i16] [i16 105, i16 110, i16 99, i16 108, i16 117, i16 100, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_messageE = dso_local constant [8 x i16] [i16 109, i16 101, i16 115, i16 115, i16 97, i16 103, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault10s_fallbackE = dso_local constant [9 x i16] [i16 102, i16 97, i16 108, i16 108, i16 98, i16 97, i16 99, i16 107, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_forEachE = dso_local constant [9 x i16] [i16 102, i16 111, i16 114, i16 45, i16 101, i16 97, i16 99, i16 104, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault10s_templateE = dso_local constant [9 x i16] [i16 116, i16 101, i16 109, i16 112, i16 108, i16 97, i16 116, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_valueOfE = dso_local constant [9 x i16] [i16 118, i16 97, i16 108, i16 117, i16 101, i16 45, i16 111, i16 102, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault10s_variableE = dso_local constant [9 x i16] [i16 118, i16 97, i16 114, i16 105, i16 97, i16 98, i16 108, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_attributeE = dso_local constant [10 x i16] [i16 97, i16 116, i16 116, i16 114, i16 105, i16 98, i16 117, i16 116, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_otherwiseE = dso_local constant [10 x i16] [i16 111, i16 116, i16 104, i16 101, i16 114, i16 119, i16 105, i16 115, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_transformE = dso_local constant [10 x i16] [i16 116, i16 114, i16 97, i16 110, i16 115, i16 102, i16 111, i16 114, i16 109, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault12s_stylesheetE = dso_local constant [11 x i16] [i16 115, i16 116, i16 121, i16 108, i16 101, i16 115, i16 104, i16 101, i16 101, i16 116, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_withParamE = dso_local constant [11 x i16] [i16 119, i16 105, i16 116, i16 104, i16 45, i16 112, i16 97, i16 114, i16 97, i16 109, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault12s_stripSpaceE = dso_local constant [12 x i16] [i16 115, i16 116, i16 114, i16 105, i16 112, i16 45, i16 115, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault14s_applyImportsE = dso_local constant [14 x i16] [i16 97, i16 112, i16 112, i16 108, i16 121, i16 45, i16 105, i16 109, i16 112, i16 111, i16 114, i16 116, i16 115, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault14s_attributeSetE = dso_local constant [14 x i16] [i16 97, i16 116, i16 116, i16 114, i16 105, i16 98, i16 117, i16 116, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault14s_callTemplateE = dso_local constant [14 x i16] [i16 99, i16 97, i16 108, i16 108, i16 45, i16 116, i16 101, i16 109, i16 112, i16 108, i16 97, i16 116, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault15s_decimalFormatE = dso_local constant [15 x i16] [i16 100, i16 101, i16 99, i16 105, i16 109, i16 97, i16 108, i16 45, i16 102, i16 111, i16 114, i16 109, i16 97, i16 116, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault15s_preserveSpaceE = dso_local constant [15 x i16] [i16 112, i16 114, i16 101, i16 115, i16 101, i16 114, i16 118, i16 101, i16 45, i16 115, i16 112, i16 97, i16 99, i16 101, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault16s_applyTemplatesE = dso_local constant [16 x i16] [i16 97, i16 112, i16 112, i16 108, i16 121, i16 45, i16 116, i16 101, i16 109, i16 112, i16 108, i16 97, i16 116, i16 101, i16 115, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault16s_namespaceAliasE = dso_local constant [16 x i16] [i16 110, i16 97, i16 109, i16 101, i16 115, i16 112, i16 97, i16 99, i16 101, i16 45, i16 97, i16 108, i16 105, i16 97, i16 115, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault23s_processingInstructionE = dso_local constant [23 x i16] [i16 112, i16 114, i16 111, i16 99, i16 101, i16 115, i16 115, i16 105, i16 110, i16 103, i16 45, i16 105, i16 110, i16 115, i16 116, i16 114, i16 117, i16 99, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault19s_elementTokenTableE = dso_local constant [37 x %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry"] [%"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault4s_ifE, i32 11 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5s_keyE, i32 10 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_copyE, i32 4 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_sortE, i32 21 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_textE, i32 24 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6s_whenE, i32 26 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault7s_emptyE, i32 -1 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault7s_paramE, i32 15 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_chooseE, i32 2 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_importE, i32 12 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_numberE, i32 16 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_outputE, i32 32 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_commentE, i32 3 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault8s_copyOfE, i32 5 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_elementE, i32 28 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_includeE, i32 13 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_messageE, i32 31 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault10s_fallbackE, i32 27 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_forEachE, i32 9 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault10s_templateE, i32 20 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9s_valueOfE, i32 25 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault10s_variableE, i32 30 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_attributeE, i32 6 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_otherwiseE, i32 17 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_transformE, i32 23 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault12s_stylesheetE, i32 23 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11s_withParamE, i32 0 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault12s_stripSpaceE, i32 22 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault14s_applyImportsE, i32 29 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault14s_attributeSetE, i32 7 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault14s_callTemplateE, i32 14 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15s_decimalFormatE, i32 33 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15s_preserveSpaceE, i32 19 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16s_applyTemplatesE, i32 1 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16s_namespaceAliasE, i32 34 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault23s_processingInstructionE, i32 18 }, %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry" { ptr null, i32 -2 }], align 16
@_ZN11xalanc_1_1036StylesheetConstructionContextDefault23s_elementTokenTableSizeE = dso_local local_unnamed_addr constant i32 37, align 4
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1036StylesheetConstructionContextDefaultE = dso_local constant [54 x i8] c"N11xalanc_1_1036StylesheetConstructionContextDefaultE\00", align 1
@_ZTIN11xalanc_1_1029StylesheetConstructionContextE = external constant ptr
@_ZTIN11xalanc_1_1036StylesheetConstructionContextDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1036StylesheetConstructionContextDefaultE, ptr @_ZTIN11xalanc_1_1029StylesheetConstructionContextE }, align 8
@_ZN11xalanc_1_1014XSLTEngineImpl17s_XSLNameSpaceURLE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1014XSLTEngineImpl19s_XalanNamespaceURLE = external local_unnamed_addr constant ptr, align 8

@_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC1ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i64, i64, i64, i64, i64, i64), ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm
@_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(1000) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %4, i64 noundef %5, i64 noundef %6, i64 noundef %7, i64 noundef %8, i64 noundef %9) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  tail call void @_ZN11xalanc_1_1029StylesheetConstructionContextC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xalanc_1_1036StylesheetConstructionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %11 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  store ptr %2, ptr %11, align 8, !tbaa !222
  %12 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 2
  store ptr %3, ptr %12, align 8, !tbaa !222
  %13 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 3
  %14 = invoke noundef ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %15 unwind label %75, !prof !225

15:                                               ; preds = %10
  store ptr %1, ptr %13, align 8, !tbaa !226
  %16 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !228
  %17 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4
  store ptr %1, ptr %17, align 8, !tbaa !229
  %18 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %19 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112) %19, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 32, i64 noundef 101, i64 noundef 15)
          to label %20 unwind label %77, !prof !225

20:                                               ; preds = %15
  %21 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 6
  store ptr %1, ptr %21, align 8, !tbaa !232
  %22 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 6, i32 0, i32 1
  %23 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 6, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store i64 %4, ptr %23, align 8, !tbaa !234
  %24 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 6, i32 2
  store ptr null, ptr %24, align 8, !tbaa !236
  %25 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %25, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %26 unwind label %79, !prof !225

26:                                               ; preds = %20
  %27 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %27, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %81, !prof !225

28:                                               ; preds = %26
  %29 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120) %29, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 100)
          to label %30 unwind label %83, !prof !225

30:                                               ; preds = %28
  %31 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 10
  invoke void @_ZN11xalanc_1_1017XalanAVTAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %31, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %5)
          to label %32 unwind label %85, !prof !225

32:                                               ; preds = %30
  %33 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 11
  invoke void @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %33, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %6)
          to label %34 unwind label %87, !prof !225

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 12
  invoke void @_ZN11xalanc_1_1026XalanAVTPartXPathAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %35, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %7)
          to label %36 unwind label %89, !prof !225

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 13
  invoke void @_ZN11xalanc_1_1026XalanQNameByValueAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %37, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8)
          to label %38 unwind label %91, !prof !225

38:                                               ; preds = %36
  %39 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 14
  %40 = load ptr, ptr @_ZN11xalanc_1_1014XSLTEngineImpl17s_XSLNameSpaceURLE, align 8, !tbaa !222
  %41 = load ptr, ptr @_ZN11xalanc_1_109Constants25ATTRNAME_USEATTRIBUTESETSE, align 8, !tbaa !222
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %39, ptr noundef nonnull align 8 dereferenceable(36) %40, ptr noundef nonnull align 8 dereferenceable(36) %41)
          to label %42 unwind label %93, !prof !225

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15
  store ptr %1, ptr %43, align 8, !tbaa !237
  %44 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15, i32 0, i32 1
  %45 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %44, i8 0, i64 16, i1 false)
  store i64 %9, ptr %45, align 8, !tbaa !239
  %46 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15, i32 2
  store ptr null, ptr %46, align 8, !tbaa !241
  %47 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  store ptr %1, ptr %47, align 8, !tbaa !242
  %48 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 1
  %49 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 17
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %48, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %49, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %50 unwind label %95, !prof !225

50:                                               ; preds = %42
  %51 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 18
  invoke void @_ZN11xalanc_1_1027XalanElemAttributeAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %51, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %52 unwind label %97, !prof !225

52:                                               ; preds = %50
  %53 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 19
  invoke void @_ZN11xalanc_1_1030XalanElemAttributeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %53, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %54 unwind label %99, !prof !225

54:                                               ; preds = %52
  %55 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 20
  invoke void @_ZN11xalanc_1_1030XalanElemCallTemplateAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %55, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %56 unwind label %101, !prof !225

56:                                               ; preds = %54
  %57 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 21
  invoke void @_ZN11xalanc_1_1025XalanElemElementAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %57, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %58 unwind label %103, !prof !225

58:                                               ; preds = %56
  %59 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 22
  invoke void @_ZN11xalanc_1_1031XalanElemLiteralResultAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %59, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 20)
          to label %60 unwind label %105, !prof !225

60:                                               ; preds = %58
  %61 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 23
  invoke void @_ZN11xalanc_1_1026XalanElemTemplateAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %62 unwind label %107, !prof !225

62:                                               ; preds = %60
  %63 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 24
  invoke void @_ZN11xalanc_1_1029XalanElemTextLiteralAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %63, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 20)
          to label %64 unwind label %109, !prof !225

64:                                               ; preds = %62
  %65 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 25
  invoke void @_ZN11xalanc_1_1025XalanElemValueOfAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %65, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %66 unwind label %111, !prof !225

66:                                               ; preds = %64
  %67 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 26
  invoke void @_ZN11xalanc_1_1026XalanElemVariableAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %67, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %68 unwind label %113, !prof !225

68:                                               ; preds = %66
  %69 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 27
  invoke void @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40) %69, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 10)
          to label %70 unwind label %115, !prof !225

70:                                               ; preds = %68
  %71 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 28
  %72 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !222
  %73 = load ptr, ptr @_ZN11xalanc_1_109Constants14ATTRNAME_SPACEE, align 8, !tbaa !222
  invoke void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24) %71, ptr noundef nonnull align 8 dereferenceable(36) %72, ptr noundef nonnull align 8 dereferenceable(36) %73)
          to label %74 unwind label %117, !prof !225

74:                                               ; preds = %70
  ret void

75:                                               ; preds = %10
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %159

77:                                               ; preds = %15
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %157

79:                                               ; preds = %20
  %80 = landingpad { ptr, i32 }
          cleanup
  br label %155

81:                                               ; preds = %26
  %82 = landingpad { ptr, i32 }
          cleanup
  br label %153

83:                                               ; preds = %28
  %84 = landingpad { ptr, i32 }
          cleanup
  br label %151

85:                                               ; preds = %30
  %86 = landingpad { ptr, i32 }
          cleanup
  br label %149

87:                                               ; preds = %32
  %88 = landingpad { ptr, i32 }
          cleanup
  br label %147

89:                                               ; preds = %34
  %90 = landingpad { ptr, i32 }
          cleanup
  br label %145

91:                                               ; preds = %36
  %92 = landingpad { ptr, i32 }
          cleanup
  br label %143

93:                                               ; preds = %38
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %141

95:                                               ; preds = %42
  %96 = landingpad { ptr, i32 }
          cleanup
  br label %139

97:                                               ; preds = %50
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %137

99:                                               ; preds = %52
  %100 = landingpad { ptr, i32 }
          cleanup
  br label %135

101:                                              ; preds = %54
  %102 = landingpad { ptr, i32 }
          cleanup
  br label %133

103:                                              ; preds = %56
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %131

105:                                              ; preds = %58
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %129

107:                                              ; preds = %60
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %127

109:                                              ; preds = %62
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %125

111:                                              ; preds = %64
  %112 = landingpad { ptr, i32 }
          cleanup
  br label %123

113:                                              ; preds = %66
  %114 = landingpad { ptr, i32 }
          cleanup
  br label %121

115:                                              ; preds = %68
  %116 = landingpad { ptr, i32 }
          cleanup
  br label %119

117:                                              ; preds = %70
  %118 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %69) #17
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi { ptr, i32 } [ %118, %117 ], [ %116, %115 ]
  tail call void @_ZN11xalanc_1_1026XalanElemVariableAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %67) #17
  br label %121

121:                                              ; preds = %119, %113
  %122 = phi { ptr, i32 } [ %120, %119 ], [ %114, %113 ]
  tail call void @_ZN11xalanc_1_1025XalanElemValueOfAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %65) #17
  br label %123

123:                                              ; preds = %121, %111
  %124 = phi { ptr, i32 } [ %122, %121 ], [ %112, %111 ]
  tail call void @_ZN11xalanc_1_1029XalanElemTextLiteralAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %63) #17
  br label %125

125:                                              ; preds = %123, %109
  %126 = phi { ptr, i32 } [ %124, %123 ], [ %110, %109 ]
  tail call void @_ZN11xalanc_1_1026XalanElemTemplateAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %61) #17
  br label %127

127:                                              ; preds = %125, %107
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %108, %107 ]
  tail call void @_ZN11xalanc_1_1031XalanElemLiteralResultAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %59) #17
  br label %129

129:                                              ; preds = %127, %105
  %130 = phi { ptr, i32 } [ %128, %127 ], [ %106, %105 ]
  tail call void @_ZN11xalanc_1_1025XalanElemElementAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %57) #17
  br label %131

131:                                              ; preds = %129, %103
  %132 = phi { ptr, i32 } [ %130, %129 ], [ %104, %103 ]
  tail call void @_ZN11xalanc_1_1030XalanElemCallTemplateAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %55) #17
  br label %133

133:                                              ; preds = %131, %101
  %134 = phi { ptr, i32 } [ %132, %131 ], [ %102, %101 ]
  tail call void @_ZN11xalanc_1_1030XalanElemAttributeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %53) #17
  br label %135

135:                                              ; preds = %133, %99
  %136 = phi { ptr, i32 } [ %134, %133 ], [ %100, %99 ]
  tail call void @_ZN11xalanc_1_1027XalanElemAttributeAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %51) #17
  br label %137

137:                                              ; preds = %135, %97
  %138 = phi { ptr, i32 } [ %136, %135 ], [ %98, %97 ]
  tail call void @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %49) #17
  br label %139

139:                                              ; preds = %137, %95
  %140 = phi { ptr, i32 } [ %138, %137 ], [ %96, %95 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %47) #17
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %43) #17
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %39) #17
  br label %141

141:                                              ; preds = %139, %93
  %142 = phi { ptr, i32 } [ %140, %139 ], [ %94, %93 ]
  tail call void @_ZN11xalanc_1_1026XalanQNameByValueAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %37) #17
  br label %143

143:                                              ; preds = %141, %91
  %144 = phi { ptr, i32 } [ %142, %141 ], [ %92, %91 ]
  tail call void @_ZN11xalanc_1_1026XalanAVTPartXPathAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %35) #17
  br label %145

145:                                              ; preds = %143, %89
  %146 = phi { ptr, i32 } [ %144, %143 ], [ %90, %89 ]
  tail call void @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %33) #17
  br label %147

147:                                              ; preds = %145, %87
  %148 = phi { ptr, i32 } [ %146, %145 ], [ %88, %87 ]
  tail call void @_ZN11xalanc_1_1017XalanAVTAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %31) #17
  br label %149

149:                                              ; preds = %147, %85
  %150 = phi { ptr, i32 } [ %148, %147 ], [ %86, %85 ]
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %29) #17
  br label %151

151:                                              ; preds = %149, %83
  %152 = phi { ptr, i32 } [ %150, %149 ], [ %84, %83 ]
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %27) #17
  br label %153

153:                                              ; preds = %151, %81
  %154 = phi { ptr, i32 } [ %152, %151 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #17
  br label %155

155:                                              ; preds = %153, %79
  %156 = phi { ptr, i32 } [ %154, %153 ], [ %80, %79 ]
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %21) #17
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %19) #17
  br label %157

157:                                              ; preds = %155, %77
  %158 = phi { ptr, i32 } [ %156, %155 ], [ %78, %77 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %17) #17
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #17
  br label %159

159:                                              ; preds = %157, %75
  %160 = phi { ptr, i32 } [ %158, %157 ], [ %76, %75 ]
  tail call void @_ZN11xalanc_1_1029StylesheetConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  resume { ptr, i32 } %160
}

declare void @_ZN11xalanc_1_1029StylesheetConstructionContextC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1017XalanAVTAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1026XalanAVTPartXPathAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1026XalanQNameByValueAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare void @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanElemAttributeAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1030XalanElemAttributeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1030XalanElemCallTemplateAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1025XalanElemElementAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1031XalanElemLiteralResultAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1026XalanElemTemplateAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1029XalanElemTextLiteralAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1025XalanElemValueOfAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1026XalanElemVariableAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorC1ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026XalanElemVariableAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanElemValueOfAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1029XalanElemTextLiteralAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026XalanElemTemplateAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1031XalanElemLiteralResultAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanElemElementAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1030XalanElemCallTemplateAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1030XalanElemAttributeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1027XalanElemAttributeAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !245
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !246

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !247
  %8 = load ptr, ptr %0, align 8, !tbaa !242
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !248

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249, !noalias !250
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !253

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !250
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !250
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !250
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
          to label %11 unwind label %59

11:                                               ; preds = %5
  store ptr %10, ptr %2, align 8, !tbaa !249, !noalias !250
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %12, align 8, !tbaa !254, !noalias !250
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %13, align 8, !tbaa !257, !noalias !250
  br label %14

14:                                               ; preds = %1, %11
  %15 = load ptr, ptr %2, align 8, !tbaa !249, !noalias !258
  %16 = load ptr, ptr %0, align 8, !tbaa !237
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %26, !prof !253

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !219, !noalias !259
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8, !noalias !259
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 32)
          to label %23 unwind label %59

23:                                               ; preds = %18
  store ptr %22, ptr %2, align 8, !tbaa !249, !noalias !259
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %22, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !254, !noalias !259
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %22, i64 0, i32 1
  store ptr %22, ptr %25, align 8, !tbaa !257, !noalias !259
  br label %26

26:                                               ; preds = %14, %23
  %27 = load ptr, ptr %2, align 8, !tbaa !249, !noalias !259
  br label %28

28:                                               ; preds = %50, %26
  %29 = phi ptr [ %27, %26 ], [ %31, %50 ]
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !254, !noalias !258
  %32 = load ptr, ptr %2, align 8, !tbaa !249, !noalias !262
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %43, !prof !265

34:                                               ; preds = %28
  %35 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !262
  %36 = load ptr, ptr %35, align 8, !tbaa !219, !noalias !262
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !262
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 32)
          to label %40 unwind label %57

40:                                               ; preds = %34
  store ptr %39, ptr %2, align 8, !tbaa !249, !noalias !262
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %39, i64 0, i32 2
  store ptr %39, ptr %41, align 8, !tbaa !254, !noalias !262
  %42 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %39, i64 0, i32 1
  store ptr %39, ptr %42, align 8, !tbaa !257, !noalias !262
  br label %43

43:                                               ; preds = %28, %40
  %44 = load ptr, ptr %2, align 8, !tbaa !249, !noalias !262
  %45 = icmp eq ptr %31, %44
  br i1 %45, label %56, label %46, !prof !266

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"struct.std::pair.209", ptr %31, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !267
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !253

50:                                               ; preds = %46, %51
  br label %28, !llvm.loop !268

51:                                               ; preds = %46
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #17
  %52 = load ptr, ptr %47, align 8, !tbaa !267
  %53 = load ptr, ptr %16, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %52)
          to label %50 unwind label %57, !prof !271

56:                                               ; preds = %43
  tail call void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

57:                                               ; preds = %51, %34
  %58 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

59:                                               ; preds = %5, %18
  %60 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %58, %57 ], [ %60, %59 ]
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #18
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026XalanQNameByValueAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026XalanAVTPartXPathAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanAVTAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanArrayAllocatorItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.0", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !272, !noalias !273
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %14, !prof !253

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !232, !noalias !273
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !273
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !273
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
          to label %11 unwind label %59

11:                                               ; preds = %5
  store ptr %10, ptr %2, align 8, !tbaa !272, !noalias !273
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %12, align 8, !tbaa !276, !noalias !273
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %13, align 8, !tbaa !279, !noalias !273
  br label %14

14:                                               ; preds = %1, %11
  %15 = load ptr, ptr %2, align 8, !tbaa !272, !noalias !258
  %16 = load ptr, ptr %0, align 8, !tbaa !232
  %17 = icmp eq ptr %15, null
  br i1 %17, label %18, label %26, !prof !253

18:                                               ; preds = %14
  %19 = load ptr, ptr %16, align 8, !tbaa !219, !noalias !280
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8, !noalias !280
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %16, i64 noundef 32)
          to label %23 unwind label %59

23:                                               ; preds = %18
  store ptr %22, ptr %2, align 8, !tbaa !272, !noalias !280
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %22, i64 0, i32 2
  store ptr %22, ptr %24, align 8, !tbaa !276, !noalias !280
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %22, i64 0, i32 1
  store ptr %22, ptr %25, align 8, !tbaa !279, !noalias !280
  br label %26

26:                                               ; preds = %14, %23
  %27 = load ptr, ptr %2, align 8, !tbaa !272, !noalias !280
  br label %28

28:                                               ; preds = %50, %26
  %29 = phi ptr [ %27, %26 ], [ %31, %50 ]
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %29, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !276, !noalias !258
  %32 = load ptr, ptr %2, align 8, !tbaa !272, !noalias !283
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %43, !prof !286

34:                                               ; preds = %28
  %35 = load ptr, ptr %0, align 8, !tbaa !232, !noalias !283
  %36 = load ptr, ptr %35, align 8, !tbaa !219, !noalias !283
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8, !noalias !283
  %39 = invoke noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef 32)
          to label %40 unwind label %57

40:                                               ; preds = %34
  store ptr %39, ptr %2, align 8, !tbaa !272, !noalias !283
  %41 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %39, i64 0, i32 2
  store ptr %39, ptr %41, align 8, !tbaa !276, !noalias !283
  %42 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %39, i64 0, i32 1
  store ptr %39, ptr %42, align 8, !tbaa !279, !noalias !283
  br label %43

43:                                               ; preds = %28, %40
  %44 = load ptr, ptr %2, align 8, !tbaa !272, !noalias !283
  %45 = icmp eq ptr %31, %44
  br i1 %45, label %56, label %46, !prof !287

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"struct.std::pair.216", ptr %31, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !288
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %51, !prof !289

50:                                               ; preds = %46, %51
  br label %28, !llvm.loop !290

51:                                               ; preds = %46
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #17
  %52 = load ptr, ptr %47, align 8, !tbaa !288
  %53 = load ptr, ptr %16, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %52)
          to label %50 unwind label %57, !prof !291

56:                                               ; preds = %43
  tail call void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #17
  ret void

57:                                               ; preds = %51, %34
  %58 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

59:                                               ; preds = %5, %18
  %60 = landingpad { ptr, i32 }
          catch ptr null
  br label %61

61:                                               ; preds = %59, %57
  %62 = phi { ptr, i32 } [ %58, %57 ], [ %60, %59 ]
  %63 = extractvalue { ptr, i32 } %62, 0
  tail call void @__clang_call_terminate(ptr %63) #18
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !292
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !253

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !293
  %8 = load ptr, ptr %0, align 8, !tbaa !229
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !271

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !294 {
  %2 = load ptr, ptr %0, align 8, !tbaa !226
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false, !prof !295
  br i1 %7, label %8, label %16, !prof !295

8:                                                ; preds = %1
  %9 = load ptr, ptr %5, align 8, !tbaa !219
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5) #17, !prof !296
  %11 = load ptr, ptr %0, align 8, !tbaa !226
  %12 = load ptr, ptr %4, align 8, !tbaa !228
  %13 = load ptr, ptr %11, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef %12)
          to label %16 unwind label %17, !prof !297

16:                                               ; preds = %1, %8
  ret void

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  tail call void @__clang_call_terminate(ptr %19) #18
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1029StylesheetConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(1200) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  store ptr getelementptr inbounds ({ [54 x ptr] }, ptr @_ZTVN11xalanc_1_1036StylesheetConstructionContextDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  invoke void @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(1200) %0)
          to label %2 unwind label %29, !prof !225

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 28
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #17
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 27
  tail call void @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %4) #17
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 26
  tail call void @_ZN11xalanc_1_1026XalanElemVariableAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %5) #17
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 25
  tail call void @_ZN11xalanc_1_1025XalanElemValueOfAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %6) #17
  %7 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 24
  tail call void @_ZN11xalanc_1_1029XalanElemTextLiteralAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %7) #17
  %8 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1026XalanElemTemplateAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %8) #17
  %9 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 22
  tail call void @_ZN11xalanc_1_1031XalanElemLiteralResultAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %9) #17
  %10 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 21
  tail call void @_ZN11xalanc_1_1025XalanElemElementAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %10) #17
  %11 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 20
  tail call void @_ZN11xalanc_1_1030XalanElemCallTemplateAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %11) #17
  %12 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 19
  tail call void @_ZN11xalanc_1_1030XalanElemAttributeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %12) #17
  %13 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 18
  tail call void @_ZN11xalanc_1_1027XalanElemAttributeAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %13) #17
  %14 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 17
  tail call void @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %14) #17
  %15 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #17
  %16 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %16) #17
  %17 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 14
  tail call void @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %17) #17
  %18 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1026XalanQNameByValueAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %18) #17
  %19 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1026XalanAVTPartXPathAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %19) #17
  %20 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %20) #17
  %21 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1017XalanAVTAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(40) %21) #17
  %22 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev(ptr noundef nonnull align 8 dereferenceable(120) %22) #17
  %23 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1017XalanQNameByValueD1Ev(ptr noundef nonnull align 8 dereferenceable(88) %23) #17
  %24 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #17
  %25 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorItED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %25) #17
  %26 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(112) %26) #17
  %27 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #17
  %28 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %28) #17
  tail call void @_ZN11xalanc_1_1029StylesheetConstructionContextD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #17
  ret void

29:                                               ; preds = %1
  %30 = landingpad { ptr, i32 }
          catch ptr null
  %31 = extractvalue { ptr, i32 } %30, 0
  tail call void @__clang_call_terminate(ptr %31) #18
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !298 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #17
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(1200) %0) unnamed_addr #4 align 2 !prof !298 {
  tail call void @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(1200) %0) #17
  tail call void @_ZdlPv(ptr noundef %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 32
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(1000) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault5errorERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = icmp eq ptr %3, null
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !299
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  br i1 %5, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds ptr, ptr %8, i64 33
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(1000) %7, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  br label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds ptr, ptr %8, i64 32
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(1000) %7, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef null)
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 30
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(1000) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault4warnERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = icmp eq ptr %3, null
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !299
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  br i1 %5, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds ptr, ptr %8, i64 31
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(1000) %7, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  br label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds ptr, ptr %8, i64 30
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(1000) %7, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef null)
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKNS_19ElemTemplateElementE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 28
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(1000) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault7messageERKNS_14XalanDOMStringEPKNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = icmp eq ptr %3, null
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !299
  %8 = load ptr, ptr %7, align 8, !tbaa !219
  br i1 %5, label %12, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds ptr, ptr %8, i64 29
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(1000) %7, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %2)
  br label %15

12:                                               ; preds = %4
  %13 = getelementptr inbounds ptr, ptr %8, i64 28
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(1000) %7, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef null)
  br label %15

15:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(1200) %0) unnamed_addr #1 align 2 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !371
  %6 = getelementptr inbounds ptr, ptr %3, i64 %5
  %7 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !372
  %9 = icmp eq i64 %5, 0
  br i1 %9, label %23, label %10, !prof !373

10:                                               ; preds = %1, %20
  %11 = phi ptr [ %21, %20 ], [ %3, %1 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14, !prof !253

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !219
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(2064) %12) #17, !prof !374
  %17 = load ptr, ptr %8, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull %12), !prof !271
  br label %20

20:                                               ; preds = %14, %10
  %21 = getelementptr inbounds ptr, ptr %11, i64 1
  %22 = icmp eq ptr %21, %6
  br i1 %22, label %23, label %10, !prof !375, !llvm.loop !376

23:                                               ; preds = %20, %1
  %24 = load i64, ptr %4, align 8, !tbaa !371
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %27, label %26, !prof !253

26:                                               ; preds = %23
  store i64 0, ptr %4, align 8, !tbaa !371
  br label %27

27:                                               ; preds = %26, %23
  %28 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !247
  %30 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !377
  %32 = getelementptr inbounds ptr, ptr %29, i64 %31
  %33 = load ptr, ptr %7, align 8, !tbaa !372
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %48, label %35, !prof !373

35:                                               ; preds = %27, %45
  %36 = phi ptr [ %46, %45 ], [ %29, %27 ]
  %37 = load ptr, ptr %36, align 8, !tbaa !222
  %38 = icmp eq ptr %37, null
  br i1 %38, label %45, label %39, !prof !378

39:                                               ; preds = %35
  %40 = load ptr, ptr %37, align 8, !tbaa !219
  %41 = load ptr, ptr %40, align 8
  tail call void %41(ptr noundef nonnull align 8 dereferenceable(322) %37) #17, !prof !379
  %42 = load ptr, ptr %33, align 8, !tbaa !219
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %37), !prof !380
  br label %45

45:                                               ; preds = %39, %35
  %46 = getelementptr inbounds ptr, ptr %36, i64 1
  %47 = icmp eq ptr %46, %32
  br i1 %47, label %48, label %35, !prof !381, !llvm.loop !382

48:                                               ; preds = %45, %27
  %49 = load i64, ptr %30, align 8, !tbaa !377
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %52, label %51, !prof !253

51:                                               ; preds = %48
  store i64 0, ptr %30, align 8, !tbaa !377
  br label %52

52:                                               ; preds = %51, %48
  %53 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 2
  %54 = load ptr, ptr %53, align 8, !tbaa !383
  %55 = load ptr, ptr %54, align 8, !tbaa !219
  %56 = getelementptr inbounds ptr, ptr %55, i64 2
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(8) %54), !prof !384
  %58 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(112) %58)
  %59 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120) %59)
  %60 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %60)
  %61 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %61)
  %62 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %62)
  %63 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %63)
  %64 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %64)
  %65 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 17
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %65)
  %66 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 18
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %66)
  %67 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 19
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %67)
  %68 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 20
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %68)
  %69 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 21
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %69)
  %70 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 22
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %70)
  %71 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 23
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %71)
  %72 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 24
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %72)
  %73 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 25
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %73)
  %74 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 26
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %74)
  %75 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 27
  tail call void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %75)
  ret void
}

declare void @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %2, label %53, label %3, !prof !253

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !249, !noalias !385
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %15, !prof !253

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !385
  %9 = load ptr, ptr %8, align 8, !tbaa !219, !noalias !385
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8, !noalias !385
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef 32), !noalias !385
  store ptr %12, ptr %4, align 8, !tbaa !249, !noalias !385
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %12, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !254, !noalias !385
  %14 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %12, i64 0, i32 1
  store ptr %12, ptr %14, align 8, !tbaa !257, !noalias !385
  br label %15

15:                                               ; preds = %3, %7
  %16 = load ptr, ptr %4, align 8, !tbaa !249, !noalias !258
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26, !prof !253

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !388
  %20 = load ptr, ptr %19, align 8, !tbaa !219, !noalias !388
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8, !noalias !388
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32), !noalias !388
  store ptr %23, ptr %4, align 8, !tbaa !249, !noalias !388
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !254, !noalias !388
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !257, !noalias !388
  br label %26

26:                                               ; preds = %15, %18
  %27 = load ptr, ptr %4, align 8, !tbaa !249, !noalias !258
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %27, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !254, !noalias !388
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi ptr [ %29, %26 ], [ %37, %30 ]
  %32 = getelementptr inbounds %"struct.std::pair.209", ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !267
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %33, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !391
  store i64 %35, ptr %31, align 8, !tbaa !393
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %31, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !254, !noalias !394
  %38 = icmp eq ptr %37, %16
  br i1 %38, label %39, label %30, !prof !225, !llvm.loop !397

39:                                               ; preds = %30
  %40 = icmp eq ptr %27, null
  br i1 %40, label %41, label %49, !prof !253

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !398
  %43 = load ptr, ptr %42, align 8, !tbaa !219, !noalias !398
  %44 = getelementptr inbounds ptr, ptr %43, i64 2
  %45 = load ptr, ptr %44, align 8, !noalias !398
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef 32), !noalias !398
  store ptr %46, ptr %4, align 8, !tbaa !249, !noalias !398
  %47 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %46, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !254, !noalias !398
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %46, i64 0, i32 1
  store ptr %46, ptr %48, align 8, !tbaa !257, !noalias !398
  br label %49

49:                                               ; preds = %39, %41
  %50 = load ptr, ptr %4, align 8, !tbaa !249, !noalias !398
  %51 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !254, !noalias !398
  br label %53

53:                                               ; preds = %1, %49
  %54 = phi ptr [ %52, %49 ], [ null, %1 ]
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator.13", ptr %0, i64 0, i32 2
  store ptr %54, ptr %55, align 8, !tbaa !241
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !218 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !371
  %7 = add i64 %6, 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !292
  %10 = icmp ult i64 %9, %7
  br i1 %10, label %11, label %12, !prof !225

11:                                               ; preds = %2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %7)
  br label %12

12:                                               ; preds = %2, %11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #17
  %13 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !372
  %15 = tail call noundef ptr @_ZN11xalanc_1_1014StylesheetRoot6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(16) %0)
  store ptr %15, ptr %3, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %16 = load ptr, ptr %3, align 8, !tbaa !222
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #17
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare noundef ptr @_ZN11xalanc_1_1014StylesheetRoot6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(64) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %3 = load ptr, ptr %1, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 5
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(41) %1), !prof !401
  %7 = load ptr, ptr %0, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 5
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(16) %0), !prof !402
  %11 = icmp eq ptr %6, null
  br i1 %11, label %27, label %12, !prof !253

12:                                               ; preds = %2
  invoke void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 0, i32 noundef -1)
          to label %13 unwind label %17, !prof !225

13:                                               ; preds = %12
  %14 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %6)
          to label %15 unwind label %17, !prof !225

15:                                               ; preds = %13
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull %6, i32 noundef %14)
          to label %27 unwind label %17, !prof !225

17:                                               ; preds = %15, %13, %12, %27
  %18 = landingpad { ptr, i32 }
          cleanup
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 6
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %26 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #18
  unreachable

26:                                               ; preds = %17
  resume { ptr, i32 } %18

27:                                               ; preds = %15, %2
  %28 = load ptr, ptr %0, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 9
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %32 unwind label %17, !prof !403

32:                                               ; preds = %27
  %33 = load ptr, ptr %0, align 8, !tbaa !219
  %34 = getelementptr inbounds ptr, ptr %33, i64 6
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %40 unwind label %37, !prof !404

37:                                               ; preds = %32
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #18
  unreachable

40:                                               ; preds = %32
  ret ptr %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERNS_14StylesheetRootERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(2064) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !298 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !372
  %6 = tail call noundef ptr @_ZN11xalanc_1_1010Stylesheet6createERN11xercesc_2_713MemoryManagerERNS_14StylesheetRootERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(2064) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(16) %0)
  ret ptr %6
}

declare noundef ptr @_ZN11xalanc_1_1010Stylesheet6createERN11xercesc_2_713MemoryManagerERNS_14StylesheetRootERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(2064), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefault7destroyEPNS_14StylesheetRootE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !298 {
  %3 = alloca ptr, align 8
  store ptr %1, ptr %3, align 8, !tbaa !222
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !293
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 4, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !371
  %8 = getelementptr inbounds ptr, ptr %5, i64 %7
  %9 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1014StylesheetRootEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %5, ptr noundef %8, ptr nonnull %3)
  %10 = load ptr, ptr %4, align 8, !tbaa !293
  %11 = load i64, ptr %6, align 8, !tbaa !371
  %12 = getelementptr inbounds ptr, ptr %10, i64 %11
  %13 = icmp eq ptr %9, %12
  br i1 %13, label %30, label %14

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
  %22 = load i64, ptr %6, align 8, !tbaa !371
  %23 = add i64 %22, -1
  store i64 %23, ptr %6, align 8, !tbaa !371
  %24 = load ptr, ptr %3, align 8, !tbaa !222
  %25 = icmp eq ptr %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load ptr, ptr %24, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 1
  %29 = load ptr, ptr %28, align 8
  call void %29(ptr noundef nonnull align 8 dereferenceable(2064) %24) #17
  br label %30

30:                                               ; preds = %21, %26, %2
  %31 = load i64, ptr %6, align 8, !tbaa !371
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load ptr, ptr %0, align 8, !tbaa !219
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(1200) %0)
  br label %37

37:                                               ; preds = %33, %30
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16getURLFromStringERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %1, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !298 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !372
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !405, !noalias !406
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !noalias !406
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  tail call void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault22getURLStringFromStringERKNS_14XalanDOMStringERS1_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull returned align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !218 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !405
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8, !prof !253
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !409
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef %9, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16getURLFromStringERKNS_14XalanDOMStringES3_(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !372
  tail call void @_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #17
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %3)
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %6 unwind label %27

6:                                                ; preds = %4
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !405, !noalias !410
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !noalias !410
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11
  invoke void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8 %0, ptr noundef %12, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %13 unwind label %27

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %15 = load i64, ptr %14, align 8, !tbaa !413
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %26, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %10, align 8, !tbaa !414
  %19 = load ptr, ptr %5, align 8, !tbaa !415
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %18)
          to label %26 unwind label %23

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  call void @__clang_call_terminate(ptr %25) #18
  unreachable

26:                                               ; preds = %13, %17
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  ret void

27:                                               ; preds = %6, %4
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  %30 = load i64, ptr %29, align 8, !tbaa !413
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !414
  %35 = load ptr, ptr %5, align 8, !tbaa !415
  %36 = load ptr, ptr %35, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %34)
          to label %42 unwind label %39

39:                                               ; preds = %32
  %40 = landingpad { ptr, i32 }
          catch ptr null
  %41 = extractvalue { ptr, i32 } %40, 0
  call void @__clang_call_terminate(ptr %41) #18
  unreachable

42:                                               ; preds = %27, %32
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #17
  resume { ptr, i32 } %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull returned align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !298 {
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3)
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringERKNS_14XalanDOMStringES3_RS1_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #1 comdat align 2 !prof !298 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !405
  %6 = icmp eq i64 %5, 0
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8
  %9 = select i1 %6, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !405
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %9)
  %17 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %15)
  tail call void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef %9, i32 noundef %16, ptr noundef %15, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault19getXSLTNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !416 {
  %2 = load ptr, ptr @_ZN11xalanc_1_1014XSLTEngineImpl17s_XSLNameSpaceURLE, align 8, !tbaa !222
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 !prof !417 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !383
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8), !prof !418
  %13 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !228
  %15 = load ptr, ptr %0, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(1200) %0), !prof !419
  %19 = load ptr, ptr %14, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %18, i1 noundef zeroext %4, i1 noundef zeroext %5), !prof !420
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %12, i64 0, i32 2
  store i8 1, ptr %22, align 8, !tbaa !421
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %12, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !427
  ret ptr %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 !prof !417 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, i32 noundef -1)
  %8 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %2)
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %2, i32 noundef %8)
  %10 = load ptr, ptr %0, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 18
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5), !prof !428
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 !prof !429 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !383
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %8), !prof !430
  %13 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 3, i32 0, i32 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !228
  %15 = load ptr, ptr %0, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(1200) %0), !prof !431
  %19 = load ptr, ptr %14, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(129) %12, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %18, i1 noundef zeroext %4, i1 noundef zeroext %5), !prof !432
  %22 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %12, i64 0, i32 2
  store i8 1, ptr %22, align 8, !tbaa !421
  %23 = getelementptr inbounds %"class.xalanc_1_10::XPath", ptr %12, i64 0, i32 1
  store ptr %1, ptr %23, align 8, !tbaa !427
  ret ptr %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 !prof !433 {
  %7 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 0, i32 noundef -1)
  %8 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %2)
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %2, i32 noundef %8)
  %10 = load ptr, ptr %0, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 20
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, i1 noundef zeroext %4, i1 noundef zeroext %5), !prof !434
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtjRKNS_14PrefixResolverEbb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #1 align 2 !prof !298 {
  %8 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 7
  %9 = icmp eq i32 %3, -1
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 0, i32 noundef -1)
  br i1 %9, label %10, label %12

10:                                               ; preds = %7
  %11 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %2)
  br label %12

12:                                               ; preds = %7, %10
  %13 = phi i32 [ %11, %10 ], [ %3, %7 ]
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %2, i32 noundef %13)
  %15 = load ptr, ptr %0, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 20
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext %5, i1 noundef zeroext %6)
  ret ptr %18
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault19getLocatorFromStackEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0) unnamed_addr #8 align 2 !prof !435 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !299
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %3, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !436
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %13, label %7, !prof !438

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %3, i64 0, i32 8, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !439
  %10 = getelementptr ptr, ptr %9, i64 %5
  %11 = getelementptr ptr, ptr %10, i64 -1
  %12 = load ptr, ptr %11, align 8, !tbaa !222
  br label %13

13:                                               ; preds = %1, %7
  %14 = phi ptr [ %12, %7 ], [ null, %1 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18pushLocatorOnStackEPKN11xercesc_2_77LocatorE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !218 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !299
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3)
  store ptr %1, ptr %3, align 8, !tbaa !222
  %6 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %5, i64 0, i32 8
  call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15popLocatorStackEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0) unnamed_addr #9 align 2 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !299
  %4 = getelementptr inbounds %"class.xalanc_1_10::XSLTEngineImpl", ptr %3, i64 0, i32 8, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !436
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %9, label %7, !prof !253

7:                                                ; preds = %1
  %8 = add i64 %5, -1
  store i64 %8, ptr %4, align 8, !tbaa !436
  br label %9

9:                                                ; preds = %1, %7
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault23getXalanXSLNameSpaceURLEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !298 {
  %2 = load ptr, ptr @_ZN11xalanc_1_1014XSLTEngineImpl19s_XalanNamespaceURLE, align 8, !tbaa !222
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault8parseXMLERKNS_14XalanDOMStringEPN11xercesc_2_715DocumentHandlerEPNS_13XalanDocumentE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !299
  %7 = tail call noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl8parseXMLERKNS_14XalanDOMStringEPN11xercesc_2_715DocumentHandlerEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(1000) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3)
  ret ptr %7
}

declare noundef ptr @_ZN11xalanc_1_1014XSLTEngineImpl8parseXMLERKNS_14XalanDOMStringEPN11xercesc_2_715DocumentHandlerEPNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19isXMLSpaceAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !440 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef %3, i1 noundef zeroext true)
  %7 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 28
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret i1 %8
}

declare void @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1036StylesheetConstructionContextDefault30isXSLUseAttributeSetsAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !441 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef %3, i1 noundef zeroext true)
  %7 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 14
  %8 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %5)
  ret i1 %8
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1036StylesheetConstructionContextDefault12isValidQNameEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !298 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %5, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %6, ptr noundef %3, i1 noundef zeroext false)
  %7 = load ptr, ptr %5, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %10)
  ret i1 %11
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !442 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca ptr, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca ptr, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca ptr, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca ptr, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca ptr, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca ptr, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca ptr, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca ptr, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca ptr, align 8
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca ptr, align 8
  %39 = alloca i32, align 4
  %40 = alloca i32, align 4
  %41 = alloca ptr, align 8
  %42 = alloca i32, align 4
  %43 = alloca i32, align 4
  %44 = alloca ptr, align 8
  %45 = alloca i32, align 4
  %46 = alloca i32, align 4
  %47 = alloca ptr, align 8
  %48 = alloca i32, align 4
  %49 = alloca i32, align 4
  %50 = alloca ptr, align 8
  %51 = alloca i32, align 4
  %52 = alloca i32, align 4
  %53 = alloca ptr, align 8
  %54 = alloca ptr, align 8
  %55 = alloca ptr, align 8
  %56 = alloca ptr, align 8
  %57 = alloca ptr, align 8
  %58 = alloca ptr, align 8
  %59 = alloca ptr, align 8
  %60 = alloca ptr, align 8
  %61 = alloca ptr, align 8
  %62 = alloca ptr, align 8
  %63 = alloca ptr, align 8
  %64 = alloca ptr, align 8
  %65 = alloca ptr, align 8
  %66 = alloca ptr, align 8
  %67 = alloca ptr, align 8
  %68 = alloca ptr, align 8
  %69 = alloca ptr, align 8
  %70 = alloca ptr, align 8
  %71 = icmp eq ptr %4, null
  br i1 %71, label %77, label %72, !prof !443

72:                                               ; preds = %5
  %73 = load ptr, ptr %4, align 8, !tbaa !219
  %74 = getelementptr inbounds ptr, ptr %73, i64 4
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef i64 %75(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !444
  br label %77

77:                                               ; preds = %5, %72
  %78 = phi i64 [ %76, %72 ], [ -1, %5 ]
  br i1 %71, label %84, label %79, !prof !443

79:                                               ; preds = %77
  %80 = load ptr, ptr %4, align 8, !tbaa !219
  %81 = getelementptr inbounds ptr, ptr %80, i64 5
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef i64 %82(ptr noundef nonnull align 8 dereferenceable(8) %4), !prof !445
  br label %84

84:                                               ; preds = %77, %79
  %85 = phi i64 [ %83, %79 ], [ -1, %77 ]
  switch i32 %1, label %250 [
    i32 29, label %86
    i32 1, label %93
    i32 6, label %98
    i32 7, label %103
    i32 14, label %108
    i32 2, label %113
    i32 3, label %120
    i32 4, label %127
    i32 5, label %134
    i32 33, label %141
    i32 28, label %148
    i32 27, label %153
    i32 9, label %160
    i32 11, label %167
    i32 31, label %174
    i32 16, label %181
    i32 17, label %193
    i32 15, label %200
    i32 18, label %207
    i32 21, label %214
    i32 20, label %221
    i32 25, label %226
    i32 30, label %231
    i32 0, label %236
    i32 26, label %243
  ], !prof !446

86:                                               ; preds = %84
  %87 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %54) #17
  store ptr null, ptr %54, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %87, ptr noundef nonnull align 8 dereferenceable(8) %54)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %54) #17
  %88 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !372
  %90 = trunc i64 %78 to i32
  %91 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %51)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %52)
  store i32 %90, ptr %51, align 4, !tbaa !447
  store i32 %91, ptr %52, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %53) #17
  %92 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_15ElemApplyImportENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef nonnull align 8 dereferenceable(8) %53, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %51, ptr noundef nonnull align 4 dereferenceable(4) %52)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %53) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %51)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %52)
  br label %305

93:                                               ; preds = %84
  %94 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 17
  %95 = trunc i64 %78 to i32
  %96 = trunc i64 %85 to i32
  %97 = tail call noundef ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %94, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %95, i32 noundef %96)
  br label %313

98:                                               ; preds = %84
  %99 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 18
  %100 = trunc i64 %78 to i32
  %101 = trunc i64 %85 to i32
  %102 = tail call noundef ptr @_ZN11xalanc_1_1027XalanElemAttributeAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %99, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %100, i32 noundef %101)
  br label %313

103:                                              ; preds = %84
  %104 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 19
  %105 = trunc i64 %78 to i32
  %106 = trunc i64 %85 to i32
  %107 = tail call noundef ptr @_ZN11xalanc_1_1030XalanElemAttributeSetAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %104, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %105, i32 noundef %106)
  br label %313

108:                                              ; preds = %84
  %109 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 20
  %110 = trunc i64 %78 to i32
  %111 = trunc i64 %85 to i32
  %112 = tail call noundef ptr @_ZN11xalanc_1_1030XalanElemCallTemplateAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %109, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %110, i32 noundef %111)
  br label %313

113:                                              ; preds = %84
  %114 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %55) #17
  store ptr null, ptr %55, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(8) %55)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %55) #17
  %115 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !372
  %117 = trunc i64 %78 to i32
  %118 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %48)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %49)
  store i32 %117, ptr %48, align 4, !tbaa !447
  store i32 %118, ptr %49, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %50) #17
  %119 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ElemChooseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %116, ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %48, ptr noundef nonnull align 4 dereferenceable(4) %49)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %50) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %48)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %49)
  br label %305

120:                                              ; preds = %84
  %121 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %56) #17
  store ptr null, ptr %56, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %121, ptr noundef nonnull align 8 dereferenceable(8) %56)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %56) #17
  %122 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !372
  %124 = trunc i64 %78 to i32
  %125 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %45)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %46)
  store i32 %124, ptr %45, align 4, !tbaa !447
  store i32 %125, ptr %46, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %47) #17
  %126 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemCommentENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull align 8 dereferenceable(8) %47, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %45, ptr noundef nonnull align 4 dereferenceable(4) %46)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %47) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %45)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %46)
  br label %305

127:                                              ; preds = %84
  %128 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %57) #17
  store ptr null, ptr %57, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %128, ptr noundef nonnull align 8 dereferenceable(8) %57)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %57) #17
  %129 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %130 = load ptr, ptr %129, align 8, !tbaa !372
  %131 = trunc i64 %78 to i32
  %132 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %42)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %43)
  store i32 %131, ptr %42, align 4, !tbaa !447
  store i32 %132, ptr %43, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %44) #17
  %133 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemCopyENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %130, ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %42, ptr noundef nonnull align 4 dereferenceable(4) %43)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %44) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %42)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %43)
  br label %305

134:                                              ; preds = %84
  %135 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %58) #17
  store ptr null, ptr %58, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %135, ptr noundef nonnull align 8 dereferenceable(8) %58)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %58) #17
  %136 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %137 = load ptr, ptr %136, align 8, !tbaa !372
  %138 = trunc i64 %78 to i32
  %139 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %39)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %40)
  store i32 %138, ptr %39, align 4, !tbaa !447
  store i32 %139, ptr %40, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %41) #17
  %140 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ElemCopyOfENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %137, ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %39, ptr noundef nonnull align 4 dereferenceable(4) %40)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %41) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %39)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %40)
  br label %305

141:                                              ; preds = %84
  %142 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %59) #17
  store ptr null, ptr %59, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %142, ptr noundef nonnull align 8 dereferenceable(8) %59)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %59) #17
  %143 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %144 = load ptr, ptr %143, align 8, !tbaa !372
  %145 = trunc i64 %78 to i32
  %146 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %37)
  store i32 %145, ptr %36, align 4, !tbaa !447
  store i32 %146, ptr %37, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %38) #17
  %147 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_17ElemDecimalFormatENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %144, ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %36, ptr noundef nonnull align 4 dereferenceable(4) %37)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %38) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %36)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %37)
  br label %305

148:                                              ; preds = %84
  %149 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 21
  %150 = trunc i64 %78 to i32
  %151 = trunc i64 %85 to i32
  %152 = tail call noundef ptr @_ZN11xalanc_1_1025XalanElemElementAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %149, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %150, i32 noundef %151)
  br label %313

153:                                              ; preds = %84
  %154 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %60) #17
  store ptr null, ptr %60, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %154, ptr noundef nonnull align 8 dereferenceable(8) %60)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %60) #17
  %155 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %156 = load ptr, ptr %155, align 8, !tbaa !372
  %157 = trunc i64 %78 to i32
  %158 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %33)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %34)
  store i32 %157, ptr %33, align 4, !tbaa !447
  store i32 %158, ptr %34, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %35) #17
  %159 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_12ElemFallbackENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %156, ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %33, ptr noundef nonnull align 4 dereferenceable(4) %34)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %35) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %33)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %34)
  br label %305

160:                                              ; preds = %84
  %161 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %61) #17
  store ptr null, ptr %61, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %161, ptr noundef nonnull align 8 dereferenceable(8) %61)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %61) #17
  %162 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %163 = load ptr, ptr %162, align 8, !tbaa !372
  %164 = trunc i64 %78 to i32
  %165 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %30)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %31)
  store i32 %164, ptr %30, align 4, !tbaa !447
  store i32 %165, ptr %31, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %32) #17
  %166 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemForEachENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %163, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %30, ptr noundef nonnull align 4 dereferenceable(4) %31)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %32) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %30)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %31)
  br label %305

167:                                              ; preds = %84
  %168 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %62) #17
  store ptr null, ptr %62, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %168, ptr noundef nonnull align 8 dereferenceable(8) %62)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %62) #17
  %169 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !372
  %171 = trunc i64 %78 to i32
  %172 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %27)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %28)
  store i32 %171, ptr %27, align 4, !tbaa !447
  store i32 %172, ptr %28, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #17
  %173 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_6ElemIfENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %170, ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %27, ptr noundef nonnull align 4 dereferenceable(4) %28)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %27)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %28)
  br label %305

174:                                              ; preds = %84
  %175 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %63) #17
  store ptr null, ptr %63, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %175, ptr noundef nonnull align 8 dereferenceable(8) %63)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %63) #17
  %176 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %177 = load ptr, ptr %176, align 8, !tbaa !372
  %178 = trunc i64 %78 to i32
  %179 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %24)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %25)
  store i32 %178, ptr %24, align 4, !tbaa !447
  store i32 %179, ptr %25, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #17
  %180 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemMessageENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %177, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %24, ptr noundef nonnull align 4 dereferenceable(4) %25)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %24)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %25)
  br label %305

181:                                              ; preds = %84
  %182 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %64) #17
  store ptr null, ptr %64, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %182, ptr noundef nonnull align 8 dereferenceable(8) %64)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %64) #17
  %183 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %184 = load ptr, ptr %183, align 8, !tbaa !372
  %185 = trunc i64 %78 to i32
  %186 = trunc i64 %85 to i32
  %187 = getelementptr inbounds %"class.xalanc_1_10::Stylesheet", ptr %2, i64 0, i32 1
  %188 = load ptr, ptr %187, align 8, !tbaa !448
  %189 = getelementptr inbounds %"class.xalanc_1_10::StylesheetRoot", ptr %188, i64 0, i32 23
  %190 = load i64, ptr %189, align 8, !tbaa !488
  %191 = add i64 %190, 1
  store i64 %191, ptr %189, align 8, !tbaa !488
  %192 = call noundef ptr @_ZN11xalanc_1_1010ElemNumber6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEiim(ptr noundef nonnull align 8 dereferenceable(8) %184, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %185, i32 noundef %186, i64 noundef %190)
  br label %305

193:                                              ; preds = %84
  %194 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %65) #17
  store ptr null, ptr %65, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %194, ptr noundef nonnull align 8 dereferenceable(8) %65)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %65) #17
  %195 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %196 = load ptr, ptr %195, align 8, !tbaa !372
  %197 = trunc i64 %78 to i32
  %198 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %21)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22)
  store i32 %197, ptr %21, align 4, !tbaa !447
  store i32 %198, ptr %22, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #17
  %199 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemOtherwiseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %196, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %21, ptr noundef nonnull align 4 dereferenceable(4) %22)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %21)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22)
  br label %305

200:                                              ; preds = %84
  %201 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %66) #17
  store ptr null, ptr %66, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %201, ptr noundef nonnull align 8 dereferenceable(8) %66)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %66) #17
  %202 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %203 = load ptr, ptr %202, align 8, !tbaa !372
  %204 = trunc i64 %78 to i32
  %205 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19)
  store i32 %204, ptr %18, align 4, !tbaa !447
  store i32 %205, ptr %19, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #17
  %206 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_9ElemParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %203, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %18, ptr noundef nonnull align 4 dereferenceable(4) %19)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19)
  br label %305

207:                                              ; preds = %84
  %208 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %67) #17
  store ptr null, ptr %67, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %208, ptr noundef nonnull align 8 dereferenceable(8) %67)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %67) #17
  %209 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %210 = load ptr, ptr %209, align 8, !tbaa !372
  %211 = trunc i64 %78 to i32
  %212 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %15)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %16)
  store i32 %211, ptr %15, align 4, !tbaa !447
  store i32 %212, ptr %16, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #17
  %213 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_6ElemPIENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %210, ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %15, ptr noundef nonnull align 4 dereferenceable(4) %16)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %15)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %16)
  br label %305

214:                                              ; preds = %84
  %215 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %68) #17
  store ptr null, ptr %68, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %215, ptr noundef nonnull align 8 dereferenceable(8) %68)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %68) #17
  %216 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !372
  %218 = trunc i64 %78 to i32
  %219 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13)
  store i32 %218, ptr %12, align 4, !tbaa !447
  store i32 %219, ptr %13, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #17
  %220 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemSortENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %217, ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %12, ptr noundef nonnull align 4 dereferenceable(4) %13)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13)
  br label %305

221:                                              ; preds = %84
  %222 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 23
  %223 = trunc i64 %78 to i32
  %224 = trunc i64 %85 to i32
  %225 = tail call noundef ptr @_ZN11xalanc_1_1026XalanElemTemplateAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %222, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %223, i32 noundef %224)
  br label %313

226:                                              ; preds = %84
  %227 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 25
  %228 = trunc i64 %78 to i32
  %229 = trunc i64 %85 to i32
  %230 = tail call noundef ptr @_ZN11xalanc_1_1025XalanElemValueOfAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %227, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %228, i32 noundef %229)
  br label %313

231:                                              ; preds = %84
  %232 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 26
  %233 = trunc i64 %78 to i32
  %234 = trunc i64 %85 to i32
  %235 = tail call noundef ptr @_ZN11xalanc_1_1026XalanElemVariableAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %232, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %233, i32 noundef %234)
  br label %313

236:                                              ; preds = %84
  %237 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %69) #17
  store ptr null, ptr %69, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %237, ptr noundef nonnull align 8 dereferenceable(8) %69)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %69) #17
  %238 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %239 = load ptr, ptr %238, align 8, !tbaa !372
  %240 = trunc i64 %78 to i32
  %241 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %10)
  store i32 %240, ptr %9, align 4, !tbaa !447
  store i32 %241, ptr %10, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #17
  %242 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemWithParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %239, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %9, ptr noundef nonnull align 4 dereferenceable(4) %10)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %10)
  br label %305

243:                                              ; preds = %84
  %244 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %70) #17
  store ptr null, ptr %70, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %244, ptr noundef nonnull align 8 dereferenceable(8) %70)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %70) #17
  %245 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %246 = load ptr, ptr %245, align 8, !tbaa !372
  %247 = trunc i64 %78 to i32
  %248 = trunc i64 %85 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7)
  store i32 %247, ptr %6, align 4, !tbaa !447
  store i32 %248, ptr %7, align 4, !tbaa !447
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #17
  %249 = call noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemWhenENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %246, ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 4 dereferenceable(4) %6, ptr noundef nonnull align 4 dereferenceable(4) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #17
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7)
  br label %305

250:                                              ; preds = %84
  %251 = load ptr, ptr %0, align 8, !tbaa !219
  %252 = getelementptr inbounds ptr, ptr %251, i64 5
  %253 = load ptr, ptr %252, align 8
  %254 = tail call noundef nonnull align 8 dereferenceable(36) ptr %253(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %255 = load ptr, ptr %0, align 8, !tbaa !219
  %256 = getelementptr inbounds ptr, ptr %255, i64 5
  %257 = load ptr, ptr %256, align 8
  %258 = invoke noundef nonnull align 8 dereferenceable(36) ptr %257(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %259 unwind label %284

259:                                              ; preds = %250
  %260 = sext i32 %1 to i64
  %261 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %260, ptr noundef nonnull align 8 dereferenceable(36) %258)
          to label %262 unwind label %286

262:                                              ; preds = %259
  %263 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %254, i32 noundef 94, ptr noundef nonnull align 8 dereferenceable(36) %261)
          to label %264 unwind label %286

264:                                              ; preds = %262
  %265 = load ptr, ptr %0, align 8, !tbaa !219
  %266 = getelementptr inbounds ptr, ptr %265, i64 7
  %267 = load ptr, ptr %266, align 8
  invoke void %267(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %263, ptr noundef null, ptr noundef %4)
          to label %268 unwind label %286

268:                                              ; preds = %264
  %269 = load ptr, ptr %0, align 8, !tbaa !219
  %270 = getelementptr inbounds ptr, ptr %269, i64 6
  %271 = load ptr, ptr %270, align 8
  %272 = invoke noundef zeroext i1 %271(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %258)
          to label %276 unwind label %273

273:                                              ; preds = %268
  %274 = landingpad { ptr, i32 }
          catch ptr null
  %275 = extractvalue { ptr, i32 } %274, 0
  tail call void @__clang_call_terminate(ptr %275) #18
  unreachable

276:                                              ; preds = %268
  %277 = load ptr, ptr %0, align 8, !tbaa !219
  %278 = getelementptr inbounds ptr, ptr %277, i64 6
  %279 = load ptr, ptr %278, align 8
  %280 = invoke noundef zeroext i1 %279(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %254)
          to label %305 unwind label %281

281:                                              ; preds = %276
  %282 = landingpad { ptr, i32 }
          catch ptr null
  %283 = extractvalue { ptr, i32 } %282, 0
  tail call void @__clang_call_terminate(ptr %283) #18
  unreachable

284:                                              ; preds = %250
  %285 = landingpad { ptr, i32 }
          cleanup
  br label %295

286:                                              ; preds = %264, %262, %259
  %287 = landingpad { ptr, i32 }
          cleanup
  %288 = load ptr, ptr %0, align 8, !tbaa !219
  %289 = getelementptr inbounds ptr, ptr %288, i64 6
  %290 = load ptr, ptr %289, align 8
  %291 = invoke noundef zeroext i1 %290(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %258)
          to label %295 unwind label %292

292:                                              ; preds = %286
  %293 = landingpad { ptr, i32 }
          catch ptr null
  %294 = extractvalue { ptr, i32 } %293, 0
  tail call void @__clang_call_terminate(ptr %294) #18
  unreachable

295:                                              ; preds = %284, %286
  %296 = phi { ptr, i32 } [ %285, %284 ], [ %287, %286 ]
  %297 = load ptr, ptr %0, align 8, !tbaa !219
  %298 = getelementptr inbounds ptr, ptr %297, i64 6
  %299 = load ptr, ptr %298, align 8
  %300 = invoke noundef zeroext i1 %299(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %254)
          to label %304 unwind label %301

301:                                              ; preds = %295
  %302 = landingpad { ptr, i32 }
          catch ptr null
  %303 = extractvalue { ptr, i32 } %302, 0
  tail call void @__clang_call_terminate(ptr %303) #18
  unreachable

304:                                              ; preds = %295
  resume { ptr, i32 } %296

305:                                              ; preds = %276, %243, %236, %214, %207, %200, %193, %181, %174, %167, %160, %153, %141, %134, %127, %120, %113, %86
  %306 = phi ptr [ %249, %243 ], [ %242, %236 ], [ %220, %214 ], [ %213, %207 ], [ %206, %200 ], [ %199, %193 ], [ %192, %181 ], [ %180, %174 ], [ %173, %167 ], [ %166, %160 ], [ %159, %153 ], [ %147, %141 ], [ %140, %134 ], [ %133, %127 ], [ %126, %120 ], [ %119, %113 ], [ %92, %86 ], [ null, %276 ]
  %307 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 3
  %308 = load ptr, ptr %307, align 8, !tbaa !247
  %309 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 1
  %310 = load i64, ptr %309, align 8, !tbaa !377
  %311 = getelementptr ptr, ptr %308, i64 %310
  %312 = getelementptr ptr, ptr %311, i64 -1
  store ptr %306, ptr %312, align 8, !tbaa !222
  br label %313

313:                                              ; preds = %305, %231, %226, %221, %148, %108, %103, %98, %93
  %314 = phi ptr [ %306, %305 ], [ %235, %231 ], [ %230, %226 ], [ %225, %221 ], [ %152, %148 ], [ %112, %108 ], [ %107, %103 ], [ %102, %98 ], [ %97, %93 ]
  ret ptr %314
}

declare noundef ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1027XalanElemAttributeAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1030XalanElemAttributeSetAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1030XalanElemCallTemplateAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1025XalanElemElementAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1010ElemNumber6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEiim(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1026XalanElemTemplateAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1025XalanElemValueOfAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1026XalanElemVariableAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(1200) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !498 {
  %7 = alloca ptr, align 8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %15, label %9, !prof !499

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !500
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %6, %9
  %16 = phi i32 [ %14, %9 ], [ -1, %6 ]
  br i1 %8, label %23, label %17, !prof !499

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i64 %20(ptr noundef nonnull align 8 dereferenceable(8) %5), !prof !501
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %15, %17
  %24 = phi i32 [ %22, %17 ], [ -1, %15 ]
  switch i32 %1, label %39 [
    i32 35, label %25
    i32 37, label %28
  ], !prof !502

25:                                               ; preds = %23
  %26 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 22
  %27 = tail call noundef ptr @_ZN11xalanc_1_1031XalanElemLiteralResultAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40) %26, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %16, i32 noundef %24)
  br label %94

28:                                               ; preds = %23
  %29 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %30 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !372
  %32 = call noundef ptr @_ZN11xalanc_1_1021ElemForwardCompatible6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %16, i32 noundef %24)
  %33 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !247
  %35 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !377
  %37 = getelementptr ptr, ptr %34, i64 %36
  %38 = getelementptr ptr, ptr %37, i64 -1
  store ptr %32, ptr %38, align 8, !tbaa !222
  br label %94

39:                                               ; preds = %23
  %40 = load ptr, ptr %0, align 8, !tbaa !219
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef nonnull align 8 dereferenceable(36) ptr %42(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %44 = load ptr, ptr %0, align 8, !tbaa !219
  %45 = getelementptr inbounds ptr, ptr %44, i64 5
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef nonnull align 8 dereferenceable(36) ptr %46(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %48 unwind label %73

48:                                               ; preds = %39
  %49 = sext i32 %1 to i64
  %50 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1015LongToDOMStringElRNS_14XalanDOMStringE(i64 noundef %49, ptr noundef nonnull align 8 dereferenceable(36) %47)
          to label %51 unwind label %75

51:                                               ; preds = %48
  %52 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %43, i32 noundef 94, ptr noundef nonnull align 8 dereferenceable(36) %50)
          to label %53 unwind label %75

53:                                               ; preds = %51
  %54 = load ptr, ptr %0, align 8, !tbaa !219
  %55 = getelementptr inbounds ptr, ptr %54, i64 7
  %56 = load ptr, ptr %55, align 8
  invoke void %56(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %52, ptr noundef null, ptr noundef %5)
          to label %57 unwind label %75

57:                                               ; preds = %53
  %58 = load ptr, ptr %0, align 8, !tbaa !219
  %59 = getelementptr inbounds ptr, ptr %58, i64 6
  %60 = load ptr, ptr %59, align 8
  %61 = invoke noundef zeroext i1 %60(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %47)
          to label %65 unwind label %62

62:                                               ; preds = %57
  %63 = landingpad { ptr, i32 }
          catch ptr null
  %64 = extractvalue { ptr, i32 } %63, 0
  tail call void @__clang_call_terminate(ptr %64) #18
  unreachable

65:                                               ; preds = %57
  %66 = load ptr, ptr %0, align 8, !tbaa !219
  %67 = getelementptr inbounds ptr, ptr %66, i64 6
  %68 = load ptr, ptr %67, align 8
  %69 = invoke noundef zeroext i1 %68(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %43)
          to label %94 unwind label %70

70:                                               ; preds = %65
  %71 = landingpad { ptr, i32 }
          catch ptr null
  %72 = extractvalue { ptr, i32 } %71, 0
  tail call void @__clang_call_terminate(ptr %72) #18
  unreachable

73:                                               ; preds = %39
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %84

75:                                               ; preds = %53, %51, %48
  %76 = landingpad { ptr, i32 }
          cleanup
  %77 = load ptr, ptr %0, align 8, !tbaa !219
  %78 = getelementptr inbounds ptr, ptr %77, i64 6
  %79 = load ptr, ptr %78, align 8
  %80 = invoke noundef zeroext i1 %79(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %47)
          to label %84 unwind label %81

81:                                               ; preds = %75
  %82 = landingpad { ptr, i32 }
          catch ptr null
  %83 = extractvalue { ptr, i32 } %82, 0
  tail call void @__clang_call_terminate(ptr %83) #18
  unreachable

84:                                               ; preds = %73, %75
  %85 = phi { ptr, i32 } [ %74, %73 ], [ %76, %75 ]
  %86 = load ptr, ptr %0, align 8, !tbaa !219
  %87 = getelementptr inbounds ptr, ptr %86, i64 6
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef zeroext i1 %88(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %43)
          to label %93 unwind label %90

90:                                               ; preds = %84
  %91 = landingpad { ptr, i32 }
          catch ptr null
  %92 = extractvalue { ptr, i32 } %91, 0
  tail call void @__clang_call_terminate(ptr %92) #18
  unreachable

93:                                               ; preds = %84
  resume { ptr, i32 } %85

94:                                               ; preds = %65, %28, %25
  %95 = phi ptr [ %27, %25 ], [ %32, %28 ], [ null, %65 ]
  ret ptr %95
}

declare noundef ptr @_ZN11xalanc_1_1031XalanElemLiteralResultAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1021ElemForwardCompatible6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKNS1_13AttributeListEii(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListERNS_18ExtensionNSHandlerEPKNS5_7LocatorE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(1504) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 %4, ptr noundef %5) unnamed_addr #1 align 2 !prof !298 {
  %7 = alloca ptr, align 8
  %8 = icmp eq ptr %5, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %6
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %6, %9
  %16 = phi i32 [ %14, %9 ], [ -1, %6 ]
  br i1 %8, label %23, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %5, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i64 %20(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %15, %17
  %24 = phi i32 [ %22, %17 ], [ -1, %15 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #17
  store ptr null, ptr %7, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #17
  %26 = getelementptr inbounds %"class.xalanc_1_10::XPathConstructionContext", ptr %0, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !372
  %28 = call noundef ptr @_ZN11xalanc_1_1017ElemExtensionCall6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKNS1_13AttributeListEiiRNS_18ExtensionNSHandlerE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef %16, i32 noundef %24, ptr noundef nonnull align 1 %4)
  %29 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !247
  %31 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 16, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !377
  %33 = getelementptr ptr, ptr %30, i64 %32
  %34 = getelementptr ptr, ptr %33, i64 -1
  store ptr %28, ptr %34, align 8, !tbaa !222
  %35 = load ptr, ptr %29, align 8, !tbaa !247
  %36 = getelementptr ptr, ptr %35, i64 %32
  %37 = getelementptr ptr, ptr %36, i64 -1
  %38 = load ptr, ptr %37, align 8, !tbaa !222
  ret ptr %38
}

declare noundef ptr @_ZN11xalanc_1_1017ElemExtensionCall6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKNS1_13AttributeListEiiRNS_18ExtensionNSHandlerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef, ptr noundef nonnull align 1) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementERNS_10StylesheetEPKtjbbPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(1504) %1, ptr noundef %2, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr noundef %6) unnamed_addr #1 align 2 !prof !503 {
  %8 = icmp eq ptr %6, null
  br i1 %8, label %15, label %9, !prof !504

9:                                                ; preds = %7
  %10 = load ptr, ptr %6, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i64 %12(ptr noundef nonnull align 8 dereferenceable(8) %6), !prof !505
  %14 = trunc i64 %13 to i32
  br label %15

15:                                               ; preds = %7, %9
  %16 = phi i32 [ %14, %9 ], [ -1, %7 ]
  br i1 %8, label %23, label %17, !prof !504

17:                                               ; preds = %15
  %18 = load ptr, ptr %6, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 5
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i64 %20(ptr noundef nonnull align 8 dereferenceable(8) %6), !prof !506
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %15, %17
  %24 = phi i32 [ %22, %17 ], [ -1, %15 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 24
  %26 = tail call noundef ptr @_ZN11xalanc_1_1029XalanElemTextLiteralAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(1504) %1, i32 noundef %16, i32 noundef %24, ptr noundef %2, i32 noundef 0, i32 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5)
  ret ptr %26
}

declare noundef ptr @_ZN11xalanc_1_1029XalanElemTextLiteralAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault27createXalanMatchPatternDataERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %6) unnamed_addr #1 align 2 !prof !507 {
  %8 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 27
  %9 = tail call noundef ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocator6createERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(40) %8, ptr noundef nonnull align 8 dereferenceable(360) %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(129) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, i32 noundef %6)
  ret ptr %9
}

declare noundef ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocator6createERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(360), i64 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(129), ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault15getElementTokenERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1) unnamed_addr #1 align 2 !prof !508 {
  %3 = tail call noundef i32 @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19getElementNameTokenERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret i32 %3
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19getElementNameTokenERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #10 align 2 !prof !508 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  br label %5

5:                                                ; preds = %45, %1
  %6 = phi ptr [ getelementptr inbounds ([37 x %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry"], ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19s_elementTokenTableE, i64 0, i64 35, i32 0), %1 ], [ %46, %45 ]
  %7 = phi ptr [ @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19s_elementTokenTableE, %1 ], [ %47, %45 ]
  %8 = phi i32 [ undef, %1 ], [ %48, %45 ]
  %9 = icmp ugt ptr %7, %6
  br i1 %9, label %50, label %10, !prof !509

10:                                               ; preds = %5
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %7 to i64
  %13 = sub i64 %11, %12
  %14 = ashr exact i64 %13, 4
  %15 = sdiv i64 %14, 2
  %16 = getelementptr inbounds %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry", ptr %7, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !510
  %18 = load i64, ptr %2, align 8, !tbaa !405
  %19 = load ptr, ptr %3, align 8
  %20 = load i32, ptr %4, align 8, !tbaa !409
  br label %21

21:                                               ; preds = %21, %10
  %22 = phi ptr [ %17, %10 ], [ %25, %21 ]
  %23 = load i16, ptr %22, align 2, !tbaa !513
  %24 = icmp eq i16 %23, 0
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  br i1 %24, label %26, label %21, !prof !514, !llvm.loop !515

26:                                               ; preds = %21
  %27 = icmp eq i64 %18, 0
  %28 = select i1 %27, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19, !prof !509
  %29 = ptrtoint ptr %22 to i64
  %30 = ptrtoint ptr %17 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 1
  %33 = trunc i64 %32 to i32
  %34 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %28, i32 noundef %20, ptr noundef %17, i32 noundef %33)
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38, !prof !516

36:                                               ; preds = %26
  %37 = getelementptr inbounds %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry", ptr %16, i64 -1
  br label %45

38:                                               ; preds = %26
  %39 = icmp eq i32 %34, 0
  br i1 %39, label %42, label %40, !prof !517

40:                                               ; preds = %38
  %41 = getelementptr inbounds %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry", ptr %16, i64 1
  br label %45

42:                                               ; preds = %38
  %43 = getelementptr inbounds %"struct.xalanc_1_10::StylesheetConstructionContextDefault::ElementTokenTableEntry", ptr %7, i64 %15, i32 1
  %44 = load i32, ptr %43, align 8, !tbaa !518
  br label %45

45:                                               ; preds = %36, %40, %42
  %46 = phi ptr [ %6, %42 ], [ %37, %36 ], [ %6, %40 ]
  %47 = phi ptr [ %7, %42 ], [ %7, %36 ], [ %41, %40 ]
  %48 = phi i32 [ %44, %42 ], [ %8, %36 ], [ %8, %40 ]
  %49 = phi i1 [ false, %42 ], [ true, %36 ], [ true, %40 ]
  br i1 %49, label %5, label %50, !prof !519, !llvm.loop !520

50:                                               ; preds = %45, %5
  %51 = phi i32 [ -2, %5 ], [ %48, %45 ]
  ret i32 %51
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef double @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault23getXSLTVersionSupportedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !298 {
  ret double 1.000000e+00
}

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getPooledStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #10 align 2 !prof !521 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 5
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getPooledStringEPKtj(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !522 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 5
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112) %4, ptr noundef %1, i32 noundef %2)
  ret ptr %5
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getCachedStringEv(ptr noundef nonnull align 8 dereferenceable(1200) %0) unnamed_addr #10 align 2 !prof !523 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 9
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120) %2)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv(ptr noundef nonnull align 8 dereferenceable(120)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #10 align 2 !prof !523 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 9
  %4 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret i1 %4
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault26allocateXalanDOMCharVectorEj(ptr noundef nonnull align 8 dereferenceable(1200) %0, i32 noundef %1) unnamed_addr #1 align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 6
  %4 = zext i32 %1 to i64
  %5 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %4)
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !524 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !234
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %8, label %6, !prof !525

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %1)
  br label %25

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE9findEntryEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !526

11:                                               ; preds = %8
  %12 = load i64, ptr %3, align 8, !tbaa !234
  %13 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %12, i64 noundef %1)
  br label %25

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"struct.std::pair.216", ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !288
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !414
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %16, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !405
  %21 = load i64, ptr %9, align 8, !tbaa !527
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds i16, ptr %18, i64 %22
  %24 = sub i64 %21, %1
  store i64 %24, ptr %9, align 8, !tbaa !527
  br label %25

25:                                               ; preds = %11, %14, %6
  %26 = phi ptr [ %7, %6 ], [ %13, %11 ], [ %23, %14 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault26allocateXalanDOMCharVectorEPKtjb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 !prof !524 {
  %5 = icmp eq i32 %2, -1
  br i1 %5, label %6, label %8, !prof !528

6:                                                ; preds = %4
  %7 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  br label %8

8:                                                ; preds = %4, %6
  %9 = phi i32 [ %7, %6 ], [ %2, %4 ]
  %10 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 6
  %11 = zext i1 %3 to i32
  %12 = add i32 %9, %11
  %13 = zext i32 %12 to i64
  %14 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %10, i64 noundef %13)
  %15 = zext i32 %9 to i64
  %16 = shl nuw nsw i64 %15, 1
  %17 = icmp eq i32 %9, 0
  br i1 %17, label %19, label %18, !prof !528

18:                                               ; preds = %8
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %14, ptr align 2 %1, i64 %16, i1 false), !prof !529
  br label %19

19:                                               ; preds = %8, %18
  br i1 %3, label %20, label %22, !prof !530

20:                                               ; preds = %19
  %21 = getelementptr inbounds i8, ptr %14, i64 %16
  store i16 0, ptr %21, align 2, !tbaa !513
  br label %22

22:                                               ; preds = %20, %19
  ret ptr %14
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9createAVTEPKN11xercesc_2_77LocatorEPKtS6_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 align 2 !prof !531 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 10
  %7 = tail call noundef ptr @_ZN11xalanc_1_1017XalanAVTAllocator6createERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret ptr %7
}

declare noundef ptr @_ZN11xalanc_1_1017XalanAVTAllocator6createERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createAVTPartEPKtj(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !298 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 11
  %5 = tail call noundef ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocator6createERNS_29StylesheetConstructionContextEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2)
  ret ptr %5
}

declare noundef ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocator6createERNS_29StylesheetConstructionContextEPKtj(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createAVTPartEPKN11xercesc_2_77LocatorEPKtjRKNS_14PrefixResolverE(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 align 2 !prof !298 {
  %6 = load ptr, ptr %0, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i1 noundef zeroext true, i1 noundef zeroext true)
  %10 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 12
  %11 = tail call noundef ptr @_ZN11xalanc_1_1026XalanAVTPartXPathAllocator6createEPKNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef %9)
  ret ptr %11
}

declare noundef ptr @_ZN11xalanc_1_1026XalanAVTPartXPathAllocator6createEPKNS_5XPathE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault24allocateAVTPointerVectorEm(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 noundef %1) unnamed_addr #1 align 2 !prof !498 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15
  %4 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault28allocateAVTPartPointerVectorEm(ptr noundef nonnull align 8 dereferenceable(1200) %0, i64 noundef %1) unnamed_addr #1 align 2 !prof !298 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15
  %4 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %3, i64 noundef %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16createXalanQNameERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 !prof !298 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 13
  %7 = tail call noundef ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocator6createERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4)
  ret ptr %7
}

declare noundef ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocator6createERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16createXalanQNameEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #1 align 2 !prof !532 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 13
  %7 = tail call noundef ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocator6createEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(40) %6, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4)
  ret ptr %7
}

declare noundef ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocator6createEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault14tokenizeQNamesERmPKtRKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(1200) %0, ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %7 = alloca %"class.xalanc_1_10::StringTokenizer", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %7) #17
  call void @_ZN11xalanc_1_1015StringTokenizerC1EPKtS2_b(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef %2, ptr noundef nonnull @_ZN11xalanc_1_1015StringTokenizer15s_defaultTokensE, i1 noundef zeroext false)
  %8 = invoke noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %9 unwind label %11

9:                                                ; preds = %6
  store i64 %8, ptr %1, align 8, !tbaa !533
  %10 = icmp eq i64 %8, 0
  br i1 %10, label %54, label %13

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %56

13:                                               ; preds = %9
  %14 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 15
  %15 = invoke noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %14, i64 noundef %8)
          to label %16 unwind label %33

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 5
  %19 = load ptr, ptr %18, align 8
  %20 = invoke noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(16) %0)
          to label %21 unwind label %35

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xalanc_1_10::StylesheetConstructionContextDefault", ptr %0, i64 0, i32 13
  br label %23

23:                                               ; preds = %21, %30
  %24 = phi i64 [ %31, %30 ], [ 0, %21 ]
  %25 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %26 unwind label %37

26:                                               ; preds = %23
  br i1 %25, label %27, label %46

27:                                               ; preds = %26
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(36) %20)
          to label %28 unwind label %37

28:                                               ; preds = %27
  %29 = invoke noundef ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocator6createERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(40) %22, ptr noundef nonnull align 8 dereferenceable(36) %20, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %4, i1 noundef zeroext %5)
          to label %30 unwind label %37

30:                                               ; preds = %28
  %31 = add i64 %24, 1
  %32 = getelementptr inbounds ptr, ptr %15, i64 %24
  store ptr %29, ptr %32, align 8, !tbaa !222
  br label %23, !llvm.loop !534

33:                                               ; preds = %13
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %56

35:                                               ; preds = %16
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %56

37:                                               ; preds = %28, %27, %23
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = load ptr, ptr %0, align 8, !tbaa !219
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %20)
          to label %56 unwind label %43

43:                                               ; preds = %37
  %44 = landingpad { ptr, i32 }
          catch ptr null
  %45 = extractvalue { ptr, i32 } %44, 0
  call void @__clang_call_terminate(ptr %45) #18
  unreachable

46:                                               ; preds = %26
  %47 = load ptr, ptr %0, align 8, !tbaa !219
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %20)
          to label %54 unwind label %51

51:                                               ; preds = %46
  %52 = landingpad { ptr, i32 }
          catch ptr null
  %53 = extractvalue { ptr, i32 } %52, 0
  call void @__clang_call_terminate(ptr %53) #18
  unreachable

54:                                               ; preds = %46, %9
  %55 = phi ptr [ null, %9 ], [ %15, %46 ]
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  ret ptr %55

56:                                               ; preds = %35, %37, %33, %11
  %57 = phi { ptr, i32 } [ %12, %11 ], [ %34, %33 ], [ %36, %35 ], [ %38, %37 ]
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #17
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %7) #17
  resume { ptr, i32 } %57
}

declare void @_ZN11xalanc_1_1015StringTokenizerC1EPKtS2_b(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #2

declare noundef i64 @_ZNK11xalanc_1_1015StringTokenizer11countTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !535 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !413
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !536

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !414
  %8 = load ptr, ptr %0, align 8, !tbaa !415
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !537

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.5", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.5", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !538, !noalias !539
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !542, !noalias !539
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !539
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !539
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !539
  store ptr %11, ptr %3, align 8, !tbaa !538, !noalias !539
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !543, !noalias !539
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !545, !noalias !539
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !538, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !543, !noalias !539
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !542, !noalias !546
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !546
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !546
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !546
  store ptr %24, ptr %3, align 8, !tbaa !538, !noalias !546
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !543, !noalias !546
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !545, !noalias !546
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !538, !noalias !546
  %29 = load ptr, ptr %2, align 8, !tbaa !542
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !266

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !253

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !271
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !543, !noalias !549
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !552

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.6", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !538, !noalias !553
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !542, !noalias !553
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !553
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !553
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !553
  store ptr %10, ptr %2, align 8, !tbaa !538, !noalias !553
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !543, !noalias !553
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !545, !noalias !553
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !538, !noalias !553
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !543, !noalias !553
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !538, !noalias !556
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !246

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !542, !noalias !556
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !556
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !556
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !556
  store ptr %26, ptr %2, align 8, !tbaa !538, !noalias !556
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !543, !noalias !556
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !545, !noalias !556
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !538, !noalias !556
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !559

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.6", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !543
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !545
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !543
  %39 = load ptr, ptr %34, align 8, !tbaa !543
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVT> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !545
  store ptr null, ptr %36, align 8, !tbaa !545
  %41 = load ptr, ptr %33, align 8, !tbaa !560
  store ptr %41, ptr %34, align 8, !tbaa !543
  store ptr %18, ptr %33, align 8, !tbaa !560
  br label %17, !llvm.loop !561

42:                                               ; preds = %29
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !562
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !565
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !253

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !566
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !271

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !565
  %23 = getelementptr inbounds %"class.xalanc_1_10::AVT", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(48) %23) #17, !prof !567
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !562
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !568, !llvm.loop !569
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.7", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.7", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !570, !noalias !571
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !266

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !574, !noalias !571
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !571
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !571
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !575, !noalias !571
  store ptr %11, ptr %3, align 8, !tbaa !570, !noalias !571
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !576, !noalias !571
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !578, !noalias !571
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !570, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !576, !noalias !571
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !574, !noalias !579
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !579
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !579
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !579
  store ptr %24, ptr %3, align 8, !tbaa !570, !noalias !579
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !576, !noalias !579
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !578, !noalias !579
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !570, !noalias !579
  %29 = load ptr, ptr %2, align 8, !tbaa !574
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !225

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_13AVTPartSimpleEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !576, !noalias !582
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !585

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.8", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !570, !noalias !586
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !574, !noalias !586
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !586
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !586
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !586
  store ptr %10, ptr %2, align 8, !tbaa !570, !noalias !586
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !576, !noalias !586
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !578, !noalias !586
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !570, !noalias !586
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !576, !noalias !586
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !570, !noalias !589
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !265

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !574, !noalias !589
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !589
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !589
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !589
  store ptr %26, ptr %2, align 8, !tbaa !570, !noalias !589
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !576, !noalias !589
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !578, !noalias !589
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !570, !noalias !589
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !295

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.8", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !576
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !578
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !576
  %39 = load ptr, ptr %34, align 8, !tbaa !576
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartSimple> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !578
  store ptr null, ptr %36, align 8, !tbaa !578
  %41 = load ptr, ptr %33, align 8, !tbaa !592
  store ptr %41, ptr %34, align 8, !tbaa !576
  store ptr %18, ptr %33, align 8, !tbaa !592
  br label %17, !llvm.loop !593

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_13AVTPartSimpleEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.115", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !594
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.115", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.115", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !597
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !598
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !597
  %23 = getelementptr inbounds %"class.xalanc_1_10::AVTPartSimple", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(20) %23) #17
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !594
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !llvm.loop !599
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.9", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.9", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !600, !noalias !601
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !266

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !604, !noalias !601
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !601
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !601
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !575, !noalias !601
  store ptr %11, ptr %3, align 8, !tbaa !600, !noalias !601
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !605, !noalias !601
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !607, !noalias !601
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !600, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !605, !noalias !601
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !604, !noalias !608
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !608
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !608
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !608
  store ptr %24, ptr %3, align 8, !tbaa !600, !noalias !608
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !605, !noalias !608
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !607, !noalias !608
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !600, !noalias !608
  %29 = load ptr, ptr %2, align 8, !tbaa !604
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !225

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_12AVTPartXPathEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !605, !noalias !611
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !614

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.10", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !600, !noalias !615
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !604, !noalias !615
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !615
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !615
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !615
  store ptr %10, ptr %2, align 8, !tbaa !600, !noalias !615
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !605, !noalias !615
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !607, !noalias !615
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !600, !noalias !615
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !605, !noalias !615
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !600, !noalias !618
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !265

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !604, !noalias !618
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !618
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !618
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !618
  store ptr %26, ptr %2, align 8, !tbaa !600, !noalias !618
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !605, !noalias !618
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !607, !noalias !618
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !600, !noalias !618
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !295

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.10", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !605
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !607
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !605
  %39 = load ptr, ptr %34, align 8, !tbaa !605
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::AVTPartXPath> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !607
  store ptr null, ptr %36, align 8, !tbaa !607
  %41 = load ptr, ptr %33, align 8, !tbaa !621
  store ptr %41, ptr %34, align 8, !tbaa !605
  store ptr %18, ptr %33, align 8, !tbaa !621
  br label %17, !llvm.loop !622

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_12AVTPartXPathEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.122", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !623
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.122", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.122", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !626
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !627
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !626
  %23 = getelementptr inbounds %"class.xalanc_1_10::AVTPartXPath", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(16) %23) #17
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !623
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !llvm.loop !628
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.11", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.11", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !629, !noalias !630
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !633, !noalias !630
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !630
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !630
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !630
  store ptr %11, ptr %3, align 8, !tbaa !629, !noalias !630
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !634, !noalias !630
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !636, !noalias !630
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !629, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !634, !noalias !630
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !633, !noalias !637
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !637
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !637
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !637
  store ptr %24, ptr %3, align 8, !tbaa !629, !noalias !637
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !634, !noalias !637
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !636, !noalias !637
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !629, !noalias !637
  %29 = load ptr, ptr %2, align 8, !tbaa !633
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !266

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !253

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_17XalanQNameByValueEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !271
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !634, !noalias !640
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !643

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.12", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !629, !noalias !644
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !633, !noalias !644
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !644
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !644
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !644
  store ptr %10, ptr %2, align 8, !tbaa !629, !noalias !644
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !634, !noalias !644
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !636, !noalias !644
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !629, !noalias !644
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !634, !noalias !644
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !629, !noalias !647
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !246

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !633, !noalias !647
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !647
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !647
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !647
  store ptr %26, ptr %2, align 8, !tbaa !629, !noalias !647
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !634, !noalias !647
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !636, !noalias !647
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !629, !noalias !647
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !559

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.12", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !634
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !636
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !634
  %39 = load ptr, ptr %34, align 8, !tbaa !634
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanQNameByValue> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !636
  store ptr null, ptr %36, align 8, !tbaa !636
  %41 = load ptr, ptr %33, align 8, !tbaa !650
  store ptr %41, ptr %34, align 8, !tbaa !634
  store ptr %18, ptr %33, align 8, !tbaa !650
  br label %17, !llvm.loop !651

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_17XalanQNameByValueEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.129", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !652
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.129", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.129", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !655
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !253

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !656
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !271

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !655
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(88) %23) #17, !prof !657
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !652
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !658, !llvm.loop !659
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.16", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.16", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !660, !noalias !661
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !664, !noalias !661
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !661
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !661
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !661
  store ptr %11, ptr %3, align 8, !tbaa !660, !noalias !661
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !665, !noalias !661
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !667, !noalias !661
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !660, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !665, !noalias !661
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !664, !noalias !668
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !668
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !668
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !668
  store ptr %24, ptr %3, align 8, !tbaa !660, !noalias !668
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !665, !noalias !668
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !667, !noalias !668
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !660, !noalias !668
  %29 = load ptr, ptr %2, align 8, !tbaa !664
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !373

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !671

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !672
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !665, !noalias !673
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !676, !llvm.loop !677

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.17", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !660, !noalias !678
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !664, !noalias !678
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !678
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !678
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !678
  store ptr %10, ptr %2, align 8, !tbaa !660, !noalias !678
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !665, !noalias !678
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !667, !noalias !678
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !660, !noalias !678
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !665, !noalias !678
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList.17", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !660, !noalias !681
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !289

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !664, !noalias !681
  %24 = load ptr, ptr %23, align 8, !tbaa !219, !noalias !681
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !681
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !681
  store ptr %27, ptr %2, align 8, !tbaa !660, !noalias !681
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !665, !noalias !681
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !667, !noalias !681
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !660, !noalias !681
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !684

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !665
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !667
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !665
  %39 = load ptr, ptr %34, align 8, !tbaa !665
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemApplyTemplates> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !667
  store ptr null, ptr %36, align 8, !tbaa !667
  %41 = load ptr, ptr %17, align 8, !tbaa !685
  store ptr %41, ptr %34, align 8, !tbaa !665
  store ptr %19, ptr %17, align 8, !tbaa !685
  br label %18, !llvm.loop !686

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !687 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.136", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !688
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.136", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.136", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !691
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !671

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !692
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !672

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !691
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemApplyTemplates", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(384) %23) #17, !prof !693
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !688
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !694, !llvm.loop !695
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.18", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.18", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !696, !noalias !697
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !700, !noalias !697
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !697
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !697
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !697
  store ptr %11, ptr %3, align 8, !tbaa !696, !noalias !697
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !701, !noalias !697
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !703, !noalias !697
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !696, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !701, !noalias !697
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !700, !noalias !704
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !704
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !704
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !704
  store ptr %24, ptr %3, align 8, !tbaa !696, !noalias !704
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !701, !noalias !704
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !703, !noalias !704
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !696, !noalias !704
  %29 = load ptr, ptr %2, align 8, !tbaa !700
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !266

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !253

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_13ElemAttributeEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !271
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !701, !noalias !707
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !710

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.19", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !696, !noalias !711
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !700, !noalias !711
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !711
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !711
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !711
  store ptr %10, ptr %2, align 8, !tbaa !696, !noalias !711
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !701, !noalias !711
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !703, !noalias !711
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !696, !noalias !711
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !701, !noalias !711
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !696, !noalias !714
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !246

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !700, !noalias !714
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !714
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !714
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !714
  store ptr %26, ptr %2, align 8, !tbaa !696, !noalias !714
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !701, !noalias !714
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !703, !noalias !714
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !696, !noalias !714
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !559

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.19", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !701
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !703
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !701
  %39 = load ptr, ptr %34, align 8, !tbaa !701
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttribute> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !703
  store ptr null, ptr %36, align 8, !tbaa !703
  %41 = load ptr, ptr %33, align 8, !tbaa !717
  store ptr %41, ptr %34, align 8, !tbaa !701
  store ptr %18, ptr %33, align 8, !tbaa !717
  br label %17, !llvm.loop !718

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_13ElemAttributeEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.143", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !719
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.143", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.143", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !722
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !253

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !723
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !271

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !722
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemAttribute", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(344) %23) #17, !prof !724
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !719
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !725, !llvm.loop !726
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.20", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.20", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !727, !noalias !728
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !266

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !731, !noalias !728
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !728
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !728
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !575, !noalias !728
  store ptr %11, ptr %3, align 8, !tbaa !727, !noalias !728
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !732, !noalias !728
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !734, !noalias !728
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !727, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !732, !noalias !728
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !731, !noalias !735
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !735
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !735
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !735
  store ptr %24, ptr %3, align 8, !tbaa !727, !noalias !735
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !732, !noalias !735
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !734, !noalias !735
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !727, !noalias !735
  %29 = load ptr, ptr %2, align 8, !tbaa !731
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !225

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_16ElemAttributeSetEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !732, !noalias !738
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !741

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.21", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !727, !noalias !742
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !731, !noalias !742
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !742
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !742
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !742
  store ptr %10, ptr %2, align 8, !tbaa !727, !noalias !742
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !732, !noalias !742
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !734, !noalias !742
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !727, !noalias !742
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !732, !noalias !742
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !727, !noalias !745
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !265

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !731, !noalias !745
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !745
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !745
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !745
  store ptr %26, ptr %2, align 8, !tbaa !727, !noalias !745
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !732, !noalias !745
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !734, !noalias !745
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !727, !noalias !745
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !295

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.21", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !732
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !734
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !732
  %39 = load ptr, ptr %34, align 8, !tbaa !732
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemAttributeSet> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !734
  store ptr null, ptr %36, align 8, !tbaa !734
  %41 = load ptr, ptr %33, align 8, !tbaa !748
  store ptr %41, ptr %34, align 8, !tbaa !732
  store ptr %18, ptr %33, align 8, !tbaa !748
  br label %17, !llvm.loop !749

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_16ElemAttributeSetEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.150", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !750
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.150", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.150", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !753
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !754
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !753
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemAttributeSet", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(352) %23) #17
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !750
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !llvm.loop !755
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.22", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.22", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !756, !noalias !757
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !760, !noalias !757
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !757
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !757
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !757
  store ptr %11, ptr %3, align 8, !tbaa !756, !noalias !757
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !761, !noalias !757
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !763, !noalias !757
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !756, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !761, !noalias !757
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !760, !noalias !764
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !764
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !764
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !764
  store ptr %24, ptr %3, align 8, !tbaa !756, !noalias !764
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !761, !noalias !764
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !763, !noalias !764
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !756, !noalias !764
  %29 = load ptr, ptr %2, align 8, !tbaa !760
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !266

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !253

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_16ElemCallTemplateEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !271
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !761, !noalias !767
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !770

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.23", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !756, !noalias !771
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !760, !noalias !771
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !771
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !771
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !771
  store ptr %10, ptr %2, align 8, !tbaa !756, !noalias !771
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !761, !noalias !771
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !763, !noalias !771
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !756, !noalias !771
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !761, !noalias !771
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !756, !noalias !774
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !246

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !760, !noalias !774
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !774
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !774
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !774
  store ptr %26, ptr %2, align 8, !tbaa !756, !noalias !774
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !761, !noalias !774
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !763, !noalias !774
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !756, !noalias !774
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !559

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.23", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !761
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !763
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !761
  %39 = load ptr, ptr %34, align 8, !tbaa !761
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemCallTemplate> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !763
  store ptr null, ptr %36, align 8, !tbaa !763
  %41 = load ptr, ptr %33, align 8, !tbaa !777
  store ptr %41, ptr %34, align 8, !tbaa !761
  store ptr %18, ptr %33, align 8, !tbaa !777
  br label %17, !llvm.loop !778

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_16ElemCallTemplateEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.157", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !779
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.157", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.157", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !782
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !253

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !783
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !271

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !782
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemCallTemplate", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(344) %23) #17, !prof !784
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !779
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !694, !llvm.loop !785
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.24", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.24", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !786, !noalias !787
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !266

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !790, !noalias !787
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !787
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !787
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !prof !575, !noalias !787
  store ptr %11, ptr %3, align 8, !tbaa !786, !noalias !787
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !791, !noalias !787
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !793, !noalias !787
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !786, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !791, !noalias !787
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !790, !noalias !794
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !794
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !794
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !794
  store ptr %24, ptr %3, align 8, !tbaa !786, !noalias !794
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !791, !noalias !794
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !793, !noalias !794
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !786, !noalias !794
  %29 = load ptr, ptr %2, align 8, !tbaa !790
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !225

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_11ElemElementEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33)
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !791, !noalias !797
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !800

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.25", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !786, !noalias !801
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !790, !noalias !801
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !801
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !801
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !801
  store ptr %10, ptr %2, align 8, !tbaa !786, !noalias !801
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !791, !noalias !801
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !793, !noalias !801
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !786, !noalias !801
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !791, !noalias !801
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !786, !noalias !804
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !265

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !790, !noalias !804
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !804
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !804
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !804
  store ptr %26, ptr %2, align 8, !tbaa !786, !noalias !804
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !791, !noalias !804
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !793, !noalias !804
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !786, !noalias !804
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !295

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.25", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !791
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !793
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !791
  %39 = load ptr, ptr %34, align 8, !tbaa !791
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemElement> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !793
  store ptr null, ptr %36, align 8, !tbaa !793
  %41 = load ptr, ptr %33, align 8, !tbaa !807
  store ptr %41, ptr %34, align 8, !tbaa !791
  store ptr %18, ptr %33, align 8, !tbaa !807
  br label %17, !llvm.loop !808

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_11ElemElementEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.164", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !809
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.164", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.164", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !812
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !813
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !812
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemElement", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(360) %23) #17
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !809
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !llvm.loop !814
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.26", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.26", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !815, !noalias !816
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !819, !noalias !816
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !816
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !816
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !816
  store ptr %11, ptr %3, align 8, !tbaa !815, !noalias !816
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !820, !noalias !816
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !822, !noalias !816
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !815, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !820, !noalias !816
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !819, !noalias !823
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !823
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !823
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !823
  store ptr %24, ptr %3, align 8, !tbaa !815, !noalias !823
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !820, !noalias !823
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !822, !noalias !823
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !815, !noalias !823
  %29 = load ptr, ptr %2, align 8, !tbaa !819
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !373

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !826

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_17ElemLiteralResultEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !827
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !820, !noalias !828
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !831, !llvm.loop !832

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.27", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !815, !noalias !833
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !819, !noalias !833
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !833
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !833
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !833
  store ptr %10, ptr %2, align 8, !tbaa !815, !noalias !833
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !820, !noalias !833
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !822, !noalias !833
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !815, !noalias !833
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !820, !noalias !833
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList.27", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !815, !noalias !836
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !839

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !819, !noalias !836
  %24 = load ptr, ptr %23, align 8, !tbaa !219, !noalias !836
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !836
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !836
  store ptr %27, ptr %2, align 8, !tbaa !815, !noalias !836
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !820, !noalias !836
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !822, !noalias !836
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !815, !noalias !836
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !840

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !820
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !822
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !820
  %39 = load ptr, ptr %34, align 8, !tbaa !820
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemLiteralResult> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !822
  store ptr null, ptr %36, align 8, !tbaa !822
  %41 = load ptr, ptr %17, align 8, !tbaa !841
  store ptr %41, ptr %34, align 8, !tbaa !820
  store ptr %19, ptr %17, align 8, !tbaa !841
  br label %18, !llvm.loop !842

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_17ElemLiteralResultEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !843 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.171", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !844
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !847

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.171", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.171", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !848
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !826

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !849
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !827

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !848
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemLiteralResult", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(364) %23) #17, !prof !850
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !844
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !851, !llvm.loop !852
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.28", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.28", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !853, !noalias !854
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !857, !noalias !854
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !854
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !854
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !854
  store ptr %11, ptr %3, align 8, !tbaa !853, !noalias !854
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !858, !noalias !854
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !860, !noalias !854
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !853, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !858, !noalias !854
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !857, !noalias !861
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !861
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !861
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !861
  store ptr %24, ptr %3, align 8, !tbaa !853, !noalias !861
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !858, !noalias !861
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !860, !noalias !861
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !853, !noalias !861
  %29 = load ptr, ptr %2, align 8, !tbaa !857
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !373

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !246

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_12ElemTemplateEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !248
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !858, !noalias !864
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !867, !llvm.loop !868

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.29", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !853, !noalias !869
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !857, !noalias !869
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !869
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !869
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !869
  store ptr %10, ptr %2, align 8, !tbaa !853, !noalias !869
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !858, !noalias !869
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !860, !noalias !869
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !853, !noalias !869
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !858, !noalias !869
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList.29", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !853, !noalias !872
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !875

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !857, !noalias !872
  %24 = load ptr, ptr %23, align 8, !tbaa !219, !noalias !872
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !872
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !872
  store ptr %27, ptr %2, align 8, !tbaa !853, !noalias !872
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !858, !noalias !872
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !860, !noalias !872
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !853, !noalias !872
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !876

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !858
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !860
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !858
  %39 = load ptr, ptr %34, align 8, !tbaa !858
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTemplate> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !860
  store ptr null, ptr %36, align 8, !tbaa !860
  %41 = load ptr, ptr %17, align 8, !tbaa !877
  store ptr %41, ptr %34, align 8, !tbaa !858
  store ptr %19, ptr %17, align 8, !tbaa !877
  br label %18, !llvm.loop !878

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_12ElemTemplateEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.178", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !879
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !882

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.178", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.178", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !883
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !246

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !884
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !248

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !883
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemTemplate", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(360) %23) #17, !prof !885
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !879
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !886, !llvm.loop !887
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.30", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.30", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !888, !noalias !889
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !892, !noalias !889
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !889
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !889
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !889
  store ptr %11, ptr %3, align 8, !tbaa !888, !noalias !889
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !893, !noalias !889
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !895, !noalias !889
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !888, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !893, !noalias !889
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !892, !noalias !896
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !896
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !896
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !896
  store ptr %24, ptr %3, align 8, !tbaa !888, !noalias !896
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !893, !noalias !896
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !895, !noalias !896
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !888, !noalias !896
  %29 = load ptr, ptr %2, align 8, !tbaa !892
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !373

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !899

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_15ElemTextLiteralEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !900
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !893, !noalias !901
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !904, !llvm.loop !905

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.31", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !888, !noalias !906
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !892, !noalias !906
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !906
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !906
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !906
  store ptr %10, ptr %2, align 8, !tbaa !888, !noalias !906
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !893, !noalias !906
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !895, !noalias !906
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !888, !noalias !906
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !893, !noalias !906
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList.31", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !888, !noalias !909
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !912

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !892, !noalias !909
  %24 = load ptr, ptr %23, align 8, !tbaa !219, !noalias !909
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !909
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !909
  store ptr %27, ptr %2, align 8, !tbaa !888, !noalias !909
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !893, !noalias !909
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !895, !noalias !909
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !888, !noalias !909
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !913

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !893
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !895
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !893
  %39 = load ptr, ptr %34, align 8, !tbaa !893
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemTextLiteral> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !895
  store ptr null, ptr %36, align 8, !tbaa !895
  %41 = load ptr, ptr %17, align 8, !tbaa !914
  store ptr %41, ptr %34, align 8, !tbaa !893
  store ptr %19, ptr %17, align 8, !tbaa !914
  br label %18, !llvm.loop !915

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_15ElemTextLiteralEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !916 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.185", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !917
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !920

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.185", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.185", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !921
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !899

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !922
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !900

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !921
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemTextLiteral", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(340) %23) #17, !prof !923
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !917
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !924, !llvm.loop !925
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.32", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.32", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !926, !noalias !927
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !930, !noalias !927
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !927
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !927
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !927
  store ptr %11, ptr %3, align 8, !tbaa !926, !noalias !927
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !931, !noalias !927
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !933, !noalias !927
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !926, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !931, !noalias !927
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !930, !noalias !934
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !934
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !934
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !934
  store ptr %24, ptr %3, align 8, !tbaa !926, !noalias !934
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !931, !noalias !934
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !933, !noalias !934
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !926, !noalias !934
  %29 = load ptr, ptr %2, align 8, !tbaa !930
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !373

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !286

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_11ElemValueOfEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !937
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !931, !noalias !938
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !941, !llvm.loop !942

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.33", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !926, !noalias !943
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !930, !noalias !943
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !943
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !943
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !943
  store ptr %10, ptr %2, align 8, !tbaa !926, !noalias !943
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !931, !noalias !943
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !933, !noalias !943
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !926, !noalias !943
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !931, !noalias !943
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList.33", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !926, !noalias !946
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !949

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !930, !noalias !946
  %24 = load ptr, ptr %23, align 8, !tbaa !219, !noalias !946
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !946
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !946
  store ptr %27, ptr %2, align 8, !tbaa !926, !noalias !946
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !931, !noalias !946
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !933, !noalias !946
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !926, !noalias !946
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !950

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !931
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !933
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !931
  %39 = load ptr, ptr %34, align 8, !tbaa !931
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemValueOf> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !933
  store ptr null, ptr %36, align 8, !tbaa !933
  %41 = load ptr, ptr %17, align 8, !tbaa !951
  store ptr %41, ptr %34, align 8, !tbaa !931
  store ptr %19, ptr %17, align 8, !tbaa !951
  br label %18, !llvm.loop !952

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_11ElemValueOfEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !953 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.192", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !954
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !957

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.192", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.192", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !958
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !286

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !959
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !937

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !958
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemValueOf", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(336) %23) #17, !prof !960
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !954
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !961, !llvm.loop !962
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.34", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.34", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !963, !noalias !964
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !967, !noalias !964
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !964
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !964
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !964
  store ptr %11, ptr %3, align 8, !tbaa !963, !noalias !964
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !968, !noalias !964
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !970, !noalias !964
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !963, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !968, !noalias !964
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !967, !noalias !971
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !971
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !971
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !971
  store ptr %24, ptr %3, align 8, !tbaa !963, !noalias !971
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !968, !noalias !971
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !970, !noalias !971
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !963, !noalias !971
  %29 = load ptr, ptr %2, align 8, !tbaa !967
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !266

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !253

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_12ElemVariableEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !271
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !968, !noalias !974
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !225, !llvm.loop !977

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.35", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !963, !noalias !978
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !967, !noalias !978
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !978
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !978
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !978
  store ptr %10, ptr %2, align 8, !tbaa !963, !noalias !978
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !968, !noalias !978
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !970, !noalias !978
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !963, !noalias !978
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !968, !noalias !978
  br label %17

17:                                               ; preds = %32, %13
  %18 = phi ptr [ %16, %13 ], [ %35, %32 ]
  %19 = load ptr, ptr %2, align 8, !tbaa !963, !noalias !981
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %29, !prof !246

21:                                               ; preds = %17
  %22 = load ptr, ptr %0, align 8, !tbaa !967, !noalias !981
  %23 = load ptr, ptr %22, align 8, !tbaa !219, !noalias !981
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8, !noalias !981
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef 24), !noalias !981
  store ptr %26, ptr %2, align 8, !tbaa !963, !noalias !981
  %27 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %26, i64 0, i32 2
  store ptr %26, ptr %27, align 8, !tbaa !968, !noalias !981
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %26, i64 0, i32 1
  store ptr %26, ptr %28, align 8, !tbaa !970, !noalias !981
  br label %29

29:                                               ; preds = %17, %21
  %30 = load ptr, ptr %2, align 8, !tbaa !963, !noalias !981
  %31 = icmp eq ptr %18, %30
  br i1 %31, label %42, label %32, !prof !559

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanList.35", ptr %0, i64 0, i32 2
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %18, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !968
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %18, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !970
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !968
  %39 = load ptr, ptr %34, align 8, !tbaa !968
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::ElemVariable> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !970
  store ptr null, ptr %36, align 8, !tbaa !970
  %41 = load ptr, ptr %33, align 8, !tbaa !984
  store ptr %41, ptr %34, align 8, !tbaa !968
  store ptr %18, ptr %33, align 8, !tbaa !984
  br label %17, !llvm.loop !985

42:                                               ; preds = %29
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_12ElemVariableEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.199", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !986
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !373

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.199", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.199", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !989
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !253

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !990
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !271

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %26, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !989
  %23 = getelementptr inbounds %"class.xalanc_1_10::ElemVariable", ptr %22, i64 %21
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(368) %23) #17, !prof !991
  %26 = add nuw i64 %21, 1
  %27 = load i64, ptr %2, align 8, !tbaa !986
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %20, label %7, !prof !373, !llvm.loop !992
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.36", ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %"class.xalanc_1_10::ArenaAllocator.36", ptr %0, i64 0, i32 2, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !993, !noalias !994
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !265

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !997, !noalias !994
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !994
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !994
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 24), !noalias !994
  store ptr %11, ptr %3, align 8, !tbaa !993, !noalias !994
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !998, !noalias !994
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !1000, !noalias !994
  br label %14

14:                                               ; preds = %1, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !993, !noalias !258
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %15, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !998, !noalias !994
  %18 = icmp eq ptr %15, null
  br i1 %18, label %19, label %27, !prof !265

19:                                               ; preds = %14
  %20 = load ptr, ptr %2, align 8, !tbaa !997, !noalias !1001
  %21 = load ptr, ptr %20, align 8, !tbaa !219, !noalias !1001
  %22 = getelementptr inbounds ptr, ptr %21, i64 2
  %23 = load ptr, ptr %22, align 8, !noalias !1001
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(8) %20, i64 noundef 24), !noalias !1001
  store ptr %24, ptr %3, align 8, !tbaa !993, !noalias !1001
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %24, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !998, !noalias !1001
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %24, i64 0, i32 1
  store ptr %24, ptr %26, align 8, !tbaa !1000, !noalias !1001
  br label %27

27:                                               ; preds = %14, %19
  %28 = load ptr, ptr %3, align 8, !tbaa !993, !noalias !1001
  %29 = load ptr, ptr %2, align 8, !tbaa !997
  %30 = icmp eq ptr %17, %28
  br i1 %30, label %43, label %31, !prof !373

31:                                               ; preds = %27, %39
  %32 = phi ptr [ %41, %39 ], [ %17, %27 ]
  %33 = load ptr, ptr %32, align 8, !tbaa !222
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !246

35:                                               ; preds = %31
  tail call void @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %33) #17
  %36 = load ptr, ptr %29, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef nonnull %33), !prof !248
  br label %39

39:                                               ; preds = %35, %31
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %32, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !998, !noalias !1004
  %42 = icmp eq ptr %41, %28
  br i1 %42, label %43, label %31, !prof !867, !llvm.loop !1007

43:                                               ; preds = %39, %27
  tail call void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !294 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.37", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !993, !noalias !1008
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !265

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !997, !noalias !1008
  %7 = load ptr, ptr %6, align 8, !tbaa !219, !noalias !1008
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8, !noalias !1008
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 24), !noalias !1008
  store ptr %10, ptr %2, align 8, !tbaa !993, !noalias !1008
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !998, !noalias !1008
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !1000, !noalias !1008
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !993, !noalias !1008
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !998, !noalias !1008
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanList.37", ptr %0, i64 0, i32 2
  br label %18

18:                                               ; preds = %33, %13
  %19 = phi ptr [ %16, %13 ], [ %35, %33 ]
  %20 = load ptr, ptr %2, align 8, !tbaa !993, !noalias !1011
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %30, !prof !875

22:                                               ; preds = %18
  %23 = load ptr, ptr %0, align 8, !tbaa !997, !noalias !1011
  %24 = load ptr, ptr %23, align 8, !tbaa !219, !noalias !1011
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8, !noalias !1011
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 24), !noalias !1011
  store ptr %27, ptr %2, align 8, !tbaa !993, !noalias !1011
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %27, i64 0, i32 2
  store ptr %27, ptr %28, align 8, !tbaa !998, !noalias !1011
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %27, i64 0, i32 1
  store ptr %27, ptr %29, align 8, !tbaa !1000, !noalias !1011
  br label %30

30:                                               ; preds = %18, %22
  %31 = load ptr, ptr %2, align 8, !tbaa !993, !noalias !1011
  %32 = icmp eq ptr %19, %31
  br i1 %32, label %42, label %33, !prof !876

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %19, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !998
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !1000
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %37, i64 0, i32 2
  store ptr %35, ptr %38, align 8, !tbaa !998
  %39 = load ptr, ptr %34, align 8, !tbaa !998
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::ArenaBlock<xalanc_1_10::XalanMatchPatternData> *>::Node", ptr %39, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !1000
  store ptr null, ptr %36, align 8, !tbaa !1000
  %41 = load ptr, ptr %17, align 8, !tbaa !1014
  store ptr %41, ptr %34, align 8, !tbaa !998
  store ptr %19, ptr %17, align 8, !tbaa !1014
  br label %18, !llvm.loop !1015

42:                                               ; preds = %30
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !244 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.206", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !1016
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %7, label %5, !prof !882

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.206", ptr %0, i64 0, i32 3
  br label %20

7:                                                ; preds = %20, %1
  %8 = getelementptr inbounds %"class.xalanc_1_10::ArenaBlockBase.206", ptr %0, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !1019
  %10 = icmp eq ptr %9, null
  br i1 %10, label %19, label %11, !prof !246

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !1020
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %9)
          to label %19 unwind label %16, !prof !248

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #18
  unreachable

19:                                               ; preds = %7, %11
  ret void

20:                                               ; preds = %5, %20
  %21 = phi i64 [ 0, %5 ], [ %24, %20 ]
  %22 = load ptr, ptr %6, align 8, !tbaa !1019
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanMatchPatternData", ptr %22, i64 %21, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %23) #17
  %24 = add nuw i64 %21, 1
  %25 = load i64, ptr %2, align 8, !tbaa !1016
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %20, label %7, !prof !1021, !llvm.loop !1022
}

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1010URISupport16getURLFromStringEPKtRN11xercesc_2_713MemoryManagerE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XalanAutoPtr") align 8, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjS2_jRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !294 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !436
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !1023
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !266

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !439
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !222
  store ptr %13, ptr %12, align 8, !tbaa !222
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !436
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !225
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !1024
  call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !225

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !1024
  %24 = load i64, ptr %4, align 8, !tbaa !436
  %25 = load i64, ptr %6, align 8, !tbaa !1023
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !439
  %28 = load ptr, ptr %3, align 8, !tbaa !1024
  store ptr %28, ptr %0, align 8, !tbaa !1024
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !436
  store i64 %30, ptr %4, align 8, !tbaa !436
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !1023
  store i64 %32, ptr %6, align 8, !tbaa !1023
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !439
  store ptr %34, ptr %26, align 8, !tbaa !439
  store ptr %23, ptr %3, align 8, !tbaa !1024
  store i64 %24, ptr %29, align 8, !tbaa !436
  store i64 %25, ptr %31, align 8, !tbaa !1023
  store ptr %27, ptr %33, align 8, !tbaa !439
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !225

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !1023
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !439
  %52 = load ptr, ptr %3, align 8, !tbaa !1024
  %53 = load ptr, ptr %52, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  store ptr %2, ptr %0, align 8, !tbaa !1024
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !436
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !225

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !1024
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !436
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !1023
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !439
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !439
  %24 = load i64, ptr %9, align 8, !tbaa !436
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !1024
  %28 = load i64, ptr %6, align 8, !tbaa !436
  %29 = load i64, ptr %7, align 8, !tbaa !1023
  %30 = load ptr, ptr %8, align 8, !tbaa !439
  %31 = load ptr, ptr %5, align 8, !tbaa !1024
  store ptr %31, ptr %0, align 8, !tbaa !1024
  %32 = load i64, ptr %14, align 8, !tbaa !436
  store i64 %32, ptr %6, align 8, !tbaa !436
  %33 = load i64, ptr %15, align 8, !tbaa !1023
  store i64 %33, ptr %7, align 8, !tbaa !1023
  %34 = load ptr, ptr %21, align 8, !tbaa !439
  store ptr %34, ptr %8, align 8, !tbaa !439
  store ptr %27, ptr %5, align 8, !tbaa !1024
  store i64 %28, ptr %14, align 8, !tbaa !436
  store i64 %29, ptr %15, align 8, !tbaa !1023
  store ptr %30, ptr %21, align 8, !tbaa !439
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !1023
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !439
  %50 = load ptr, ptr %5, align 8, !tbaa !1024
  %51 = load ptr, ptr %50, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !253

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !575
  store ptr %65, ptr %8, align 8, !tbaa !439
  store i64 %3, ptr %7, align 8, !tbaa !1023
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !436
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !439
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !1023
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !439
  %28 = load i64, ptr %12, align 8, !tbaa !436
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !222
  store ptr %34, ptr %32, align 8, !tbaa !222
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !1025

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !1024
  store ptr %42, ptr %5, align 8, !tbaa !1024
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !436
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !1023
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !219
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !439
  %51 = load i64, ptr %43, align 8, !tbaa !436
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !439
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !439
  %56 = load i64, ptr %43, align 8, !tbaa !436
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !439
  %60 = load i64, ptr %43, align 8, !tbaa !436
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !439
  %63 = load i64, ptr %12, align 8, !tbaa !436
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE6insertEPS4_PKS4_SA_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !1024
  %67 = load i64, ptr %12, align 8, !tbaa !436
  %68 = load i64, ptr %19, align 8, !tbaa !1023
  %69 = load ptr, ptr %15, align 8, !tbaa !439
  %70 = load ptr, ptr %5, align 8, !tbaa !1024
  store ptr %70, ptr %0, align 8, !tbaa !1024
  %71 = load i64, ptr %43, align 8, !tbaa !436
  store i64 %71, ptr %12, align 8, !tbaa !436
  %72 = load i64, ptr %44, align 8, !tbaa !1023
  store i64 %72, ptr %19, align 8, !tbaa !1023
  %73 = load ptr, ptr %50, align 8, !tbaa !439
  store ptr %73, ptr %15, align 8, !tbaa !439
  store ptr %66, ptr %5, align 8, !tbaa !1024
  store i64 %67, ptr %43, align 8, !tbaa !436
  store i64 %68, ptr %44, align 8, !tbaa !1023
  store ptr %69, ptr %50, align 8, !tbaa !439
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !219
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !1023
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !439
  %89 = load ptr, ptr %5, align 8, !tbaa !1024
  %90 = load ptr, ptr %89, align 8, !tbaa !219
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !1026

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !1027

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !1028

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
  store i64 %36, ptr %12, align 8, !tbaa !436
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.39", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !1024
  call void @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RNS1_13MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !1024
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !436
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !1023
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !439
  %12 = load ptr, ptr %3, align 8, !tbaa !1024
  store ptr %12, ptr %0, align 8, !tbaa !1024
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !436
  store i64 %14, ptr %6, align 8, !tbaa !436
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !1023
  store i64 %16, ptr %8, align 8, !tbaa !1023
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.39", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !439
  store ptr %18, ptr %10, align 8, !tbaa !439
  store ptr %5, ptr %3, align 8, !tbaa !1024
  store i64 %7, ptr %13, align 8, !tbaa !436
  store i64 %9, ptr %15, align 8, !tbaa !1023
  store ptr %11, ptr %17, align 8, !tbaa !439
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #14 comdat align 2 !prof !1029 {
  %3 = load ptr, ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !1030
  %7 = load ptr, ptr %1, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !1031
  %11 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %10)
  br i1 %11, label %12, label %22, !prof !1032

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !1033
  %17 = load ptr, ptr %1, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(36) ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !1034
  %21 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(36) %20)
  br label %22

22:                                               ; preds = %12, %2
  %23 = phi i1 [ false, %2 ], [ %21, %12 ]
  ret i1 %23
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !498 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator.13", ptr %0, i64 0, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !239
  %5 = icmp ugt i64 %4, %1
  br i1 %5, label %8, label %6, !prof !1035

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %1)
  br label %25

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE9findEntryEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14, !prof !1036

11:                                               ; preds = %8
  %12 = load i64, ptr %3, align 8, !tbaa !239
  %13 = tail call noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %12, i64 noundef %1)
  br label %25

14:                                               ; preds = %8
  %15 = getelementptr inbounds %"struct.std::pair.209", ptr %9, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !267
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !1037
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %16, i64 0, i32 1
  %20 = load i64, ptr %19, align 8, !tbaa !391
  %21 = load i64, ptr %9, align 8, !tbaa !393
  %22 = sub i64 %20, %21
  %23 = getelementptr inbounds ptr, ptr %18, i64 %22
  %24 = sub i64 %21, %1
  store i64 %24, ptr %9, align 8, !tbaa !393
  br label %25

25:                                               ; preds = %11, %14, %6
  %26 = phi ptr [ %7, %6 ], [ %13, %11 ], [ %23, %14 ]
  ret ptr %26
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %4 = alloca %"struct.std::pair.209", align 8
  %5 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %6 = load ptr, ptr %0, align 8, !tbaa !237
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !575
  store ptr %6, ptr %10, align 8, !tbaa !1038
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %10, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i64 0, ptr %4, align 8, !tbaa !393
  %12 = getelementptr inbounds %"struct.std::pair.209", ptr %4, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !267
  call void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !249, !noalias !1039
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24, !prof !253

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !1039
  %18 = load ptr, ptr %17, align 8, !tbaa !219, !noalias !1039
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8, !noalias !1039
  %21 = call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef 32), !noalias !1039
  store ptr %21, ptr %13, align 8, !tbaa !249, !noalias !1039
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %21, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !254, !noalias !1039
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %21, i64 0, i32 1
  store ptr %21, ptr %23, align 8, !tbaa !257, !noalias !1039
  br label %24

24:                                               ; preds = %3, %16
  %25 = load ptr, ptr %13, align 8, !tbaa !249, !noalias !1039
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !257, !noalias !1042
  %28 = getelementptr inbounds %"struct.std::pair.209", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !267
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #17
  store ptr null, ptr %5, align 8, !tbaa !222
  call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #17
  %30 = sub i64 %1, %2
  store i64 %30, ptr %27, align 8, !tbaa !393
  %31 = icmp eq i64 %1, %2
  br i1 %31, label %34, label %32, !prof !253

32:                                               ; preds = %24
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator.13", ptr %0, i64 0, i32 2
  store ptr %27, ptr %33, align 8, !tbaa !241
  br label %34

34:                                               ; preds = %32, %24
  %35 = load ptr, ptr %28, align 8, !tbaa !267
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !1037
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE9findEntryEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !498 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator.13", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !241
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !1036

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8, !tbaa !393
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %57, !prof !1045

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !249, !noalias !1046
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21, !prof !225

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !1046
  %15 = load ptr, ptr %14, align 8, !tbaa !219, !noalias !1046
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8, !noalias !1046
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 32), !prof !575, !noalias !1046
  store ptr %18, ptr %10, align 8, !tbaa !249, !noalias !1046
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %18, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !254, !noalias !1046
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %18, i64 0, i32 1
  store ptr %18, ptr %20, align 8, !tbaa !257, !noalias !1046
  br label %21

21:                                               ; preds = %9, %13
  %22 = load ptr, ptr %10, align 8, !tbaa !249, !noalias !258
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32, !prof !253

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !1049
  %26 = load ptr, ptr %25, align 8, !tbaa !219, !noalias !1049
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !1049
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !noalias !1049
  store ptr %29, ptr %10, align 8, !tbaa !249, !noalias !1049
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !254, !noalias !1049
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !257, !noalias !1049
  br label %32

32:                                               ; preds = %21, %24
  %33 = load ptr, ptr %10, align 8, !tbaa !249, !noalias !1049
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !254, !noalias !258
  %36 = icmp eq ptr %35, %22
  br i1 %36, label %55, label %37, !prof !225

37:                                               ; preds = %32, %50
  %38 = phi ptr [ %53, %50 ], [ %35, %32 ]
  %39 = phi ptr [ %51, %50 ], [ null, %32 ]
  %40 = load i64, ptr %38, align 8, !tbaa !393
  %41 = icmp eq i64 %40, %1
  br i1 %41, label %55, label %42

42:                                               ; preds = %37
  %43 = icmp ult i64 %40, %1
  br i1 %43, label %50, label %44

44:                                               ; preds = %42
  %45 = icmp eq ptr %39, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %44
  %47 = load i64, ptr %39, align 8, !tbaa !393
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %42, %46, %49
  %51 = phi ptr [ %38, %49 ], [ %39, %46 ], [ %39, %42 ]
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %38, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !254, !noalias !258
  %54 = icmp eq ptr %53, %22
  br i1 %54, label %55, label %37, !prof !225, !llvm.loop !1052

55:                                               ; preds = %50, %37, %32
  %56 = phi ptr [ null, %32 ], [ %51, %50 ], [ %38, %37 ]
  store ptr %56, ptr %3, align 8, !tbaa !241
  br label %57

57:                                               ; preds = %6, %55
  %58 = phi ptr [ %56, %55 ], [ %4, %6 ]
  ret ptr %58
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !249, !noalias !1053
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !253

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !1053
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !1053
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !1053
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !1053
  store ptr %11, ptr %3, align 8, !tbaa !249, !noalias !1053
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !254, !noalias !1053
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !257, !noalias !1053
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !249, !noalias !1053
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1056
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !225

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !254
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !237
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !575
  store ptr %27, ptr %16, align 8, !tbaa !1056
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !257
  store ptr %33, ptr %31, align 8, !tbaa !222
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !222
  %35 = load ptr, ptr %32, align 8, !tbaa !257
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !254
  store ptr %29, ptr %32, align 8, !tbaa !257
  store ptr %30, ptr %16, align 8, !tbaa !1056
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !391
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !253

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !225

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !1057
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !225

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1037
  %17 = getelementptr inbounds ptr, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !391
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !373

20:                                               ; preds = %14
  %21 = getelementptr inbounds ptr, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load ptr, ptr %2, align 8, !tbaa !222
  store ptr %25, ptr %23, align 8, !tbaa !222
  %26 = getelementptr inbounds ptr, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !1058, !llvm.loop !1059

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !391
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !391
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.208", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !1038
  call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !1038
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !391
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !1057
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1037
  %12 = load ptr, ptr %3, align 8, !tbaa !1038
  store ptr %12, ptr %0, align 8, !tbaa !1038
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !391
  store i64 %14, ptr %6, align 8, !tbaa !391
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !1057
  store i64 %16, ptr %8, align 8, !tbaa !1057
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !1037
  store ptr %18, ptr %10, align 8, !tbaa !1037
  store ptr %5, ptr %3, align 8, !tbaa !1038
  store i64 %7, ptr %13, align 8, !tbaa !391
  store i64 %9, ptr %15, align 8, !tbaa !1057
  store ptr %11, ptr %17, align 8, !tbaa !1037
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !225

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.208", align 8
  store ptr %2, ptr %0, align 8, !tbaa !1038
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !391
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !225

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !1038
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !391
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !1057
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !1037
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !1037
  %24 = load i64, ptr %9, align 8, !tbaa !391
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !1038
  %28 = load i64, ptr %6, align 8, !tbaa !391
  %29 = load i64, ptr %7, align 8, !tbaa !1057
  %30 = load ptr, ptr %8, align 8, !tbaa !1037
  %31 = load ptr, ptr %5, align 8, !tbaa !1038
  store ptr %31, ptr %0, align 8, !tbaa !1038
  %32 = load i64, ptr %14, align 8, !tbaa !391
  store i64 %32, ptr %6, align 8, !tbaa !391
  %33 = load i64, ptr %15, align 8, !tbaa !1057
  store i64 %33, ptr %7, align 8, !tbaa !1057
  %34 = load ptr, ptr %21, align 8, !tbaa !1037
  store ptr %34, ptr %8, align 8, !tbaa !1037
  store ptr %27, ptr %5, align 8, !tbaa !1038
  store i64 %28, ptr %14, align 8, !tbaa !391
  store i64 %29, ptr %15, align 8, !tbaa !1057
  store ptr %30, ptr %21, align 8, !tbaa !1037
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !1057
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !1037
  %50 = load ptr, ptr %5, align 8, !tbaa !1038
  %51 = load ptr, ptr %50, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !253

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !575
  store ptr %65, ptr %8, align 8, !tbaa !1037
  store i64 %3, ptr %7, align 8, !tbaa !1057
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !1057
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !253

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !1037
  %8 = load ptr, ptr %0, align 8, !tbaa !1038
  %9 = load ptr, ptr %8, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !271

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.208", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !391
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !1037
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !1057
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !1037
  %28 = load i64, ptr %12, align 8, !tbaa !391
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !222
  store ptr %34, ptr %32, align 8, !tbaa !222
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !1060

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !1038
  store ptr %42, ptr %5, align 8, !tbaa !1038
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !391
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !1057
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !219
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !1037
  %51 = load i64, ptr %43, align 8, !tbaa !391
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !1037
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !1037
  %56 = load i64, ptr %43, align 8, !tbaa !391
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !1037
  %60 = load i64, ptr %43, align 8, !tbaa !391
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !1037
  %63 = load i64, ptr %12, align 8, !tbaa !391
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !1038
  %67 = load i64, ptr %12, align 8, !tbaa !391
  %68 = load i64, ptr %19, align 8, !tbaa !1057
  %69 = load ptr, ptr %15, align 8, !tbaa !1037
  %70 = load ptr, ptr %5, align 8, !tbaa !1038
  store ptr %70, ptr %0, align 8, !tbaa !1038
  %71 = load i64, ptr %43, align 8, !tbaa !391
  store i64 %71, ptr %12, align 8, !tbaa !391
  %72 = load i64, ptr %44, align 8, !tbaa !1057
  store i64 %72, ptr %19, align 8, !tbaa !1057
  %73 = load ptr, ptr %50, align 8, !tbaa !1037
  store ptr %73, ptr %15, align 8, !tbaa !1037
  store ptr %66, ptr %5, align 8, !tbaa !1038
  store i64 %67, ptr %43, align 8, !tbaa !391
  store i64 %68, ptr %44, align 8, !tbaa !1057
  store ptr %69, ptr %50, align 8, !tbaa !1037
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !219
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !1057
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !1037
  %89 = load ptr, ptr %5, align 8, !tbaa !1038
  %90 = load ptr, ptr %89, align 8, !tbaa !219
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !1061

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !1062

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !1063

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
  store i64 %36, ptr %12, align 8, !tbaa !391
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.208", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !391
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !1057
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !1037
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !222
  store ptr %13, ptr %12, align 8, !tbaa !222
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !391
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !1038
  call void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !1038
  %24 = load i64, ptr %4, align 8, !tbaa !391
  %25 = load i64, ptr %6, align 8, !tbaa !1057
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !1037
  %28 = load ptr, ptr %3, align 8, !tbaa !1038
  store ptr %28, ptr %0, align 8, !tbaa !1038
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !391
  store i64 %30, ptr %4, align 8, !tbaa !391
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !1057
  store i64 %32, ptr %6, align 8, !tbaa !1057
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !1037
  store ptr %34, ptr %26, align 8, !tbaa !1037
  store ptr %23, ptr %3, align 8, !tbaa !1038
  store i64 %24, ptr %29, align 8, !tbaa !391
  store i64 %25, ptr %31, align 8, !tbaa !1057
  store ptr %27, ptr %33, align 8, !tbaa !1037
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !1057
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.208", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !1037
  %52 = load ptr, ptr %3, align 8, !tbaa !1038
  %53 = load ptr, ptr %52, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.0", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !272
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !253

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !276, !noalias !1064
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !272, !noalias !1067
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !286

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !232, !noalias !1067
  %14 = load ptr, ptr %13, align 8, !tbaa !219, !noalias !1067
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !1067
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !272, !noalias !1067
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !276, !noalias !1067
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !279, !noalias !1067
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !272, !noalias !1067
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !287

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !276, !noalias !1070
  %27 = load ptr, ptr %0, align 8, !tbaa !232
  %28 = load ptr, ptr %27, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !291, !llvm.loop !1073

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.0", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !1074
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !225

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !276
  %40 = load ptr, ptr %0, align 8, !tbaa !232
  %41 = load ptr, ptr %40, align 8, !tbaa !219
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !272
  %46 = load ptr, ptr %0, align 8, !tbaa !232
  %47 = load ptr, ptr %46, align 8, !tbaa !219
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !271

50:                                               ; preds = %44, %1
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

53:                                               ; preds = %24, %12
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5, !prof !253

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !254, !noalias !1075
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !249, !noalias !1078
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21, !prof !265

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !237, !noalias !1078
  %14 = load ptr, ptr %13, align 8, !tbaa !219, !noalias !1078
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !1078
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !249, !noalias !1078
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !254, !noalias !1078
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !257, !noalias !1078
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !249, !noalias !1078
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24, !prof !266

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !254, !noalias !1081
  %27 = load ptr, ptr %0, align 8, !tbaa !237
  %28 = load ptr, ptr %27, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !prof !271, !llvm.loop !1084

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !1056
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37, !prof !225

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !254
  %40 = load ptr, ptr %0, align 8, !tbaa !237
  %41 = load ptr, ptr %40, align 8, !tbaa !219
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !249
  %46 = load ptr, ptr %0, align 8, !tbaa !237
  %47 = load ptr, ptr %46, align 8, !tbaa !219
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55, !prof !271

50:                                               ; preds = %44, %1
  ret void

51:                                               ; preds = %37
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

53:                                               ; preds = %24, %12
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

55:                                               ; preds = %44
  %56 = landingpad { ptr, i32 }
          catch ptr null
  br label %57

57:                                               ; preds = %53, %55, %51
  %58 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ], [ %56, %55 ]
  %59 = extractvalue { ptr, i32 } %58, 0
  tail call void @__clang_call_terminate(ptr %59) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #1 comdat align 2 !prof !218 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList.14", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !249
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13, !prof !253

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !237
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !249
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !254
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !257
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !249
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !254
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26, !prof !253

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !237
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !249
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !254
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<const void *> *>>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !257
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !249
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !229
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !371
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !292
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !293
  %12 = load ptr, ptr %3, align 8, !tbaa !229
  store ptr %12, ptr %0, align 8, !tbaa !229
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !371
  store i64 %14, ptr %6, align 8, !tbaa !371
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !292
  store i64 %16, ptr %8, align 8, !tbaa !292
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !293
  store ptr %18, ptr %10, align 8, !tbaa !293
  store ptr %5, ptr %3, align 8, !tbaa !229
  store i64 %7, ptr %13, align 8, !tbaa !371
  store i64 %9, ptr %15, align 8, !tbaa !292
  store ptr %11, ptr %17, align 8, !tbaa !293
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !225

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !229
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !371
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !225

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !229
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !371
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !292
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !293
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !293
  %24 = load i64, ptr %9, align 8, !tbaa !371
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !229
  %28 = load i64, ptr %6, align 8, !tbaa !371
  %29 = load i64, ptr %7, align 8, !tbaa !292
  %30 = load ptr, ptr %8, align 8, !tbaa !293
  %31 = load ptr, ptr %5, align 8, !tbaa !229
  store ptr %31, ptr %0, align 8, !tbaa !229
  %32 = load i64, ptr %14, align 8, !tbaa !371
  store i64 %32, ptr %6, align 8, !tbaa !371
  %33 = load i64, ptr %15, align 8, !tbaa !292
  store i64 %33, ptr %7, align 8, !tbaa !292
  %34 = load ptr, ptr %21, align 8, !tbaa !293
  store ptr %34, ptr %8, align 8, !tbaa !293
  store ptr %27, ptr %5, align 8, !tbaa !229
  store i64 %28, ptr %14, align 8, !tbaa !371
  store i64 %29, ptr %15, align 8, !tbaa !292
  store ptr %30, ptr %21, align 8, !tbaa !293
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !292
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !293
  %50 = load ptr, ptr %5, align 8, !tbaa !229
  %51 = load ptr, ptr %50, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !253

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !575
  store ptr %65, ptr %8, align 8, !tbaa !293
  store i64 %3, ptr %7, align 8, !tbaa !292
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !371
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !293
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !292
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !293
  %28 = load i64, ptr %12, align 8, !tbaa !371
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !222
  store ptr %34, ptr %32, align 8, !tbaa !222
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !1085

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !229
  store ptr %42, ptr %5, align 8, !tbaa !229
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !371
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !292
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !219
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !293
  %51 = load i64, ptr %43, align 8, !tbaa !371
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !293
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !293
  %56 = load i64, ptr %43, align 8, !tbaa !371
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !293
  %60 = load i64, ptr %43, align 8, !tbaa !371
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !293
  %63 = load i64, ptr %12, align 8, !tbaa !371
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !229
  %67 = load i64, ptr %12, align 8, !tbaa !371
  %68 = load i64, ptr %19, align 8, !tbaa !292
  %69 = load ptr, ptr %15, align 8, !tbaa !293
  %70 = load ptr, ptr %5, align 8, !tbaa !229
  store ptr %70, ptr %0, align 8, !tbaa !229
  %71 = load i64, ptr %43, align 8, !tbaa !371
  store i64 %71, ptr %12, align 8, !tbaa !371
  %72 = load i64, ptr %44, align 8, !tbaa !292
  store i64 %72, ptr %19, align 8, !tbaa !292
  %73 = load ptr, ptr %50, align 8, !tbaa !293
  store ptr %73, ptr %15, align 8, !tbaa !293
  store ptr %66, ptr %5, align 8, !tbaa !229
  store i64 %67, ptr %43, align 8, !tbaa !371
  store i64 %68, ptr %44, align 8, !tbaa !292
  store ptr %69, ptr %50, align 8, !tbaa !293
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !219
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !292
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !293
  %89 = load ptr, ptr %5, align 8, !tbaa !229
  %90 = load ptr, ptr %89, align 8, !tbaa !219
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !1086

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !1087

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !1088

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
  store i64 %36, ptr %12, align 8, !tbaa !371
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !218 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !371
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !292
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !225

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !293
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !222
  store ptr %13, ptr %12, align 8, !tbaa !222
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !371
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !229
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !229
  %24 = load i64, ptr %4, align 8, !tbaa !371
  %25 = load i64, ptr %6, align 8, !tbaa !292
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !293
  %28 = load ptr, ptr %3, align 8, !tbaa !229
  store ptr %28, ptr %0, align 8, !tbaa !229
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !371
  store i64 %30, ptr %4, align 8, !tbaa !371
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !292
  store i64 %32, ptr %6, align 8, !tbaa !292
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !293
  store ptr %34, ptr %26, align 8, !tbaa !293
  store ptr %23, ptr %3, align 8, !tbaa !229
  store i64 %24, ptr %29, align 8, !tbaa !371
  store i64 %25, ptr %31, align 8, !tbaa !292
  store ptr %27, ptr %33, align 8, !tbaa !293
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !292
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !293
  %52 = load ptr, ptr %3, align 8, !tbaa !229
  %53 = load ptr, ptr %52, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_1014StylesheetRootEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #1 comdat !prof !298 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !222
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !222
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !222
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !222
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !222
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !1089

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
  %40 = load ptr, ptr %35, align 8, !tbaa !222
  %41 = load ptr, ptr %2, align 8, !tbaa !222
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !222
  %48 = load ptr, ptr %2, align 8, !tbaa !222
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !222
  %55 = load ptr, ptr %2, align 8, !tbaa !222
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1090 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.15", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !377
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !245
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !1091

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !222
  store ptr %13, ptr %12, align 8, !tbaa !222
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !377
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19, !prof !1092
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !242
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44, !prof !1093

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !242
  %24 = load i64, ptr %4, align 8, !tbaa !377
  %25 = load i64, ptr %6, align 8, !tbaa !245
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !247
  %28 = load ptr, ptr %3, align 8, !tbaa !242
  store ptr %28, ptr %0, align 8, !tbaa !242
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !377
  store i64 %30, ptr %4, align 8, !tbaa !377
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !245
  store i64 %32, ptr %6, align 8, !tbaa !245
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !247
  store ptr %34, ptr %26, align 8, !tbaa !247
  store ptr %23, ptr %3, align 8, !tbaa !242
  store i64 %24, ptr %29, align 8, !tbaa !377
  store i64 %25, ptr %31, align 8, !tbaa !245
  store ptr %27, ptr %33, align 8, !tbaa !247
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36, !prof !1092

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40, !prof !1094

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !245
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !247
  %52 = load ptr, ptr %3, align 8, !tbaa !242
  %53 = load ptr, ptr %52, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1095 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.15", align 8
  store ptr %2, ptr %0, align 8, !tbaa !242
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !377
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !1092

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !242
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !377
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !245
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !1096
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !247
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !247
  %24 = load i64, ptr %9, align 8, !tbaa !377
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !1097

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !242
  %28 = load i64, ptr %6, align 8, !tbaa !377
  %29 = load i64, ptr %7, align 8, !tbaa !245
  %30 = load ptr, ptr %8, align 8, !tbaa !247
  %31 = load ptr, ptr %5, align 8, !tbaa !242
  store ptr %31, ptr %0, align 8, !tbaa !242
  %32 = load i64, ptr %14, align 8, !tbaa !377
  store i64 %32, ptr %6, align 8, !tbaa !377
  %33 = load i64, ptr %15, align 8, !tbaa !245
  store i64 %33, ptr %7, align 8, !tbaa !245
  %34 = load ptr, ptr %21, align 8, !tbaa !247
  store ptr %34, ptr %8, align 8, !tbaa !247
  store ptr %27, ptr %5, align 8, !tbaa !242
  store i64 %28, ptr %14, align 8, !tbaa !377
  store i64 %29, ptr %15, align 8, !tbaa !245
  store ptr %30, ptr %21, align 8, !tbaa !247
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !1097

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !245
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !247
  %50 = load ptr, ptr %5, align 8, !tbaa !242
  %51 = load ptr, ptr %50, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !246

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !1098
  store ptr %65, ptr %8, align 8, !tbaa !247
  store i64 %3, ptr %7, align 8, !tbaa !245
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !441 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.15", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !839

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !377
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !247
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !245
  br i1 %18, label %21, label %39, !prof !1097

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !839

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !882

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !247
  %28 = load i64, ptr %12, align 8, !tbaa !377
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !222
  store ptr %34, ptr %32, align 8, !tbaa !222
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !1099, !llvm.loop !1100

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !242
  store ptr %42, ptr %5, align 8, !tbaa !242
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !377
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !245
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !219
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !247
  %51 = load i64, ptr %43, align 8, !tbaa !377
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !247
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !247
  %56 = load i64, ptr %43, align 8, !tbaa !377
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !247
  %60 = load i64, ptr %43, align 8, !tbaa !377
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !247
  %63 = load i64, ptr %12, align 8, !tbaa !377
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !242
  %67 = load i64, ptr %12, align 8, !tbaa !377
  %68 = load i64, ptr %19, align 8, !tbaa !245
  %69 = load ptr, ptr %15, align 8, !tbaa !247
  %70 = load ptr, ptr %5, align 8, !tbaa !242
  store ptr %70, ptr %0, align 8, !tbaa !242
  %71 = load i64, ptr %43, align 8, !tbaa !377
  store i64 %71, ptr %12, align 8, !tbaa !377
  %72 = load i64, ptr %44, align 8, !tbaa !245
  store i64 %72, ptr %19, align 8, !tbaa !245
  %73 = load ptr, ptr %50, align 8, !tbaa !247
  store ptr %73, ptr %15, align 8, !tbaa !247
  store ptr %66, ptr %5, align 8, !tbaa !242
  store i64 %67, ptr %43, align 8, !tbaa !377
  store i64 %68, ptr %44, align 8, !tbaa !245
  store ptr %69, ptr %50, align 8, !tbaa !247
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !219
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !245
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !247
  %89 = load ptr, ptr %5, align 8, !tbaa !242
  %90 = load ptr, ptr %89, align 8, !tbaa !219
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !1101

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !1102

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !1103

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
  store i64 %36, ptr %12, align 8, !tbaa !377
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !298 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.15", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %4 = load ptr, ptr %0, align 8, !tbaa !242
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !242
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !377
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !245
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !247
  %12 = load ptr, ptr %3, align 8, !tbaa !242
  store ptr %12, ptr %0, align 8, !tbaa !242
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !377
  store i64 %14, ptr %6, align 8, !tbaa !377
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !245
  store i64 %16, ptr %8, align 8, !tbaa !245
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.15", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !247
  store ptr %18, ptr %10, align 8, !tbaa !247
  store ptr %5, ptr %3, align 8, !tbaa !242
  store i64 %7, ptr %13, align 8, !tbaa !377
  store i64 %9, ptr %15, align 8, !tbaa !245
  store ptr %11, ptr %17, align 8, !tbaa !247
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_15ElemApplyImportENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 328)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1015ElemApplyImportC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1015ElemApplyImportC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ElemChooseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !294 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 328), !prof !1104
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1010ElemChooseC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15, !prof !295

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1010ElemChooseC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemCommentENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 328)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1011ElemCommentC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1011ElemCommentC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemCopyENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 344)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_108ElemCopyC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_108ElemCopyC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_10ElemCopyOfENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 336)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1010ElemCopyOfC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1010ElemCopyOfC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_17ElemDecimalFormatENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 544)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1017ElemDecimalFormatC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(544) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1017ElemDecimalFormatC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(544), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_12ElemFallbackENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 328)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1012ElemFallbackC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1012ElemFallbackC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemForEachENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !441 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 376), !prof !1096
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1011ElemForEachC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(376) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15, !prof !1097

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1011ElemForEachC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(376), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_6ElemIfENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 336)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_106ElemIfC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_106ElemIfC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemMessageENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 328)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1011ElemMessageC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(323) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1011ElemMessageC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(323), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemOtherwiseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !294 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 328), !prof !1104
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1013ElemOtherwiseC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15, !prof !295

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1013ElemOtherwiseC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(322), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_9ElemParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !1105 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 368), !prof !1106
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_109ElemParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15, !prof !1107

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_109ElemParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_6ElemPIENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 336)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_106ElemPIC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_106ElemPIC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemSortENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !298 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 368)
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_108ElemSortC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_108ElemSortC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(368), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemWithParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !1108 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 344), !prof !1109
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_1013ElemWithParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15, !prof !1110

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1013ElemWithParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(344), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemWhenENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 4 dereferenceable(4) %6) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !294 {
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 336), !prof !1104
  %12 = load i32, ptr %5, align 4, !tbaa !447
  %13 = load i32, ptr %6, align 4, !tbaa !447
  invoke void @_ZN11xalanc_1_108ElemWhenC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336) %11, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(1504) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef %12, i32 noundef %13)
          to label %14 unwind label %15, !prof !295

14:                                               ; preds = %7
  store ptr %11, ptr %1, align 8, !tbaa !222
  ret ptr %11

15:                                               ; preds = %7
  %16 = landingpad { ptr, i32 }
          cleanup
  %17 = icmp eq ptr %11, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %0, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %25 unwind label %22

22:                                               ; preds = %18
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  tail call void @__clang_call_terminate(ptr %24) #18
  unreachable

25:                                               ; preds = %15, %18
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_108ElemWhenC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii(ptr noundef nonnull align 8 dereferenceable(336), ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(1504), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE11createEntryEmm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1111 {
  %4 = alloca %"struct.std::pair.216", align 8
  %5 = alloca i16, align 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #17
  %6 = load ptr, ptr %0, align 8, !tbaa !232
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !1112
  store ptr %6, ptr %10, align 8, !tbaa !415
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %10, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  store i64 0, ptr %4, align 8, !tbaa !527
  %12 = getelementptr inbounds %"struct.std::pair.216", ptr %4, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !288
  call void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #17
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanList.0", ptr %0, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !272, !noalias !1113
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %24, !prof !289

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !232, !noalias !1113
  %18 = load ptr, ptr %17, align 8, !tbaa !219, !noalias !1113
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8, !noalias !1113
  %21 = call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef 32), !noalias !1113
  store ptr %21, ptr %13, align 8, !tbaa !272, !noalias !1113
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %21, i64 0, i32 2
  store ptr %21, ptr %22, align 8, !tbaa !276, !noalias !1113
  %23 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %21, i64 0, i32 1
  store ptr %21, ptr %23, align 8, !tbaa !279, !noalias !1113
  br label %24

24:                                               ; preds = %3, %16
  %25 = load ptr, ptr %13, align 8, !tbaa !272, !noalias !1113
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !279, !noalias !1116
  %28 = getelementptr inbounds %"struct.std::pair.216", ptr %27, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !288
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #17
  store i16 0, ptr %5, align 2, !tbaa !513
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %29, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %5)
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #17
  %30 = sub i64 %1, %2
  store i64 %30, ptr %27, align 8, !tbaa !527
  %31 = icmp eq i64 %1, %2
  br i1 %31, label %34, label %32, !prof !289

32:                                               ; preds = %24
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator", ptr %0, i64 0, i32 2
  store ptr %27, ptr %33, align 8, !tbaa !236
  br label %34

34:                                               ; preds = %32, %24
  %35 = load ptr, ptr %28, align 8, !tbaa !288
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !414
  ret ptr %37
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE9findEntryEm(ptr noundef nonnull align 8 dereferenceable(40) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 !prof !524 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanArrayAllocator", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !236
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6, !prof !1119

6:                                                ; preds = %2
  %7 = load i64, ptr %4, align 8, !tbaa !527
  %8 = icmp ult i64 %7, %1
  br i1 %8, label %9, label %57, !prof !1120

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanList.0", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !272, !noalias !1121
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %21, !prof !1124

13:                                               ; preds = %9
  %14 = load ptr, ptr %0, align 8, !tbaa !232, !noalias !1121
  %15 = load ptr, ptr %14, align 8, !tbaa !219, !noalias !1121
  %16 = getelementptr inbounds ptr, ptr %15, i64 2
  %17 = load ptr, ptr %16, align 8, !noalias !1121
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 32), !prof !575, !noalias !1121
  store ptr %18, ptr %10, align 8, !tbaa !272, !noalias !1121
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %18, i64 0, i32 2
  store ptr %18, ptr %19, align 8, !tbaa !276, !noalias !1121
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %18, i64 0, i32 1
  store ptr %18, ptr %20, align 8, !tbaa !279, !noalias !1121
  br label %21

21:                                               ; preds = %9, %13
  %22 = load ptr, ptr %10, align 8, !tbaa !272, !noalias !258
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %32, !prof !949

24:                                               ; preds = %21
  %25 = load ptr, ptr %0, align 8, !tbaa !232, !noalias !1125
  %26 = load ptr, ptr %25, align 8, !tbaa !219, !noalias !1125
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8, !noalias !1125
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !noalias !1125
  store ptr %29, ptr %10, align 8, !tbaa !272, !noalias !1125
  %30 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %29, i64 0, i32 2
  store ptr %29, ptr %30, align 8, !tbaa !276, !noalias !1125
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %29, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !279, !noalias !1125
  br label %32

32:                                               ; preds = %21, %24
  %33 = load ptr, ptr %10, align 8, !tbaa !272, !noalias !1125
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %33, i64 0, i32 2
  %35 = load ptr, ptr %34, align 8, !tbaa !276, !noalias !258
  %36 = icmp eq ptr %35, %22
  br i1 %36, label %55, label %37, !prof !373

37:                                               ; preds = %32, %50
  %38 = phi ptr [ %53, %50 ], [ %35, %32 ]
  %39 = phi ptr [ %51, %50 ], [ null, %32 ]
  %40 = load i64, ptr %38, align 8, !tbaa !527
  %41 = icmp eq i64 %40, %1
  br i1 %41, label %55, label %42, !prof !1128

42:                                               ; preds = %37
  %43 = icmp ult i64 %40, %1
  br i1 %43, label %50, label %44, !prof !1129

44:                                               ; preds = %42
  %45 = icmp eq ptr %39, null
  br i1 %45, label %49, label %46, !prof !559

46:                                               ; preds = %44
  %47 = load i64, ptr %39, align 8, !tbaa !527
  %48 = icmp ult i64 %40, %47
  br i1 %48, label %49, label %50, !prof !253

49:                                               ; preds = %46, %44
  br label %50

50:                                               ; preds = %42, %46, %49
  %51 = phi ptr [ %38, %49 ], [ %39, %46 ], [ %39, %42 ]
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %38, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !276, !noalias !258
  %54 = icmp eq ptr %53, %22
  br i1 %54, label %55, label %37, !prof !1130, !llvm.loop !1131

55:                                               ; preds = %50, %37, %32
  %56 = phi ptr [ null, %32 ], [ %51, %50 ], [ %38, %37 ]
  store ptr %56, ptr %3, align 8, !tbaa !236
  br label %57

57:                                               ; preds = %6, %55
  %58 = phi ptr [ %56, %55 ], [ %4, %6 ]
  ret ptr %58
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE9push_backERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #1 comdat align 2 !prof !1111 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList.0", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !272, !noalias !1132
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14, !prof !289

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !232, !noalias !1132
  %8 = load ptr, ptr %7, align 8, !tbaa !219, !noalias !1132
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !1132
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !1132
  store ptr %11, ptr %3, align 8, !tbaa !272, !noalias !1132
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !276, !noalias !1132
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !279, !noalias !1132
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !272, !noalias !1132
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList.0", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !1074
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19, !prof !1135

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !276
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !232
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32), !prof !1112
  store ptr %27, ptr %16, align 8, !tbaa !1074
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !279
  store ptr %33, ptr %31, align 8, !tbaa !222
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !222
  %35 = load ptr, ptr %32, align 8, !tbaa !279
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<std::pair<unsigned long, xalanc_1_10::XalanVector<unsigned short> *>>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !276
  store ptr %29, ptr %32, align 8, !tbaa !279
  store ptr %30, ptr %16, align 8, !tbaa !1074
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 2 dereferenceable(2) %2) local_unnamed_addr #10 comdat align 2 !prof !1136 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !405
  %6 = icmp ugt i64 %5, %1
  br i1 %6, label %29, label %7, !prof !1137

7:                                                ; preds = %3
  %8 = icmp ult i64 %5, %1
  br i1 %8, label %9, label %35, !prof !1138

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !413
  %12 = icmp ult i64 %11, %1
  br i1 %12, label %13, label %14, !prof !1138

13:                                               ; preds = %9
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1)
  br label %14

14:                                               ; preds = %9, %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !414
  %17 = getelementptr inbounds i16, ptr %16, i64 %1
  %18 = load i64, ptr %4, align 8, !tbaa !405
  %19 = icmp eq i64 %18, %1
  br i1 %19, label %35, label %20, !prof !1139

20:                                               ; preds = %14
  %21 = getelementptr inbounds i16, ptr %16, i64 %18
  br label %22

22:                                               ; preds = %20, %22
  %23 = phi ptr [ %26, %22 ], [ %21, %20 ]
  %24 = phi i64 [ %27, %22 ], [ %18, %20 ]
  %25 = load i16, ptr %2, align 2, !tbaa !513
  store i16 %25, ptr %23, align 2, !tbaa !513
  %26 = getelementptr inbounds i16, ptr %23, i64 1
  %27 = add i64 %24, 1
  %28 = icmp eq ptr %26, %17
  br i1 %28, label %33, label %22, !prof !1140, !llvm.loop !1141

29:                                               ; preds = %3
  %30 = load i64, ptr %4, align 8, !tbaa !405
  %31 = add i64 %30, -1
  %32 = tail call i64 @llvm.umin.i64(i64 %1, i64 %31)
  br label %33

33:                                               ; preds = %22, %29
  %34 = phi i64 [ %32, %29 ], [ %27, %22 ]
  store i64 %34, ptr %4, align 8, !tbaa !405
  br label %35

35:                                               ; preds = %33, %14, %7
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1142 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !415
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !405
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !1143

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !415
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !405
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !413
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !1144
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !414
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !414
  %20 = load i64, ptr %5, align 8, !tbaa !405
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !1145

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !415
  %24 = load i64, ptr %10, align 8, !tbaa !405
  %25 = load i64, ptr %11, align 8, !tbaa !413
  %26 = load ptr, ptr %17, align 8, !tbaa !414
  store ptr %4, ptr %3, align 8, !tbaa !415
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !413
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !414
  %33 = load ptr, ptr %3, align 8, !tbaa !415
  %34 = load ptr, ptr %33, align 8, !tbaa !219
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #18
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !1146

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !219
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !1147
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !415
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !413
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !414
  store ptr %53, ptr %0, align 8, !tbaa !415
  store i64 %52, ptr %5, align 8, !tbaa !405
  store i64 %51, ptr %55, align 8, !tbaa !413
  store ptr %50, ptr %57, align 8, !tbaa !414
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !1148

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !219
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !1149

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !916 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !415
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !405
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !1143

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !415
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !405
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !413
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !1150
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !414
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !414
  %24 = load i64, ptr %9, align 8, !tbaa !405
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !1145

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !415
  %28 = load i64, ptr %6, align 8, !tbaa !405
  %29 = load i64, ptr %7, align 8, !tbaa !413
  %30 = load ptr, ptr %8, align 8, !tbaa !414
  %31 = load ptr, ptr %5, align 8, !tbaa !415
  store ptr %31, ptr %0, align 8, !tbaa !415
  %32 = load i64, ptr %14, align 8, !tbaa !405
  store i64 %32, ptr %6, align 8, !tbaa !405
  %33 = load i64, ptr %15, align 8, !tbaa !413
  store i64 %33, ptr %7, align 8, !tbaa !413
  %34 = load ptr, ptr %21, align 8, !tbaa !414
  store ptr %34, ptr %8, align 8, !tbaa !414
  store ptr %27, ptr %5, align 8, !tbaa !415
  store i64 %28, ptr %14, align 8, !tbaa !405
  store i64 %29, ptr %15, align 8, !tbaa !413
  store ptr %30, ptr %21, align 8, !tbaa !414
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !1145

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !413
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !414
  %50 = load ptr, ptr %5, align 8, !tbaa !415
  %51 = load ptr, ptr %50, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #18
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !1146

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !1151
  store ptr %65, ptr %8, align 8, !tbaa !414
  store i64 %3, ptr %7, align 8, !tbaa !413
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1152 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !1153

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !405
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !414
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !413
  br i1 %18, label %21, label %39, !prof !1154

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !1155

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !1156

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !414
  %28 = load i64, ptr %12, align 8, !tbaa !405
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !513
  store i16 %34, ptr %32, align 2, !tbaa !513
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !1157, !llvm.loop !1158

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !1159

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #17
  %42 = load ptr, ptr %0, align 8, !tbaa !415
  store ptr %42, ptr %5, align 8, !tbaa !415
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !405
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !413
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !219
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !1160
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !414
  %51 = load i64, ptr %43, align 8, !tbaa !405
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !414
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !1161

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !414
  %56 = load i64, ptr %43, align 8, !tbaa !405
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !1161

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !414
  %60 = load i64, ptr %43, align 8, !tbaa !405
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !414
  %63 = load i64, ptr %12, align 8, !tbaa !405
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !1161

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !415
  %67 = load i64, ptr %12, align 8, !tbaa !405
  %68 = load i64, ptr %19, align 8, !tbaa !413
  %69 = load ptr, ptr %15, align 8, !tbaa !414
  %70 = load ptr, ptr %5, align 8, !tbaa !415
  store ptr %70, ptr %0, align 8, !tbaa !415
  %71 = load i64, ptr %43, align 8, !tbaa !405
  store i64 %71, ptr %12, align 8, !tbaa !405
  %72 = load i64, ptr %44, align 8, !tbaa !413
  store i64 %72, ptr %19, align 8, !tbaa !413
  %73 = load ptr, ptr %50, align 8, !tbaa !414
  store ptr %73, ptr %15, align 8, !tbaa !414
  store ptr %66, ptr %5, align 8, !tbaa !415
  store i64 %67, ptr %43, align 8, !tbaa !405
  store i64 %68, ptr %44, align 8, !tbaa !413
  store ptr %69, ptr %50, align 8, !tbaa !414
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !1162

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !219
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !1163

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !413
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !414
  %89 = load ptr, ptr %5, align 8, !tbaa !415
  %90 = load ptr, ptr %89, align 8, !tbaa !219
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #18
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #17
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !1164

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !1165

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !1165

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !1166, !llvm.loop !1167

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !1168, !llvm.loop !1169

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !1170
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
  br i1 %123, label %124, label %120, !llvm.loop !1171

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
  store i64 %36, ptr %12, align 8, !tbaa !405
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #14 comdat align 2 personality ptr @__gxx_personality_v0 !prof !1172 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !405
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !413
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !1173

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !414
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !513
  store i16 %13, ptr %12, align 2, !tbaa !513
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !405
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #17
  %21 = load ptr, ptr %0, align 8, !tbaa !415
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !415
  %24 = load i64, ptr %4, align 8, !tbaa !405
  %25 = load i64, ptr %6, align 8, !tbaa !413
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !414
  %28 = load ptr, ptr %3, align 8, !tbaa !415
  store ptr %28, ptr %0, align 8, !tbaa !415
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !405
  store i64 %30, ptr %4, align 8, !tbaa !405
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !413
  store i64 %32, ptr %6, align 8, !tbaa !413
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !414
  store ptr %34, ptr %26, align 8, !tbaa !414
  store ptr %23, ptr %3, align 8, !tbaa !415
  store i64 %24, ptr %29, align 8, !tbaa !405
  store i64 %25, ptr %31, align 8, !tbaa !413
  store ptr %27, ptr %33, align 8, !tbaa !414
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #18
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !413
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !414
  %52 = load ptr, ptr %3, align 8, !tbaa !415
  %53 = load ptr, ptr %52, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #18
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #17
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!217}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !150, !151, !152, !153, !154, !155, !156, !157, !158, !159, !160, !161, !162, !163, !164, !165, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !186, !187, !188, !189, !190, !191, !192, !193, !194, !195, !196, !197, !198, !199, !200, !201, !202, !203, !204, !205, !206, !207, !208, !209, !210, !211, !212, !213, !214, !215, !216}
!35 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1029StylesheetConstructionContextC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1018XPathProcessorImpl6createERN11xercesc_2_713MemoryManagerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolC1ERN11xercesc_2_713MemoryManagerEmmm, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheC1ERN11xercesc_2_713MemoryManagerEj, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1017XalanAVTAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1026XalanAVTPartXPathAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceC1ERKNS_14XalanDOMStringES3_, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1027XalanElemAttributeAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1030XalanElemAttributeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1030XalanElemCallTemplateAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1025XalanElemElementAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1031XalanElemLiteralResultAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1026XalanElemTemplateAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1029XalanElemTextLiteralAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1025XalanElemValueOfAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1026XalanElemVariableAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultC2ERN11xercesc_2_713MemoryManagerERNS_14XSLTEngineImplERNS_12XPathFactoryEmmmmmm, ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorC1ERN11xercesc_2_713MemoryManagerEm, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvED2Ev, ptr @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEED2Ev, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 6}
!60 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItED2Ev, ptr @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEED2Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1021XalanQNameByReferenceD1Ev, i64 2}
!63 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocatorD1Ev, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1026XalanElemVariableAllocatorD1Ev, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1025XalanElemValueOfAllocatorD1Ev, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1029XalanElemTextLiteralAllocatorD1Ev, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1026XalanElemTemplateAllocatorD1Ev, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1031XalanElemLiteralResultAllocatorD1Ev, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1025XalanElemElementAllocatorD1Ev, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1030XalanElemCallTemplateAllocatorD1Ev, i64 1}
!71 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1030XalanElemAttributeSetAllocatorD1Ev, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1027XalanElemAttributeAllocatorD1Ev, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocatorD1Ev, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvED2Ev, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocatorD1Ev, i64 1}
!77 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1026XalanAVTPartXPathAllocatorD1Ev, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1027XalanAVTPartSimpleAllocatorD1Ev, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1017XalanAVTAllocatorD1Ev, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1019XalanDOMStringCacheD1Ev, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1017XalanQNameByValueD1Ev, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!83 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItED2Ev, i64 1}
!84 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1018XalanDOMStringPoolD1Ev, i64 1}
!85 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!86 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EED2Ev, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefaultD2Ev, ptr @_ZN11xalanc_1_1029StylesheetConstructionContextD2Ev, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1018XalanDOMStringPool5clearEv, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1019XalanDOMStringCache5resetEv, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!91 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE5resetEv, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!96 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!97 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!98 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!99 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!100 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!101 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!102 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!103 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!104 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!105 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault5resetEv, ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE5resetEv, ptr @_ZNK11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5emptyEv, i64 1}
!107 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!108 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014StylesheetRoot6createERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS_29StylesheetConstructionContextE, i64 1}
!109 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 1}
!110 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getCachedStringEv, i64 1}
!111 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 1}
!112 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1}
!113 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 1}
!114 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_14XalanDOMStringE, i64 1}
!115 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault6createERKNS_15XSLTInputSourceE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE, i64 1}
!116 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault22getURLStringFromStringERKNS_14XalanDOMStringERS1_, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, i64 1}
!117 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault19getLocatorFromStackEv, i64 27}
!118 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 27}
!119 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 27}
!120 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 27}
!121 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18createMatchPatternEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb, i64 27}
!122 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb, ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault19getLocatorFromStackEv, i64 137}
!123 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 131}
!124 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 131}
!125 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 131}
!126 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorEPKtRKNS_14PrefixResolverEbb, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault11createXPathEPKN11xercesc_2_77LocatorERKNS_14XalanDOMStringERKNS_14PrefixResolverEbb, i64 131}
!127 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault18pushLocatorOnStackEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_, i64 1}
!128 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19isXMLSpaceAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, i64 236}
!129 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19isXMLSpaceAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, i64 236}
!130 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault30isXSLUseAttributeSetsAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, i64 12}
!131 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault30isXSLUseAttributeSetsAttributeEPKtRKNS_10StylesheetEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, i64 12}
!132 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1032XalanElemApplyTemplatesAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 32}
!133 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1027XalanElemAttributeAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 3}
!134 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1030XalanElemCallTemplateAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 8}
!135 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 37}
!136 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1014XalanConstructINS_10ElemChooseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, i64 2}
!137 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemForEachENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, i64 12}
!138 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1010ElemNumber6createERN11xercesc_2_713MemoryManagerERNS_29StylesheetConstructionContextERNS_10StylesheetERKNS1_13AttributeListEiim, i64 5}
!139 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemOtherwiseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, i64 2}
!140 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1014XalanConstructINS_9ElemParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, i64 5}
!141 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1026XalanElemTemplateAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 30}
!142 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1025XalanElemValueOfAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 65}
!143 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1026XalanElemVariableAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 1}
!144 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemWithParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, i64 9}
!145 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetERKN11xercesc_2_713AttributeListEPKNS3_7LocatorE, ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemWhenENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, i64 2}
!146 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementEiRNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEPKNS5_7LocatorE, ptr @_ZN11xalanc_1_1031XalanElemLiteralResultAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEPKtRKN11xercesc_2_713AttributeListEii, i64 188}
!147 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault13createElementERNS_10StylesheetEPKtjbbPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1029XalanElemTextLiteralAllocator6createERNS_29StylesheetConstructionContextERNS_10StylesheetEiiPKtjjbb, i64 440}
!148 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault27createXalanMatchPatternDataERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE, ptr @_ZN11xalanc_1_1030XalanMatchPatternDataAllocator6createERKNS_12ElemTemplateEmRKNS_14XalanDOMStringERKNS_5XPathES6_NS7_11eMatchScoreE, i64 24}
!149 = !{ptr @_ZNK11xalanc_1_1036StylesheetConstructionContextDefault15getElementTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19getElementNameTokenERKNS_14XalanDOMStringE, i64 202}
!150 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19getElementNameTokenERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j, i64 895}
!151 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getPooledStringERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getERKNS_14XalanDOMStringE, i64 4107}
!152 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getPooledStringEPKtj, ptr @_ZN11xalanc_1_1018XalanDOMStringPool3getEPKtj, i64 243}
!153 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault15getCachedStringEv, ptr @_ZN11xalanc_1_1019XalanDOMStringCache3getEv, i64 1769}
!154 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault19releaseCachedStringERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1019XalanDOMStringCache7releaseERNS_14XalanDOMStringE, i64 1769}
!155 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE8allocateEm, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE9findEntryEm, i64 488}
!156 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE8allocateEm, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE11createEntryEmm, i64 6}
!157 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault26allocateXalanDOMCharVectorEPKtjb, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE8allocateEm, i64 488}
!158 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault9createAVTEPKN11xercesc_2_77LocatorEPKtS6_RKNS_14PrefixResolverE, ptr @_ZN11xalanc_1_1017XalanAVTAllocator6createERNS_29StylesheetConstructionContextEPKN11xercesc_2_77LocatorEPKtS8_RKNS_14PrefixResolverE, i64 48}
!159 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault24allocateAVTPointerVectorEm, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm, i64 188}
!160 = !{ptr @_ZN11xalanc_1_1036StylesheetConstructionContextDefault16createXalanQNameEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1026XalanQNameByValueAllocator6createEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, i64 26}
!161 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!162 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_3AVTEmED2Ev, i64 1}
!163 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5clearEv, i64 2}
!164 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5clearEv, i64 2}
!165 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5clearEv, i64 2}
!166 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_17XalanQNameByValueEmED2Ev, i64 1}
!167 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5clearEv, i64 2}
!168 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_18ElemApplyTemplatesEmED2Ev, i64 4}
!169 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5clearEv, i64 2}
!170 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_13ElemAttributeEmED2Ev, i64 1}
!171 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5clearEv, i64 2}
!172 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5clearEv, i64 2}
!173 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_16ElemCallTemplateEmED2Ev, i64 1}
!174 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5clearEv, i64 2}
!175 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5clearEv, i64 2}
!176 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_17ElemLiteralResultEmED2Ev, i64 10}
!177 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5clearEv, i64 2}
!178 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_12ElemTemplateEmED2Ev, i64 3}
!179 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5clearEv, i64 2}
!180 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_15ElemTextLiteralEmED2Ev, i64 22}
!181 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5clearEv, i64 2}
!182 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_11ElemValueOfEmED2Ev, i64 7}
!183 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5clearEv, i64 2}
!184 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_12ElemVariableEmED2Ev, i64 1}
!185 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5clearEv, i64 2}
!186 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev, i64 3}
!187 = !{ptr @_ZN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEE5resetEv, ptr @_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5clearEv, i64 2}
!188 = !{ptr @_ZN11xalanc_1_1010ArenaBlockINS_21XalanMatchPatternDataEmED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 24}
!189 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_, ptr @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEC2ERKS7_RNS1_13MemoryManagerEm, i64 1}
!190 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_, ptr @_ZN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEE10doPushBackERKS4_, i64 1}
!191 = !{ptr @_ZNK11xalanc_1_1010XalanQName6equalsERKS0_, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 536868638}
!192 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE9findEntryEm, i64 188}
!193 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE8allocateEm, ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE11createEntryEmm, i64 1}
!194 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE11createEntryEmm, ptr @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE9push_backERKS9_, i64 1}
!195 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorIPKvE11createEntryEmm, ptr @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_, i64 1}
!196 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE6resizeEmRKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!197 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!198 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!199 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 15}
!200 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 15}
!201 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_, i64 12}
!202 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_10ElemChooseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, ptr @_ZN11xalanc_1_1010ElemChooseC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 2}
!203 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_11ElemForEachENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, ptr @_ZN11xalanc_1_1011ElemForEachC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 12}
!204 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemOtherwiseENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, ptr @_ZN11xalanc_1_1013ElemOtherwiseC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 2}
!205 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_9ElemParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, ptr @_ZN11xalanc_1_109ElemParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 5}
!206 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_13ElemWithParamENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, ptr @_ZN11xalanc_1_1013ElemWithParamC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 9}
!207 = !{ptr @_ZN11xalanc_1_1014XalanConstructINS_8ElemWhenENS_29StylesheetConstructionContextENS_10StylesheetEN11xercesc_2_713AttributeListEiiEEPT_RNS4_13MemoryManagerERS7_RT0_RT1_RKT2_RKT3_RKT4_, ptr @_ZN11xalanc_1_108ElemWhenC1ERNS_29StylesheetConstructionContextERNS_10StylesheetERKN11xercesc_2_713AttributeListEii, i64 2}
!208 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE11createEntryEmm, ptr @_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE9push_backERKS7_, i64 6}
!209 = !{ptr @_ZN11xalanc_1_1019XalanArrayAllocatorItE11createEntryEmm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, i64 6}
!210 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6resizeEmRKt, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 152}
!211 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!212 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!213 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!214 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!215 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!216 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!217 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!218 = !{!"function_entry_count", i64 1}
!219 = !{!220, !220, i64 0}
!220 = !{!"vtable pointer", !221, i64 0}
!221 = !{!"Simple C++ TBAA"}
!222 = !{!223, !223, i64 0}
!223 = !{!"any pointer", !224, i64 0}
!224 = !{!"omnipotent char", !221, i64 0}
!225 = !{!"branch_weights", i32 1, i32 0}
!226 = !{!227, !223, i64 0}
!227 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1014XPathProcessorEE", !223, i64 0, !223, i64 8}
!228 = !{!227, !223, i64 8}
!229 = !{!230, !223, i64 0}
!230 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14StylesheetRootENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!231 = !{!"long", !224, i64 0}
!232 = !{!233, !223, i64 0}
!233 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!234 = !{!235, !231, i64 24}
!235 = !{!"_ZTSN11xalanc_1_1019XalanArrayAllocatorItEE", !233, i64 0, !231, i64 24, !223, i64 32}
!236 = !{!235, !223, i64 32}
!237 = !{!238, !223, i64 0}
!238 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!239 = !{!240, !231, i64 24}
!240 = !{!"_ZTSN11xalanc_1_1019XalanArrayAllocatorIPKvEE", !238, i64 0, !231, i64 24, !223, i64 32}
!241 = !{!240, !223, i64 32}
!242 = !{!243, !223, i64 0}
!243 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_19ElemTemplateElementENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!244 = !{!"function_entry_count", i64 3}
!245 = !{!243, !231, i64 16}
!246 = !{!"branch_weights", i32 0, i32 3}
!247 = !{!243, !223, i64 24}
!248 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!249 = !{!238, !223, i64 8}
!250 = !{!251}
!251 = distinct !{!251, !252, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!252 = distinct !{!252, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!253 = !{!"branch_weights", i32 0, i32 1}
!254 = !{!255, !223, i64 24}
!255 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE4NodeE", !256, i64 0, !223, i64 16, !223, i64 24}
!256 = !{!"_ZTSSt4pairImPN11xalanc_1_1011XalanVectorIPKvNS0_31MemoryManagedConstructionTraitsIS3_EEEEE", !231, i64 0, !223, i64 8}
!257 = !{!255, !223, i64 16}
!258 = !{}
!259 = !{!260}
!260 = distinct !{!260, !261, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!261 = distinct !{!261, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!262 = !{!263}
!263 = distinct !{!263, !264, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!264 = distinct !{!264, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!265 = !{!"branch_weights", i32 0, i32 2}
!266 = !{!"branch_weights", i32 1, i32 1}
!267 = !{!256, !223, i64 8}
!268 = distinct !{!268, !269, !270}
!269 = !{!"llvm.loop.mustprogress"}
!270 = !{!"llvm.loop.unroll.disable"}
!271 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!272 = !{!233, !223, i64 8}
!273 = !{!274}
!274 = distinct !{!274, !275, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv: argument 0"}
!275 = distinct !{!275, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv"}
!276 = !{!277, !223, i64 24}
!277 = !{!"_ZTSN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE4NodeE", !278, i64 0, !223, i64 16, !223, i64 24}
!278 = !{!"_ZTSSt4pairImPN11xalanc_1_1011XalanVectorItNS0_31MemoryManagedConstructionTraitsItEEEEE", !231, i64 0, !223, i64 8}
!279 = !{!277, !223, i64 16}
!280 = !{!281}
!281 = distinct !{!281, !282, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv: argument 0"}
!282 = distinct !{!282, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv"}
!283 = !{!284}
!284 = distinct !{!284, !285, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv: argument 0"}
!285 = distinct !{!285, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv"}
!286 = !{!"branch_weights", i32 0, i32 7}
!287 = !{!"branch_weights", i32 1, i32 6}
!288 = !{!278, !223, i64 8}
!289 = !{!"branch_weights", i32 0, i32 6}
!290 = distinct !{!290, !269, !270}
!291 = !{!"VP", i32 0, i64 6, i64 -7405368087501025645, i64 6}
!292 = !{!230, !231, i64 16}
!293 = !{!230, !223, i64 24}
!294 = !{!"function_entry_count", i64 2}
!295 = !{!"branch_weights", i32 2, i32 0}
!296 = !{!"VP", i32 0, i64 2, i64 -2728237556756740187, i64 2}
!297 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!298 = !{!"function_entry_count", i64 0}
!299 = !{!300, !223, i64 16}
!300 = !{!"_ZTSN11xalanc_1_1036StylesheetConstructionContextDefaultE", !301, i64 0, !223, i64 16, !223, i64 24, !303, i64 32, !230, i64 48, !305, i64 80, !235, i64 192, !313, i64 232, !315, i64 272, !317, i64 360, !325, i64 480, !328, i64 520, !331, i64 560, !334, i64 600, !337, i64 640, !240, i64 664, !243, i64 704, !338, i64 736, !341, i64 776, !344, i64 816, !347, i64 856, !350, i64 896, !353, i64 936, !356, i64 976, !359, i64 1016, !362, i64 1056, !365, i64 1096, !368, i64 1136, !337, i64 1176}
!301 = !{!"_ZTSN11xalanc_1_1029StylesheetConstructionContextE", !302, i64 0}
!302 = !{!"_ZTSN11xalanc_1_1024XPathConstructionContextE", !223, i64 8}
!303 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EEE", !304, i64 0}
!304 = !{!"_ZTSN11xalanc_1_1018XalanMemMgrAutoPtrINS_14XPathProcessorELb1EE17MemMgrAutoPtrDataE", !227, i64 0}
!305 = !{!"_ZTSN11xalanc_1_1018XalanDOMStringPoolE", !306, i64 8, !231, i64 48, !309, i64 56}
!306 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringAllocatorE", !307, i64 0}
!307 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !308, i64 16}
!308 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_14XalanDOMStringEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!309 = !{!"_ZTSN11xalanc_1_1023XalanDOMStringHashTableE", !231, i64 0, !231, i64 8, !310, i64 16, !231, i64 40, !312, i64 48}
!310 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEEE", !311, i64 0}
!311 = !{!"_ZTSN11xalanc_1_1023XalanMemMgrAutoPtrArrayINS_11XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS4_EEEEE22MemMgrAutoPtrArrayDataE", !223, i64 0, !223, i64 8, !231, i64 16}
!312 = !{!"int", !224, i64 0}
!313 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !314, i64 0, !312, i64 32}
!314 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!315 = !{!"_ZTSN11xalanc_1_1017XalanQNameByValueE", !316, i64 0, !313, i64 8, !313, i64 48}
!316 = !{!"_ZTSN11xalanc_1_1010XalanQNameE"}
!317 = !{!"_ZTSN11xalanc_1_1019XalanDOMStringCacheE", !318, i64 0, !318, i64 32, !312, i64 64, !319, i64 72}
!318 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!319 = !{!"_ZTSN11xalanc_1_1031XalanDOMStringReusableAllocatorE", !320, i64 0}
!320 = !{!"_ZTSN11xalanc_1_1022ReusableArenaAllocatorINS_14XalanDOMStringEEE", !321, i64 0, !324, i64 40}
!321 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_14XalanDOMStringENS_18ReusableArenaBlockIS1_tEEEE", !322, i64 8, !323, i64 16}
!322 = !{!"short", !224, i64 0}
!323 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_18ReusableArenaBlockINS_14XalanDOMStringEtEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!324 = !{!"bool", !224, i64 0}
!325 = !{!"_ZTSN11xalanc_1_1017XalanAVTAllocatorE", !326, i64 0}
!326 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_3AVTENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !327, i64 16}
!327 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!328 = !{!"_ZTSN11xalanc_1_1027XalanAVTPartSimpleAllocatorE", !329, i64 0}
!329 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13AVTPartSimpleENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !330, i64 16}
!330 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!331 = !{!"_ZTSN11xalanc_1_1026XalanAVTPartXPathAllocatorE", !332, i64 0}
!332 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12AVTPartXPathENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !333, i64 16}
!333 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!334 = !{!"_ZTSN11xalanc_1_1026XalanQNameByValueAllocatorE", !335, i64 0}
!335 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17XalanQNameByValueENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !336, i64 16}
!336 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!337 = !{!"_ZTSN11xalanc_1_1021XalanQNameByReferenceE", !316, i64 0, !223, i64 8, !223, i64 16}
!338 = !{!"_ZTSN11xalanc_1_1032XalanElemApplyTemplatesAllocatorE", !339, i64 0}
!339 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_18ElemApplyTemplatesENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !340, i64 16}
!340 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!341 = !{!"_ZTSN11xalanc_1_1027XalanElemAttributeAllocatorE", !342, i64 0}
!342 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_13ElemAttributeENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !343, i64 16}
!343 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!344 = !{!"_ZTSN11xalanc_1_1030XalanElemAttributeSetAllocatorE", !345, i64 0}
!345 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_16ElemAttributeSetENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !346, i64 16}
!346 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!347 = !{!"_ZTSN11xalanc_1_1030XalanElemCallTemplateAllocatorE", !348, i64 0}
!348 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_16ElemCallTemplateENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !349, i64 16}
!349 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!350 = !{!"_ZTSN11xalanc_1_1025XalanElemElementAllocatorE", !351, i64 0}
!351 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_11ElemElementENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !352, i64 16}
!352 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!353 = !{!"_ZTSN11xalanc_1_1031XalanElemLiteralResultAllocatorE", !354, i64 0}
!354 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_17ElemLiteralResultENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !355, i64 16}
!355 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!356 = !{!"_ZTSN11xalanc_1_1026XalanElemTemplateAllocatorE", !357, i64 0}
!357 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12ElemTemplateENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !358, i64 16}
!358 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!359 = !{!"_ZTSN11xalanc_1_1029XalanElemTextLiteralAllocatorE", !360, i64 0}
!360 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_15ElemTextLiteralENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !361, i64 16}
!361 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!362 = !{!"_ZTSN11xalanc_1_1025XalanElemValueOfAllocatorE", !363, i64 0}
!363 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_11ElemValueOfENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !364, i64 16}
!364 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!365 = !{!"_ZTSN11xalanc_1_1026XalanElemVariableAllocatorE", !366, i64 0}
!366 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_12ElemVariableENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !367, i64 16}
!367 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!368 = !{!"_ZTSN11xalanc_1_1030XalanMatchPatternDataAllocatorE", !369, i64 0}
!369 = !{!"_ZTSN11xalanc_1_1014ArenaAllocatorINS_21XalanMatchPatternDataENS_10ArenaBlockIS1_mEEEE", !231, i64 8, !370, i64 16}
!370 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!371 = !{!230, !231, i64 8}
!372 = !{!302, !223, i64 8}
!373 = !{!"branch_weights", i32 1, i32 127}
!374 = !{!"VP", i32 0, i64 1, i64 1168144638082017438, i64 1}
!375 = !{!"branch_weights", i32 127, i32 1}
!376 = distinct !{!376, !269, !270}
!377 = !{!243, !231, i64 8}
!378 = !{!"branch_weights", i32 0, i32 37}
!379 = !{!"VP", i32 0, i64 37, i64 2425103477578317449, i64 12, i64 7370552219900281201, i64 9, i64 3421027642216710859, i64 6}
!380 = !{!"VP", i32 0, i64 37, i64 -7405368087501025645, i64 37}
!381 = !{!"branch_weights", i32 127, i32 4609}
!382 = distinct !{!382, !269, !270}
!383 = !{!300, !223, i64 24}
!384 = !{!"VP", i32 0, i64 1, i64 1358007192399363270, i64 1}
!385 = !{!386}
!386 = distinct !{!386, !387, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!387 = distinct !{!387, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!388 = !{!389}
!389 = distinct !{!389, !390, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!390 = distinct !{!390, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!391 = !{!392, !231, i64 8}
!392 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!393 = !{!256, !231, i64 0}
!394 = !{!395}
!395 = distinct !{!395, !396, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEppEv: argument 0"}
!396 = distinct !{!396, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEppEv"}
!397 = distinct !{!397, !269, !270}
!398 = !{!399}
!399 = distinct !{!399, !400, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!400 = distinct !{!400, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!401 = !{!"VP", i32 0, i64 1, i64 -3228203282622328352, i64 1}
!402 = !{!"VP", i32 0, i64 1, i64 5287555200792350651, i64 1}
!403 = !{!"VP", i32 0, i64 1, i64 -8456053071525835194, i64 1}
!404 = !{!"VP", i32 0, i64 1, i64 8649632521824085322, i64 1}
!405 = !{!314, !231, i64 8}
!406 = !{!407}
!407 = distinct !{!407, !408, !"_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE: argument 0"}
!408 = distinct !{!408, !"_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE"}
!409 = !{!313, !312, i64 32}
!410 = !{!411}
!411 = distinct !{!411, !412, !"_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE: argument 0"}
!412 = distinct !{!412, !"_ZN11xalanc_1_1010URISupport16getURLFromStringERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE"}
!413 = !{!314, !231, i64 16}
!414 = !{!314, !223, i64 24}
!415 = !{!314, !223, i64 0}
!416 = !{!"function_entry_count", i64 391}
!417 = !{!"function_entry_count", i64 27}
!418 = !{!"VP", i32 0, i64 27, i64 1393817765183494155, i64 27}
!419 = !{!"VP", i32 0, i64 27, i64 -7111428461866279219, i64 27}
!420 = !{!"VP", i32 0, i64 27, i64 564619612342463730, i64 27}
!421 = !{!422, !324, i64 128}
!422 = !{!"_ZTSN11xalanc_1_105XPathE", !423, i64 0, !223, i64 120, !324, i64 128}
!423 = !{!"_ZTSN11xalanc_1_1015XPathExpressionE", !424, i64 0, !312, i64 32, !425, i64 40, !312, i64 72, !223, i64 80, !426, i64 88}
!424 = !{!"_ZTSN11xalanc_1_1011XalanVectorIiNS_31MemoryManagedConstructionTraitsIiEEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!425 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_6XTokenENS_31MemoryManagedConstructionTraitsIS1_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!426 = !{!"_ZTSN11xalanc_1_1011XalanVectorIdNS_31MemoryManagedConstructionTraitsIdEEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!427 = !{!422, !223, i64 120}
!428 = !{!"VP", i32 0, i64 27, i64 -6821711330083340836, i64 27}
!429 = !{!"function_entry_count", i64 137}
!430 = !{!"VP", i32 0, i64 137, i64 1393817765183494155, i64 137}
!431 = !{!"VP", i32 0, i64 137, i64 -7111428461866279219, i64 137}
!432 = !{!"VP", i32 0, i64 137, i64 -22705290944025786, i64 137}
!433 = !{!"function_entry_count", i64 131}
!434 = !{!"VP", i32 0, i64 131, i64 -3559473485404875525, i64 131}
!435 = !{!"function_entry_count", i64 994}
!436 = !{!437, !231, i64 8}
!437 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKN11xercesc_2_77LocatorENS_31MemoryManagedConstructionTraitsIS4_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!438 = !{!"branch_weights", i32 5, i32 989}
!439 = !{!437, !223, i64 24}
!440 = !{!"function_entry_count", i64 236}
!441 = !{!"function_entry_count", i64 12}
!442 = !{!"function_entry_count", i64 176}
!443 = !{!"branch_weights", i32 6, i32 170}
!444 = !{!"VP", i32 0, i64 170, i64 2318097047455832109, i64 170}
!445 = !{!"VP", i32 0, i64 170, i64 7194718800482560965, i64 170}
!446 = !{!"branch_weights", i32 0, i32 0, i32 32, i32 3, i32 0, i32 8, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 12, i32 0, i32 0, i32 5, i32 2, i32 5, i32 0, i32 0, i32 30, i32 65, i32 1, i32 9, i32 2}
!447 = !{!312, !312, i64 0}
!448 = !{!449, !223, i64 8}
!449 = !{!"_ZTSN11xalanc_1_1010StylesheetE", !450, i64 0, !223, i64 8, !313, i64 16, !451, i64 56, !452, i64 88, !313, i64 120, !453, i64 160, !231, i64 192, !454, i64 200, !456, i64 280, !324, i64 360, !458, i64 368, !223, i64 504, !464, i64 512, !465, i64 544, !470, i64 680, !471, i64 712, !472, i64 720, !475, i64 856, !477, i64 864, !472, i64 896, !475, i64 1032, !477, i64 1040, !477, i64 1072, !477, i64 1104, !477, i64 1136, !477, i64 1168, !477, i64 1200, !231, i64 1232, !478, i64 1240, !479, i64 1272}
!450 = !{!"_ZTSN11xalanc_1_1014PrefixResolverE"}
!451 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14KeyDeclarationENS_31MemoryManagedConstructionTraitsIS1_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!452 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_20XalanSpaceNodeTesterENS_31MemoryManagedConstructionTraitsIS1_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!453 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_10StylesheetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!454 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS2_IS4_EEEE", !223, i64 0, !231, i64 8, !455, i64 16, !455, i64 48}
!455 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_10XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEENS_31MemoryManagedConstructionTraitsIS8_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!456 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEE", !223, i64 0, !231, i64 8, !457, i64 16, !457, i64 48}
!457 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS1_EEEENS_31MemoryManagedConstructionTraitsIS5_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!458 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS1_EEEE", !459, i64 0, !460, i64 1, !223, i64 8, !461, i64 16, !231, i64 24, !231, i64 32, !462, i64 40, !462, i64 64, !463, i64 88, !231, i64 120, !231, i64 128}
!459 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!460 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!461 = !{!"float", !224, i64 0}
!462 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!463 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEPNS_18ExtensionNSHandlerENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!464 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS1_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!465 = !{!"_ZTSN11xalanc_1_108XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS1_EEEE", !466, i64 0, !467, i64 1, !223, i64 8, !461, i64 16, !231, i64 24, !231, i64 32, !468, i64 40, !468, i64 64, !469, i64 88, !231, i64 120, !231, i64 128}
!466 = !{!"_ZTSN11xalanc_1_1024XalanHashMemberReferenceINS_10XalanQNameEEE"}
!467 = !{!"_ZTSSt8equal_toIN11xalanc_1_1010XalanQNameEE"}
!468 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!469 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_21XalanQNameByReferenceEPKNS_12ElemTemplateENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISB_E4NodeEEENS_31MemoryManagedConstructionTraitsISG_EEEENS_32ConstructWithMemoryManagerTraitsISJ_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!470 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_12ElemVariableENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!471 = !{!"double", !224, i64 0}
!472 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS5_EEEENS_17XalanMapKeyTraitsIS1_EEEE", !459, i64 0, !460, i64 1, !223, i64 8, !461, i64 16, !231, i64 24, !231, i64 32, !473, i64 40, !473, i64 64, !474, i64 88, !231, i64 120, !231, i64 128}
!473 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!474 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS0_IPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListISE_E4NodeEEENS8_ISJ_EEEENS_32ConstructWithMemoryManagerTraitsISL_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!475 = !{!"_ZTSN11xalanc_1_1016XalanMapIteratorINS_27XalanMapConstIteratorTraitsISt4pairIKNS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS8_EEEEEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIS3_SB_NS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISK_E4NodeEEEEE", !476, i64 0}
!476 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringENS_11XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListISE_E4NodeEEE", !223, i64 0}
!477 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_21XalanMatchPatternDataENS_31MemoryManagedConstructionTraitsIS3_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!478 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_17ElemDecimalFormatENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!479 = !{!"_ZTSN11xalanc_1_1017NamespacesHandlerE", !480, i64 0, !481, i64 32, !482, i64 64, !483, i64 96}
!480 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler9NamespaceENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!481 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_17NamespacesHandler17NamespaceExtendedENS_31MemoryManagedConstructionTraitsIS2_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!482 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_14XalanDOMStringENS_31MemoryManagedConstructionTraitsIS3_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!483 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_14XalanDOMStringES3_NS_17XalanMapKeyTraitsIS3_EEEE", !484, i64 0, !485, i64 1, !223, i64 8, !461, i64 16, !231, i64 24, !231, i64 32, !486, i64 40, !486, i64 64, !487, i64 88, !231, i64 120, !231, i64 128}
!484 = !{!"_ZTSN11xalanc_1_1028DOMStringPointerHashFunctionE"}
!485 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_14XalanDOMStringEEE"}
!486 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_14XalanDOMStringES4_NS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!487 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_14XalanDOMStringES6_NS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISA_E4NodeEEENS_31MemoryManagedConstructionTraitsISF_EEEENS_32ConstructWithMemoryManagerTraitsISI_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!488 = !{!489, !231, i64 1920}
!489 = !{!"_ZTSN11xalanc_1_1014StylesheetRootE", !449, i64 0, !313, i64 1504, !490, i64 1544, !313, i64 1552, !313, i64 1592, !313, i64 1632, !313, i64 1672, !324, i64 1712, !313, i64 1720, !313, i64 1760, !491, i64 1800, !492, i64 1808, !324, i64 1840, !464, i64 1848, !223, i64 1880, !223, i64 1888, !223, i64 1896, !324, i64 1904, !324, i64 1905, !312, i64 1908, !324, i64 1912, !231, i64 1920, !493, i64 1928}
!490 = !{!"_ZTSN11xalanc_1_1014StylesheetRoot11eIndentTypeE", !224, i64 0}
!491 = !{!"_ZTSN11xalanc_1_1017FormatterListener7eFormatE", !224, i64 0}
!492 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPKNS_10XalanQNameENS_31MemoryManagedConstructionTraitsIS3_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!493 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS6_EEEENS_17XalanMapKeyTraitsIS3_EEEE", !494, i64 0, !495, i64 1, !223, i64 8, !461, i64 16, !231, i64 24, !231, i64 32, !496, i64 40, !496, i64 64, !497, i64 88, !231, i64 120, !231, i64 128}
!494 = !{!"_ZTSN11xalanc_1_1022XalanHashMemberPointerINS_10XalanQNameEEE"}
!495 = !{!"_ZTSN11xalanc_1_1013pointer_equalINS_10XalanQNameEEE"}
!496 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_10XalanQNameENS_11XalanVectorIPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS7_EEEENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !223, i64 0, !223, i64 8, !223, i64 16}
!497 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_10XalanQNameENS0_IPNS_16ElemAttributeSetENS_31MemoryManagedConstructionTraitsIS8_EEEENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISF_E4NodeEEENS9_ISK_EEEENS_32ConstructWithMemoryManagerTraitsISM_EEEE", !223, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!498 = !{!"function_entry_count", i64 188}
!499 = !{!"branch_weights", i32 0, i32 188}
!500 = !{!"VP", i32 0, i64 188, i64 2318097047455832109, i64 188}
!501 = !{!"VP", i32 0, i64 188, i64 7194718800482560965, i64 188}
!502 = !{!"branch_weights", i32 0, i32 188, i32 0}
!503 = !{!"function_entry_count", i64 440}
!504 = !{!"branch_weights", i32 0, i32 440}
!505 = !{!"VP", i32 0, i64 440, i64 2318097047455832109, i64 440}
!506 = !{!"VP", i32 0, i64 440, i64 7194718800482560965, i64 440}
!507 = !{!"function_entry_count", i64 24}
!508 = !{!"function_entry_count", i64 202}
!509 = !{!"branch_weights", i32 0, i32 895}
!510 = !{!511, !223, i64 0}
!511 = !{!"_ZTSN11xalanc_1_1036StylesheetConstructionContextDefault22ElementTokenTableEntryE", !223, i64 0, !512, i64 8}
!512 = !{!"_ZTSN11xalanc_1_1029StylesheetConstructionContext13eElementTokenE", !224, i64 0}
!513 = !{!322, !322, i64 0}
!514 = !{!"branch_weights", i32 895, i32 7593}
!515 = distinct !{!515, !269, !270}
!516 = !{!"branch_weights", i32 341, i32 554}
!517 = !{!"branch_weights", i32 202, i32 352}
!518 = !{!511, !512, i64 8}
!519 = !{!"branch_weights", i32 693, i32 202}
!520 = distinct !{!520, !269, !270}
!521 = !{!"function_entry_count", i64 4107}
!522 = !{!"function_entry_count", i64 243}
!523 = !{!"function_entry_count", i64 1769}
!524 = !{!"function_entry_count", i64 488}
!525 = !{!"branch_weights", i32 488, i32 0}
!526 = !{!"branch_weights", i32 6, i32 482}
!527 = !{!278, !231, i64 0}
!528 = !{!"branch_weights", i32 0, i32 488}
!529 = !{!"VP", i32 1, i64 488, i64 17, i64 153, i64 32, i64 105, i64 8, i64 79, i64 9, i64 70}
!530 = !{!"branch_weights", i32 440, i32 48}
!531 = !{!"function_entry_count", i64 48}
!532 = !{!"function_entry_count", i64 26}
!533 = !{!231, !231, i64 0}
!534 = distinct !{!534, !269, !270}
!535 = !{!"function_entry_count", i64 42470003}
!536 = !{!"branch_weights", i32 52000, i32 42418003}
!537 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!538 = !{!327, !223, i64 8}
!539 = !{!540}
!540 = distinct !{!540, !541, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv: argument 0"}
!541 = distinct !{!541, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv"}
!542 = !{!327, !223, i64 0}
!543 = !{!544, !223, i64 16}
!544 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!545 = !{!544, !223, i64 8}
!546 = !{!547}
!547 = distinct !{!547, !548, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv: argument 0"}
!548 = distinct !{!548, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv"}
!549 = !{!550}
!550 = distinct !{!550, !551, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!551 = distinct !{!551, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_3AVTEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!552 = distinct !{!552, !269, !270}
!553 = !{!554}
!554 = distinct !{!554, !555, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv: argument 0"}
!555 = distinct !{!555, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE5beginEv"}
!556 = !{!557}
!557 = distinct !{!557, !558, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv: argument 0"}
!558 = distinct !{!558, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_3AVTEmEEE3endEv"}
!559 = !{!"branch_weights", i32 2, i32 1}
!560 = !{!327, !223, i64 16}
!561 = distinct !{!561, !269, !270}
!562 = !{!563, !231, i64 8}
!563 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_3AVTEmEE", !564, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!564 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_3AVTEEE", !223, i64 0}
!565 = !{!563, !223, i64 24}
!566 = !{!564, !223, i64 0}
!567 = !{!"VP", i32 0, i64 48, i64 7526121997438978690, i64 48}
!568 = !{!"branch_weights", i32 6017, i32 127}
!569 = distinct !{!569, !269, !270}
!570 = !{!330, !223, i64 8}
!571 = !{!572}
!572 = distinct !{!572, !573, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv: argument 0"}
!573 = distinct !{!573, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv"}
!574 = !{!330, !223, i64 0}
!575 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!576 = !{!577, !223, i64 16}
!577 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!578 = !{!577, !223, i64 8}
!579 = !{!580}
!580 = distinct !{!580, !581, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!581 = distinct !{!581, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!582 = !{!583}
!583 = distinct !{!583, !584, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!584 = distinct !{!584, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!585 = distinct !{!585, !269, !270}
!586 = !{!587}
!587 = distinct !{!587, !588, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv: argument 0"}
!588 = distinct !{!588, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE5beginEv"}
!589 = !{!590}
!590 = distinct !{!590, !591, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv: argument 0"}
!591 = distinct !{!591, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13AVTPartSimpleEmEEE3endEv"}
!592 = !{!330, !223, i64 16}
!593 = distinct !{!593, !269, !270}
!594 = !{!595, !231, i64 8}
!595 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_13AVTPartSimpleEmEE", !596, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!596 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_13AVTPartSimpleEEE", !223, i64 0}
!597 = !{!595, !223, i64 24}
!598 = !{!596, !223, i64 0}
!599 = distinct !{!599, !269, !270}
!600 = !{!333, !223, i64 8}
!601 = !{!602}
!602 = distinct !{!602, !603, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5beginEv: argument 0"}
!603 = distinct !{!603, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5beginEv"}
!604 = !{!333, !223, i64 0}
!605 = !{!606, !223, i64 16}
!606 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!607 = !{!606, !223, i64 8}
!608 = !{!609}
!609 = distinct !{!609, !610, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE3endEv: argument 0"}
!610 = distinct !{!610, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE3endEv"}
!611 = !{!612}
!612 = distinct !{!612, !613, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_12AVTPartXPathEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!613 = distinct !{!613, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_12AVTPartXPathEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!614 = distinct !{!614, !269, !270}
!615 = !{!616}
!616 = distinct !{!616, !617, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5beginEv: argument 0"}
!617 = distinct !{!617, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE5beginEv"}
!618 = !{!619}
!619 = distinct !{!619, !620, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE3endEv: argument 0"}
!620 = distinct !{!620, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12AVTPartXPathEmEEE3endEv"}
!621 = !{!333, !223, i64 16}
!622 = distinct !{!622, !269, !270}
!623 = !{!624, !231, i64 8}
!624 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_12AVTPartXPathEmEE", !625, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!625 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_12AVTPartXPathEEE", !223, i64 0}
!626 = !{!624, !223, i64 24}
!627 = !{!625, !223, i64 0}
!628 = distinct !{!628, !269, !270}
!629 = !{!336, !223, i64 8}
!630 = !{!631}
!631 = distinct !{!631, !632, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5beginEv: argument 0"}
!632 = distinct !{!632, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5beginEv"}
!633 = !{!336, !223, i64 0}
!634 = !{!635, !223, i64 16}
!635 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!636 = !{!635, !223, i64 8}
!637 = !{!638}
!638 = distinct !{!638, !639, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE3endEv: argument 0"}
!639 = distinct !{!639, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE3endEv"}
!640 = !{!641}
!641 = distinct !{!641, !642, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!642 = distinct !{!642, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!643 = distinct !{!643, !269, !270}
!644 = !{!645}
!645 = distinct !{!645, !646, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5beginEv: argument 0"}
!646 = distinct !{!646, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE5beginEv"}
!647 = !{!648}
!648 = distinct !{!648, !649, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE3endEv: argument 0"}
!649 = distinct !{!649, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17XalanQNameByValueEmEEE3endEv"}
!650 = !{!336, !223, i64 16}
!651 = distinct !{!651, !269, !270}
!652 = !{!653, !231, i64 8}
!653 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_17XalanQNameByValueEmEE", !654, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!654 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_17XalanQNameByValueEEE", !223, i64 0}
!655 = !{!653, !223, i64 24}
!656 = !{!654, !223, i64 0}
!657 = !{!"VP", i32 0, i64 26, i64 4412631145780651561, i64 26}
!658 = !{!"branch_weights", i32 3201, i32 127}
!659 = distinct !{!659, !269, !270}
!660 = !{!340, !223, i64 8}
!661 = !{!662}
!662 = distinct !{!662, !663, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv: argument 0"}
!663 = distinct !{!663, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv"}
!664 = !{!340, !223, i64 0}
!665 = !{!666, !223, i64 16}
!666 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!667 = !{!666, !223, i64 8}
!668 = !{!669}
!669 = distinct !{!669, !670, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!670 = distinct !{!670, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!671 = !{!"branch_weights", i32 0, i32 4}
!672 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!673 = !{!674}
!674 = distinct !{!674, !675, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!675 = distinct !{!675, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!676 = !{!"branch_weights", i32 127, i32 129}
!677 = distinct !{!677, !269, !270}
!678 = !{!679}
!679 = distinct !{!679, !680, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv: argument 0"}
!680 = distinct !{!680, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE5beginEv"}
!681 = !{!682}
!682 = distinct !{!682, !683, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv: argument 0"}
!683 = distinct !{!683, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_18ElemApplyTemplatesEmEEE3endEv"}
!684 = !{!"branch_weights", i32 2, i32 4}
!685 = !{!340, !223, i64 16}
!686 = distinct !{!686, !269, !270}
!687 = !{!"function_entry_count", i64 4}
!688 = !{!689, !231, i64 8}
!689 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_18ElemApplyTemplatesEmEE", !690, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!690 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_18ElemApplyTemplatesEEE", !223, i64 0}
!691 = !{!689, !223, i64 24}
!692 = !{!690, !223, i64 0}
!693 = !{!"VP", i32 0, i64 32, i64 9206948017064192149, i64 32}
!694 = !{!"branch_weights", i32 897, i32 127}
!695 = distinct !{!695, !269, !270}
!696 = !{!343, !223, i64 8}
!697 = !{!698}
!698 = distinct !{!698, !699, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5beginEv: argument 0"}
!699 = distinct !{!699, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5beginEv"}
!700 = !{!343, !223, i64 0}
!701 = !{!702, !223, i64 16}
!702 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!703 = !{!702, !223, i64 8}
!704 = !{!705}
!705 = distinct !{!705, !706, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE3endEv: argument 0"}
!706 = distinct !{!706, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE3endEv"}
!707 = !{!708}
!708 = distinct !{!708, !709, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13ElemAttributeEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!709 = distinct !{!709, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_13ElemAttributeEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!710 = distinct !{!710, !269, !270}
!711 = !{!712}
!712 = distinct !{!712, !713, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5beginEv: argument 0"}
!713 = distinct !{!713, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE5beginEv"}
!714 = !{!715}
!715 = distinct !{!715, !716, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE3endEv: argument 0"}
!716 = distinct !{!716, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_13ElemAttributeEmEEE3endEv"}
!717 = !{!343, !223, i64 16}
!718 = distinct !{!718, !269, !270}
!719 = !{!720, !231, i64 8}
!720 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_13ElemAttributeEmEE", !721, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!721 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_13ElemAttributeEEE", !223, i64 0}
!722 = !{!720, !223, i64 24}
!723 = !{!721, !223, i64 0}
!724 = !{!"VP", i32 0, i64 3, i64 7468675580084389462, i64 3}
!725 = !{!"branch_weights", i32 257, i32 127}
!726 = distinct !{!726, !269, !270}
!727 = !{!346, !223, i64 8}
!728 = !{!729}
!729 = distinct !{!729, !730, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5beginEv: argument 0"}
!730 = distinct !{!730, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5beginEv"}
!731 = !{!346, !223, i64 0}
!732 = !{!733, !223, i64 16}
!733 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!734 = !{!733, !223, i64 8}
!735 = !{!736}
!736 = distinct !{!736, !737, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE3endEv: argument 0"}
!737 = distinct !{!737, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE3endEv"}
!738 = !{!739}
!739 = distinct !{!739, !740, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!740 = distinct !{!740, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!741 = distinct !{!741, !269, !270}
!742 = !{!743}
!743 = distinct !{!743, !744, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5beginEv: argument 0"}
!744 = distinct !{!744, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE5beginEv"}
!745 = !{!746}
!746 = distinct !{!746, !747, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE3endEv: argument 0"}
!747 = distinct !{!747, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemAttributeSetEmEEE3endEv"}
!748 = !{!346, !223, i64 16}
!749 = distinct !{!749, !269, !270}
!750 = !{!751, !231, i64 8}
!751 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_16ElemAttributeSetEmEE", !752, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!752 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_16ElemAttributeSetEEE", !223, i64 0}
!753 = !{!751, !223, i64 24}
!754 = !{!752, !223, i64 0}
!755 = distinct !{!755, !269, !270}
!756 = !{!349, !223, i64 8}
!757 = !{!758}
!758 = distinct !{!758, !759, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5beginEv: argument 0"}
!759 = distinct !{!759, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5beginEv"}
!760 = !{!349, !223, i64 0}
!761 = !{!762, !223, i64 16}
!762 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!763 = !{!762, !223, i64 8}
!764 = !{!765}
!765 = distinct !{!765, !766, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE3endEv: argument 0"}
!766 = distinct !{!766, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE3endEv"}
!767 = !{!768}
!768 = distinct !{!768, !769, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!769 = distinct !{!769, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!770 = distinct !{!770, !269, !270}
!771 = !{!772}
!772 = distinct !{!772, !773, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5beginEv: argument 0"}
!773 = distinct !{!773, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE5beginEv"}
!774 = !{!775}
!775 = distinct !{!775, !776, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE3endEv: argument 0"}
!776 = distinct !{!776, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_16ElemCallTemplateEmEEE3endEv"}
!777 = !{!349, !223, i64 16}
!778 = distinct !{!778, !269, !270}
!779 = !{!780, !231, i64 8}
!780 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_16ElemCallTemplateEmEE", !781, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!781 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_16ElemCallTemplateEEE", !223, i64 0}
!782 = !{!780, !223, i64 24}
!783 = !{!781, !223, i64 0}
!784 = !{!"VP", i32 0, i64 8, i64 -4155300713582969144, i64 8}
!785 = distinct !{!785, !269, !270}
!786 = !{!352, !223, i64 8}
!787 = !{!788}
!788 = distinct !{!788, !789, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5beginEv: argument 0"}
!789 = distinct !{!789, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5beginEv"}
!790 = !{!352, !223, i64 0}
!791 = !{!792, !223, i64 16}
!792 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!793 = !{!792, !223, i64 8}
!794 = !{!795}
!795 = distinct !{!795, !796, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE3endEv: argument 0"}
!796 = distinct !{!796, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE3endEv"}
!797 = !{!798}
!798 = distinct !{!798, !799, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_11ElemElementEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!799 = distinct !{!799, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_11ElemElementEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!800 = distinct !{!800, !269, !270}
!801 = !{!802}
!802 = distinct !{!802, !803, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5beginEv: argument 0"}
!803 = distinct !{!803, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE5beginEv"}
!804 = !{!805}
!805 = distinct !{!805, !806, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE3endEv: argument 0"}
!806 = distinct !{!806, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemElementEmEEE3endEv"}
!807 = !{!352, !223, i64 16}
!808 = distinct !{!808, !269, !270}
!809 = !{!810, !231, i64 8}
!810 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_11ElemElementEmEE", !811, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!811 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_11ElemElementEEE", !223, i64 0}
!812 = !{!810, !223, i64 24}
!813 = !{!811, !223, i64 0}
!814 = distinct !{!814, !269, !270}
!815 = !{!355, !223, i64 8}
!816 = !{!817}
!817 = distinct !{!817, !818, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5beginEv: argument 0"}
!818 = distinct !{!818, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5beginEv"}
!819 = !{!355, !223, i64 0}
!820 = !{!821, !223, i64 16}
!821 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!822 = !{!821, !223, i64 8}
!823 = !{!824}
!824 = distinct !{!824, !825, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE3endEv: argument 0"}
!825 = distinct !{!825, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE3endEv"}
!826 = !{!"branch_weights", i32 0, i32 10}
!827 = !{!"VP", i32 0, i64 10, i64 -7405368087501025645, i64 10}
!828 = !{!829}
!829 = distinct !{!829, !830, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!830 = distinct !{!830, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!831 = !{!"branch_weights", i32 127, i32 513}
!832 = distinct !{!832, !269, !270}
!833 = !{!834}
!834 = distinct !{!834, !835, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5beginEv: argument 0"}
!835 = distinct !{!835, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE5beginEv"}
!836 = !{!837}
!837 = distinct !{!837, !838, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE3endEv: argument 0"}
!838 = distinct !{!838, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_17ElemLiteralResultEmEEE3endEv"}
!839 = !{!"branch_weights", i32 0, i32 12}
!840 = !{!"branch_weights", i32 2, i32 10}
!841 = !{!355, !223, i64 16}
!842 = distinct !{!842, !269, !270}
!843 = !{!"function_entry_count", i64 10}
!844 = !{!845, !231, i64 8}
!845 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_17ElemLiteralResultEmEE", !846, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!846 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_17ElemLiteralResultEEE", !223, i64 0}
!847 = !{!"branch_weights", i32 1, i32 159}
!848 = !{!845, !223, i64 24}
!849 = !{!846, !223, i64 0}
!850 = !{!"VP", i32 0, i64 188, i64 -3731572420872482119, i64 188}
!851 = !{!"branch_weights", i32 2849, i32 159}
!852 = distinct !{!852, !269, !270}
!853 = !{!358, !223, i64 8}
!854 = !{!855}
!855 = distinct !{!855, !856, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5beginEv: argument 0"}
!856 = distinct !{!856, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5beginEv"}
!857 = !{!358, !223, i64 0}
!858 = !{!859, !223, i64 16}
!859 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!860 = !{!859, !223, i64 8}
!861 = !{!862}
!862 = distinct !{!862, !863, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE3endEv: argument 0"}
!863 = distinct !{!863, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE3endEv"}
!864 = !{!865}
!865 = distinct !{!865, !866, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_12ElemTemplateEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!866 = distinct !{!866, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_12ElemTemplateEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!867 = !{!"branch_weights", i32 127, i32 65}
!868 = distinct !{!868, !269, !270}
!869 = !{!870}
!870 = distinct !{!870, !871, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5beginEv: argument 0"}
!871 = distinct !{!871, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE5beginEv"}
!872 = !{!873}
!873 = distinct !{!873, !874, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE3endEv: argument 0"}
!874 = distinct !{!874, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemTemplateEmEEE3endEv"}
!875 = !{!"branch_weights", i32 0, i32 5}
!876 = !{!"branch_weights", i32 2, i32 3}
!877 = !{!358, !223, i64 16}
!878 = distinct !{!878, !269, !270}
!879 = !{!880, !231, i64 8}
!880 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_12ElemTemplateEmEE", !881, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!881 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_12ElemTemplateEEE", !223, i64 0}
!882 = !{!"branch_weights", i32 1, i32 191}
!883 = !{!880, !223, i64 24}
!884 = !{!881, !223, i64 0}
!885 = !{!"VP", i32 0, i64 30, i64 4762117031228118482, i64 30}
!886 = !{!"branch_weights", i32 1729, i32 191}
!887 = distinct !{!887, !269, !270}
!888 = !{!361, !223, i64 8}
!889 = !{!890}
!890 = distinct !{!890, !891, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5beginEv: argument 0"}
!891 = distinct !{!891, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5beginEv"}
!892 = !{!361, !223, i64 0}
!893 = !{!894, !223, i64 16}
!894 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!895 = !{!894, !223, i64 8}
!896 = !{!897}
!897 = distinct !{!897, !898, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE3endEv: argument 0"}
!898 = distinct !{!898, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE3endEv"}
!899 = !{!"branch_weights", i32 0, i32 22}
!900 = !{!"VP", i32 0, i64 22, i64 -7405368087501025645, i64 22}
!901 = !{!902}
!902 = distinct !{!902, !903, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!903 = distinct !{!903, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!904 = !{!"branch_weights", i32 127, i32 1281}
!905 = distinct !{!905, !269, !270}
!906 = !{!907}
!907 = distinct !{!907, !908, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5beginEv: argument 0"}
!908 = distinct !{!908, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE5beginEv"}
!909 = !{!910}
!910 = distinct !{!910, !911, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE3endEv: argument 0"}
!911 = distinct !{!911, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_15ElemTextLiteralEmEEE3endEv"}
!912 = !{!"branch_weights", i32 0, i32 24}
!913 = !{!"branch_weights", i32 2, i32 22}
!914 = !{!361, !223, i64 16}
!915 = distinct !{!915, !269, !270}
!916 = !{!"function_entry_count", i64 22}
!917 = !{!918, !231, i64 8}
!918 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_15ElemTextLiteralEmEE", !919, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!919 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_15ElemTextLiteralEEE", !223, i64 0}
!920 = !{!"branch_weights", i32 1, i32 175}
!921 = !{!918, !223, i64 24}
!922 = !{!919, !223, i64 0}
!923 = !{!"VP", i32 0, i64 440, i64 -3241721810479110752, i64 440}
!924 = !{!"branch_weights", i32 3345, i32 175}
!925 = distinct !{!925, !269, !270}
!926 = !{!364, !223, i64 8}
!927 = !{!928}
!928 = distinct !{!928, !929, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5beginEv: argument 0"}
!929 = distinct !{!929, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5beginEv"}
!930 = !{!364, !223, i64 0}
!931 = !{!932, !223, i64 16}
!932 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!933 = !{!932, !223, i64 8}
!934 = !{!935}
!935 = distinct !{!935, !936, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE3endEv: argument 0"}
!936 = distinct !{!936, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE3endEv"}
!937 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!938 = !{!939}
!939 = distinct !{!939, !940, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_11ElemValueOfEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!940 = distinct !{!940, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_11ElemValueOfEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!941 = !{!"branch_weights", i32 127, i32 321}
!942 = distinct !{!942, !269, !270}
!943 = !{!944}
!944 = distinct !{!944, !945, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5beginEv: argument 0"}
!945 = distinct !{!945, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE5beginEv"}
!946 = !{!947}
!947 = distinct !{!947, !948, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE3endEv: argument 0"}
!948 = distinct !{!948, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_11ElemValueOfEmEEE3endEv"}
!949 = !{!"branch_weights", i32 0, i32 9}
!950 = !{!"branch_weights", i32 2, i32 7}
!951 = !{!364, !223, i64 16}
!952 = distinct !{!952, !269, !270}
!953 = !{!"function_entry_count", i64 7}
!954 = !{!955, !231, i64 8}
!955 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_11ElemValueOfEmEE", !956, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!956 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_11ElemValueOfEEE", !223, i64 0}
!957 = !{!"branch_weights", i32 1, i32 223}
!958 = !{!955, !223, i64 24}
!959 = !{!956, !223, i64 0}
!960 = !{!"VP", i32 0, i64 65, i64 1781999775094327673, i64 65}
!961 = !{!"branch_weights", i32 1857, i32 223}
!962 = distinct !{!962, !269, !270}
!963 = !{!367, !223, i64 8}
!964 = !{!965}
!965 = distinct !{!965, !966, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5beginEv: argument 0"}
!966 = distinct !{!966, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5beginEv"}
!967 = !{!367, !223, i64 0}
!968 = !{!969, !223, i64 16}
!969 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!970 = !{!969, !223, i64 8}
!971 = !{!972}
!972 = distinct !{!972, !973, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE3endEv: argument 0"}
!973 = distinct !{!973, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE3endEv"}
!974 = !{!975}
!975 = distinct !{!975, !976, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_12ElemVariableEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!976 = distinct !{!976, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_12ElemVariableEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!977 = distinct !{!977, !269, !270}
!978 = !{!979}
!979 = distinct !{!979, !980, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5beginEv: argument 0"}
!980 = distinct !{!980, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE5beginEv"}
!981 = !{!982}
!982 = distinct !{!982, !983, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE3endEv: argument 0"}
!983 = distinct !{!983, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_12ElemVariableEmEEE3endEv"}
!984 = !{!367, !223, i64 16}
!985 = distinct !{!985, !269, !270}
!986 = !{!987, !231, i64 8}
!987 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_12ElemVariableEmEE", !988, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!988 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_12ElemVariableEEE", !223, i64 0}
!989 = !{!987, !223, i64 24}
!990 = !{!988, !223, i64 0}
!991 = !{!"VP", i32 0, i64 1, i64 4036181731900752679, i64 1}
!992 = distinct !{!992, !269, !270}
!993 = !{!370, !223, i64 8}
!994 = !{!995}
!995 = distinct !{!995, !996, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv: argument 0"}
!996 = distinct !{!996, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv"}
!997 = !{!370, !223, i64 0}
!998 = !{!999, !223, i64 16}
!999 = !{!"_ZTSN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE4NodeE", !223, i64 0, !223, i64 8, !223, i64 16}
!1000 = !{!999, !223, i64 8}
!1001 = !{!1002}
!1002 = distinct !{!1002, !1003, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!1003 = distinct !{!1003, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!1004 = !{!1005}
!1005 = distinct !{!1005, !1006, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEppEv: argument 0"}
!1006 = distinct !{!1006, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEEENS_9XalanListIS5_E4NodeEEppEv"}
!1007 = distinct !{!1007, !269, !270}
!1008 = !{!1009}
!1009 = distinct !{!1009, !1010, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv: argument 0"}
!1010 = distinct !{!1010, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE5beginEv"}
!1011 = !{!1012}
!1012 = distinct !{!1012, !1013, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv: argument 0"}
!1013 = distinct !{!1013, !"_ZN11xalanc_1_109XalanListIPNS_10ArenaBlockINS_21XalanMatchPatternDataEmEEE3endEv"}
!1014 = !{!370, !223, i64 16}
!1015 = distinct !{!1015, !269, !270}
!1016 = !{!1017, !231, i64 8}
!1017 = !{!"_ZTSN11xalanc_1_1014ArenaBlockBaseINS_21XalanMatchPatternDataEmEE", !1018, i64 0, !231, i64 8, !231, i64 16, !223, i64 24}
!1018 = !{!"_ZTSN11xalanc_1_1014XalanAllocatorINS_21XalanMatchPatternDataEEE", !223, i64 0}
!1019 = !{!1017, !223, i64 24}
!1020 = !{!1018, !223, i64 0}
!1021 = !{!"branch_weights", i32 1345, i32 191}
!1022 = distinct !{!1022, !269, !270}
!1023 = !{!437, !231, i64 16}
!1024 = !{!437, !223, i64 0}
!1025 = distinct !{!1025, !269, !270}
!1026 = distinct !{!1026, !269, !270}
!1027 = distinct !{!1027, !269, !270}
!1028 = distinct !{!1028, !269, !270}
!1029 = !{!"function_entry_count", i64 335474016}
!1030 = !{!"VP", i32 0, i64 335474016, i64 1429807492782621726, i64 335473740, i64 6313752753425413918, i64 276}
!1031 = !{!"VP", i32 0, i64 335474016, i64 6313752753425413918, i64 201224632, i64 1429807492782621726, i64 134249384}
!1032 = !{!"branch_weights", i32 201394622, i32 134079394}
!1033 = !{!"VP", i32 0, i64 201394622, i64 8049669377434801377, i64 201394614, i64 7946378714684030190, i64 8}
!1034 = !{!"VP", i32 0, i64 201394622, i64 7946378714684030190, i64 111850953, i64 8049669377434801377, i64 89543669}
!1035 = !{!"branch_weights", i32 188, i32 0}
!1036 = !{!"branch_weights", i32 1, i32 187}
!1037 = !{!392, !223, i64 24}
!1038 = !{!392, !223, i64 0}
!1039 = !{!1040}
!1040 = distinct !{!1040, !1041, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!1041 = distinct !{!1041, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!1042 = !{!1043}
!1043 = distinct !{!1043, !1044, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEmmEv: argument 0"}
!1044 = distinct !{!1044, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEmmEv"}
!1045 = !{!"branch_weights", i32 0, i32 187}
!1046 = !{!1047}
!1047 = distinct !{!1047, !1048, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!1048 = distinct !{!1048, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!1049 = !{!1050}
!1050 = distinct !{!1050, !1051, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!1051 = distinct !{!1051, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!1052 = distinct !{!1052, !269, !270}
!1053 = !{!1054}
!1054 = distinct !{!1054, !1055, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!1055 = distinct !{!1055, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!1056 = !{!238, !223, i64 16}
!1057 = !{!392, !231, i64 16}
!1058 = !{!"branch_weights", i32 127, i32 65409}
!1059 = distinct !{!1059, !269, !270}
!1060 = distinct !{!1060, !269, !270}
!1061 = distinct !{!1061, !269, !270}
!1062 = distinct !{!1062, !269, !270}
!1063 = distinct !{!1063, !269, !270}
!1064 = !{!1065}
!1065 = distinct !{!1065, !1066, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv: argument 0"}
!1066 = distinct !{!1066, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv"}
!1067 = !{!1068}
!1068 = distinct !{!1068, !1069, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv: argument 0"}
!1069 = distinct !{!1069, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv"}
!1070 = !{!1071}
!1071 = distinct !{!1071, !1072, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEEENS_9XalanListIS8_E4NodeEEppEi: argument 0"}
!1072 = distinct !{!1072, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEEENS_9XalanListIS8_E4NodeEEppEi"}
!1073 = distinct !{!1073, !269, !270}
!1074 = !{!233, !223, i64 16}
!1075 = !{!1076}
!1076 = distinct !{!1076, !1077, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv: argument 0"}
!1077 = distinct !{!1077, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE5beginEv"}
!1078 = !{!1079}
!1079 = distinct !{!1079, !1080, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv: argument 0"}
!1080 = distinct !{!1080, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS4_EEEEEE3endEv"}
!1081 = !{!1082}
!1082 = distinct !{!1082, !1083, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEppEi: argument 0"}
!1083 = distinct !{!1083, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorIPKvNS_31MemoryManagedConstructionTraitsIS5_EEEEEEENS_9XalanListISA_E4NodeEEppEi"}
!1084 = distinct !{!1084, !269, !270}
!1085 = distinct !{!1085, !269, !270}
!1086 = distinct !{!1086, !269, !270}
!1087 = distinct !{!1087, !269, !270}
!1088 = distinct !{!1088, !269, !270}
!1089 = distinct !{!1089, !269, !270}
!1090 = !{!"function_entry_count", i64 807}
!1091 = !{!"branch_weights", i32 792, i32 15}
!1092 = !{!"branch_weights", i32 3, i32 12}
!1093 = !{!"branch_weights", i32 15, i32 0}
!1094 = !{!"VP", i32 0, i64 12, i64 -7405368087501025645, i64 12}
!1095 = !{!"function_entry_count", i64 15}
!1096 = !{!"VP", i32 0, i64 12, i64 8345045103670217670, i64 12}
!1097 = !{!"branch_weights", i32 12, i32 0}
!1098 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!1099 = !{!"branch_weights", i32 191, i32 1377}
!1100 = distinct !{!1100, !269, !270}
!1101 = distinct !{!1101, !269, !270}
!1102 = distinct !{!1102, !269, !270}
!1103 = distinct !{!1103, !269, !270}
!1104 = !{!"VP", i32 0, i64 2, i64 8345045103670217670, i64 2}
!1105 = !{!"function_entry_count", i64 5}
!1106 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!1107 = !{!"branch_weights", i32 5, i32 0}
!1108 = !{!"function_entry_count", i64 9}
!1109 = !{!"VP", i32 0, i64 9, i64 8345045103670217670, i64 9}
!1110 = !{!"branch_weights", i32 9, i32 0}
!1111 = !{!"function_entry_count", i64 6}
!1112 = !{!"VP", i32 0, i64 6, i64 8345045103670217670, i64 6}
!1113 = !{!1114}
!1114 = distinct !{!1114, !1115, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv: argument 0"}
!1115 = distinct !{!1115, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv"}
!1116 = !{!1117}
!1117 = distinct !{!1117, !1118, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEEENS_9XalanListIS8_E4NodeEEmmEv: argument 0"}
!1118 = distinct !{!1118, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEEENS_9XalanListIS8_E4NodeEEmmEv"}
!1119 = !{!"branch_weights", i32 1, i32 487}
!1120 = !{!"branch_weights", i32 8, i32 479}
!1121 = !{!1122}
!1122 = distinct !{!1122, !1123, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv: argument 0"}
!1123 = distinct !{!1123, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv"}
!1124 = !{!"branch_weights", i32 1, i32 8}
!1125 = !{!1126}
!1126 = distinct !{!1126, !1127, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv: argument 0"}
!1127 = distinct !{!1127, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE5beginEv"}
!1128 = !{!"branch_weights", i32 1, i32 22}
!1129 = !{!"branch_weights", i32 19, i32 3}
!1130 = !{!"branch_weights", i32 127, i32 241}
!1131 = distinct !{!1131, !269, !270}
!1132 = !{!1133}
!1133 = distinct !{!1133, !1134, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv: argument 0"}
!1134 = distinct !{!1134, !"_ZN11xalanc_1_109XalanListISt4pairImPNS_11XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEEEE3endEv"}
!1135 = !{!"branch_weights", i32 6, i32 0}
!1136 = !{!"function_entry_count", i64 152}
!1137 = !{!"branch_weights", i32 0, i32 152}
!1138 = !{!"branch_weights", i32 152, i32 0}
!1139 = !{!"branch_weights", i32 1, i32 151}
!1140 = !{!"branch_weights", i32 151, i32 8215}
!1141 = distinct !{!1141, !269, !270}
!1142 = !{!"function_entry_count", i64 64551586}
!1143 = !{!"branch_weights", i32 64551590, i32 18}
!1144 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!1145 = !{!"branch_weights", i32 18, i32 0}
!1146 = !{!"branch_weights", i32 4, i32 64551586}
!1147 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!1148 = !{!"branch_weights", i32 42418193, i32 22133393}
!1149 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!1150 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!1151 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!1152 = !{!"function_entry_count", i64 155828046}
!1153 = !{!"branch_weights", i32 0, i32 155828046}
!1154 = !{!"branch_weights", i32 133170777, i32 22657269}
!1155 = !{!"branch_weights", i32 20, i32 133170757}
!1156 = !{!"branch_weights", i32 1, i32 19024395}
!1157 = !{!"branch_weights", i32 19024395, i32 -26420601}
!1158 = distinct !{!1158, !269, !270}
!1159 = !{!"branch_weights", i32 20748786, i32 1908483}
!1160 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!1161 = !{!"branch_weights", i32 20748786, i32 0}
!1162 = !{!"branch_weights", i32 0, i32 20748786}
!1163 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!1164 = !{!"branch_weights", i32 0, i32 1908483}
!1165 = !{!"branch_weights", i32 1, i32 1908482}
!1166 = !{!"branch_weights", i32 1908482, i32 49797853}
!1167 = distinct !{!1167, !269, !270}
!1168 = !{!"branch_weights", i32 1908482, i32 1}
!1169 = distinct !{!1169, !269, !270}
!1170 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!1171 = distinct !{!1171, !269, !270}
!1172 = !{!"function_entry_count", i64 124150652}
!1173 = !{!"branch_weights", i32 124150652, i32 0}
