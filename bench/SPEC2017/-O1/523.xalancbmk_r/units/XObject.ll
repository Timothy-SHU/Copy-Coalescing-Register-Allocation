; ModuleID = 'XObject.cpp'
source_filename = "XObject.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.0" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"union.xalanc_1_10::DoubleSupport::NumberUnion" = type { double }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"struct.xalanc_1_10::equalsDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::equalFunction" = type { i8 }
%"struct.xalanc_1_10::notEqualsDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::notEqualFunction" = type { i8 }
%"struct.xalanc_1_10::greaterThanDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::greaterThanFunction" = type { i8 }
%"struct.xalanc_1_10::lessThanDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::lessThanFunction" = type { i8 }
%"struct.xalanc_1_10::greaterThanOrEqualDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::greaterThanOrEqualFunction" = type { i8 }
%"struct.xalanc_1_10::lessThanOrEqualDOMString" = type { ptr }
%"struct.xalanc_1_10::DoubleSupport::lessThanOrEqualFunction" = type { i8 }
%"class.xalanc_1_10::XObject::XObjectInvalidConversionException" = type { %"class.xalanc_1_10::XObject::XObjectException", i32, i32 }
%"class.xalanc_1_10::XObject::XObjectException" = type { %"class.xalanc_1_10::XalanXPathException" }
%"class.xalanc_1_10::XalanXPathException" = type { %"class.xalanc_1_10::XSLException", ptr }
%"class.xalanc_1_10::XSLException" = type { ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i64, i64 }
%"class.xalanc_1_10::XalanReferenceCountedObject" = type <{ ptr, i32, [4 x i8] }>
%"struct.xalanc_1_10::getStringFromNodeFunction" = type { ptr }
%"struct.xalanc_1_10::getNumberFromNodeFunction" = type { ptr }
%struct.anon = type { i32, i32 }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv = comdat any

$_ZNK11xalanc_1_107XObject33XObjectInvalidConversionException7getTypeEv = comdat any

$_ZNK11xalanc_1_107XObject16XObjectException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_18notEqualsDOMStringENS_13DoubleSupport16notEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_17lessThanDOMStringENS_13DoubleSupport16lessThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_20greaterThanDOMStringENS_13DoubleSupport19greaterThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_24lessThanOrEqualDOMStringENS_13DoubleSupport23lessThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

$_ZN11xalanc_1_1015compareNodeSetsINS_27greaterThanOrEqualDOMStringENS_13DoubleSupport26greaterThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1017doCompareNodeSetsINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE = comdat any

$_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE = comdat any

$_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_ = comdat any

@_ZN11xalanc_1_10L20s_localBooleanStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZN11xalanc_1_10L18s_localFalseStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L20s_localNodesetStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L19s_localNumberStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L19s_localStringStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L17s_localTrueStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_107XObject15s_booleanStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, align 8
@_ZN11xalanc_1_107XObject13s_falseStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L18s_localFalseStringE, align 8
@_ZN11xalanc_1_107XObject15s_nodesetStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, align 8
@_ZN11xalanc_1_107XObject14s_numberStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L19s_localNumberStringE, align 8
@_ZN11xalanc_1_107XObject26s_resultTreeFragmentStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, align 8
@_ZN11xalanc_1_107XObject14s_stringStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L19s_localStringStringE, align 8
@_ZN11xalanc_1_107XObject12s_trueStringE = dso_local local_unnamed_addr constant ptr @_ZN11xalanc_1_10L17s_localTrueStringE, align 8
@_ZN11xalanc_1_107XObject13s_emptyStringE = dso_local global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@_ZN11xalanc_1_10L9s_booleanE = internal constant [8 x i16] [i16 98, i16 111, i16 111, i16 108, i16 101, i16 97, i16 110, i16 0], align 16
@_ZN11xalanc_1_10L7s_falseE = internal constant [6 x i16] [i16 102, i16 97, i16 108, i16 115, i16 101, i16 0], align 2
@_ZN11xalanc_1_10L9s_nodesetE = internal constant [9 x i16] [i16 110, i16 111, i16 100, i16 101, i16 45, i16 115, i16 101, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L8s_numberE = internal constant [7 x i16] [i16 110, i16 117, i16 109, i16 98, i16 101, i16 114, i16 0], align 2
@_ZN11xalanc_1_10L20s_resultTreeFragmentE = internal constant [21 x i16] [i16 114, i16 101, i16 115, i16 117, i16 108, i16 116, i16 32, i16 116, i16 114, i16 101, i16 101, i16 32, i16 102, i16 114, i16 97, i16 103, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xalanc_1_10L8s_stringE = internal constant [7 x i16] [i16 115, i16 116, i16 114, i16 105, i16 110, i16 103, i16 0], align 2
@_ZN11xalanc_1_10L6s_trueE = internal constant [5 x i16] [i16 116, i16 114, i16 117, i16 101, i16 0], align 2
@_ZTVN11xalanc_1_107XObjectE = dso_local unnamed_addr constant { [19 x ptr] } { [19 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_107XObjectE, ptr @_ZN11xalanc_1_107XObjectD2Ev, ptr @_ZN11xalanc_1_107XObjectD0Ev, ptr @_ZN11xalanc_1_107XObject10referencedEv, ptr @_ZN11xalanc_1_107XObject12dereferencedEv, ptr @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject3numEv, ptr @_ZNK11xalanc_1_107XObject7booleanEv, ptr @_ZNK11xalanc_1_107XObject3strEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_107XObject5rtreeEv, ptr @_ZNK11xalanc_1_107XObject7nodesetEv, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZNK11xalanc_1_107XObject11getRealTypeEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE = dso_local constant [59 x i8] c"N11xalanc_1_107XObject33XObjectInvalidConversionExceptionE\00", align 1
@_ZTSN11xalanc_1_107XObject16XObjectExceptionE = dso_local constant [42 x i8] c"N11xalanc_1_107XObject16XObjectExceptionE\00", align 1
@_ZTIN11xalanc_1_1019XalanXPathExceptionE = external constant ptr
@_ZTIN11xalanc_1_107XObject16XObjectExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_107XObject16XObjectExceptionE, ptr @_ZTIN11xalanc_1_1019XalanXPathExceptionE }, align 8
@_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr @_ZTIN11xalanc_1_107XObject16XObjectExceptionE }, align 8
@_ZN11xalanc_1_10L11s_dummyListE = internal global %"class.xalanc_1_10::NodeRefList" zeroinitializer, align 8
@_ZN11xalanc_1_107XObject16XObjectException6m_typeE = dso_local constant [17 x i16] [i16 88, i16 79, i16 98, i16 106, i16 101, i16 99, i16 116, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_107XObject16XObjectExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_107XObject16XObjectExceptionE, ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev, ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD0Ev, ptr @_ZNK11xalanc_1_107XObject16XObjectException7getTypeEv] }, align 8
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionException6m_typeE = dso_local constant [36 x i16] [i16 88, i16 79, i16 98, i16 106, i16 101, i16 99, i16 116, i16 73, i16 110, i16 118, i16 97, i16 108, i16 105, i16 100, i16 67, i16 111, i16 110, i16 118, i16 101, i16 114, i16 115, i16 97, i16 116, i16 105, i16 111, i16 110, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev, ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD0Ev, ptr @_ZNK11xalanc_1_107XObject33XObjectInvalidConversionException7getTypeEv] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_107XObjectE = dso_local constant [24 x i8] c"N11xalanc_1_107XObjectE\00", align 1
@_ZTIN11xalanc_1_1027XalanReferenceCountedObjectE = external constant ptr
@_ZTIN11xalanc_1_107XObjectE = dso_local constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_107XObjectE, i32 0, i32 1, ptr @_ZTIN11xalanc_1_1027XalanReferenceCountedObjectE, i64 0 }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2
@_ZN11xalanc_1_1013DoubleSupport5s_NaNE = external local_unnamed_addr global %"union.xalanc_1_10::DoubleSupport::NumberUnion", align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XObject.cpp, ptr null }]

@_ZN11xalanc_1_107XObjectD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObjectD2Ev
@_ZN11xalanc_1_107XObject16XObjectExceptionC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_107XObject16XObjectExceptionC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKS1_
@_ZN11xalanc_1_107XObject16XObjectExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC1ENS0_11eObjectTypeES2_ = dso_local unnamed_addr alias void (ptr, i32, i32), ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC1ERKS1_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ERKS1_
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD2Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev
@_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #18
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #3 align 2 !prof !55 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localBooleanStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L9s_booleanE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_localFalseStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L7s_falseE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localNodesetStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L9s_nodesetE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localNumberStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L8s_numberE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L20s_resultTreeFragmentE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localStringStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L8s_stringE)
  tail call void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L17s_localTrueStringE, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN11xalanc_1_10L6s_trueE)
  ret void
}

declare void @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObject9terminateEv() local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %1 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %2 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %3 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  %9 = load ptr, ptr %7, align 8, !tbaa !56
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !62
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %13 = load i64, ptr %12, align 8, !tbaa !63
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = load ptr, ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, align 8, !tbaa !56
  store ptr %16, ptr %7, align 8, !tbaa !56
  %17 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %17, ptr %10, align 8, !tbaa !62
  %18 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store i64 %18, ptr %12, align 8, !tbaa !63
  %19 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  store ptr %19, ptr %14, align 8, !tbaa !64
  store ptr %9, ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, align 8, !tbaa !56
  store i64 %11, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %13, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store ptr %15, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %7, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !65
  %22 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 1), align 8, !tbaa !65
  store i32 %22, ptr %20, align 8, !tbaa !65
  store i32 %21, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localBooleanStringE, i64 0, i32 1), align 8, !tbaa !65
  %23 = icmp eq i64 %18, 0
  br i1 %23, label %31, label %24, !prof !67

24:                                               ; preds = %0
  %25 = load ptr, ptr %16, align 8, !tbaa !68
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %19)
          to label %31 unwind label %28, !prof !70

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  call void @__clang_call_terminate(ptr %30) #19
  unreachable

31:                                               ; preds = %0, %24
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #18
  %32 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %32)
  %33 = load ptr, ptr %6, align 8, !tbaa !56
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %35 = load i64, ptr %34, align 8, !tbaa !62
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !63
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !64
  %40 = load ptr, ptr @_ZN11xalanc_1_10L18s_localFalseStringE, align 8, !tbaa !56
  store ptr %40, ptr %6, align 8, !tbaa !56
  %41 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %41, ptr %34, align 8, !tbaa !62
  %42 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store i64 %42, ptr %36, align 8, !tbaa !63
  %43 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  store ptr %43, ptr %38, align 8, !tbaa !64
  store ptr %33, ptr @_ZN11xalanc_1_10L18s_localFalseStringE, align 8, !tbaa !56
  store i64 %35, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %37, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store ptr %39, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %45 = load i32, ptr %44, align 8, !tbaa !65
  %46 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 1), align 8, !tbaa !65
  store i32 %46, ptr %44, align 8, !tbaa !65
  store i32 %45, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L18s_localFalseStringE, i64 0, i32 1), align 8, !tbaa !65
  %47 = icmp eq i64 %42, 0
  br i1 %47, label %55, label %48, !prof !67

48:                                               ; preds = %31
  %49 = load ptr, ptr %40, align 8, !tbaa !68
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  invoke void %51(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef %43)
          to label %55 unwind label %52, !prof !70

52:                                               ; preds = %48
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #19
  unreachable

55:                                               ; preds = %31, %48
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #18
  %56 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %56)
  %57 = load ptr, ptr %5, align 8, !tbaa !56
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !62
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %61 = load i64, ptr %60, align 8, !tbaa !63
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !64
  %64 = load ptr, ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, align 8, !tbaa !56
  store ptr %64, ptr %5, align 8, !tbaa !56
  %65 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %65, ptr %58, align 8, !tbaa !62
  %66 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store i64 %66, ptr %60, align 8, !tbaa !63
  %67 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  store ptr %67, ptr %62, align 8, !tbaa !64
  store ptr %57, ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, align 8, !tbaa !56
  store i64 %59, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %61, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store ptr %63, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %5, i64 0, i32 1
  %69 = load i32, ptr %68, align 8, !tbaa !65
  %70 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 1), align 8, !tbaa !65
  store i32 %70, ptr %68, align 8, !tbaa !65
  store i32 %69, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L20s_localNodesetStringE, i64 0, i32 1), align 8, !tbaa !65
  %71 = icmp eq i64 %66, 0
  br i1 %71, label %79, label %72, !prof !67

72:                                               ; preds = %55
  %73 = load ptr, ptr %64, align 8, !tbaa !68
  %74 = getelementptr inbounds ptr, ptr %73, i64 3
  %75 = load ptr, ptr %74, align 8
  invoke void %75(ptr noundef nonnull align 8 dereferenceable(8) %64, ptr noundef %67)
          to label %79 unwind label %76, !prof !70

76:                                               ; preds = %72
  %77 = landingpad { ptr, i32 }
          catch ptr null
  %78 = extractvalue { ptr, i32 } %77, 0
  call void @__clang_call_terminate(ptr %78) #19
  unreachable

79:                                               ; preds = %55, %72
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #18
  %80 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %80)
  %81 = load ptr, ptr %4, align 8, !tbaa !56
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %83 = load i64, ptr %82, align 8, !tbaa !62
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %85 = load i64, ptr %84, align 8, !tbaa !63
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %87 = load ptr, ptr %86, align 8, !tbaa !64
  %88 = load ptr, ptr @_ZN11xalanc_1_10L19s_localNumberStringE, align 8, !tbaa !56
  store ptr %88, ptr %4, align 8, !tbaa !56
  %89 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %89, ptr %82, align 8, !tbaa !62
  %90 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store i64 %90, ptr %84, align 8, !tbaa !63
  %91 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  store ptr %91, ptr %86, align 8, !tbaa !64
  store ptr %81, ptr @_ZN11xalanc_1_10L19s_localNumberStringE, align 8, !tbaa !56
  store i64 %83, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %85, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store ptr %87, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %4, i64 0, i32 1
  %93 = load i32, ptr %92, align 8, !tbaa !65
  %94 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 1), align 8, !tbaa !65
  store i32 %94, ptr %92, align 8, !tbaa !65
  store i32 %93, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localNumberStringE, i64 0, i32 1), align 8, !tbaa !65
  %95 = icmp eq i64 %90, 0
  br i1 %95, label %103, label %96, !prof !67

96:                                               ; preds = %79
  %97 = load ptr, ptr %88, align 8, !tbaa !68
  %98 = getelementptr inbounds ptr, ptr %97, i64 3
  %99 = load ptr, ptr %98, align 8
  invoke void %99(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %91)
          to label %103 unwind label %100, !prof !70

100:                                              ; preds = %96
  %101 = landingpad { ptr, i32 }
          catch ptr null
  %102 = extractvalue { ptr, i32 } %101, 0
  call void @__clang_call_terminate(ptr %102) #19
  unreachable

103:                                              ; preds = %79, %96
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  %104 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %3) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %104)
  %105 = load ptr, ptr %3, align 8, !tbaa !56
  %106 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %107 = load i64, ptr %106, align 8, !tbaa !62
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %109 = load i64, ptr %108, align 8, !tbaa !63
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %111 = load ptr, ptr %110, align 8, !tbaa !64
  %112 = load ptr, ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, align 8, !tbaa !56
  store ptr %112, ptr %3, align 8, !tbaa !56
  %113 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %113, ptr %106, align 8, !tbaa !62
  %114 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store i64 %114, ptr %108, align 8, !tbaa !63
  %115 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  store ptr %115, ptr %110, align 8, !tbaa !64
  store ptr %105, ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, align 8, !tbaa !56
  store i64 %107, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %109, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store ptr %111, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %117 = load i32, ptr %116, align 8, !tbaa !65
  %118 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 1), align 8, !tbaa !65
  store i32 %118, ptr %116, align 8, !tbaa !65
  store i32 %117, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, i64 0, i32 1), align 8, !tbaa !65
  %119 = icmp eq i64 %114, 0
  br i1 %119, label %127, label %120, !prof !67

120:                                              ; preds = %103
  %121 = load ptr, ptr %112, align 8, !tbaa !68
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  invoke void %123(ptr noundef nonnull align 8 dereferenceable(8) %112, ptr noundef %115)
          to label %127 unwind label %124, !prof !70

124:                                              ; preds = %120
  %125 = landingpad { ptr, i32 }
          catch ptr null
  %126 = extractvalue { ptr, i32 } %125, 0
  call void @__clang_call_terminate(ptr %126) #19
  unreachable

127:                                              ; preds = %103, %120
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %3) #18
  %128 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %128)
  %129 = load ptr, ptr %2, align 8, !tbaa !56
  %130 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %131 = load i64, ptr %130, align 8, !tbaa !62
  %132 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 2
  %133 = load i64, ptr %132, align 8, !tbaa !63
  %134 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %135 = load ptr, ptr %134, align 8, !tbaa !64
  %136 = load ptr, ptr @_ZN11xalanc_1_10L19s_localStringStringE, align 8, !tbaa !56
  store ptr %136, ptr %2, align 8, !tbaa !56
  %137 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %137, ptr %130, align 8, !tbaa !62
  %138 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store i64 %138, ptr %132, align 8, !tbaa !63
  %139 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  store ptr %139, ptr %134, align 8, !tbaa !64
  store ptr %129, ptr @_ZN11xalanc_1_10L19s_localStringStringE, align 8, !tbaa !56
  store i64 %131, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %133, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store ptr %135, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  %140 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %141 = load i32, ptr %140, align 8, !tbaa !65
  %142 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 1), align 8, !tbaa !65
  store i32 %142, ptr %140, align 8, !tbaa !65
  store i32 %141, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L19s_localStringStringE, i64 0, i32 1), align 8, !tbaa !65
  %143 = icmp eq i64 %138, 0
  br i1 %143, label %151, label %144, !prof !67

144:                                              ; preds = %127
  %145 = load ptr, ptr %136, align 8, !tbaa !68
  %146 = getelementptr inbounds ptr, ptr %145, i64 3
  %147 = load ptr, ptr %146, align 8
  invoke void %147(ptr noundef nonnull align 8 dereferenceable(8) %136, ptr noundef %139)
          to label %151 unwind label %148, !prof !70

148:                                              ; preds = %144
  %149 = landingpad { ptr, i32 }
          catch ptr null
  %150 = extractvalue { ptr, i32 } %149, 0
  call void @__clang_call_terminate(ptr %150) #19
  unreachable

151:                                              ; preds = %127, %144
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #18
  %152 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #18
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %152)
  %153 = load ptr, ptr %1, align 8, !tbaa !56
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %155 = load i64, ptr %154, align 8, !tbaa !62
  %156 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 2
  %157 = load i64, ptr %156, align 8, !tbaa !63
  %158 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %159 = load ptr, ptr %158, align 8, !tbaa !64
  %160 = load ptr, ptr @_ZN11xalanc_1_10L17s_localTrueStringE, align 8, !tbaa !56
  store ptr %160, ptr %1, align 8, !tbaa !56
  %161 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %161, ptr %154, align 8, !tbaa !62
  %162 = load i64, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store i64 %162, ptr %156, align 8, !tbaa !63
  %163 = load ptr, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  store ptr %163, ptr %158, align 8, !tbaa !64
  store ptr %153, ptr @_ZN11xalanc_1_10L17s_localTrueStringE, align 8, !tbaa !56
  store i64 %155, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 0, i32 1), align 8, !tbaa !62
  store i64 %157, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 0, i32 2), align 8, !tbaa !63
  store ptr %159, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 0, i32 3), align 8, !tbaa !64
  %164 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !65
  %166 = load i32, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 1), align 8, !tbaa !65
  store i32 %166, ptr %164, align 8, !tbaa !65
  store i32 %165, ptr getelementptr inbounds (%"class.xalanc_1_10::XalanDOMString", ptr @_ZN11xalanc_1_10L17s_localTrueStringE, i64 0, i32 1), align 8, !tbaa !65
  %167 = icmp eq i64 %162, 0
  br i1 %167, label %175, label %168, !prof !67

168:                                              ; preds = %151
  %169 = load ptr, ptr %160, align 8, !tbaa !68
  %170 = getelementptr inbounds ptr, ptr %169, i64 3
  %171 = load ptr, ptr %170, align 8
  invoke void %171(ptr noundef nonnull align 8 dereferenceable(8) %160, ptr noundef %163)
          to label %175 unwind label %172, !prof !70

172:                                              ; preds = %168
  %173 = landingpad { ptr, i32 }
          catch ptr null
  %174 = extractvalue { ptr, i32 } %173, 0
  call void @__clang_call_terminate(ptr %174) #19
  unreachable

175:                                              ; preds = %151, %168
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) unnamed_addr #4 align 2 !prof !71 {
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_107XObjectE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  store i32 %1, ptr %3, align 4, !tbaa !72
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 2
  store ptr null, ptr %4, align 8, !tbaa !76
  ret void
}

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #0

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObjectC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #5 align 2 !prof !77 {
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0)
  store ptr getelementptr inbounds ({ [19 x ptr] }, ptr @_ZTVN11xalanc_1_107XObjectE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !72
  store i32 %5, ptr %3, align 4, !tbaa !72
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !76
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_107XObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #7 align 2 !prof !78 {
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(12) %0) #18
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_107XObjectD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !54 {
  tail call void @llvm.trap() #19
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_107XObject11getRealTypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #10 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !72
  ret i32 %3
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_107XObject10referencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !80 {
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !81 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 23
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %0), !prof !82
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %7 unwind label %20, !prof !83

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  %10 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %9)
          to label %11 unwind label %20, !prof !83

11:                                               ; preds = %7
  %12 = load ptr, ptr %0, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 24
  %14 = load ptr, ptr %13, align 8
  %15 = invoke noundef zeroext i1 %14(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %19 unwind label %16, !prof !86

16:                                               ; preds = %11
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #19
  unreachable

19:                                               ; preds = %11
  ret double %10

20:                                               ; preds = %7, %2
  %21 = landingpad { ptr, i32 }
          cleanup
  %22 = load ptr, ptr %0, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %6)
          to label %29 unwind label %26

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #19
  unreachable

29:                                               ; preds = %20
  resume { ptr, i32 } %21
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #12

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #12

; Function Attrs: mustprogress uwtable
define dso_local noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #5 align 2 !prof !87 {
  %3 = load ptr, ptr %1, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(8) %1), !prof !88
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %12, !prof !89

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !84
  %11 = tail call noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %10)
  br label %18

12:                                               ; preds = %2
  %13 = load ptr, ptr %1, align 8, !tbaa !68
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0)
  %17 = tail call noundef double @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
  br label %18

18:                                               ; preds = %12, %8
  %19 = phi double [ %11, %8 ], [ %17, %12 ]
  ret double %19
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObject12dereferencedEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !90 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !76
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5, !prof !91

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 17
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, i1 noundef zeroext false), !prof !92
  br label %10

10:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef double @_ZNK11xalanc_1_107XObject3numEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !72
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %4, i32 noundef 3)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #20
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #18
  resume { ptr, i32 } %7
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject7booleanEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !72
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %4, i32 noundef 2)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #20
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_107XObject3strEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !72
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %4, i32 noundef 4)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #20
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #18
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZNK11xalanc_1_107XObject3strERNS_17FormatterListenerEMS1_FvPKtjE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readnone align 8 dereferenceable(24) %1, i64 %2, i64 %3) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 120) #18
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !72
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %5, i32 noundef %7, i32 noundef 4)
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #20
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #18
  resume { ptr, i32 } %10
}

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #4 align 2 !prof !93 {
  %3 = load ptr, ptr %0, align 8, !tbaa !68
  %4 = getelementptr inbounds ptr, ptr %3, i64 8
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %0), !prof !94
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !62
  %9 = icmp eq i64 %8, 0
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8
  %12 = select i1 %9, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %11, !prof !95
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %6, i64 0, i32 1
  %14 = load i32, ptr %13, align 8, !tbaa !96
  %15 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef %12, i32 noundef %14)
  ret void
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull align 1 ptr @_ZNK11xalanc_1_107XObject5rtreeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !72
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %4, i32 noundef 6)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #20
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #18
  resume { ptr, i32 } %7
}

declare void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1011NodeRefListD1Ev(ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #6

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xalanc_1_107XObject7nodesetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #13 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 120) #18
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !72
  invoke void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %2, i32 noundef %4, i32 noundef 5)
          to label %5 unwind label %6

5:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, ptr nonnull @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev) #20
  unreachable

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #18
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #5 align 2 !prof !98 {
  %4 = alloca %"struct.xalanc_1_10::equalsDOMString", align 8
  %5 = alloca %"struct.xalanc_1_10::DoubleSupport::equalFunction", align 1
  %6 = alloca %"struct.xalanc_1_10::equalsDOMString", align 8
  %7 = alloca %"struct.xalanc_1_10::DoubleSupport::equalFunction", align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %68, label %9, !prof !99

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !72
  switch i32 %11, label %22 [
    i32 1, label %68
    i32 0, label %12
    i32 5, label %16
  ], !prof !100

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = icmp eq i32 %14, 0
  br label %68

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %19 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  store ptr %20, ptr %6, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %68

22:                                               ; preds = %9
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !72
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %30, !prof !102

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %27 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  store ptr %28, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %29 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %68

30:                                               ; preds = %22
  %31 = icmp eq i32 %11, 2
  %32 = icmp eq i32 %24, 2
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %45, !prof !102

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !68
  %36 = getelementptr inbounds ptr, ptr %35, i64 7
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef zeroext i1 %37(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %39 = load ptr, ptr %1, align 8, !tbaa !68
  %40 = getelementptr inbounds ptr, ptr %39, i64 7
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %43 = xor i1 %38, %42
  %44 = xor i1 %43, true
  br label %68

45:                                               ; preds = %30
  %46 = icmp eq i32 %11, 3
  %47 = icmp eq i32 %24, 3
  %48 = or i1 %46, %47
  %49 = load ptr, ptr %0, align 8, !tbaa !68
  br i1 %48, label %50, label %59, !prof !103

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %49, i64 6
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef double %52(ptr noundef nonnull align 8 dereferenceable(24) %0), !prof !104
  %54 = load ptr, ptr %1, align 8, !tbaa !68
  %55 = getelementptr inbounds ptr, ptr %54, i64 6
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef double %56(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !105
  %58 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %53, double noundef %57)
  br label %68

59:                                               ; preds = %45
  %60 = getelementptr inbounds ptr, ptr %49, i64 8
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef nonnull align 8 dereferenceable(36) ptr %61(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %63 = load ptr, ptr %1, align 8, !tbaa !68
  %64 = getelementptr inbounds ptr, ptr %63, i64 8
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef nonnull align 8 dereferenceable(36) ptr %65(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %67 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %62, ptr noundef nonnull align 8 dereferenceable(36) %66)
  br label %68

68:                                               ; preds = %12, %16, %9, %59, %50, %34, %26, %3
  %69 = phi i1 [ true, %3 ], [ %15, %12 ], [ %21, %16 ], [ false, %9 ], [ %29, %26 ], [ %44, %34 ], [ %58, %50 ], [ %67, %59 ]
  ret i1 %69
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef, double noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject9notEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 !prof !54 {
  %4 = alloca %"struct.xalanc_1_10::notEqualsDOMString", align 8
  %5 = alloca %"struct.xalanc_1_10::DoubleSupport::notEqualFunction", align 1
  %6 = alloca %"struct.xalanc_1_10::notEqualsDOMString", align 8
  %7 = alloca %"struct.xalanc_1_10::DoubleSupport::notEqualFunction", align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %69, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !72
  switch i32 %11, label %22 [
    i32 1, label %69
    i32 0, label %12
    i32 5, label %16
  ]

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %14 = load i32, ptr %13, align 4, !tbaa !72
  %15 = icmp ne i32 %14, 0
  br label %69

16:                                               ; preds = %9
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %19 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !84
  store ptr %20, ptr %6, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_18notEqualsDOMStringENS_13DoubleSupport16notEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %69

22:                                               ; preds = %9
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %24 = load i32, ptr %23, align 4, !tbaa !72
  %25 = icmp eq i32 %24, 5
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %27 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !84
  store ptr %28, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %29 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_18notEqualsDOMStringENS_13DoubleSupport16notEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %69

30:                                               ; preds = %22
  %31 = icmp eq i32 %11, 2
  %32 = icmp eq i32 %24, 2
  %33 = or i1 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !68
  %36 = getelementptr inbounds ptr, ptr %35, i64 7
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef zeroext i1 %37(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %39 = load ptr, ptr %1, align 8, !tbaa !68
  %40 = getelementptr inbounds ptr, ptr %39, i64 7
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef zeroext i1 %41(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %43 = xor i1 %38, %42
  br label %69

44:                                               ; preds = %30
  %45 = icmp eq i32 %11, 3
  %46 = icmp eq i32 %24, 3
  %47 = or i1 %45, %46
  %48 = load ptr, ptr %0, align 8, !tbaa !68
  br i1 %47, label %49, label %59

49:                                               ; preds = %44
  %50 = getelementptr inbounds ptr, ptr %48, i64 6
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef double %51(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %53 = load ptr, ptr %1, align 8, !tbaa !68
  %54 = getelementptr inbounds ptr, ptr %53, i64 6
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef double %55(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %57 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %52, double noundef %56)
  %58 = xor i1 %57, true
  br label %69

59:                                               ; preds = %44
  %60 = getelementptr inbounds ptr, ptr %48, i64 8
  %61 = load ptr, ptr %60, align 8
  %62 = tail call noundef nonnull align 8 dereferenceable(36) ptr %61(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %63 = load ptr, ptr %1, align 8, !tbaa !68
  %64 = getelementptr inbounds ptr, ptr %63, i64 8
  %65 = load ptr, ptr %64, align 8
  %66 = tail call noundef nonnull align 8 dereferenceable(36) ptr %65(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %67 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %62, ptr noundef nonnull align 8 dereferenceable(36) %66)
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %12, %16, %9, %59, %49, %34, %26, %3
  %70 = phi i1 [ false, %3 ], [ %15, %12 ], [ %21, %16 ], [ true, %9 ], [ %29, %26 ], [ %43, %34 ], [ %58, %49 ], [ %68, %59 ]
  ret i1 %70
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject8lessThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 !prof !54 {
  %4 = alloca %"struct.xalanc_1_10::greaterThanDOMString", align 8
  %5 = alloca %"struct.xalanc_1_10::DoubleSupport::greaterThanFunction", align 1
  %6 = alloca %"struct.xalanc_1_10::lessThanDOMString", align 8
  %7 = alloca %"struct.xalanc_1_10::DoubleSupport::lessThanFunction", align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !72
  br i1 %14, label %17, label %21

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %18 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  store ptr %19, ptr %6, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  %20 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_17lessThanDOMStringENS_13DoubleSupport16lessThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %37

21:                                               ; preds = %13
  %22 = icmp eq i32 %16, 5
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %24 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  store ptr %25, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %26 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_20greaterThanDOMStringENS_13DoubleSupport19greaterThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %37

27:                                               ; preds = %21
  %28 = load ptr, ptr %0, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %32 = load ptr, ptr %1, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef double %34(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %31, double noundef %35)
  br label %37

37:                                               ; preds = %17, %23, %27, %9, %3
  %38 = phi i1 [ false, %3 ], [ %20, %17 ], [ %26, %23 ], [ %36, %27 ], [ false, %9 ]
  ret i1 %38
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef, double noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject16lessThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 !prof !54 {
  %4 = alloca %"struct.xalanc_1_10::greaterThanOrEqualDOMString", align 8
  %5 = alloca %"struct.xalanc_1_10::DoubleSupport::greaterThanOrEqualFunction", align 1
  %6 = alloca %"struct.xalanc_1_10::lessThanOrEqualDOMString", align 8
  %7 = alloca %"struct.xalanc_1_10::DoubleSupport::lessThanOrEqualFunction", align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !72
  br i1 %14, label %17, label %21

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %18 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  store ptr %19, ptr %6, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  %20 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_24lessThanOrEqualDOMStringENS_13DoubleSupport23lessThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %37

21:                                               ; preds = %13
  %22 = icmp eq i32 %16, 5
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %24 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  store ptr %25, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %26 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_27greaterThanOrEqualDOMStringENS_13DoubleSupport26greaterThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %37

27:                                               ; preds = %21
  %28 = load ptr, ptr %0, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %32 = load ptr, ptr %1, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef double %34(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %31, double noundef %35)
  br label %37

37:                                               ; preds = %17, %23, %27, %9, %3
  %38 = phi i1 [ false, %3 ], [ %20, %17 ], [ %26, %23 ], [ %36, %27 ], [ false, %9 ]
  ret i1 %38
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef, double noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject11greaterThanERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 !prof !54 {
  %4 = alloca %"struct.xalanc_1_10::lessThanDOMString", align 8
  %5 = alloca %"struct.xalanc_1_10::DoubleSupport::lessThanFunction", align 1
  %6 = alloca %"struct.xalanc_1_10::greaterThanDOMString", align 8
  %7 = alloca %"struct.xalanc_1_10::DoubleSupport::greaterThanFunction", align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !72
  br i1 %14, label %17, label %21

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %18 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  store ptr %19, ptr %6, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  %20 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_20greaterThanDOMStringENS_13DoubleSupport19greaterThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %37

21:                                               ; preds = %13
  %22 = icmp eq i32 %16, 5
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %24 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  store ptr %25, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %26 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_17lessThanDOMStringENS_13DoubleSupport16lessThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %37

27:                                               ; preds = %21
  %28 = load ptr, ptr %0, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %32 = load ptr, ptr %1, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef double %34(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %31, double noundef %35)
  br label %37

37:                                               ; preds = %17, %23, %27, %9, %3
  %38 = phi i1 [ false, %3 ], [ %20, %17 ], [ %26, %23 ], [ %36, %27 ], [ false, %9 ]
  ret i1 %38
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef, double noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_107XObject19greaterThanOrEqualsERKS0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #3 align 2 !prof !54 {
  %4 = alloca %"struct.xalanc_1_10::lessThanOrEqualDOMString", align 8
  %5 = alloca %"struct.xalanc_1_10::DoubleSupport::lessThanOrEqualFunction", align 1
  %6 = alloca %"struct.xalanc_1_10::greaterThanOrEqualDOMString", align 8
  %7 = alloca %"struct.xalanc_1_10::DoubleSupport::greaterThanOrEqualFunction", align 1
  %8 = icmp eq ptr %0, %1
  br i1 %8, label %37, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %0, i64 0, i32 1
  %11 = load i32, ptr %10, align 4, !tbaa !72
  %12 = icmp ult i32 %11, 2
  br i1 %12, label %37, label %13

13:                                               ; preds = %9
  %14 = icmp eq i32 %11, 5
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 4, !tbaa !72
  br i1 %14, label %17, label %21

17:                                               ; preds = %13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #18
  %18 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  store ptr %19, ptr %6, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #18
  %20 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_27greaterThanOrEqualDOMStringENS_13DoubleSupport26greaterThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %16, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 1 dereferenceable(1) %7, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #18
  br label %37

21:                                               ; preds = %13
  %22 = icmp eq i32 %16, 5
  br i1 %22, label %23, label %27

23:                                               ; preds = %21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #18
  %24 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  store ptr %25, ptr %4, align 8, !tbaa !101
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #18
  %26 = call noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_24lessThanOrEqualDOMStringENS_13DoubleSupport23lessThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %11, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #18
  br label %37

27:                                               ; preds = %21
  %28 = load ptr, ptr %0, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %32 = load ptr, ptr %1, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 6
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef double %34(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %36 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %31, double noundef %35)
  br label %37

37:                                               ; preds = %17, %23, %27, %9, %3
  %38 = phi i1 [ false, %3 ], [ %20, %17 ], [ %26, %23 ], [ %36, %27 ], [ false, %9 ]
  ret i1 %38
}

declare noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef, double noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #3 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject16XObjectExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  ret void
}

declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1) unnamed_addr #3 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject16XObjectExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  ret void
}

declare void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #6

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #18
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_107XObject16XObjectExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ENS0_11eObjectTypeES2_(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %4 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #18
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
          to label %7 unwind label %25

7:                                                ; preds = %3
  invoke void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %8 unwind label %25

8:                                                ; preds = %7
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject16XObjectExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %10 = load i64, ptr %9, align 8, !tbaa !63
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !64
  %15 = load ptr, ptr %4, align 8, !tbaa !56
  %16 = load ptr, ptr %15, align 8, !tbaa !68
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  invoke void %18(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %14)
          to label %22 unwind label %19

19:                                               ; preds = %12
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  call void @__clang_call_terminate(ptr %21) #19
  unreachable

22:                                               ; preds = %8, %12
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %23, align 8, !tbaa !106
  %24 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %0, i64 0, i32 2
  store i32 %2, ptr %24, align 4, !tbaa !111
  ret void

25:                                               ; preds = %7, %3
  %26 = landingpad { ptr, i32 }
          cleanup
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !63
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = load ptr, ptr %4, align 8, !tbaa !56
  %34 = load ptr, ptr %33, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %30
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #19
  unreachable

40:                                               ; preds = %25, %30
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #18
  resume { ptr, i32 } %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %1) unnamed_addr #3 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !68
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %1, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !106
  store i32 %5, ptr %3, align 8, !tbaa !106
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObject::XObjectInvalidConversionException", ptr %1, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !111
  store i32 %8, ptr %6, align 4, !tbaa !111
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_107XObject33XObjectInvalidConversionExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !54 {
  tail call void @_ZN11xalanc_1_1019XalanXPathExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #18
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionException17formatErrorStringERKNS_14XalanDOMStringES4_RS2_(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 align 2 !prof !54 {
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %2, i32 noundef 10, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %4
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xalanc_1_1027XalanReferenceCountedObject17getReferenceCountEv(ptr noundef nonnull align 8 dereferenceable(12) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanReferenceCountedObject", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !112
  ret i32 %3
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_107XObject33XObjectInvalidConversionException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  ret ptr @_ZN11xalanc_1_107XObject33XObjectInvalidConversionException6m_typeE
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_107XObject16XObjectException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #1 comdat align 2 !prof !54 {
  ret ptr @_ZN11xalanc_1_107XObject16XObjectException6m_typeE
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !113 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !63
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !114

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !64
  %8 = load ptr, ptr %0, align 8, !tbaa !56
  %9 = load ptr, ptr %8, align 8, !tbaa !68
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !115

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #19
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #15 comdat !prof !54 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #18
  tail call void @_ZSt9terminatev() #19
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

declare noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #4 comdat !prof !116 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %9 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %10 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %121 [
    i32 5, label %12
    i32 2, label %22
    i32 3, label %33
    i32 6, label %66
    i32 4, label %115
  ], !prof !117

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr %5, ptr %7, align 8, !tbaa !101
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %121

22:                                               ; preds = %6
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  %28 = load ptr, ptr %1, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %27, double noundef %31)
  br label %121

33:                                               ; preds = %6
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 13
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %5, ptr %8, align 8, !tbaa !101
  %38 = load ptr, ptr %1, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %42 = load ptr, ptr %37, align 8, !tbaa !68
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %37)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %33, %47
  %48 = phi i8 [ %56, %47 ], [ 0, %33 ]
  %49 = phi i32 [ %57, %47 ], [ 0, %33 ]
  %50 = load ptr, ptr %37, align 8, !tbaa !68
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %49)
  %54 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %55 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %54, double noundef %41)
  %56 = select i1 %55, i8 1, i8 %48
  %57 = add nuw i32 %49, 1
  %58 = icmp ult i32 %57, %45
  %59 = and i8 %56, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %47, label %62, !llvm.loop !118

62:                                               ; preds = %47
  %63 = icmp ne i8 %59, 0
  br label %64

64:                                               ; preds = %62, %33
  %65 = phi i1 [ false, %33 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %121

66:                                               ; preds = %6
  %67 = load ptr, ptr %1, align 8, !tbaa !68
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef double %69(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %71 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !121
  %72 = bitcast double %70 to i64
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %71, %73
  %75 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %76 = lshr i64 %72, 32
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = select i1 %74, i1 %78, i1 false
  %80 = load ptr, ptr %0, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef nonnull align 8 dereferenceable(8) ptr %82(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %79, label %113, label %84

84:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr %5, ptr %9, align 8, !tbaa !101
  %85 = load ptr, ptr %1, align 8, !tbaa !68
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef double %87(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %89 = load ptr, ptr %83, align 8, !tbaa !68
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %84, %94
  %95 = phi i8 [ %103, %94 ], [ 0, %84 ]
  %96 = phi i32 [ %104, %94 ], [ 0, %84 ]
  %97 = load ptr, ptr %83, align 8, !tbaa !68
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %83, i32 noundef %96)
  %101 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %100)
  %102 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %101, double noundef %88)
  %103 = select i1 %102, i8 1, i8 %95
  %104 = add nuw i32 %96, 1
  %105 = icmp ult i32 %104, %92
  %106 = and i8 %103, 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %94, label %109, !llvm.loop !118

109:                                              ; preds = %94
  %110 = icmp ne i8 %106, 0
  br label %111

111:                                              ; preds = %109, %84
  %112 = phi i1 [ false, %84 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %121

113:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store ptr %5, ptr %10, align 8, !tbaa !101
  %114 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %121

115:                                              ; preds = %6
  %116 = load ptr, ptr %0, align 8, !tbaa !68
  %117 = getelementptr inbounds ptr, ptr %116, i64 13
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr %118(ptr noundef nonnull align 8 dereferenceable(24) %0), !prof !122
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr %5, ptr %11, align 8, !tbaa !101
  %120 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %121

121:                                              ; preds = %6, %111, %113, %22, %115, %64, %12
  %122 = phi i1 [ %21, %12 ], [ %32, %22 ], [ %65, %64 ], [ %120, %115 ], [ %112, %111 ], [ %114, %113 ], [ false, %6 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %121, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %121, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 23
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %26 unwind label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %21, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %51

31:                                               ; preds = %69
  %32 = load ptr, ptr %4, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %39 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #19
  unreachable

47:                                               ; preds = %39
  %48 = icmp ne i8 %72, 0
  br label %121

49:                                               ; preds = %17
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %111

51:                                               ; preds = %26, %69
  %52 = phi i8 [ 0, %26 ], [ %63, %69 ]
  %53 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %53)
          to label %58 unwind label %75

58:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = and i8 %52, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %94, %59
  %63 = phi i8 [ %52, %59 ], [ %88, %94 ]
  %64 = load i64, ptr %29, align 8, !tbaa !62
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %29, align 8, !tbaa !62
  %68 = sub i64 %67, %64
  store i64 %68, ptr %29, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %66, %62
  store i32 0, ptr %30, align 8, !tbaa !96
  %70 = add nuw i32 %53, 1
  %71 = icmp ult i32 %70, %9
  %72 = and i8 %63, 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %51, label %31, !llvm.loop !123

75:                                               ; preds = %58, %51
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %102

77:                                               ; preds = %59, %94
  %78 = phi i8 [ %88, %94 ], [ %52, %59 ]
  %79 = phi i32 [ %95, %94 ], [ 0, %59 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %79)
          to label %84 unwind label %100

84:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %85 unwind label %100

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %87 unwind label %100

87:                                               ; preds = %85
  %88 = select i1 %86, i8 1, i8 %78
  %89 = load i64, ptr %27, align 8, !tbaa !62
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %27, align 8, !tbaa !62
  %93 = sub i64 %92, %89
  store i64 %93, ptr %27, align 8, !tbaa !62
  br label %94

94:                                               ; preds = %91, %87
  store i32 0, ptr %28, align 8, !tbaa !96
  %95 = add nuw i32 %79, 1
  %96 = icmp ult i32 %95, %15
  %97 = and i8 %88, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %77, label %62, !llvm.loop !124

100:                                              ; preds = %85, %84, %77
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %75, %100
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %76, %75 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !68
  %105 = getelementptr inbounds ptr, ptr %104, i64 24
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef zeroext i1 %106(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %111 unwind label %108

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  tail call void @__clang_call_terminate(ptr %110) #19
  unreachable

111:                                              ; preds = %49, %102
  %112 = phi { ptr, i32 } [ %50, %49 ], [ %103, %102 ]
  %113 = load ptr, ptr %4, align 8, !tbaa !68
  %114 = getelementptr inbounds ptr, ptr %113, i64 24
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef zeroext i1 %115(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #19
  unreachable

120:                                              ; preds = %111
  resume { ptr, i32 } %112

121:                                              ; preds = %11, %47, %5
  %122 = phi i1 [ false, %5 ], [ %48, %47 ], [ false, %11 ]
  ret i1 %122
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #4 comdat personality ptr @__gxx_personality_v0 !prof !116 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !125
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %4), !prof !126
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %17, label %27, !prof !127

15:                                               ; preds = %50
  %16 = icmp ne i8 %54, 0
  br label %17

17:                                               ; preds = %15, %5
  %18 = phi i1 [ false, %5 ], [ %16, %15 ]
  %19 = load ptr, ptr %4, align 8, !tbaa !68
  %20 = getelementptr inbounds ptr, ptr %19, i64 24
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef zeroext i1 %21(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %26 unwind label %23, !prof !128

23:                                               ; preds = %17
  %24 = landingpad { ptr, i32 }
          catch ptr null
  %25 = extractvalue { ptr, i32 } %24, 0
  tail call void @__clang_call_terminate(ptr %25) #19
  unreachable

26:                                               ; preds = %17
  ret i1 %18

27:                                               ; preds = %5, %50
  %28 = phi i8 [ %44, %50 ], [ 0, %5 ]
  %29 = phi i32 [ %52, %50 ], [ 0, %5 ]
  %30 = load ptr, ptr %0, align 8, !tbaa !68
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %29)
          to label %34 unwind label %57

34:                                               ; preds = %27
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %35 unwind label %57

35:                                               ; preds = %34
  %36 = load ptr, ptr %2, align 8, !tbaa !68
  %37 = getelementptr inbounds ptr, ptr %36, i64 8
  %38 = load ptr, ptr %37, align 8
  %39 = invoke noundef nonnull align 8 dereferenceable(36) ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %40 unwind label %57

40:                                               ; preds = %35
  %41 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %39)
          to label %42 unwind label %57

42:                                               ; preds = %40
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %44 = select i1 %41, i8 1, i8 %28
  %45 = load i64, ptr %43, align 8, !tbaa !62
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = load i64, ptr %43, align 8, !tbaa !62
  %49 = sub i64 %48, %45
  store i64 %49, ptr %43, align 8, !tbaa !62
  br label %50

50:                                               ; preds = %47, %42
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  store i32 0, ptr %51, align 8, !tbaa !96
  %52 = add nuw i32 %29, 1
  %53 = icmp ult i32 %52, %9
  %54 = and i8 %44, 1
  %55 = icmp eq i8 %54, 0
  %56 = select i1 %53, i1 %55, i1 false, !prof !129
  br i1 %56, label %27, label %15, !prof !67, !llvm.loop !130

57:                                               ; preds = %40, %35, %34, %27
  %58 = landingpad { ptr, i32 }
          cleanup
  %59 = load ptr, ptr %4, align 8, !tbaa !68
  %60 = getelementptr inbounds ptr, ptr %59, i64 24
  %61 = load ptr, ptr %60, align 8
  %62 = invoke noundef zeroext i1 %61(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %66 unwind label %63

63:                                               ; preds = %57
  %64 = landingpad { ptr, i32 }
          catch ptr null
  %65 = extractvalue { ptr, i32 } %64, 0
  tail call void @__clang_call_terminate(ptr %65) #19
  unreachable

66:                                               ; preds = %57
  resume { ptr, i32 } %58
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !54 {
  %3 = load ptr, ptr %0, align 8, !tbaa !131
  %4 = load ptr, ptr %3, align 8, !tbaa !68
  %5 = getelementptr inbounds ptr, ptr %4, i64 23
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %3)
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %8 unwind label %22

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !131
  %10 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %9, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = invoke noundef double @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %13 unwind label %22

13:                                               ; preds = %8
  %14 = load ptr, ptr %3, align 8, !tbaa !68
  %15 = getelementptr inbounds ptr, ptr %14, i64 24
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef zeroext i1 %16(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %21 unwind label %18

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #19
  unreachable

21:                                               ; preds = %13
  ret double %12

22:                                               ; preds = %2, %8
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = load ptr, ptr %3, align 8, !tbaa !68
  %25 = getelementptr inbounds ptr, ptr %24, i64 24
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef zeroext i1 %26(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %31 unwind label %28

28:                                               ; preds = %22
  %29 = landingpad { ptr, i32 }
          catch ptr null
  %30 = extractvalue { ptr, i32 } %29, 0
  tail call void @__clang_call_terminate(ptr %30) #19
  unreachable

31:                                               ; preds = %22
  resume { ptr, i32 } %23
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_18notEqualsDOMStringENS_13DoubleSupport16notEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #16 comdat !prof !54 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %9 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %10 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %122 [
    i32 5, label %12
    i32 2, label %22
    i32 3, label %34
    i32 6, label %67
    i32 4, label %116
  ]

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr %5, ptr %7, align 8, !tbaa !101
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %122

22:                                               ; preds = %6
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  %28 = load ptr, ptr %1, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %27, double noundef %31)
  %33 = xor i1 %32, true
  br label %122

34:                                               ; preds = %6
  %35 = load ptr, ptr %0, align 8, !tbaa !68
  %36 = getelementptr inbounds ptr, ptr %35, i64 13
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef nonnull align 8 dereferenceable(8) ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %5, ptr %8, align 8, !tbaa !101
  %39 = load ptr, ptr %1, align 8, !tbaa !68
  %40 = getelementptr inbounds ptr, ptr %39, i64 6
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef double %41(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %43 = load ptr, ptr %38, align 8, !tbaa !68
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef i32 %45(ptr noundef nonnull align 8 dereferenceable(8) %38)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %65, label %48

48:                                               ; preds = %34, %48
  %49 = phi i8 [ %57, %48 ], [ 0, %34 ]
  %50 = phi i32 [ %58, %48 ], [ 0, %34 ]
  %51 = load ptr, ptr %38, align 8, !tbaa !68
  %52 = getelementptr inbounds ptr, ptr %51, i64 2
  %53 = load ptr, ptr %52, align 8
  %54 = call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(8) %38, i32 noundef %50)
  %55 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %54)
  %56 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %55, double noundef %42)
  %57 = select i1 %56, i8 %49, i8 1
  %58 = add nuw i32 %50, 1
  %59 = icmp ult i32 %58, %46
  %60 = and i8 %57, 1
  %61 = icmp eq i8 %60, 0
  %62 = select i1 %59, i1 %61, i1 false
  br i1 %62, label %48, label %63, !llvm.loop !133

63:                                               ; preds = %48
  %64 = icmp ne i8 %60, 0
  br label %65

65:                                               ; preds = %63, %34
  %66 = phi i1 [ false, %34 ], [ %64, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %122

67:                                               ; preds = %6
  %68 = load ptr, ptr %1, align 8, !tbaa !68
  %69 = getelementptr inbounds ptr, ptr %68, i64 6
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef double %70(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %72 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !121
  %73 = bitcast double %71 to i64
  %74 = trunc i64 %73 to i32
  %75 = icmp eq i32 %72, %74
  %76 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %77 = lshr i64 %73, 32
  %78 = trunc i64 %77 to i32
  %79 = icmp eq i32 %76, %78
  %80 = select i1 %75, i1 %79, i1 false
  %81 = load ptr, ptr %0, align 8, !tbaa !68
  %82 = getelementptr inbounds ptr, ptr %81, i64 13
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef nonnull align 8 dereferenceable(8) ptr %83(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %80, label %114, label %85

85:                                               ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr %5, ptr %9, align 8, !tbaa !101
  %86 = load ptr, ptr %1, align 8, !tbaa !68
  %87 = getelementptr inbounds ptr, ptr %86, i64 6
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef double %88(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %90 = load ptr, ptr %84, align 8, !tbaa !68
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  %93 = tail call noundef i32 %92(ptr noundef nonnull align 8 dereferenceable(8) %84)
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %85, %95
  %96 = phi i8 [ %104, %95 ], [ 0, %85 ]
  %97 = phi i32 [ %105, %95 ], [ 0, %85 ]
  %98 = load ptr, ptr %84, align 8, !tbaa !68
  %99 = getelementptr inbounds ptr, ptr %98, i64 2
  %100 = load ptr, ptr %99, align 8
  %101 = call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(8) %84, i32 noundef %97)
  %102 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %101)
  %103 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport5equalEdd(double noundef %102, double noundef %89)
  %104 = select i1 %103, i8 %96, i8 1
  %105 = add nuw i32 %97, 1
  %106 = icmp ult i32 %105, %93
  %107 = and i8 %104, 1
  %108 = icmp eq i8 %107, 0
  %109 = select i1 %106, i1 %108, i1 false
  br i1 %109, label %95, label %110, !llvm.loop !133

110:                                              ; preds = %95
  %111 = icmp ne i8 %107, 0
  br label %112

112:                                              ; preds = %110, %85
  %113 = phi i1 [ false, %85 ], [ %111, %110 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %122

114:                                              ; preds = %67
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store ptr %5, ptr %10, align 8, !tbaa !101
  %115 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %122

116:                                              ; preds = %6
  %117 = load ptr, ptr %0, align 8, !tbaa !68
  %118 = getelementptr inbounds ptr, ptr %117, i64 13
  %119 = load ptr, ptr %118, align 8
  %120 = tail call noundef nonnull align 8 dereferenceable(8) ptr %119(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr %5, ptr %11, align 8, !tbaa !101
  %121 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %120, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %122

122:                                              ; preds = %6, %112, %114, %22, %116, %65, %12
  %123 = phi i1 [ %21, %12 ], [ %33, %22 ], [ %66, %65 ], [ %121, %116 ], [ %113, %112 ], [ %115, %114 ], [ false, %6 ]
  ret i1 %123
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %121, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %121, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 23
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %26 unwind label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %21, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %51

31:                                               ; preds = %69
  %32 = load ptr, ptr %4, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %39 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #19
  unreachable

47:                                               ; preds = %39
  %48 = icmp ne i8 %72, 0
  br label %121

49:                                               ; preds = %17
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %111

51:                                               ; preds = %26, %69
  %52 = phi i8 [ 0, %26 ], [ %63, %69 ]
  %53 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %53)
          to label %58 unwind label %75

58:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = and i8 %52, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %94, %59
  %63 = phi i8 [ %52, %59 ], [ %88, %94 ]
  %64 = load i64, ptr %29, align 8, !tbaa !62
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %29, align 8, !tbaa !62
  %68 = sub i64 %67, %64
  store i64 %68, ptr %29, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %66, %62
  store i32 0, ptr %30, align 8, !tbaa !96
  %70 = add nuw i32 %53, 1
  %71 = icmp ult i32 %70, %9
  %72 = and i8 %63, 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %51, label %31, !llvm.loop !134

75:                                               ; preds = %58, %51
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %102

77:                                               ; preds = %59, %94
  %78 = phi i8 [ %88, %94 ], [ %52, %59 ]
  %79 = phi i32 [ %95, %94 ], [ 0, %59 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %79)
          to label %84 unwind label %100

84:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %85 unwind label %100

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %87 unwind label %100

87:                                               ; preds = %85
  %88 = select i1 %86, i8 %78, i8 1
  %89 = load i64, ptr %27, align 8, !tbaa !62
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %27, align 8, !tbaa !62
  %93 = sub i64 %92, %89
  store i64 %93, ptr %27, align 8, !tbaa !62
  br label %94

94:                                               ; preds = %91, %87
  store i32 0, ptr %28, align 8, !tbaa !96
  %95 = add nuw i32 %79, 1
  %96 = icmp ult i32 %95, %15
  %97 = and i8 %88, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %77, label %62, !llvm.loop !135

100:                                              ; preds = %85, %84, %77
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %75, %100
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %76, %75 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !68
  %105 = getelementptr inbounds ptr, ptr %104, i64 24
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef zeroext i1 %106(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %111 unwind label %108

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  tail call void @__clang_call_terminate(ptr %110) #19
  unreachable

111:                                              ; preds = %49, %102
  %112 = phi { ptr, i32 } [ %50, %49 ], [ %103, %102 ]
  %113 = load ptr, ptr %4, align 8, !tbaa !68
  %114 = getelementptr inbounds ptr, ptr %113, i64 24
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef zeroext i1 %115(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #19
  unreachable

120:                                              ; preds = %111
  resume { ptr, i32 } %112

121:                                              ; preds = %11, %47, %5
  %122 = phi i1 [ false, %5 ], [ %48, %47 ], [ false, %11 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_18notEqualsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  br label %30

18:                                               ; preds = %52
  %19 = icmp ne i8 %55, 0
  br label %20

20:                                               ; preds = %18, %5
  %21 = phi i1 [ false, %5 ], [ %19, %18 ]
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 24
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %29 unwind label %26

26:                                               ; preds = %20
  %27 = landingpad { ptr, i32 }
          catch ptr null
  %28 = extractvalue { ptr, i32 } %27, 0
  tail call void @__clang_call_terminate(ptr %28) #19
  unreachable

29:                                               ; preds = %20
  ret i1 %21

30:                                               ; preds = %15, %52
  %31 = phi i8 [ 0, %15 ], [ %46, %52 ]
  %32 = phi i32 [ 0, %15 ], [ %53, %52 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !68
  %34 = getelementptr inbounds ptr, ptr %33, i64 2
  %35 = load ptr, ptr %34, align 8
  %36 = invoke noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %32)
          to label %37 unwind label %58

37:                                               ; preds = %30
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %38 unwind label %58

38:                                               ; preds = %37
  %39 = load ptr, ptr %2, align 8, !tbaa !68
  %40 = getelementptr inbounds ptr, ptr %39, i64 8
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef nonnull align 8 dereferenceable(36) ptr %41(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %43 unwind label %58

43:                                               ; preds = %38
  %44 = invoke noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %42)
          to label %45 unwind label %58

45:                                               ; preds = %43
  %46 = select i1 %44, i8 %31, i8 1
  %47 = load i64, ptr %16, align 8, !tbaa !62
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %45
  %50 = load i64, ptr %16, align 8, !tbaa !62
  %51 = sub i64 %50, %47
  store i64 %51, ptr %16, align 8, !tbaa !62
  br label %52

52:                                               ; preds = %49, %45
  store i32 0, ptr %17, align 8, !tbaa !96
  %53 = add nuw i32 %32, 1
  %54 = icmp ult i32 %53, %9
  %55 = and i8 %46, 1
  %56 = icmp eq i8 %55, 0
  %57 = select i1 %54, i1 %56, i1 false
  br i1 %57, label %30, label %18, !llvm.loop !136

58:                                               ; preds = %43, %38, %37, %30
  %59 = landingpad { ptr, i32 }
          cleanup
  %60 = load ptr, ptr %4, align 8, !tbaa !68
  %61 = getelementptr inbounds ptr, ptr %60, i64 24
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef zeroext i1 %62(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %67 unwind label %64

64:                                               ; preds = %58
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #19
  unreachable

67:                                               ; preds = %58
  resume { ptr, i32 } %59
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_17lessThanDOMStringENS_13DoubleSupport16lessThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #16 comdat !prof !54 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %9 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %10 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %121 [
    i32 5, label %12
    i32 2, label %22
    i32 3, label %33
    i32 6, label %66
    i32 4, label %115
  ]

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr %5, ptr %7, align 8, !tbaa !101
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %121

22:                                               ; preds = %6
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  %28 = load ptr, ptr %1, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %27, double noundef %31)
  br label %121

33:                                               ; preds = %6
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 13
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %5, ptr %8, align 8, !tbaa !101
  %38 = load ptr, ptr %1, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %42 = load ptr, ptr %37, align 8, !tbaa !68
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %37)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %33, %47
  %48 = phi i8 [ %56, %47 ], [ 0, %33 ]
  %49 = phi i32 [ %57, %47 ], [ 0, %33 ]
  %50 = load ptr, ptr %37, align 8, !tbaa !68
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %49)
  %54 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %55 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %54, double noundef %41)
  %56 = select i1 %55, i8 1, i8 %48
  %57 = add nuw i32 %49, 1
  %58 = icmp ult i32 %57, %45
  %59 = and i8 %56, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %47, label %62, !llvm.loop !137

62:                                               ; preds = %47
  %63 = icmp ne i8 %59, 0
  br label %64

64:                                               ; preds = %62, %33
  %65 = phi i1 [ false, %33 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %121

66:                                               ; preds = %6
  %67 = load ptr, ptr %1, align 8, !tbaa !68
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef double %69(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %71 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !121
  %72 = bitcast double %70 to i64
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %71, %73
  %75 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %76 = lshr i64 %72, 32
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = select i1 %74, i1 %78, i1 false
  %80 = load ptr, ptr %0, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef nonnull align 8 dereferenceable(8) ptr %82(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %79, label %113, label %84

84:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr %5, ptr %9, align 8, !tbaa !101
  %85 = load ptr, ptr %1, align 8, !tbaa !68
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef double %87(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %89 = load ptr, ptr %83, align 8, !tbaa !68
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %84, %94
  %95 = phi i8 [ %103, %94 ], [ 0, %84 ]
  %96 = phi i32 [ %104, %94 ], [ 0, %84 ]
  %97 = load ptr, ptr %83, align 8, !tbaa !68
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %83, i32 noundef %96)
  %101 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %100)
  %102 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %101, double noundef %88)
  %103 = select i1 %102, i8 1, i8 %95
  %104 = add nuw i32 %96, 1
  %105 = icmp ult i32 %104, %92
  %106 = and i8 %103, 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %94, label %109, !llvm.loop !137

109:                                              ; preds = %94
  %110 = icmp ne i8 %106, 0
  br label %111

111:                                              ; preds = %109, %84
  %112 = phi i1 [ false, %84 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %121

113:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store ptr %5, ptr %10, align 8, !tbaa !101
  %114 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %121

115:                                              ; preds = %6
  %116 = load ptr, ptr %0, align 8, !tbaa !68
  %117 = getelementptr inbounds ptr, ptr %116, i64 13
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr %118(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr %5, ptr %11, align 8, !tbaa !101
  %120 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %121

121:                                              ; preds = %6, %111, %113, %22, %115, %64, %12
  %122 = phi i1 [ %21, %12 ], [ %32, %22 ], [ %65, %64 ], [ %120, %115 ], [ %112, %111 ], [ %114, %113 ], [ false, %6 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %121, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %121, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 23
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %26 unwind label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %21, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %51

31:                                               ; preds = %69
  %32 = load ptr, ptr %4, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %39 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #19
  unreachable

47:                                               ; preds = %39
  %48 = icmp ne i8 %72, 0
  br label %121

49:                                               ; preds = %17
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %111

51:                                               ; preds = %26, %69
  %52 = phi i8 [ 0, %26 ], [ %63, %69 ]
  %53 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %53)
          to label %58 unwind label %75

58:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = and i8 %52, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %94, %59
  %63 = phi i8 [ %52, %59 ], [ %88, %94 ]
  %64 = load i64, ptr %29, align 8, !tbaa !62
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %29, align 8, !tbaa !62
  %68 = sub i64 %67, %64
  store i64 %68, ptr %29, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %66, %62
  store i32 0, ptr %30, align 8, !tbaa !96
  %70 = add nuw i32 %53, 1
  %71 = icmp ult i32 %70, %9
  %72 = and i8 %63, 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %51, label %31, !llvm.loop !138

75:                                               ; preds = %58, %51
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %102

77:                                               ; preds = %59, %94
  %78 = phi i8 [ %88, %94 ], [ %52, %59 ]
  %79 = phi i32 [ %95, %94 ], [ 0, %59 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %79)
          to label %84 unwind label %100

84:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %85 unwind label %100

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %87 unwind label %100

87:                                               ; preds = %85
  %88 = select i1 %86, i8 1, i8 %78
  %89 = load i64, ptr %27, align 8, !tbaa !62
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %27, align 8, !tbaa !62
  %93 = sub i64 %92, %89
  store i64 %93, ptr %27, align 8, !tbaa !62
  br label %94

94:                                               ; preds = %91, %87
  store i32 0, ptr %28, align 8, !tbaa !96
  %95 = add nuw i32 %79, 1
  %96 = icmp ult i32 %95, %15
  %97 = and i8 %88, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %77, label %62, !llvm.loop !139

100:                                              ; preds = %84, %85, %77
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %75, %100
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %76, %75 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !68
  %105 = getelementptr inbounds ptr, ptr %104, i64 24
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef zeroext i1 %106(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %111 unwind label %108

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  tail call void @__clang_call_terminate(ptr %110) #19
  unreachable

111:                                              ; preds = %49, %102
  %112 = phi { ptr, i32 } [ %50, %49 ], [ %103, %102 ]
  %113 = load ptr, ptr %4, align 8, !tbaa !68
  %114 = getelementptr inbounds ptr, ptr %113, i64 24
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef zeroext i1 %115(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #19
  unreachable

120:                                              ; preds = %111
  resume { ptr, i32 } %112

121:                                              ; preds = %11, %47, %5
  %122 = phi i1 [ false, %5 ], [ %48, %47 ], [ false, %11 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_17lessThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  br label %31

19:                                               ; preds = %60
  %20 = icmp ne i8 %63, 0
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i1 [ false, %5 ], [ %20, %19 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 24
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %30 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #19
  unreachable

30:                                               ; preds = %21
  ret i1 %22

31:                                               ; preds = %15, %60
  %32 = phi i8 [ 0, %15 ], [ %54, %60 ]
  %33 = phi i32 [ 0, %15 ], [ %61, %60 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %33)
          to label %38 unwind label %66

38:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %39 unwind label %66

39:                                               ; preds = %38
  %40 = load ptr, ptr %3, align 8, !tbaa !140
  %41 = load i64, ptr %16, align 8, !tbaa !62
  %42 = icmp eq i64 %41, 0
  %43 = load ptr, ptr %17, align 8
  %44 = select i1 %42, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %43
  %45 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %46 unwind label %66

46:                                               ; preds = %39
  %47 = load ptr, ptr %2, align 8, !tbaa !68
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %51 unwind label %66

51:                                               ; preds = %46
  %52 = invoke noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %45, double noundef %50)
          to label %53 unwind label %66

53:                                               ; preds = %51
  %54 = select i1 %52, i8 1, i8 %32
  %55 = load i64, ptr %16, align 8, !tbaa !62
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %16, align 8, !tbaa !62
  %59 = sub i64 %58, %55
  store i64 %59, ptr %16, align 8, !tbaa !62
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, ptr %18, align 8, !tbaa !96
  %61 = add nuw i32 %33, 1
  %62 = icmp ult i32 %61, %9
  %63 = and i8 %54, 1
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %31, label %19, !llvm.loop !142

66:                                               ; preds = %51, %46, %39, %38, %31
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %4, align 8, !tbaa !68
  %69 = getelementptr inbounds ptr, ptr %68, i64 24
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef zeroext i1 %70(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %75 unwind label %72

72:                                               ; preds = %66
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #19
  unreachable

75:                                               ; preds = %66
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017lessThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 comdat align 2 !prof !54 {
  %4 = load ptr, ptr %0, align 8, !tbaa !140
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %12 = load ptr, ptr %0, align 8, !tbaa !140
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !62
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  %19 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport8lessThanEdd(double noundef %11, double noundef %19)
  ret i1 %20
}

declare noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #0

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_20greaterThanDOMStringENS_13DoubleSupport19greaterThanFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #16 comdat !prof !54 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %9 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %10 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %121 [
    i32 5, label %12
    i32 2, label %22
    i32 3, label %33
    i32 6, label %66
    i32 4, label %115
  ]

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr %5, ptr %7, align 8, !tbaa !101
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %121

22:                                               ; preds = %6
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  %28 = load ptr, ptr %1, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %27, double noundef %31)
  br label %121

33:                                               ; preds = %6
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 13
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %5, ptr %8, align 8, !tbaa !101
  %38 = load ptr, ptr %1, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %42 = load ptr, ptr %37, align 8, !tbaa !68
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %37)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %33, %47
  %48 = phi i8 [ %56, %47 ], [ 0, %33 ]
  %49 = phi i32 [ %57, %47 ], [ 0, %33 ]
  %50 = load ptr, ptr %37, align 8, !tbaa !68
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %49)
  %54 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %55 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %54, double noundef %41)
  %56 = select i1 %55, i8 1, i8 %48
  %57 = add nuw i32 %49, 1
  %58 = icmp ult i32 %57, %45
  %59 = and i8 %56, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %47, label %62, !llvm.loop !143

62:                                               ; preds = %47
  %63 = icmp ne i8 %59, 0
  br label %64

64:                                               ; preds = %62, %33
  %65 = phi i1 [ false, %33 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %121

66:                                               ; preds = %6
  %67 = load ptr, ptr %1, align 8, !tbaa !68
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef double %69(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %71 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !121
  %72 = bitcast double %70 to i64
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %71, %73
  %75 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %76 = lshr i64 %72, 32
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = select i1 %74, i1 %78, i1 false
  %80 = load ptr, ptr %0, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef nonnull align 8 dereferenceable(8) ptr %82(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %79, label %113, label %84

84:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr %5, ptr %9, align 8, !tbaa !101
  %85 = load ptr, ptr %1, align 8, !tbaa !68
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef double %87(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %89 = load ptr, ptr %83, align 8, !tbaa !68
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %84, %94
  %95 = phi i8 [ %103, %94 ], [ 0, %84 ]
  %96 = phi i32 [ %104, %94 ], [ 0, %84 ]
  %97 = load ptr, ptr %83, align 8, !tbaa !68
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %83, i32 noundef %96)
  %101 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %100)
  %102 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %101, double noundef %88)
  %103 = select i1 %102, i8 1, i8 %95
  %104 = add nuw i32 %96, 1
  %105 = icmp ult i32 %104, %92
  %106 = and i8 %103, 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %94, label %109, !llvm.loop !143

109:                                              ; preds = %94
  %110 = icmp ne i8 %106, 0
  br label %111

111:                                              ; preds = %109, %84
  %112 = phi i1 [ false, %84 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %121

113:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store ptr %5, ptr %10, align 8, !tbaa !101
  %114 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %121

115:                                              ; preds = %6
  %116 = load ptr, ptr %0, align 8, !tbaa !68
  %117 = getelementptr inbounds ptr, ptr %116, i64 13
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr %118(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr %5, ptr %11, align 8, !tbaa !101
  %120 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %121

121:                                              ; preds = %6, %111, %113, %22, %115, %64, %12
  %122 = phi i1 [ %21, %12 ], [ %32, %22 ], [ %65, %64 ], [ %120, %115 ], [ %112, %111 ], [ %114, %113 ], [ false, %6 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %121, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %121, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 23
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %26 unwind label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %21, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %51

31:                                               ; preds = %69
  %32 = load ptr, ptr %4, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %39 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #19
  unreachable

47:                                               ; preds = %39
  %48 = icmp ne i8 %72, 0
  br label %121

49:                                               ; preds = %17
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %111

51:                                               ; preds = %26, %69
  %52 = phi i8 [ 0, %26 ], [ %63, %69 ]
  %53 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %53)
          to label %58 unwind label %75

58:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = and i8 %52, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %94, %59
  %63 = phi i8 [ %52, %59 ], [ %88, %94 ]
  %64 = load i64, ptr %29, align 8, !tbaa !62
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %29, align 8, !tbaa !62
  %68 = sub i64 %67, %64
  store i64 %68, ptr %29, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %66, %62
  store i32 0, ptr %30, align 8, !tbaa !96
  %70 = add nuw i32 %53, 1
  %71 = icmp ult i32 %70, %9
  %72 = and i8 %63, 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %51, label %31, !llvm.loop !144

75:                                               ; preds = %58, %51
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %102

77:                                               ; preds = %59, %94
  %78 = phi i8 [ %88, %94 ], [ %52, %59 ]
  %79 = phi i32 [ %95, %94 ], [ 0, %59 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %79)
          to label %84 unwind label %100

84:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %85 unwind label %100

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %87 unwind label %100

87:                                               ; preds = %85
  %88 = select i1 %86, i8 1, i8 %78
  %89 = load i64, ptr %27, align 8, !tbaa !62
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %27, align 8, !tbaa !62
  %93 = sub i64 %92, %89
  store i64 %93, ptr %27, align 8, !tbaa !62
  br label %94

94:                                               ; preds = %91, %87
  store i32 0, ptr %28, align 8, !tbaa !96
  %95 = add nuw i32 %79, 1
  %96 = icmp ult i32 %95, %15
  %97 = and i8 %88, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %77, label %62, !llvm.loop !145

100:                                              ; preds = %84, %85, %77
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %75, %100
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %76, %75 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !68
  %105 = getelementptr inbounds ptr, ptr %104, i64 24
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef zeroext i1 %106(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %111 unwind label %108

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  tail call void @__clang_call_terminate(ptr %110) #19
  unreachable

111:                                              ; preds = %49, %102
  %112 = phi { ptr, i32 } [ %50, %49 ], [ %103, %102 ]
  %113 = load ptr, ptr %4, align 8, !tbaa !68
  %114 = getelementptr inbounds ptr, ptr %113, i64 24
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef zeroext i1 %115(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #19
  unreachable

120:                                              ; preds = %111
  resume { ptr, i32 } %112

121:                                              ; preds = %11, %47, %5
  %122 = phi i1 [ false, %5 ], [ %48, %47 ], [ false, %11 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_20greaterThanDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  br label %31

19:                                               ; preds = %60
  %20 = icmp ne i8 %63, 0
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i1 [ false, %5 ], [ %20, %19 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 24
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %30 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #19
  unreachable

30:                                               ; preds = %21
  ret i1 %22

31:                                               ; preds = %15, %60
  %32 = phi i8 [ 0, %15 ], [ %54, %60 ]
  %33 = phi i32 [ 0, %15 ], [ %61, %60 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %33)
          to label %38 unwind label %66

38:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %39 unwind label %66

39:                                               ; preds = %38
  %40 = load ptr, ptr %3, align 8, !tbaa !146
  %41 = load i64, ptr %16, align 8, !tbaa !62
  %42 = icmp eq i64 %41, 0
  %43 = load ptr, ptr %17, align 8
  %44 = select i1 %42, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %43
  %45 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %46 unwind label %66

46:                                               ; preds = %39
  %47 = load ptr, ptr %2, align 8, !tbaa !68
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %51 unwind label %66

51:                                               ; preds = %46
  %52 = invoke noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %45, double noundef %50)
          to label %53 unwind label %66

53:                                               ; preds = %51
  %54 = select i1 %52, i8 1, i8 %32
  %55 = load i64, ptr %16, align 8, !tbaa !62
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %16, align 8, !tbaa !62
  %59 = sub i64 %58, %55
  store i64 %59, ptr %16, align 8, !tbaa !62
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, ptr %18, align 8, !tbaa !96
  %61 = add nuw i32 %33, 1
  %62 = icmp ult i32 %61, %9
  %63 = and i8 %54, 1
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %31, label %19, !llvm.loop !148

66:                                               ; preds = %51, %46, %39, %38, %31
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %4, align 8, !tbaa !68
  %69 = getelementptr inbounds ptr, ptr %68, i64 24
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef zeroext i1 %70(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %75 unwind label %72

72:                                               ; preds = %66
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #19
  unreachable

75:                                               ; preds = %66
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020greaterThanDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 comdat align 2 !prof !54 {
  %4 = load ptr, ptr %0, align 8, !tbaa !146
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %12 = load ptr, ptr %0, align 8, !tbaa !146
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !62
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  %19 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport11greaterThanEdd(double noundef %11, double noundef %19)
  ret i1 %20
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_24lessThanOrEqualDOMStringENS_13DoubleSupport23lessThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #16 comdat !prof !54 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %9 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %10 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %121 [
    i32 5, label %12
    i32 2, label %22
    i32 3, label %33
    i32 6, label %66
    i32 4, label %115
  ]

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr %5, ptr %7, align 8, !tbaa !101
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %121

22:                                               ; preds = %6
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  %28 = load ptr, ptr %1, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %27, double noundef %31)
  br label %121

33:                                               ; preds = %6
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 13
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %5, ptr %8, align 8, !tbaa !101
  %38 = load ptr, ptr %1, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %42 = load ptr, ptr %37, align 8, !tbaa !68
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %37)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %33, %47
  %48 = phi i8 [ %56, %47 ], [ 0, %33 ]
  %49 = phi i32 [ %57, %47 ], [ 0, %33 ]
  %50 = load ptr, ptr %37, align 8, !tbaa !68
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %49)
  %54 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %55 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %54, double noundef %41)
  %56 = select i1 %55, i8 1, i8 %48
  %57 = add nuw i32 %49, 1
  %58 = icmp ult i32 %57, %45
  %59 = and i8 %56, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %47, label %62, !llvm.loop !149

62:                                               ; preds = %47
  %63 = icmp ne i8 %59, 0
  br label %64

64:                                               ; preds = %62, %33
  %65 = phi i1 [ false, %33 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %121

66:                                               ; preds = %6
  %67 = load ptr, ptr %1, align 8, !tbaa !68
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef double %69(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %71 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !121
  %72 = bitcast double %70 to i64
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %71, %73
  %75 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %76 = lshr i64 %72, 32
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = select i1 %74, i1 %78, i1 false
  %80 = load ptr, ptr %0, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef nonnull align 8 dereferenceable(8) ptr %82(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %79, label %113, label %84

84:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr %5, ptr %9, align 8, !tbaa !101
  %85 = load ptr, ptr %1, align 8, !tbaa !68
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef double %87(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %89 = load ptr, ptr %83, align 8, !tbaa !68
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %84, %94
  %95 = phi i8 [ %103, %94 ], [ 0, %84 ]
  %96 = phi i32 [ %104, %94 ], [ 0, %84 ]
  %97 = load ptr, ptr %83, align 8, !tbaa !68
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %83, i32 noundef %96)
  %101 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %100)
  %102 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %101, double noundef %88)
  %103 = select i1 %102, i8 1, i8 %95
  %104 = add nuw i32 %96, 1
  %105 = icmp ult i32 %104, %92
  %106 = and i8 %103, 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %94, label %109, !llvm.loop !149

109:                                              ; preds = %94
  %110 = icmp ne i8 %106, 0
  br label %111

111:                                              ; preds = %109, %84
  %112 = phi i1 [ false, %84 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %121

113:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store ptr %5, ptr %10, align 8, !tbaa !101
  %114 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %121

115:                                              ; preds = %6
  %116 = load ptr, ptr %0, align 8, !tbaa !68
  %117 = getelementptr inbounds ptr, ptr %116, i64 13
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr %118(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr %5, ptr %11, align 8, !tbaa !101
  %120 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %121

121:                                              ; preds = %6, %111, %113, %22, %115, %64, %12
  %122 = phi i1 [ %21, %12 ], [ %32, %22 ], [ %65, %64 ], [ %120, %115 ], [ %112, %111 ], [ %114, %113 ], [ false, %6 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %121, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %121, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 23
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %26 unwind label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %21, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %51

31:                                               ; preds = %69
  %32 = load ptr, ptr %4, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %39 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #19
  unreachable

47:                                               ; preds = %39
  %48 = icmp ne i8 %72, 0
  br label %121

49:                                               ; preds = %17
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %111

51:                                               ; preds = %26, %69
  %52 = phi i8 [ 0, %26 ], [ %63, %69 ]
  %53 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %53)
          to label %58 unwind label %75

58:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = and i8 %52, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %94, %59
  %63 = phi i8 [ %52, %59 ], [ %88, %94 ]
  %64 = load i64, ptr %29, align 8, !tbaa !62
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %29, align 8, !tbaa !62
  %68 = sub i64 %67, %64
  store i64 %68, ptr %29, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %66, %62
  store i32 0, ptr %30, align 8, !tbaa !96
  %70 = add nuw i32 %53, 1
  %71 = icmp ult i32 %70, %9
  %72 = and i8 %63, 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %51, label %31, !llvm.loop !150

75:                                               ; preds = %58, %51
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %102

77:                                               ; preds = %59, %94
  %78 = phi i8 [ %88, %94 ], [ %52, %59 ]
  %79 = phi i32 [ %95, %94 ], [ 0, %59 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %79)
          to label %84 unwind label %100

84:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %85 unwind label %100

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %87 unwind label %100

87:                                               ; preds = %85
  %88 = select i1 %86, i8 1, i8 %78
  %89 = load i64, ptr %27, align 8, !tbaa !62
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %27, align 8, !tbaa !62
  %93 = sub i64 %92, %89
  store i64 %93, ptr %27, align 8, !tbaa !62
  br label %94

94:                                               ; preds = %91, %87
  store i32 0, ptr %28, align 8, !tbaa !96
  %95 = add nuw i32 %79, 1
  %96 = icmp ult i32 %95, %15
  %97 = and i8 %88, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %77, label %62, !llvm.loop !151

100:                                              ; preds = %84, %85, %77
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %75, %100
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %76, %75 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !68
  %105 = getelementptr inbounds ptr, ptr %104, i64 24
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef zeroext i1 %106(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %111 unwind label %108

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  tail call void @__clang_call_terminate(ptr %110) #19
  unreachable

111:                                              ; preds = %49, %102
  %112 = phi { ptr, i32 } [ %50, %49 ], [ %103, %102 ]
  %113 = load ptr, ptr %4, align 8, !tbaa !68
  %114 = getelementptr inbounds ptr, ptr %113, i64 24
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef zeroext i1 %115(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #19
  unreachable

120:                                              ; preds = %111
  resume { ptr, i32 } %112

121:                                              ; preds = %11, %47, %5
  %122 = phi i1 [ false, %5 ], [ %48, %47 ], [ false, %11 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_24lessThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  br label %31

19:                                               ; preds = %60
  %20 = icmp ne i8 %63, 0
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i1 [ false, %5 ], [ %20, %19 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 24
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %30 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #19
  unreachable

30:                                               ; preds = %21
  ret i1 %22

31:                                               ; preds = %15, %60
  %32 = phi i8 [ 0, %15 ], [ %54, %60 ]
  %33 = phi i32 [ 0, %15 ], [ %61, %60 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %33)
          to label %38 unwind label %66

38:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %39 unwind label %66

39:                                               ; preds = %38
  %40 = load ptr, ptr %3, align 8, !tbaa !152
  %41 = load i64, ptr %16, align 8, !tbaa !62
  %42 = icmp eq i64 %41, 0
  %43 = load ptr, ptr %17, align 8
  %44 = select i1 %42, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %43
  %45 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %46 unwind label %66

46:                                               ; preds = %39
  %47 = load ptr, ptr %2, align 8, !tbaa !68
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %51 unwind label %66

51:                                               ; preds = %46
  %52 = invoke noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %45, double noundef %50)
          to label %53 unwind label %66

53:                                               ; preds = %51
  %54 = select i1 %52, i8 1, i8 %32
  %55 = load i64, ptr %16, align 8, !tbaa !62
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %16, align 8, !tbaa !62
  %59 = sub i64 %58, %55
  store i64 %59, ptr %16, align 8, !tbaa !62
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, ptr %18, align 8, !tbaa !96
  %61 = add nuw i32 %33, 1
  %62 = icmp ult i32 %61, %9
  %63 = and i8 %54, 1
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %31, label %19, !llvm.loop !154

66:                                               ; preds = %51, %46, %39, %38, %31
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %4, align 8, !tbaa !68
  %69 = getelementptr inbounds ptr, ptr %68, i64 24
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef zeroext i1 %70(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %75 unwind label %72

72:                                               ; preds = %66
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #19
  unreachable

75:                                               ; preds = %66
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1024lessThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 comdat align 2 !prof !54 {
  %4 = load ptr, ptr %0, align 8, !tbaa !152
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %12 = load ptr, ptr %0, align 8, !tbaa !152
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !62
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  %19 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport15lessThanOrEqualEdd(double noundef %11, double noundef %19)
  ret i1 %20
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015compareNodeSetsINS_27greaterThanOrEqualDOMStringENS_13DoubleSupport26greaterThanOrEqualFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5) local_unnamed_addr #16 comdat !prof !54 {
  %7 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %8 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %9 = alloca %"struct.xalanc_1_10::getNumberFromNodeFunction", align 8
  %10 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  %11 = alloca %"struct.xalanc_1_10::getStringFromNodeFunction", align 8
  switch i32 %2, label %121 [
    i32 5, label %12
    i32 2, label %22
    i32 3, label %33
    i32 6, label %66
    i32 4, label %115
  ]

12:                                               ; preds = %6
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = getelementptr inbounds ptr, ptr %13, i64 13
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef nonnull align 8 dereferenceable(8) ptr %15(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %17 = load ptr, ptr %1, align 8, !tbaa !68
  %18 = getelementptr inbounds ptr, ptr %17, i64 13
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef nonnull align 8 dereferenceable(8) ptr %19(ptr noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #18
  store ptr %5, ptr %7, align 8, !tbaa !101
  %21 = call noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #18
  br label %121

22:                                               ; preds = %6
  %23 = load ptr, ptr %0, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 7
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %0)
  %27 = select i1 %26, double 1.000000e+00, double 0.000000e+00
  %28 = load ptr, ptr %1, align 8, !tbaa !68
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef double %30(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %32 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %27, double noundef %31)
  br label %121

33:                                               ; preds = %6
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 13
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef nonnull align 8 dereferenceable(8) ptr %36(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #18
  store ptr %5, ptr %8, align 8, !tbaa !101
  %38 = load ptr, ptr %1, align 8, !tbaa !68
  %39 = getelementptr inbounds ptr, ptr %38, i64 6
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef double %40(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %42 = load ptr, ptr %37, align 8, !tbaa !68
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(8) %37)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %64, label %47

47:                                               ; preds = %33, %47
  %48 = phi i8 [ %56, %47 ], [ 0, %33 ]
  %49 = phi i32 [ %57, %47 ], [ 0, %33 ]
  %50 = load ptr, ptr %37, align 8, !tbaa !68
  %51 = getelementptr inbounds ptr, ptr %50, i64 2
  %52 = load ptr, ptr %51, align 8
  %53 = call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(8) %37, i32 noundef %49)
  %54 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %53)
  %55 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %54, double noundef %41)
  %56 = select i1 %55, i8 1, i8 %48
  %57 = add nuw i32 %49, 1
  %58 = icmp ult i32 %57, %45
  %59 = and i8 %56, 1
  %60 = icmp eq i8 %59, 0
  %61 = select i1 %58, i1 %60, i1 false
  br i1 %61, label %47, label %62, !llvm.loop !155

62:                                               ; preds = %47
  %63 = icmp ne i8 %59, 0
  br label %64

64:                                               ; preds = %62, %33
  %65 = phi i1 [ false, %33 ], [ %63, %62 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #18
  br label %121

66:                                               ; preds = %6
  %67 = load ptr, ptr %1, align 8, !tbaa !68
  %68 = getelementptr inbounds ptr, ptr %67, i64 6
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef double %69(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %71 = load i32, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, align 8, !tbaa !121
  %72 = bitcast double %70 to i64
  %73 = trunc i64 %72 to i32
  %74 = icmp eq i32 %71, %73
  %75 = load i32, ptr getelementptr inbounds (%struct.anon, ptr @_ZN11xalanc_1_1013DoubleSupport5s_NaNE, i64 0, i32 1), align 4
  %76 = lshr i64 %72, 32
  %77 = trunc i64 %76 to i32
  %78 = icmp eq i32 %75, %77
  %79 = select i1 %74, i1 %78, i1 false
  %80 = load ptr, ptr %0, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef nonnull align 8 dereferenceable(8) ptr %82(ptr noundef nonnull align 8 dereferenceable(24) %0)
  br i1 %79, label %113, label %84

84:                                               ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #18
  store ptr %5, ptr %9, align 8, !tbaa !101
  %85 = load ptr, ptr %1, align 8, !tbaa !68
  %86 = getelementptr inbounds ptr, ptr %85, i64 6
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef double %87(ptr noundef nonnull align 8 dereferenceable(24) %1)
  %89 = load ptr, ptr %83, align 8, !tbaa !68
  %90 = getelementptr inbounds ptr, ptr %89, i64 3
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef i32 %91(ptr noundef nonnull align 8 dereferenceable(8) %83)
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %111, label %94

94:                                               ; preds = %84, %94
  %95 = phi i8 [ %103, %94 ], [ 0, %84 ]
  %96 = phi i32 [ %104, %94 ], [ 0, %84 ]
  %97 = load ptr, ptr %83, align 8, !tbaa !68
  %98 = getelementptr inbounds ptr, ptr %97, i64 2
  %99 = load ptr, ptr %98, align 8
  %100 = call noundef ptr %99(ptr noundef nonnull align 8 dereferenceable(8) %83, i32 noundef %96)
  %101 = call noundef double @_ZNK11xalanc_1_1025getNumberFromNodeFunction17getNumberFromNodeERKNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef nonnull align 8 dereferenceable(8) %100)
  %102 = call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %101, double noundef %88)
  %103 = select i1 %102, i8 1, i8 %95
  %104 = add nuw i32 %96, 1
  %105 = icmp ult i32 %104, %92
  %106 = and i8 %103, 1
  %107 = icmp eq i8 %106, 0
  %108 = select i1 %105, i1 %107, i1 false
  br i1 %108, label %94, label %109, !llvm.loop !155

109:                                              ; preds = %94
  %110 = icmp ne i8 %106, 0
  br label %111

111:                                              ; preds = %109, %84
  %112 = phi i1 [ false, %84 ], [ %110, %109 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #18
  br label %121

113:                                              ; preds = %66
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #18
  store ptr %5, ptr %10, align 8, !tbaa !101
  %114 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #18
  br label %121

115:                                              ; preds = %6
  %116 = load ptr, ptr %0, align 8, !tbaa !68
  %117 = getelementptr inbounds ptr, ptr %116, i64 13
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef nonnull align 8 dereferenceable(8) ptr %118(ptr noundef nonnull align 8 dereferenceable(24) %0)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #18
  store ptr %5, ptr %11, align 8, !tbaa !101
  %120 = call noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %5)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #18
  br label %121

121:                                              ; preds = %6, %111, %113, %22, %115, %64, %12
  %122 = phi i1 [ %21, %12 ], [ %32, %22 ], [ %65, %64 ], [ %120, %115 ], [ %112, %111 ], [ %114, %113 ], [ false, %6 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1017doCompareNodeSetsINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseES5_RKT0_RKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %121, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %1, align 8, !tbaa !68
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef i32 %14(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %121, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !68
  %19 = getelementptr inbounds ptr, ptr %18, i64 23
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef nonnull align 8 dereferenceable(36) ptr %20(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %22 = load ptr, ptr %4, align 8, !tbaa !68
  %23 = getelementptr inbounds ptr, ptr %22, i64 23
  %24 = load ptr, ptr %23, align 8
  %25 = invoke noundef nonnull align 8 dereferenceable(36) ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %26 unwind label %49

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %25, i64 0, i32 1
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %25, i64 0, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %21, i64 0, i32 1
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %21, i64 0, i32 1
  br label %51

31:                                               ; preds = %69
  %32 = load ptr, ptr %4, align 8, !tbaa !68
  %33 = getelementptr inbounds ptr, ptr %32, i64 24
  %34 = load ptr, ptr %33, align 8
  %35 = invoke noundef zeroext i1 %34(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %39 unwind label %36

36:                                               ; preds = %31
  %37 = landingpad { ptr, i32 }
          catch ptr null
  %38 = extractvalue { ptr, i32 } %37, 0
  tail call void @__clang_call_terminate(ptr %38) #19
  unreachable

39:                                               ; preds = %31
  %40 = load ptr, ptr %4, align 8, !tbaa !68
  %41 = getelementptr inbounds ptr, ptr %40, i64 24
  %42 = load ptr, ptr %41, align 8
  %43 = invoke noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %47 unwind label %44

44:                                               ; preds = %39
  %45 = landingpad { ptr, i32 }
          catch ptr null
  %46 = extractvalue { ptr, i32 } %45, 0
  tail call void @__clang_call_terminate(ptr %46) #19
  unreachable

47:                                               ; preds = %39
  %48 = icmp ne i8 %72, 0
  br label %121

49:                                               ; preds = %17
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %111

51:                                               ; preds = %26, %69
  %52 = phi i8 [ 0, %26 ], [ %63, %69 ]
  %53 = phi i32 [ 0, %26 ], [ %70, %69 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !68
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %53)
          to label %58 unwind label %75

58:                                               ; preds = %51
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %59 unwind label %75

59:                                               ; preds = %58
  %60 = and i8 %52, 1
  %61 = icmp eq i8 %60, 0
  br i1 %61, label %77, label %62

62:                                               ; preds = %94, %59
  %63 = phi i8 [ %52, %59 ], [ %88, %94 ]
  %64 = load i64, ptr %29, align 8, !tbaa !62
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %62
  %67 = load i64, ptr %29, align 8, !tbaa !62
  %68 = sub i64 %67, %64
  store i64 %68, ptr %29, align 8, !tbaa !62
  br label %69

69:                                               ; preds = %66, %62
  store i32 0, ptr %30, align 8, !tbaa !96
  %70 = add nuw i32 %53, 1
  %71 = icmp ult i32 %70, %9
  %72 = and i8 %63, 1
  %73 = icmp eq i8 %72, 0
  %74 = select i1 %71, i1 %73, i1 false
  br i1 %74, label %51, label %31, !llvm.loop !156

75:                                               ; preds = %58, %51
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %102

77:                                               ; preds = %59, %94
  %78 = phi i8 [ %88, %94 ], [ %52, %59 ]
  %79 = phi i32 [ %95, %94 ], [ 0, %59 ]
  %80 = load ptr, ptr %1, align 8, !tbaa !68
  %81 = getelementptr inbounds ptr, ptr %80, i64 2
  %82 = load ptr, ptr %81, align 8
  %83 = invoke noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %79)
          to label %84 unwind label %100

84:                                               ; preds = %77
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %83, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %85 unwind label %100

85:                                               ; preds = %84
  %86 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %21, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %87 unwind label %100

87:                                               ; preds = %85
  %88 = select i1 %86, i8 1, i8 %78
  %89 = load i64, ptr %27, align 8, !tbaa !62
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %87
  %92 = load i64, ptr %27, align 8, !tbaa !62
  %93 = sub i64 %92, %89
  store i64 %93, ptr %27, align 8, !tbaa !62
  br label %94

94:                                               ; preds = %91, %87
  store i32 0, ptr %28, align 8, !tbaa !96
  %95 = add nuw i32 %79, 1
  %96 = icmp ult i32 %95, %15
  %97 = and i8 %88, 1
  %98 = icmp eq i8 %97, 0
  %99 = select i1 %96, i1 %98, i1 false
  br i1 %99, label %77, label %62, !llvm.loop !157

100:                                              ; preds = %84, %85, %77
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %102

102:                                              ; preds = %75, %100
  %103 = phi { ptr, i32 } [ %101, %100 ], [ %76, %75 ]
  %104 = load ptr, ptr %4, align 8, !tbaa !68
  %105 = getelementptr inbounds ptr, ptr %104, i64 24
  %106 = load ptr, ptr %105, align 8
  %107 = invoke noundef zeroext i1 %106(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %25)
          to label %111 unwind label %108

108:                                              ; preds = %102
  %109 = landingpad { ptr, i32 }
          catch ptr null
  %110 = extractvalue { ptr, i32 } %109, 0
  tail call void @__clang_call_terminate(ptr %110) #19
  unreachable

111:                                              ; preds = %49, %102
  %112 = phi { ptr, i32 } [ %50, %49 ], [ %103, %102 ]
  %113 = load ptr, ptr %4, align 8, !tbaa !68
  %114 = getelementptr inbounds ptr, ptr %113, i64 24
  %115 = load ptr, ptr %114, align 8
  %116 = invoke noundef zeroext i1 %115(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %21)
          to label %120 unwind label %117

117:                                              ; preds = %111
  %118 = landingpad { ptr, i32 }
          catch ptr null
  %119 = extractvalue { ptr, i32 } %118, 0
  tail call void @__clang_call_terminate(ptr %119) #19
  unreachable

120:                                              ; preds = %111
  resume { ptr, i32 } %112

121:                                              ; preds = %11, %47, %5
  %122 = phi i1 [ false, %5 ], [ %48, %47 ], [ false, %11 ]
  ret i1 %122
}

; Function Attrs: cold inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xalanc_1_1015doCompareStringINS_27greaterThanOrEqualDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(24) %4) local_unnamed_addr #16 comdat personality ptr @__gxx_personality_v0 !prof !54 {
  %6 = load ptr, ptr %0, align 8, !tbaa !68
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef i32 %8(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %10 = load ptr, ptr %4, align 8, !tbaa !68
  %11 = getelementptr inbounds ptr, ptr %10, i64 23
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %4)
  %14 = icmp eq i32 %9, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %5
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %13, i64 0, i32 3
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %13, i64 0, i32 1
  br label %31

19:                                               ; preds = %60
  %20 = icmp ne i8 %63, 0
  br label %21

21:                                               ; preds = %19, %5
  %22 = phi i1 [ false, %5 ], [ %20, %19 ]
  %23 = load ptr, ptr %4, align 8, !tbaa !68
  %24 = getelementptr inbounds ptr, ptr %23, i64 24
  %25 = load ptr, ptr %24, align 8
  %26 = invoke noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %30 unwind label %27

27:                                               ; preds = %21
  %28 = landingpad { ptr, i32 }
          catch ptr null
  %29 = extractvalue { ptr, i32 } %28, 0
  tail call void @__clang_call_terminate(ptr %29) #19
  unreachable

30:                                               ; preds = %21
  ret i1 %22

31:                                               ; preds = %15, %60
  %32 = phi i8 [ 0, %15 ], [ %54, %60 ]
  %33 = phi i32 [ 0, %15 ], [ %61, %60 ]
  %34 = load ptr, ptr %0, align 8, !tbaa !68
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %33)
          to label %38 unwind label %66

38:                                               ; preds = %31
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %37, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %39 unwind label %66

39:                                               ; preds = %38
  %40 = load ptr, ptr %3, align 8, !tbaa !158
  %41 = load i64, ptr %16, align 8, !tbaa !62
  %42 = icmp eq i64 %41, 0
  %43 = load ptr, ptr %17, align 8
  %44 = select i1 %42, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %43
  %45 = invoke noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %44, ptr noundef nonnull align 8 dereferenceable(8) %40)
          to label %46 unwind label %66

46:                                               ; preds = %39
  %47 = load ptr, ptr %2, align 8, !tbaa !68
  %48 = getelementptr inbounds ptr, ptr %47, i64 6
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef double %49(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %51 unwind label %66

51:                                               ; preds = %46
  %52 = invoke noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %45, double noundef %50)
          to label %53 unwind label %66

53:                                               ; preds = %51
  %54 = select i1 %52, i8 1, i8 %32
  %55 = load i64, ptr %16, align 8, !tbaa !62
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = load i64, ptr %16, align 8, !tbaa !62
  %59 = sub i64 %58, %55
  store i64 %59, ptr %16, align 8, !tbaa !62
  br label %60

60:                                               ; preds = %57, %53
  store i32 0, ptr %18, align 8, !tbaa !96
  %61 = add nuw i32 %33, 1
  %62 = icmp ult i32 %61, %9
  %63 = and i8 %54, 1
  %64 = icmp eq i8 %63, 0
  %65 = select i1 %62, i1 %64, i1 false
  br i1 %65, label %31, label %19, !llvm.loop !160

66:                                               ; preds = %51, %46, %39, %38, %31
  %67 = landingpad { ptr, i32 }
          cleanup
  %68 = load ptr, ptr %4, align 8, !tbaa !68
  %69 = getelementptr inbounds ptr, ptr %68, i64 24
  %70 = load ptr, ptr %69, align 8
  %71 = invoke noundef zeroext i1 %70(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %75 unwind label %72

72:                                               ; preds = %66
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #19
  unreachable

75:                                               ; preds = %66
  resume { ptr, i32 } %67
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1027greaterThanOrEqualDOMStringclERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #3 comdat align 2 !prof !54 {
  %4 = load ptr, ptr %0, align 8, !tbaa !158
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !62
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %10, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %12 = load ptr, ptr %0, align 8, !tbaa !158
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !62
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  %19 = tail call noundef double @_ZN11xalanc_1_1018WideStringToDoubleEPKtRN11xercesc_2_713MemoryManagerE(ptr noundef %18, ptr noundef nonnull align 8 dereferenceable(8) %12)
  %20 = tail call noundef zeroext i1 @_ZN11xalanc_1_1013DoubleSupport18greaterThanOrEqualEdd(double noundef %11, double noundef %19)
  ret i1 %20
}

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XObject.cpp() #17 section ".text.startup" !prof !55 !PGOFuncName !161 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localBooleanStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_localBooleanStringE, ptr nonnull @__dso_handle) #18
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L18s_localFalseStringE, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %4 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L18s_localFalseStringE, ptr nonnull @__dso_handle) #18
  %5 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L20s_localNodesetStringE, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %6 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L20s_localNodesetStringE, ptr nonnull @__dso_handle) #18
  %7 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localNumberStringE, ptr noundef nonnull align 8 dereferenceable(8) %7)
  %8 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L19s_localNumberStringE, ptr nonnull @__dso_handle) #18
  %9 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, ptr noundef nonnull align 8 dereferenceable(8) %9)
  %10 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L31s_localResultTreeFragmentStringE, ptr nonnull @__dso_handle) #18
  %11 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L19s_localStringStringE, ptr noundef nonnull align 8 dereferenceable(8) %11)
  %12 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L19s_localStringStringE, ptr nonnull @__dso_handle) #18
  %13 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L17s_localTrueStringE, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L17s_localTrueStringE, ptr nonnull @__dso_handle) #18
  %15 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %15)
  %16 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_107XObject13s_emptyStringE, ptr nonnull @__dso_handle) #18
  %17 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) @_ZN11xalanc_1_10L11s_dummyListE, ptr noundef nonnull align 8 dereferenceable(8) %17)
  %18 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1011NodeRefListD1Ev, ptr nonnull @_ZN11xalanc_1_10L11s_dummyListE, ptr nonnull @__dso_handle) #18
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nounwind }
attributes #19 = { noreturn nounwind }
attributes #20 = { noreturn }
attributes #21 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!53}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!35 = !{ptr @_ZN11xalanc_1_107XObject10initializeERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString5resetERN11xercesc_2_713MemoryManagerEPKt, i64 7}
!36 = !{ptr @_ZN11xalanc_1_107XObject9terminateEv, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 7}
!37 = !{ptr @_ZN11xalanc_1_107XObject9terminateEv, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 7}
!38 = !{ptr @_ZN11xalanc_1_107XObjectC2ENS0_11eObjectTypeE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev, i64 156792955}
!39 = !{ptr @_ZN11xalanc_1_107XObjectC2ERKS0_, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectC2Ev, i64 983}
!40 = !{ptr @_ZN11xalanc_1_107XObjectD2Ev, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObjectD2Ev, i64 156793938}
!41 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE, i64 71882}
!42 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_9XalanNodeE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 71882}
!43 = !{ptr @_ZN11xalanc_1_107XObject6numberERNS_21XPathExecutionContextERKNS_15NodeRefListBaseE, ptr @_ZN11xalanc_1_1013DoubleSupport8toDoubleERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE, i64 6000}
!44 = !{ptr @_ZNK11xalanc_1_107XObject3strERNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 44714704}
!45 = !{ptr @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, i64 19395}
!46 = !{ptr @_ZNK11xalanc_1_107XObject6equalsERKS0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1013DoubleSupport5equalEdd, i64 22360916}
!47 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!48 = !{ptr @_ZN11xalanc_1_1015compareNodeSetsINS_15equalsDOMStringENS_13DoubleSupport13equalFunctionEEEbRKNS_7XObjectES6_NS4_11eObjectTypeERKT_RKT0_RNS_21XPathExecutionContextE, ptr @_ZN11xalanc_1_1015doCompareStringINS_15equalsDOMStringENS_25getStringFromNodeFunctionEEEbRKNS_15NodeRefListBaseERKT0_RKNS_7XObjectERKT_RNS_21XPathExecutionContextE, i64 19395}
!49 = !{ptr @_GLOBAL__sub_I_XObject.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 9}
!50 = !{ptr @_GLOBAL__sub_I_XObject.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 8}
!51 = !{ptr @_GLOBAL__sub_I_XObject.cpp, ptr @__cxa_atexit, i64 9}
!52 = !{ptr @_GLOBAL__sub_I_XObject.cpp, ptr @_ZN11xalanc_1_1011NodeRefListC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!53 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!54 = !{!"function_entry_count", i64 0}
!55 = !{!"function_entry_count", i64 1}
!56 = !{!57, !58, i64 0}
!57 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !58, i64 0, !61, i64 8, !61, i64 16, !58, i64 24}
!58 = !{!"any pointer", !59, i64 0}
!59 = !{!"omnipotent char", !60, i64 0}
!60 = !{!"Simple C++ TBAA"}
!61 = !{!"long", !59, i64 0}
!62 = !{!57, !61, i64 8}
!63 = !{!57, !61, i64 16}
!64 = !{!57, !58, i64 24}
!65 = !{!66, !66, i64 0}
!66 = !{!"int", !59, i64 0}
!67 = !{!"branch_weights", i32 0, i32 1}
!68 = !{!69, !69, i64 0}
!69 = !{!"vtable pointer", !60, i64 0}
!70 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!71 = !{!"function_entry_count", i64 156792955}
!72 = !{!73, !75, i64 12}
!73 = !{!"_ZTSN11xalanc_1_107XObjectE", !74, i64 0, !75, i64 12, !58, i64 16}
!74 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !66, i64 8}
!75 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !59, i64 0}
!76 = !{!73, !58, i64 16}
!77 = !{!"function_entry_count", i64 983}
!78 = !{!"function_entry_count", i64 156793938}
!79 = !{!"function_entry_count", i64 44892080}
!80 = !{!"function_entry_count", i64 201703441}
!81 = !{!"function_entry_count", i64 71882}
!82 = !{!"VP", i32 0, i64 71882, i64 513632834810131310, i64 71882}
!83 = !{!"branch_weights", i32 71882, i32 0}
!84 = !{!85, !58, i64 8}
!85 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !58, i64 8}
!86 = !{!"VP", i32 0, i64 71882, i64 1667259618122374371, i64 71882}
!87 = !{!"function_entry_count", i64 6000}
!88 = !{!"VP", i32 0, i64 6000, i64 -587917090741629528, i64 6000}
!89 = !{!"branch_weights", i32 6000, i32 0}
!90 = !{!"function_entry_count", i64 201666166}
!91 = !{!"branch_weights", i32 19395, i32 201646771}
!92 = !{!"VP", i32 0, i64 201646771, i64 -4623731673990711950, i64 201646771}
!93 = !{!"function_entry_count", i64 44714704}
!94 = !{!"VP", i32 0, i64 44714704, i64 -8415801386834130730, i64 44714704}
!95 = !{!"branch_weights", i32 0, i32 44714704}
!96 = !{!97, !66, i64 32}
!97 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !57, i64 0, !66, i64 32}
!98 = !{!"function_entry_count", i64 22380311}
!99 = !{!"branch_weights", i32 0, i32 22380311}
!100 = !{!"branch_weights", i32 22360916, i32 0, i32 0, i32 19395}
!101 = !{!58, !58, i64 0}
!102 = !{!"branch_weights", i32 0, i32 22360916}
!103 = !{!"branch_weights", i32 22360916, i32 0}
!104 = !{!"VP", i32 0, i64 22360916, i64 4069796776158877571, i64 22360916}
!105 = !{!"VP", i32 0, i64 22360916, i64 3197589958826752107, i64 22360916}
!106 = !{!107, !75, i64 112}
!107 = !{!"_ZTSN11xalanc_1_107XObject33XObjectInvalidConversionExceptionE", !108, i64 0, !75, i64 112, !75, i64 116}
!108 = !{!"_ZTSN11xalanc_1_107XObject16XObjectExceptionE", !109, i64 0}
!109 = !{!"_ZTSN11xalanc_1_1019XalanXPathExceptionE", !110, i64 0, !58, i64 104}
!110 = !{!"_ZTSN11xalanc_1_1012XSLExceptionE", !97, i64 8, !97, i64 48, !61, i64 88, !61, i64 96}
!111 = !{!107, !75, i64 116}
!112 = !{!74, !66, i64 8}
!113 = !{!"function_entry_count", i64 42470003}
!114 = !{!"branch_weights", i32 52000, i32 42418003}
!115 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!116 = !{!"function_entry_count", i64 19395}
!117 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 0, i32 19395}
!118 = distinct !{!118, !119, !120}
!119 = !{!"llvm.loop.mustprogress"}
!120 = !{!"llvm.loop.unroll.disable"}
!121 = !{!59, !59, i64 0}
!122 = !{!"VP", i32 0, i64 19395, i64 4052150734772823859, i64 19395}
!123 = distinct !{!123, !119, !120}
!124 = distinct !{!124, !119, !120}
!125 = !{!"VP", i32 0, i64 19395, i64 -587917090741629528, i64 19395}
!126 = !{!"VP", i32 0, i64 19395, i64 513632834810131310, i64 19395}
!127 = !{!"branch_weights", i32 1, i32 0}
!128 = !{!"VP", i32 0, i64 19395, i64 1667259618122374371, i64 19395}
!129 = !{!"branch_weights", i32 0, i32 19395}
!130 = distinct !{!130, !119, !120}
!131 = !{!132, !58, i64 0}
!132 = !{!"_ZTSN11xalanc_1_1025getNumberFromNodeFunctionE", !58, i64 0}
!133 = distinct !{!133, !119, !120}
!134 = distinct !{!134, !119, !120}
!135 = distinct !{!135, !119, !120}
!136 = distinct !{!136, !119, !120}
!137 = distinct !{!137, !119, !120}
!138 = distinct !{!138, !119, !120}
!139 = distinct !{!139, !119, !120}
!140 = !{!141, !58, i64 0}
!141 = !{!"_ZTSN11xalanc_1_1017lessThanDOMStringE", !58, i64 0}
!142 = distinct !{!142, !119, !120}
!143 = distinct !{!143, !119, !120}
!144 = distinct !{!144, !119, !120}
!145 = distinct !{!145, !119, !120}
!146 = !{!147, !58, i64 0}
!147 = !{!"_ZTSN11xalanc_1_1020greaterThanDOMStringE", !58, i64 0}
!148 = distinct !{!148, !119, !120}
!149 = distinct !{!149, !119, !120}
!150 = distinct !{!150, !119, !120}
!151 = distinct !{!151, !119, !120}
!152 = !{!153, !58, i64 0}
!153 = !{!"_ZTSN11xalanc_1_1024lessThanOrEqualDOMStringE", !58, i64 0}
!154 = distinct !{!154, !119, !120}
!155 = distinct !{!155, !119, !120}
!156 = distinct !{!156, !119, !120}
!157 = distinct !{!157, !119, !120}
!158 = !{!159, !58, i64 0}
!159 = !{!"_ZTSN11xalanc_1_1027greaterThanOrEqualDOMStringE", !58, i64 0}
!160 = distinct !{!160, !119, !120}
!161 = !{!"XObject.cpp;_GLOBAL__sub_I_XObject.cpp"}
