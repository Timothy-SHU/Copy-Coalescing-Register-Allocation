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
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.5" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.5" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_109findNodesINS_21LeadingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_ = comdat any

$_ZN11xalanc_1_109findNodesINS_22TrailingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_ = comdat any

$_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeD0Ev = comdat any

$_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingD0Ev = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingD0Ev = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing8getErrorERNS_14XalanDOMStringE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceD0Ev = comdat any

$_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctD0Ev = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct8getErrorERNS_14XalanDOMStringE = comdat any

$_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionD0Ev = comdat any

$_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE = comdat any

$_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection8getErrorERNS_14XalanDOMStringE = comdat any

$_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = comdat any

$_ZTSN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = comdat any

$_ZTIN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = comdat any

$_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE = comdat any

$_ZTSN11xalanc_1_1026XalanEXSLTFunctionDistinctE = comdat any

$_ZTIN11xalanc_1_1026XalanEXSLTFunctionDistinctE = comdat any

$_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = comdat any

$_ZTSN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = comdat any

$_ZTIN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = comdat any

@_ZN11xalanc_1_10L20s_differenceFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionDifference" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L18s_distinctFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionDistinct" zeroinitializer, align 8
@_ZN11xalanc_1_10L21s_hasSameNodeFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionHasSameNode" zeroinitializer, align 8
@_ZN11xalanc_1_10L22s_intersectionFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionIntersection" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_leadingFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionLeading" zeroinitializer, align 8
@_ZN11xalanc_1_10L18s_trailingFunctionE = internal global %"class.xalanc_1_10::XalanEXSLTFunctionTrailing" zeroinitializer, align 8
@_ZN11xalanc_1_10L14s_setNamespaceE = internal constant [22 x i16] [i16 104, i16 116, i16 116, i16 112, i16 58, i16 47, i16 47, i16 101, i16 120, i16 115, i16 108, i16 116, i16 46, i16 111, i16 114, i16 103, i16 47, i16 115, i16 101, i16 116, i16 115, i16 0], align 16
@_ZN11xalanc_1_10L16theFunctionTableE = internal constant [7 x %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry"] [%"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L24s_differenceFunctionNameE, ptr @_ZN11xalanc_1_10L20s_differenceFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_distinctFunctionNameE, ptr @_ZN11xalanc_1_10L18s_distinctFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L25s_hasSameNodeFunctionNameE, ptr @_ZN11xalanc_1_10L21s_hasSameNodeFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L26s_intersectionFunctionNameE, ptr @_ZN11xalanc_1_10L22s_intersectionFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L21s_leadingFunctionNameE, ptr @_ZN11xalanc_1_10L17s_leadingFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" { ptr @_ZN11xalanc_1_10L22s_trailingFunctionNameE, ptr @_ZN11xalanc_1_10L18s_trailingFunctionE }, %"struct.xalanc_1_10::XalanExtensionsInstaller::FunctionTableEntry" zeroinitializer], align 16
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
@_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, ptr @_ZN11xalanc_1_1018FunctionDifferenceD2Ev, ptr @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceD0Ev, ptr @_ZNK11xalanc_1_1018FunctionDifference7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = linkonce_odr dso_local constant [46 x i8] c"N11xalanc_1_1028XalanEXSLTFunctionDifferenceE\00", comdat, align 1
@_ZTIN11xalanc_1_1018FunctionDifferenceE = external constant ptr
@_ZTIN11xalanc_1_1028XalanEXSLTFunctionDifferenceE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, ptr @_ZTIN11xalanc_1_1018FunctionDifferenceE }, comdat, align 8
@.str = private unnamed_addr constant [13 x i8] c"difference()\00", align 1
@_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1026XalanEXSLTFunctionDistinctE, ptr @_ZN11xalanc_1_1016FunctionDistinctD2Ev, ptr @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctD0Ev, ptr @_ZNK11xalanc_1_1016FunctionDistinct7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1026XalanEXSLTFunctionDistinctE = linkonce_odr dso_local constant [44 x i8] c"N11xalanc_1_1026XalanEXSLTFunctionDistinctE\00", comdat, align 1
@_ZTIN11xalanc_1_1016FunctionDistinctE = external constant ptr
@_ZTIN11xalanc_1_1026XalanEXSLTFunctionDistinctE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1026XalanEXSLTFunctionDistinctE, ptr @_ZTIN11xalanc_1_1016FunctionDistinctE }, comdat, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"distinct()\00", align 1
@_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = linkonce_odr dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, ptr @_ZN11xalanc_1_1020FunctionIntersectionD2Ev, ptr @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionD0Ev, ptr @_ZNK11xalanc_1_1020FunctionIntersection7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection8getErrorERNS_14XalanDOMStringE] }, comdat, align 8
@_ZTSN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = linkonce_odr dso_local constant [48 x i8] c"N11xalanc_1_1030XalanEXSLTFunctionIntersectionE\00", comdat, align 1
@_ZTIN11xalanc_1_1020FunctionIntersectionE = external constant ptr
@_ZTIN11xalanc_1_1030XalanEXSLTFunctionIntersectionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, ptr @_ZTIN11xalanc_1_1020FunctionIntersectionE }, comdat, align 8
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %53, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  %12 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = load ptr, ptr %1, align 8, !tbaa !52
  %15 = getelementptr inbounds ptr, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %18 unwind label %37

18:                                               ; preds = %11
  %19 = load ptr, ptr %2, align 8, !tbaa !52
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %3, ptr noundef %5)
          to label %22 unwind label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = load ptr, ptr %7, align 8, !tbaa !57
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28)
          to label %36 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #10
  unreachable

36:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  br label %53

37:                                               ; preds = %18, %11
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !54
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = load ptr, ptr %7, align 8, !tbaa !57
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %44)
          to label %52 unwind label %49

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #10
  unreachable

52:                                               ; preds = %37, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  resume { ptr, i32 } %38

53:                                               ; preds = %36, %6
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !58
  %56 = load ptr, ptr %55, align 8, !tbaa !59
  %57 = load ptr, ptr %56, align 8, !tbaa !52
  %58 = getelementptr inbounds ptr, ptr %57, i64 13
  %59 = load ptr, ptr %58, align 8
  %60 = call noundef nonnull align 8 dereferenceable(8) ptr %59(ptr noundef nonnull align 8 dereferenceable(24) %56)
  %61 = load ptr, ptr %54, align 8, !tbaa !58
  %62 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %61, i64 1
  %63 = load ptr, ptr %62, align 8, !tbaa !59
  %64 = load ptr, ptr %63, align 8, !tbaa !52
  %65 = getelementptr inbounds ptr, ptr %64, i64 13
  %66 = load ptr, ptr %65, align 8
  %67 = call noundef nonnull align 8 dereferenceable(8) ptr %66(ptr noundef nonnull align 8 dereferenceable(24) %63)
  %68 = load ptr, ptr %60, align 8, !tbaa !52
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  %71 = call noundef i32 %70(ptr noundef nonnull align 8 dereferenceable(8) %60)
  %72 = load ptr, ptr %67, align 8, !tbaa !52
  %73 = getelementptr inbounds ptr, ptr %72, i64 3
  %74 = load ptr, ptr %73, align 8
  %75 = call noundef i32 %74(ptr noundef nonnull align 8 dereferenceable(8) %67)
  %76 = icmp ne i32 %71, 0
  %77 = icmp ne i32 %75, 0
  %78 = and i1 %76, %77
  br i1 %78, label %81, label %99

79:                                               ; preds = %81
  %80 = icmp ne i8 %96, 0
  br label %99

81:                                               ; preds = %53, %81
  %82 = phi i8 [ %93, %81 ], [ 0, %53 ]
  %83 = phi i32 [ %94, %81 ], [ 0, %53 ]
  %84 = load ptr, ptr %60, align 8, !tbaa !52
  %85 = getelementptr inbounds ptr, ptr %84, i64 2
  %86 = load ptr, ptr %85, align 8
  %87 = call noundef ptr %86(ptr noundef nonnull align 8 dereferenceable(8) %60, i32 noundef %83)
  %88 = load ptr, ptr %67, align 8, !tbaa !52
  %89 = getelementptr inbounds ptr, ptr %88, i64 4
  %90 = load ptr, ptr %89, align 8
  %91 = call noundef i32 %90(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %87)
  %92 = icmp eq i32 %91, -1
  %93 = select i1 %92, i8 %82, i8 1
  %94 = add nuw i32 %83, 1
  %95 = icmp ult i32 %94, %71
  %96 = and i8 %93, 1
  %97 = icmp eq i8 %96, 0
  %98 = select i1 %95, i1 %97, i1 false
  br i1 %98, label %81, label %79, !llvm.loop !61

99:                                               ; preds = %79, %53
  %100 = phi i1 [ %80, %79 ], [ false, %53 ]
  %101 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !64
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  call void %105(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %102, i1 noundef zeroext %100)
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %53, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  %12 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = load ptr, ptr %1, align 8, !tbaa !52
  %15 = getelementptr inbounds ptr, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %18 unwind label %37

18:                                               ; preds = %11
  %19 = load ptr, ptr %2, align 8, !tbaa !52
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %3, ptr noundef %5)
          to label %22 unwind label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = load ptr, ptr %7, align 8, !tbaa !57
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28)
          to label %36 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #10
  unreachable

36:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  br label %53

37:                                               ; preds = %18, %11
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !54
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = load ptr, ptr %7, align 8, !tbaa !57
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %44)
          to label %52 unwind label %49

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #10
  unreachable

52:                                               ; preds = %37, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  resume { ptr, i32 } %38

53:                                               ; preds = %36, %6
  call void @_ZN11xalanc_1_109findNodesINS_21LeadingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109findNodesINS_21LeadingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8)
  %13 = load ptr, ptr %6, align 8, !tbaa !58
  %14 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 13
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %15)
  %20 = load ptr, ptr %12, align 8, !tbaa !52
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %24 = load ptr, ptr %19, align 8, !tbaa !52
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %28 = icmp eq i32 %23, 0
  %29 = icmp eq i32 %27, 0
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load ptr, ptr %6, align 8, !tbaa !58
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  store ptr %33, ptr %0, align 8, !tbaa !59
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %33)
  br label %112

34:                                               ; preds = %4
  %35 = load ptr, ptr %19, align 8, !tbaa !52
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  store ptr %1, ptr %5, align 8, !tbaa !66
  %39 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %5, i64 0, i32 1
  %40 = load ptr, ptr %1, align 8, !tbaa !52
  %41 = getelementptr inbounds ptr, ptr %40, i64 21
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr %43, ptr %39, align 8, !tbaa !68
  %44 = load ptr, ptr %12, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef i32 %46(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %38)
          to label %48 unwind label %52

48:                                               ; preds = %34
  %49 = icmp ne i32 %47, -1
  %50 = icmp ne i32 %23, 0
  %51 = and i1 %49, %50
  br i1 %51, label %54, label %75

52:                                               ; preds = %75, %34
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %97

54:                                               ; preds = %48, %72
  %55 = phi i32 [ %73, %72 ], [ 0, %48 ]
  %56 = load ptr, ptr %12, align 8, !tbaa !52
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %55)
          to label %60 unwind label %70

60:                                               ; preds = %54
  %61 = icmp eq ptr %59, %38
  br i1 %61, label %72, label %62

62:                                               ; preds = %60
  %63 = load ptr, ptr %3, align 8, !tbaa !52
  %64 = getelementptr inbounds ptr, ptr %63, i64 9
  %65 = load ptr, ptr %64, align 8
  %66 = invoke noundef zeroext i1 %65(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %67 unwind label %70

67:                                               ; preds = %62
  br i1 %66, label %72, label %68

68:                                               ; preds = %67
  %69 = load ptr, ptr %39, align 8, !tbaa !68
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %69, ptr noundef %59, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %72 unwind label %70

70:                                               ; preds = %62, %68, %54
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %97

72:                                               ; preds = %60, %68, %67
  %73 = add nuw i32 %55, 1
  %74 = icmp eq i32 %73, %23
  br i1 %74, label %75, label %54, !llvm.loop !69

75:                                               ; preds = %72, %48
  %76 = load ptr, ptr %39, align 8, !tbaa !68
  %77 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %76, i64 0, i32 1
  store i32 1, ptr %77, align 8, !tbaa !70
  %78 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !64
  %80 = load ptr, ptr %79, align 8, !tbaa !52
  %81 = getelementptr inbounds ptr, ptr %80, i64 4
  %82 = load ptr, ptr %81, align 8
  invoke void %82(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %79, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %83 unwind label %52

83:                                               ; preds = %75
  %84 = load ptr, ptr %39, align 8, !tbaa !68
  %85 = icmp eq ptr %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %83
  %87 = load ptr, ptr %5, align 8, !tbaa !66
  %88 = load ptr, ptr %87, align 8, !tbaa !52
  %89 = getelementptr inbounds ptr, ptr %88, i64 22
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef zeroext i1 %90(ptr noundef nonnull align 8 dereferenceable(24) %87, ptr noundef nonnull %84)
          to label %92 unwind label %93

92:                                               ; preds = %86
  store ptr null, ptr %39, align 8, !tbaa !68
  br label %96

93:                                               ; preds = %86
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #10
  unreachable

96:                                               ; preds = %83, %92
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %112

97:                                               ; preds = %70, %52
  %98 = phi { ptr, i32 } [ %71, %70 ], [ %53, %52 ]
  %99 = load ptr, ptr %39, align 8, !tbaa !68
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %5, align 8, !tbaa !66
  %103 = load ptr, ptr %102, align 8, !tbaa !52
  %104 = getelementptr inbounds ptr, ptr %103, i64 22
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef zeroext i1 %105(ptr noundef nonnull align 8 dereferenceable(24) %102, ptr noundef nonnull %99)
          to label %107 unwind label %108

107:                                              ; preds = %101
  store ptr null, ptr %39, align 8, !tbaa !68
  br label %111

108:                                              ; preds = %101
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  call void @__clang_call_terminate(ptr %110) #10
  unreachable

111:                                              ; preds = %97, %107
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  resume { ptr, i32 } %98

112:                                              ; preds = %96, %31
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !44
  %10 = icmp eq i64 %9, 2
  br i1 %10, label %53, label %11

11:                                               ; preds = %6
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #9
  %12 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !50
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = load ptr, ptr %1, align 8, !tbaa !52
  %15 = getelementptr inbounds ptr, ptr %14, i64 8
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef nonnull align 8 dereferenceable(36) ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %18 unwind label %37

18:                                               ; preds = %11
  %19 = load ptr, ptr %2, align 8, !tbaa !52
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  invoke void %21(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %17, ptr noundef %3, ptr noundef %5)
          to label %22 unwind label %37

22:                                               ; preds = %18
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !54
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !56
  %29 = load ptr, ptr %7, align 8, !tbaa !57
  %30 = load ptr, ptr %29, align 8, !tbaa !52
  %31 = getelementptr inbounds ptr, ptr %30, i64 3
  %32 = load ptr, ptr %31, align 8
  invoke void %32(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %28)
          to label %36 unwind label %33

33:                                               ; preds = %26
  %34 = landingpad { ptr, i32 }
          catch ptr null
  %35 = extractvalue { ptr, i32 } %34, 0
  call void @__clang_call_terminate(ptr %35) #10
  unreachable

36:                                               ; preds = %22, %26
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  br label %53

37:                                               ; preds = %18, %11
  %38 = landingpad { ptr, i32 }
          cleanup
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 2
  %40 = load i64, ptr %39, align 8, !tbaa !54
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %7, i64 0, i32 3
  %44 = load ptr, ptr %43, align 8, !tbaa !56
  %45 = load ptr, ptr %7, align 8, !tbaa !57
  %46 = load ptr, ptr %45, align 8, !tbaa !52
  %47 = getelementptr inbounds ptr, ptr %46, i64 3
  %48 = load ptr, ptr %47, align 8
  invoke void %48(ptr noundef nonnull align 8 dereferenceable(8) %45, ptr noundef %44)
          to label %52 unwind label %49

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          catch ptr null
  %51 = extractvalue { ptr, i32 } %50, 0
  call void @__clang_call_terminate(ptr %51) #10
  unreachable

52:                                               ; preds = %37, %42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #9
  resume { ptr, i32 } %38

53:                                               ; preds = %36, %6
  call void @_ZN11xalanc_1_109findNodesINS_22TrailingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr nonnull %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109findNodesINS_22TrailingCompareFunctorEEENS_10XObjectPtrERNS_21XPathExecutionContextERKNS_11XalanVectorIS2_NS_31MemoryManagedConstructionTraitsIS2_EEEET_(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !58
  %8 = load ptr, ptr %7, align 8, !tbaa !59
  %9 = load ptr, ptr %8, align 8, !tbaa !52
  %10 = getelementptr inbounds ptr, ptr %9, i64 13
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(8) ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %8)
  %13 = load ptr, ptr %6, align 8, !tbaa !58
  %14 = getelementptr inbounds %"class.xalanc_1_10::XObjectPtr", ptr %13, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = getelementptr inbounds ptr, ptr %16, i64 13
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef nonnull align 8 dereferenceable(8) ptr %18(ptr noundef nonnull align 8 dereferenceable(24) %15)
  %20 = load ptr, ptr %12, align 8, !tbaa !52
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef i32 %22(ptr noundef nonnull align 8 dereferenceable(8) %12)
  %24 = load ptr, ptr %19, align 8, !tbaa !52
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef i32 %26(ptr noundef nonnull align 8 dereferenceable(8) %19)
  %28 = icmp eq i32 %23, 0
  %29 = icmp eq i32 %27, 0
  %30 = or i1 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load ptr, ptr %6, align 8, !tbaa !58
  %33 = load ptr, ptr %32, align 8, !tbaa !59
  store ptr %33, ptr %0, align 8, !tbaa !59
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %33)
  br label %110

34:                                               ; preds = %4
  %35 = load ptr, ptr %19, align 8, !tbaa !52
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(8) %19, i32 noundef 0)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #9
  store ptr %1, ptr %5, align 8, !tbaa !66
  %39 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %5, i64 0, i32 1
  %40 = load ptr, ptr %1, align 8, !tbaa !52
  %41 = getelementptr inbounds ptr, ptr %40, i64 21
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(24) %1)
  store ptr %43, ptr %39, align 8, !tbaa !68
  %44 = load ptr, ptr %12, align 8, !tbaa !52
  %45 = getelementptr inbounds ptr, ptr %44, i64 4
  %46 = load ptr, ptr %45, align 8
  %47 = invoke noundef i32 %46(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %38)
          to label %48 unwind label %52

48:                                               ; preds = %34
  %49 = icmp ne i32 %47, -1
  %50 = icmp ne i32 %23, 0
  %51 = and i1 %49, %50
  br i1 %51, label %54, label %73

52:                                               ; preds = %73, %34
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %95

54:                                               ; preds = %48, %70
  %55 = phi i32 [ %71, %70 ], [ 0, %48 ]
  %56 = load ptr, ptr %12, align 8, !tbaa !52
  %57 = getelementptr inbounds ptr, ptr %56, i64 2
  %58 = load ptr, ptr %57, align 8
  %59 = invoke noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(8) %12, i32 noundef %55)
          to label %60 unwind label %68

60:                                               ; preds = %54
  %61 = load ptr, ptr %3, align 8, !tbaa !52
  %62 = getelementptr inbounds ptr, ptr %61, i64 9
  %63 = load ptr, ptr %62, align 8
  %64 = invoke noundef zeroext i1 %63(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(8) %59, ptr noundef nonnull align 8 dereferenceable(8) %38)
          to label %65 unwind label %68

65:                                               ; preds = %60
  br i1 %64, label %66, label %70

66:                                               ; preds = %65
  %67 = load ptr, ptr %39, align 8, !tbaa !68
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %67, ptr noundef %59, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %70 unwind label %68

68:                                               ; preds = %60, %66, %54
  %69 = landingpad { ptr, i32 }
          cleanup
  br label %95

70:                                               ; preds = %66, %65
  %71 = add nuw i32 %55, 1
  %72 = icmp eq i32 %71, %23
  br i1 %72, label %73, label %54, !llvm.loop !76

73:                                               ; preds = %70, %48
  %74 = load ptr, ptr %39, align 8, !tbaa !68
  %75 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %74, i64 0, i32 1
  store i32 1, ptr %75, align 8, !tbaa !70
  %76 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %1, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !64
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  %79 = getelementptr inbounds ptr, ptr %78, i64 4
  %80 = load ptr, ptr %79, align 8
  invoke void %80(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %81 unwind label %52

81:                                               ; preds = %73
  %82 = load ptr, ptr %39, align 8, !tbaa !68
  %83 = icmp eq ptr %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %81
  %85 = load ptr, ptr %5, align 8, !tbaa !66
  %86 = load ptr, ptr %85, align 8, !tbaa !52
  %87 = getelementptr inbounds ptr, ptr %86, i64 22
  %88 = load ptr, ptr %87, align 8
  %89 = invoke noundef zeroext i1 %88(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull %82)
          to label %90 unwind label %91

90:                                               ; preds = %84
  store ptr null, ptr %39, align 8, !tbaa !68
  br label %94

91:                                               ; preds = %84
  %92 = landingpad { ptr, i32 }
          catch ptr null
  %93 = extractvalue { ptr, i32 } %92, 0
  call void @__clang_call_terminate(ptr %93) #10
  unreachable

94:                                               ; preds = %81, %90
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  br label %110

95:                                               ; preds = %68, %52
  %96 = phi { ptr, i32 } [ %69, %68 ], [ %53, %52 ]
  %97 = load ptr, ptr %39, align 8, !tbaa !68
  %98 = icmp eq ptr %97, null
  br i1 %98, label %109, label %99

99:                                               ; preds = %95
  %100 = load ptr, ptr %5, align 8, !tbaa !66
  %101 = load ptr, ptr %100, align 8, !tbaa !52
  %102 = getelementptr inbounds ptr, ptr %101, i64 22
  %103 = load ptr, ptr %102, align 8
  %104 = invoke noundef zeroext i1 %103(ptr noundef nonnull align 8 dereferenceable(24) %100, ptr noundef nonnull %97)
          to label %105 unwind label %106

105:                                              ; preds = %99
  store ptr null, ptr %39, align 8, !tbaa !68
  br label %109

106:                                              ; preds = %99
  %107 = landingpad { ptr, i32 }
          catch ptr null
  %108 = extractvalue { ptr, i32 } %107, 0
  call void @__clang_call_terminate(ptr %108) #10
  unreachable

109:                                              ; preds = %95, %105
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #9
  resume { ptr, i32 } %96

110:                                              ; preds = %94, %31
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1018FunctionDifferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016FunctionDistinctD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1020FunctionIntersectionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller12installLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller14doInstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller14uninstallLocalERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull align 8 dereferenceable(280) %0) local_unnamed_addr #0 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE, ptr noundef nonnull align 8 dereferenceable(280) %0)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller16doUninstallLocalEPKtPKNS0_18FunctionTableEntryERNS_22XPathEnvSupportDefaultE(ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(280)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L14s_setNamespaceE, ptr noundef nonnull @_ZN11xalanc_1_10L16theFunctionTableE)
  ret void
}

declare void @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !78
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !52
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1029XalanEXSLTFunctionHasSameNode8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.7, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1025XalanEXSLTFunctionLeadingD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !78
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionLeadingE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !52
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanEXSLTFunctionLeading8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.8, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionTrailingD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !78
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionTrailingE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !52
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionTrailing8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.9, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1018FunctionDifferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1028XalanEXSLTFunctionDifferenceD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1018FunctionDifferenceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

declare void @_ZNK11xalanc_1_1018FunctionDifference7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !78
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !52
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1028XalanEXSLTFunctionDifference8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1016FunctionDistinctC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1026XalanEXSLTFunctionDistinctD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1016FunctionDistinctD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

declare void @_ZNK11xalanc_1_1016FunctionDistinct7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !78
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !52
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1026XalanEXSLTFunctionDistinct8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 145, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1020FunctionIntersectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1030XalanEXSLTFunctionIntersectionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #5 comdat align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_1020FunctionIntersectionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

declare void @_ZNK11xalanc_1_1020FunctionIntersection7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection5cloneERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !77 {
  %3 = load ptr, ptr %1, align 8, !tbaa !52
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !78
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !52
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1030XalanEXSLTFunctionIntersection8getErrorERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 147, ptr noundef nonnull @.str.6, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanEXSLTSet.cpp() #8 section ".text.startup" !prof !77 !PGOFuncName !79 {
  tail call void @_ZN11xalanc_1_1018FunctionDifferenceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L20s_differenceFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1028XalanEXSLTFunctionDifferenceE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L20s_differenceFunctionE, align 8, !tbaa !52
  %1 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1018FunctionDifferenceD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_differenceFunctionE, ptr nonnull @__dso_handle) #9
  tail call void @_ZN11xalanc_1_1016FunctionDistinctC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_distinctFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionDistinctE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L18s_distinctFunctionE, align 8, !tbaa !52
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1016FunctionDistinctD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_distinctFunctionE, ptr nonnull @__dso_handle) #9
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L21s_hasSameNodeFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1029XalanEXSLTFunctionHasSameNodeE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L21s_hasSameNodeFunctionE, align 8, !tbaa !52
  %3 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L21s_hasSameNodeFunctionE, ptr nonnull @__dso_handle) #9
  tail call void @_ZN11xalanc_1_1020FunctionIntersectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L22s_intersectionFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanEXSLTFunctionIntersectionE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L22s_intersectionFunctionE, align 8, !tbaa !52
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1020FunctionIntersectionD2Ev, ptr nonnull @_ZN11xalanc_1_10L22s_intersectionFunctionE, ptr nonnull @__dso_handle) #9
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L17s_leadingFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1025XalanEXSLTFunctionLeadingE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L17s_leadingFunctionE, align 8, !tbaa !52
  %5 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_leadingFunctionE, ptr nonnull @__dso_handle) #9
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) @_ZN11xalanc_1_10L18s_trailingFunctionE)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1026XalanEXSLTFunctionTrailingE, i64 0, inrange i32 0, i64 2), ptr @_ZN11xalanc_1_10L18s_trailingFunctionE, align 8, !tbaa !52
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_108FunctionD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_trailingFunctionE, ptr nonnull @__dso_handle) #9
  ret void
}

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!42}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41}
!35 = !{ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller13installGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller15doInstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1031XalanEXSLTSetFunctionsInstaller15uninstallGlobalERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1024XalanExtensionsInstaller17doUninstallGlobalERN11xercesc_2_713MemoryManagerEPKtPKNS0_18FunctionTableEntryE, i64 1}
!37 = !{ptr @_GLOBAL__sub_I_XalanEXSLTSet.cpp, ptr @_ZN11xalanc_1_1018FunctionDifferenceC2Ev, i64 1}
!38 = !{ptr @_GLOBAL__sub_I_XalanEXSLTSet.cpp, ptr @__cxa_atexit, i64 6}
!39 = !{ptr @_GLOBAL__sub_I_XalanEXSLTSet.cpp, ptr @_ZN11xalanc_1_1016FunctionDistinctC2Ev, i64 1}
!40 = !{ptr @_GLOBAL__sub_I_XalanEXSLTSet.cpp, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 3}
!41 = !{ptr @_GLOBAL__sub_I_XalanEXSLTSet.cpp, ptr @_ZN11xalanc_1_1020FunctionIntersectionC2Ev, i64 1}
!42 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !49, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !46, i64 0, !49, i64 8, !49, i64 16, !46, i64 24}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!"long", !47, i64 0}
!50 = !{!51, !46, i64 8}
!51 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !46, i64 8}
!52 = !{!53, !53, i64 0}
!53 = !{!"vtable pointer", !48, i64 0}
!54 = !{!55, !49, i64 16}
!55 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !46, i64 0, !49, i64 8, !49, i64 16, !46, i64 24}
!56 = !{!55, !46, i64 24}
!57 = !{!55, !46, i64 0}
!58 = !{!45, !46, i64 24}
!59 = !{!60, !46, i64 0}
!60 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !46, i64 0}
!61 = distinct !{!61, !62, !63}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"llvm.loop.unroll.disable"}
!64 = !{!65, !46, i64 16}
!65 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !51, i64 0, !46, i64 16}
!66 = !{!67, !46, i64 0}
!67 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !46, i64 0, !46, i64 8}
!68 = !{!67, !46, i64 8}
!69 = distinct !{!69, !62, !63}
!70 = !{!71, !75, i64 40}
!71 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !72, i64 0, !75, i64 40}
!72 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !73, i64 0, !74, i64 8}
!73 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!74 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !46, i64 0, !49, i64 8, !49, i64 16, !46, i64 24}
!75 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !47, i64 0}
!76 = distinct !{!76, !62, !63}
!77 = !{!"function_entry_count", i64 1}
!78 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!79 = !{!"XalanEXSLTSet.cpp;_GLOBAL__sub_I_XalanEXSLTSet.cpp"}
