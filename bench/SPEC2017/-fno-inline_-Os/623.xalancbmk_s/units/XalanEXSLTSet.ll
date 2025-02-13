; ModuleID = 'XalanEXSLTSet.cpp'
source_filename = "XalanEXSLTSet.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanEXSLTFunctionDifference" = type { %"class.xalanc_1_10::FunctionDifference" }
%"class.xalanc_1_10::FunctionDifference" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::Function" = type { ptr }
%"class.xalanc_1_10::XalanEXSLTFunctionDistinct" = type { %"class.xalanc_1_10::FunctionDistinct" }
%"class.xalanc_1_10::FunctionDistinct" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionHasSameNode" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionIntersection" = type { %"class.xalanc_1_10::FunctionIntersection" }
%"class.xalanc_1_10::FunctionIntersection" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionLeading" = type { %"class.xalanc_1_10::Function" }
%"class.xalanc_1_10::XalanEXSLTFunctionTrailing" = type { %"class.xalanc_1_10::Function" }
%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" = type { ptr, ptr }
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::LeadingCompareFunctor" = type { ptr }
%"struct.xalanc_1_10::TrailingCompareFunctor" = type { ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanAllocationGuard" = type { ptr, ptr }

$_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeD0Ev = comdat any

$_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingD0Ev = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingD0Ev = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing8getErrorERNS_14XalanDOMStringE = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv = comdat any

$_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv = comdat any

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm = comdat any

$_ZNK11xalanc_1_1010XObjectPtrptEv = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv = comdat any

$_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv = comdat any

$_ZN11xalanc_1_109findNodesINS_21LeadingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_ = comdat any

$_ZN11xalanc_1_1021LeadingCompareFunctorC2ERNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1010XObjectPtrC2ERKS0_ = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_ = comdat any

$_ZNK11xalanc_1_1021LeadingCompareFunctorclEPKNS_9XalanNodeES3_ = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv = comdat any

$_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev = comdat any

$_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv = comdat any

$_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv = comdat any

$_ZN11xalanc_1_109findNodesINS_22TrailingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_ = comdat any

$_ZN11xalanc_1_1022TrailingCompareFunctorC2ERNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1022TrailingCompareFunctorclEPKNS_9XalanNodeES3_ = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2Ev = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceD0Ev = comdat any

$_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm = comdat any

$_ZNK11xalanc_1_1020XalanAllocationGuard3getEv = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv = comdat any

$_ZN11xalanc_1_1020XalanAllocationGuardD2Ev = comdat any

$_ZN11xalanc_1_1018FunctionDifferenceC2ERKS0_ = comdat any

$_ZN11xalanc_1_108FunctionC2ERKS0_ = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2Ev = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctD0Ev = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2ERKS0_ = comdat any

$_ZN11xalanc_1_1016FunctionDistinctC2ERKS0_ = comdat any

$_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2Ev = comdat any

$_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2Ev = comdat any

$_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionD0Ev = comdat any

$_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2ERKS0_ = comdat any

$_ZN11xalanc_1_1020FunctionIntersectionC2ERKS0_ = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2Ev = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2Ev = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2ERKS0_ = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2ERKS0_ = comdat any

$_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_ = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2ERKS0_ = comdat any

$_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = comdat any

$_ZTSN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = comdat any

$_ZTIN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = comdat any

$_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE = comdat any

$_ZTSN11xalanc_1_1026XalanEXSLTFunctionDistinctE = comdat any

$_ZTIN11xalanc_1_1026XalanEXSLTFunctionDistinctE = comdat any

$_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = comdat any

$_ZTSN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = comdat any

$_ZTIN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = comdat any

@_ZTVN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeD0Ev, ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE = dso_local constant [47 x i8] c"N11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1025XalanEXSLTFunctionLeadingE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025XalanEXSLTFunctionLeadingE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingD0Ev, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1025XalanEXSLTFunctionLeadingE = dso_local constant [43 x i8] c"N11xalanc_1_1025XalanEXSLTFunctionLeadingE\00", align 1
@_ZTIN11xalanc_1_1025XalanEXSLTFunctionLeadingE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025XalanEXSLTFunctionLeadingE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZTVN11xalanc_1_1026XalanEXSLTFunctionTrailingE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1026XalanEXSLTFunctionTrailingE, ptr @_ZN11xalanc_1_108FunctionD2Ev, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingD0Ev, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing8getErrorERNS_14XalanDOMStringE] }, align 8
@_ZTSN11xalanc_1_1026XalanEXSLTFunctionTrailingE = dso_local constant [44 x i8] c"N11xalanc_1_1026XalanEXSLTFunctionTrailingE\00", align 1
@_ZTIN11xalanc_1_1026XalanEXSLTFunctionTrailingE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1026XalanEXSLTFunctionTrailingE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_10L20s_differenceFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionDifference" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, ptr @_ZN11xalanc_1_1018FunctionDifferenceD2Ev, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceD0Ev, ptr @_ZNK11xalanc_1_1018FunctionDifference7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = linkonce_odr dso_local constant [46 x i8] c"N11xalanc_1_1028XalanEXSLTFunctionDifferenceE\00", comdat, align 1
@_ZTIN11xalanc_1_1018FunctionDifferenceE = external constant ptr
@_ZTIN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, ptr @_ZTIN11xalanc_1_1018FunctionDifferenceE }, comdat, align 8
@_ZTVN11xalanc_1_1018FunctionDifferenceE = external unnamed_addr constant { [11 x ptr] }, align 8
@_ZTVN11xalanc_1_108FunctionE = external unnamed_addr constant { [11 x ptr] }, align 8
@.str = private unnamed_addr constant [13 x i8] c"difference()\00", align 1
@_ZN11xalanc_1_10L18s_distinctFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionDistinct" zeroinitializer, align 8
@_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1026XalanEXSLTFunctionDistinctE, ptr @_ZN11xalanc_1_1016FunctionDistinctD2Ev, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctD0Ev, ptr @_ZNK11xalanc_1_1016FunctionDistinct7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1026XalanEXSLTFunctionDistinctE = linkonce_odr dso_local constant [44 x i8] c"N11xalanc_1_1026XalanEXSLTFunctionDistinctE\00", comdat, align 1
@_ZTIN11xalanc_1_1016FunctionDistinctE = external constant ptr
@_ZTIN11xalanc_1_1026XalanEXSLTFunctionDistinctE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1026XalanEXSLTFunctionDistinctE, ptr @_ZTIN11xalanc_1_1016FunctionDistinctE }, comdat, align 8
@_ZTVN11xalanc_1_1016FunctionDistinctE = external unnamed_addr constant { [11 x ptr] }, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"distinct()\00", align 1
@_ZN11xalanc_1_10L21s_hasSameNodeFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionHasSameNode" zeroinitializer, align 8
@_ZN11xalanc_1_10L22s_intersectionFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionIntersection" zeroinitializer, align 8
@_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, ptr @_ZN11xalanc_1_1020FunctionIntersectionD2Ev, ptr @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionD0Ev, ptr @_ZNK11xalanc_1_1020FunctionIntersection7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = linkonce_odr dso_local constant [48 x i8] c"N11xalanc_1_1030XalanEXSLTFunctionIntersectionE\00", comdat, align 1
@_ZTIN11xalanc_1_1020FunctionIntersectionE = external constant ptr
@_ZTIN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, ptr @_ZTIN11xalanc_1_1020FunctionIntersectionE }, comdat, align 8
@_ZTVN11xalanc_1_1020FunctionIntersectionE = external unnamed_addr constant { [11 x ptr] }, align 8
@_ZN11xalanc_1_10L17s_leadingFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionLeading" zeroinitializer, align 8
@_ZN11xalanc_1_10L18s_trailingFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionTrailing" zeroinitializer, align 8
@_ZN11xalanc_1_10L14s_setNamespaceE = internal constant [22 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 115, i16 101, i16 116, i16 115, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [7 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L24s_differenceFunctionNameE, ptr @_ZN11xalanc_1_10L20s_differenceFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_distinctFunctionNameE, ptr @_ZN11xalanc_1_10L18s_distinctFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L25s_hasSameNodeFunctionNameE, ptr @_ZN11xalanc_1_10L21s_hasSameNodeFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L26s_intersectionFunctionNameE, ptr @_ZN11xalanc_1_10L22s_intersectionFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L21s_leadingFunctionNameE, ptr @_ZN11xalanc_1_10L17s_leadingFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_trailingFunctionNameE, ptr @_ZN11xalanc_1_10L18s_trailingFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
@_ZN11xalanc_1_10L24s_differenceFunctionNameE = internal constant [11 x i16] [i16 100, i16 105, i16 102, i16 102, i16 101, i16 114, i16 101, i16 110, i16 99, i16 101, i16 0], align 16
@_ZN11xalanc_1_10L22s_distinctFunctionNameE = internal constant [9 x i16] [i16 100, i16 105, i16 115, i16 116, i16 105, i16 110, i16 99, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L25s_hasSameNodeFunctionNameE = internal constant [14 x i16] [i16 104, i16 97, i16 115, i16 45, i16 115, i16 97, i16 109, i16 101, i16 45, i16 110, i16 111, i16 100, i16 101, i16 0], align 16
@_ZN11xalanc_1_10L26s_intersectionFunctionNameE = internal constant [13 x i16] [i16 105, i16 110, i16 116, i16 101, i16 114, i16 115, i16 101, i16 99, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xalanc_1_10L21s_leadingFunctionNameE = internal constant [8 x i16] [i16 108, i16 101, i16 97, i16 100, i16 105, i16 110, i16 103, i16 0], align 16
@_ZN11xalanc_1_10L22s_trailingFunctionNameE = internal constant [9 x i16] [i16 116, i16 114, i16 97, i16 105, i16 108, i16 105, i16 110, i16 103, i16 0], align 16
@.str.7 = private unnamed_addr constant [16 x i8] c"has-same-node()\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"leading()\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"trailing()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanEXSLTSet.cpp, ptr null }]

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %9 = icmp eq i64 %8, 2
  br i1 %9, label %23, label %10

10:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %11) #11
  %12 = load ptr, ptr %1, align 8, !tbaa !98
  %13 = getelementptr inbounds ptr, ptr %12, i64 8
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef nonnull align 8 dereferenceable(36) ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7) #11
          to label %16 unwind label %21

16:                                               ; preds = %10
  %17 = load ptr, ptr %2, align 8, !tbaa !98
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %15, ptr noundef %3, ptr noundef %5) #11
          to label %20 unwind label %21

20:                                               ; preds = %16
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  br label %23

21:                                               ; preds = %16, %10
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  resume { ptr, i32 } %22

23:                                               ; preds = %20, %6
  %24 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 0) #11
  %25 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %24) #11
  %26 = load ptr, ptr %25, align 8, !tbaa !98
  %27 = getelementptr inbounds ptr, ptr %26, i64 13
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef nonnull align 8 dereferenceable(8) ptr %28(ptr noundef nonnull align 8 dereferenceable(24) %25) #11
  %30 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 1) #11
  %31 = call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %30) #11
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  %33 = getelementptr inbounds ptr, ptr %32, i64 13
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef nonnull align 8 dereferenceable(8) ptr %34(ptr noundef nonnull align 8 dereferenceable(24) %31) #11
  %36 = load ptr, ptr %29, align 8, !tbaa !98
  %37 = getelementptr inbounds ptr, ptr %36, i64 3
  %38 = load ptr, ptr %37, align 8
  %39 = call noundef i32 %38(ptr noundef nonnull align 8 dereferenceable(8) %29) #11
  %40 = load ptr, ptr %35, align 8, !tbaa !98
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(8) %35) #11
  %44 = icmp ne i32 %39, 0
  %45 = icmp ne i32 %43, 0
  %46 = and i1 %44, %45
  br i1 %46, label %49, label %67

47:                                               ; preds = %49
  %48 = icmp ne i8 %64, 0
  br label %67

49:                                               ; preds = %23, %49
  %50 = phi i8 [ %61, %49 ], [ 0, %23 ]
  %51 = phi i32 [ %62, %49 ], [ 0, %23 ]
  %52 = load ptr, ptr %29, align 8, !tbaa !98
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %29, i32 noundef %51) #11
  %56 = load ptr, ptr %35, align 8, !tbaa !98
  %57 = getelementptr inbounds ptr, ptr %56, i64 4
  %58 = load ptr, ptr %57, align 8
  %59 = call noundef i32 %58(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %55) #11
  %60 = icmp eq i32 %59, -1
  %61 = select i1 %60, i8 %50, i8 1
  %62 = add nuw i32 %51, 1
  %63 = icmp ult i32 %62, %39
  %64 = and i8 %61, 1
  %65 = icmp eq i8 %64, 0
  %66 = select i1 %63, i1 %65, i1 false
  br i1 %66, label %49, label %47, !llvm.loop !101

67:                                               ; preds = %47, %23
  %68 = phi i1 [ %48, %47 ], [ false, %23 ]
  %69 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %70 = load ptr, ptr %69, align 8, !tbaa !98
  %71 = getelementptr inbounds ptr, ptr %70, i64 3
  %72 = load ptr, ptr %71, align 8
  call void %72(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %69, i1 noundef zeroext %68) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !103 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"struct.xalanc_1_10::LeadingCompareFunctor", align 8
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  %13 = load ptr, ptr %1, align 8, !tbaa !98
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7) #11
          to label %17 unwind label %22

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef %3, ptr noundef %5) #11
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  br label %24

22:                                               ; preds = %17, %11
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  resume { ptr, i32 } %23

24:                                               ; preds = %21, %6
  call void @_ZN11xalanc_1_1021LeadingCompareFunctorC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %25 = load ptr, ptr %8, align 8
  call void @_ZN11xalanc_1_109findNodesINS_21LeadingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %25) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !103 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !97 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"struct.xalanc_1_10::TrailingCompareFunctor", align 8
  %9 = tail call noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %4) #11
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %24, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #12
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  %13 = load ptr, ptr %1, align 8, !tbaa !98
  %14 = getelementptr inbounds ptr, ptr %13, i64 8
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef nonnull align 8 dereferenceable(36) ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7) #11
          to label %17 unwind label %22

17:                                               ; preds = %11
  %18 = load ptr, ptr %2, align 8, !tbaa !98
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef %3, ptr noundef %5) #11
          to label %21 unwind label %22

21:                                               ; preds = %17
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  br label %24

22:                                               ; preds = %17, %11
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %7) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #12
  resume { ptr, i32 } %23

24:                                               ; preds = %21, %6
  call void @_ZN11xalanc_1_1022TrailingCompareFunctorC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(24) %2) #11
  %25 = load ptr, ptr %8, align 8
  call void @_ZN11xalanc_1_109findNodesINS_22TrailingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr %25) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !103 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !104 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !105
  ret i64 %3
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1016ExecutionContext16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !110 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #0 comdat align 2 !prof !113 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !97 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !114
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %4, i64 %1
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 !prof !115 {
  %2 = load ptr, ptr %0, align 8, !tbaa !116
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !118 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !119
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !121 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !123
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !125

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %7 = invoke noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
          to label %8 unwind label %13

8:                                                ; preds = %5
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %6, ptr noundef %7) #11
          to label %9 unwind label %13

9:                                                ; preds = %8
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !126
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %11) #11
          to label %12 unwind label %13

12:                                               ; preds = %9, %1
  ret void

13:                                               ; preds = %9, %8, %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !127 {
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyEPtS4_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !128 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %8, label %4, !prof !129

4:                                                ; preds = %2, %4
  %5 = phi ptr [ %6, %4 ], [ %0, %2 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %5) #11
  %6 = getelementptr inbounds i16, ptr %5, i64 1
  %7 = icmp eq ptr %6, %1
  br i1 %7, label %8, label %4, !prof !130, !llvm.loop !131

8:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE5beginEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !132 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE3endEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #1 comdat align 2 !prof !133 {
  tail call void @_ZNK11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10invariantsEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  %2 = tail call noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #11
  ret ptr %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10deallocateEPt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !128 {
  %3 = load ptr, ptr %0, align 8, !tbaa !134
  %4 = load ptr, ptr %3, align 8, !tbaa !98
  %5 = getelementptr inbounds ptr, ptr %4, i64 3
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE7destroyERt(ptr noundef nonnull align 2 dereferenceable(2) %0) local_unnamed_addr #0 comdat align 2 !prof !135 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10endPointerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !136 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !126
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !137
  %6 = getelementptr inbounds i16, ptr %3, i64 %5
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109findNodesINS_21LeadingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"struct.xalanc_1_10::LeadingCompareFunctor", align 8
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  store ptr %3, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #11
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8) #11
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1) #11
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %14) #11
  %19 = load ptr, ptr %12, align 8, !tbaa !98
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  %23 = load ptr, ptr %18, align 8, !tbaa !98
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(8) %18) #11
  %27 = icmp eq i32 %22, 0
  %28 = icmp eq i32 %26, 0
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #11
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %31) #11
  br label %72

32:                                               ; preds = %4
  %33 = load ptr, ptr %18, align 8, !tbaa !98
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %37 = load ptr, ptr %12, align 8, !tbaa !98
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %36) #11
          to label %41 unwind label %43

41:                                               ; preds = %32
  %42 = icmp eq i32 %40, -1
  br i1 %42, label %62, label %45

43:                                               ; preds = %64, %62, %32
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %70

45:                                               ; preds = %41, %59
  %46 = phi i32 [ %60, %59 ], [ 0, %41 ]
  %47 = load ptr, ptr %12, align 8, !tbaa !98
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %46) #11
          to label %51 unwind label %57

51:                                               ; preds = %45
  %52 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1021LeadingCompareFunctorclEPKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %50, ptr noundef %36) #11
          to label %53 unwind label %57

53:                                               ; preds = %51
  br i1 %52, label %54, label %59

54:                                               ; preds = %53
  %55 = invoke noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
          to label %56 unwind label %57

56:                                               ; preds = %54
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %55, ptr noundef %50, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
          to label %59 unwind label %57

57:                                               ; preds = %56, %54, %51, %45
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %70

59:                                               ; preds = %56, %53
  %60 = add nuw i32 %46, 1
  %61 = icmp eq i32 %60, %22
  br i1 %61, label %62, label %45, !llvm.loop !138

62:                                               ; preds = %59, %41
  %63 = invoke noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
          to label %64 unwind label %43

64:                                               ; preds = %62
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %63) #11
  %65 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %66 = load ptr, ptr %65, align 8, !tbaa !98
  %67 = getelementptr inbounds ptr, ptr %66, i64 4
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %6) #11
          to label %69 unwind label %43

69:                                               ; preds = %64
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %72

70:                                               ; preds = %57, %43
  %71 = phi { ptr, i32 } [ %58, %57 ], [ %44, %43 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  resume { ptr, i32 } %71

72:                                               ; preds = %69, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021LeadingCompareFunctorC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !97 {
  store ptr %1, ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !140 {
  %3 = load ptr, ptr %1, align 8, !tbaa !116
  store ptr %3, ptr %0, align 8, !tbaa !116
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #1 comdat align 2 !prof !141 {
  store ptr %1, ptr %0, align 8, !tbaa !142
  %3 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %1, align 8, !tbaa !98
  %5 = getelementptr inbounds ptr, ptr %4, i64 21
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  store ptr %7, ptr %3, align 8, !tbaa !144
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1021LeadingCompareFunctorclEPKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !97 {
  %4 = icmp eq ptr %1, %2
  br i1 %4, label %12, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !145
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds ptr, ptr %7, i64 9
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  %11 = xor i1 %10, true
  br label %12

12:                                               ; preds = %5, %3
  %13 = phi i1 [ false, %3 ], [ %11, %5 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !147 {
  %2 = tail call noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %0) local_unnamed_addr #0 comdat align 2 !prof !148 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %0, i64 0, i32 1
  store i32 1, ptr %2, align 8, !tbaa !149
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  invoke void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !156 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !144
  %4 = icmp eq ptr %3, null
  br i1 %4, label %11, label %5, !prof !158

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !142
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds ptr, ptr %7, i64 22
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef zeroext i1 %9(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull %3) #11
  store ptr null, ptr %2, align 8, !tbaa !144
  br label %11

11:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109findNodesINS_22TrailingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !97 {
  %5 = alloca %"struct.xalanc_1_10::TrailingCompareFunctor", align 8
  %6 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  store ptr %3, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #11
  %8 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #11
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8) #11
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1) #11
  %14 = tail call noundef ptr @_ZNK11xalanc_1_1010XObjectPtrptEv(ptr noundef nonnull align 8 dereferenceable(8) %13) #11
  %15 = load ptr, ptr %14, align 8, !tbaa !98
  %16 = getelementptr inbounds ptr, ptr %15, i64 13
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(8) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %14) #11
  %19 = load ptr, ptr %12, align 8, !tbaa !98
  %20 = getelementptr inbounds ptr, ptr %19, i64 3
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef i32 %21(ptr noundef nonnull align 8 dereferenceable(8) %12) #11
  %23 = load ptr, ptr %18, align 8, !tbaa !98
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef i32 %25(ptr noundef nonnull align 8 dereferenceable(8) %18) #11
  %27 = icmp eq i32 %22, 0
  %28 = icmp eq i32 %26, 0
  %29 = or i1 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEixEm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0) #11
  tail call void @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %31) #11
  br label %72

32:                                               ; preds = %4
  %33 = load ptr, ptr %18, align 8, !tbaa !98
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %18, i32 noundef 0) #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #12
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListC2ERS0_(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %37 = load ptr, ptr %12, align 8, !tbaa !98
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef i32 %39(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %36) #11
          to label %41 unwind label %43

41:                                               ; preds = %32
  %42 = icmp eq i32 %40, -1
  br i1 %42, label %62, label %45

43:                                               ; preds = %64, %62, %32
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %70

45:                                               ; preds = %41, %59
  %46 = phi i32 [ %60, %59 ], [ 0, %41 ]
  %47 = load ptr, ptr %12, align 8, !tbaa !98
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %46) #11
          to label %51 unwind label %57

51:                                               ; preds = %45
  %52 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1022TrailingCompareFunctorclEPKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %50, ptr noundef %36) #11
          to label %53 unwind label %57

53:                                               ; preds = %51
  br i1 %52, label %54, label %59

54:                                               ; preds = %53
  %55 = invoke noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
          to label %56 unwind label %57

56:                                               ; preds = %54
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %55, ptr noundef %50, ptr noundef nonnull align 8 dereferenceable(24) %1) #11
          to label %59 unwind label %57

57:                                               ; preds = %56, %54, %51, %45
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %70

59:                                               ; preds = %56, %53
  %60 = add nuw i32 %46, 1
  %61 = icmp eq i32 %60, %22
  br i1 %61, label %62, label %45, !llvm.loop !159

62:                                               ; preds = %59, %41
  %63 = invoke noundef ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv(ptr noundef nonnull align 8 dereferenceable(16) %6) #11
          to label %64 unwind label %43

64:                                               ; preds = %62
  call void @_ZN11xalanc_1_1018MutableNodeRefList16setDocumentOrderEv(ptr noundef nonnull align 8 dereferenceable(44) %63) #11
  %65 = call noundef nonnull align 8 dereferenceable(16) ptr @_ZNK11xalanc_1_1021XPathExecutionContext17getXObjectFactoryEv(ptr noundef nonnull align 8 dereferenceable(24) %1) #11
  %66 = load ptr, ptr %65, align 8, !tbaa !98
  %67 = getelementptr inbounds ptr, ptr %66, i64 4
  %68 = load ptr, ptr %67, align 8
  invoke void %68(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull align 8 dereferenceable(16) %6) #11
          to label %69 unwind label %43

69:                                               ; preds = %64
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  br label %72

70:                                               ; preds = %57, %43
  %71 = phi { ptr, i32 } [ %58, %57 ], [ %44, %43 ]
  call void @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #12
  resume { ptr, i32 } %71

72:                                               ; preds = %69, %30
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1022TrailingCompareFunctorC2ERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #0 comdat align 2 !prof !97 {
  store ptr %1, ptr %0, align 8, !tbaa !139
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1022TrailingCompareFunctorclEPKNS_9XalanNodeES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 !prof !97 {
  %4 = load ptr, ptr %0, align 8, !tbaa !160
  %5 = load ptr, ptr %4, align 8, !tbaa !98
  %6 = getelementptr inbounds ptr, ptr %5, i64 9
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #11
  ret i1 %8
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #6 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L20s_differenceFunctionE) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1018FunctionDifferenceD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_differenceFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_1018FunctionDifferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1018FunctionDifferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1018FunctionDifferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1018FunctionDifferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1018FunctionDifference7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !103 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat personality ptr @__gxx_personality_v0 !prof !103 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #11
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) unnamed_addr #1 comdat align 2 !prof !162 {
  store ptr %1, ptr %0, align 8, !tbaa !139
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !98
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2) #11
  store ptr %8, ptr %4, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1018FunctionDifferenceC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !162 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  store ptr null, ptr %2, align 8, !tbaa !163
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !162 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanAllocationGuard", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !163
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !165

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !166
  %7 = load ptr, ptr %6, align 8, !tbaa !98
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  invoke void %9(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %3) #11
          to label %10 unwind label %11

10:                                               ; preds = %5, %1
  ret void

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018FunctionDifferenceC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1018FunctionDifferenceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_108FunctionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.1() unnamed_addr #6 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_distinctFunctionE) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1016FunctionDistinctD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_distinctFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_1016FunctionDistinctC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1016FunctionDistinctD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1016FunctionDistinctC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1016FunctionDistinctD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1016FunctionDistinct7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !103 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !103 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #11
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1016FunctionDistinctC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1016FunctionDistinctC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionDistinctE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.3() unnamed_addr #6 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L21s_hasSameNodeFunctionE) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L21s_hasSameNodeFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.4() unnamed_addr #6 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L22s_intersectionFunctionE) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1020FunctionIntersectionD2Ev, ptr nonnull @_ZN11xalanc_1_10L22s_intersectionFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_1020FunctionIntersectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1020FunctionIntersectionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1020FunctionIntersectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1020FunctionIntersectionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZNK11xalanc_1_1020FunctionIntersection7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !103 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #1 comdat align 2 !prof !97 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !103 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #11
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_1020FunctionIntersectionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1020FunctionIntersectionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1020FunctionIntersectionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.5() unnamed_addr #6 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L17s_leadingFunctionE) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_leadingFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionLeadingE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init.6() unnamed_addr #6 section ".text.startup" {
  tail call void @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_trailingFunctionE) #11
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_trailingFunctionE, ptr nonnull @__dso_handle) #12
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionTrailingE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 align 2 !prof !97 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #1 align 2 !prof !97 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 !prof !103 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE) #11
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !103 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #11
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !103 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #11
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionLeadingE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 comdat !prof !103 {
  %3 = alloca %"class.xalanc_1_10::XalanAllocationGuard", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #12
  call void @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 8) #11
  %4 = call noundef ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  call void @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  call void @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #12
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xalanc_1_108FunctionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #9
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionTrailingE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !98
  ret void
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTSet.cpp() #6 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  tail call fastcc void @__cxx_global_var_init.1()
  tail call fastcc void @__cxx_global_var_init.3()
  tail call fastcc void @__cxx_global_var_init.4()
  tail call fastcc void @__cxx_global_var_init.5()
  tail call fastcc void @__cxx_global_var_init.6()
  ret void
}

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!96}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95}
!36 = !{ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!37 = !{ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!38 = !{ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!39 = !{ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE4sizeEv, ptr @_ZNK11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEE10invariantsEv, i64 5}
!40 = !{ptr @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 43398227}
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
!51 = !{ptr @_ZN11xalanc_1_1010XObjectPtrC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 717007216}
!52 = !{ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListptEv, ptr @_ZNK11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList3getEv, i64 3851627}
!53 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefList7releaseEv, i64 2647211}
!54 = !{ptr @_ZN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListD2Ev, ptr @__clang_call_terminate, i64 3}
!55 = !{ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2Ev, ptr @_ZN11xalanc_1_1018FunctionDifferenceC2Ev, i64 1}
!56 = !{ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceC2ERKS0_, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_28XalanEXSLTFunctionDifferenceEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2Ev, ptr @_ZN11xalanc_1_1016FunctionDistinctC2Ev, i64 1}
!63 = !{ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!65 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!66 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctC2ERKS0_, i64 1}
!67 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionDistinctEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2Ev, ptr @_ZN11xalanc_1_1020FunctionIntersectionC2Ev, i64 1}
!71 = !{ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, i64 1}
!72 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!73 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!74 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionC2ERKS0_, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_30XalanEXSLTFunctionIntersectionEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!77 = !{ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!78 = !{ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 1}
!79 = !{ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!80 = !{ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!82 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!83 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeC2ERKS0_, i64 1}
!84 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!85 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_29XalanEXSLTFunctionHasSameNodeEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!86 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!87 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!88 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingC2ERKS0_, i64 1}
!89 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!90 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_25XalanEXSLTFunctionLeadingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!91 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardC2ERN11xercesc_2_713MemoryManagerEm, i64 1}
!92 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZNK11xalanc_1_1020XalanAllocationGuard3getEv, i64 1}
!93 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingC2ERKS0_, i64 1}
!94 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuard7releaseEv, i64 1}
!95 = !{ptr @_ZN11xalanc_1_1018XalanCopyConstructINS_26XalanEXSLTFunctionTrailingEEEPT_RN11xercesc_2_713MemoryManagerERKS2_, ptr @_ZN11xalanc_1_1020XalanAllocationGuardD2Ev, i64 1}
!96 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!97 = !{!"function_entry_count", i64 0}
!98 = !{!99, !99, i64 0}
!99 = !{!"vtable pointer", !100, i64 0}
!100 = !{!"Simple C++ TBAA"}
!101 = distinct !{!101, !102}
!102 = !{!"llvm.loop.mustprogress"}
!103 = !{!"function_entry_count", i64 1}
!104 = !{!"function_entry_count", i64 5}
!105 = !{!106, !109, i64 8}
!106 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !107, i64 0, !109, i64 8, !109, i64 16, !107, i64 24}
!107 = !{!"any pointer", !108, i64 0}
!108 = !{!"omnipotent char", !100, i64 0}
!109 = !{!"long", !108, i64 0}
!110 = !{!"function_entry_count", i64 280295}
!111 = !{!112, !107, i64 8}
!112 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !107, i64 8}
!113 = !{!"function_entry_count", i64 43398227}
!114 = !{!106, !107, i64 24}
!115 = !{!"function_entry_count", i64 246321862}
!116 = !{!117, !107, i64 0}
!117 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !107, i64 0}
!118 = !{!"function_entry_count", i64 201666166}
!119 = !{!120, !107, i64 16}
!120 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !112, i64 0, !107, i64 16}
!121 = !{!"function_entry_count", i64 2037554}
!122 = !{!"function_entry_count", i64 128698679}
!123 = !{!124, !109, i64 16}
!124 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !107, i64 0, !109, i64 8, !109, i64 16, !107, i64 24}
!125 = !{!"branch_weights", i32 43398290, i32 85300391}
!126 = !{!124, !107, i64 24}
!127 = !{!"function_entry_count", i64 6521798503}
!128 = !{!"function_entry_count", i64 85300390}
!129 = !{!"branch_weights", i32 1, i32 12185770}
!130 = !{!"branch_weights", i32 12185770, i32 -193930395}
!131 = distinct !{!131, !102}
!132 = !{!"function_entry_count", i64 227375739}
!133 = !{!"function_entry_count", i64 568333389}
!134 = !{!124, !107, i64 0}
!135 = !{!"function_entry_count", i64 30137156670}
!136 = !{!"function_entry_count", i64 825654975}
!137 = !{!124, !109, i64 8}
!138 = distinct !{!138, !102}
!139 = !{!107, !107, i64 0}
!140 = !{!"function_entry_count", i64 717007216}
!141 = !{!"function_entry_count", i64 2647209}
!142 = !{!143, !107, i64 0}
!143 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !107, i64 0, !107, i64 8}
!144 = !{!143, !107, i64 8}
!145 = !{!146, !107, i64 0}
!146 = !{!"_ZTSN11xalanc_1_1021LeadingCompareFunctorE", !107, i64 0}
!147 = !{!"function_entry_count", i64 3851627}
!148 = !{!"function_entry_count", i64 1615292}
!149 = !{!150, !154, i64 40}
!150 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !151, i64 0, !154, i64 40}
!151 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !152, i64 0, !153, i64 8}
!152 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!153 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !107, i64 0, !109, i64 8, !109, i64 16, !107, i64 24}
!154 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !108, i64 0}
!155 = !{!"function_entry_count", i64 2647211}
!156 = !{!"function_entry_count", i64 4637746}
!157 = !{!"function_entry_count", i64 3269776}
!158 = !{!"branch_weights", i32 622568, i32 2647210}
!159 = distinct !{!159, !102}
!160 = !{!161, !107, i64 0}
!161 = !{!"_ZTSN11xalanc_1_1022TrailingCompareFunctorE", !107, i64 0}
!162 = !{!"function_entry_count", i64 50702}
!163 = !{!164, !107, i64 8}
!164 = !{!"_ZTSN11xalanc_1_1020XalanAllocationGuardE", !107, i64 0, !107, i64 8}
!165 = !{!"branch_weights", i32 50703, i32 1}
!166 = !{!164, !107, i64 0}
