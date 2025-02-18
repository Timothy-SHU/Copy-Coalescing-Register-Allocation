; ModuleID = 'XObjectFactoryDefault.cpp'
source_filename = "XObjectFactoryDefault.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectFactoryDefault" = type { %"class.xalanc_1_10::XObjectFactory", %"class.xalanc_1_10::XStringAdapterAllocator", %"class.xalanc_1_10::XStringAllocator", %"class.xalanc_1_10::XStringCachedAllocator", %"class.xalanc_1_10::XStringReferenceAllocator", %"class.xalanc_1_10::XNumberAllocator", %"class.xalanc_1_10::XNodeSetAllocator", %"class.xalanc_1_10::XNodeSetNodeProxyAllocator", %"class.xalanc_1_10::XTokenNumberAdapterAllocator", %"class.xalanc_1_10::XTokenStringAdapterAllocator", %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector.32", %"class.xalanc_1_10::XalanVector.33", %"class.xalanc_1_10::XalanVector.34", %"class.xalanc_1_10::XNull", %"class.xalanc_1_10::XBoolean", %"class.xalanc_1_10::XBoolean" }
%"class.xalanc_1_10::XObjectFactory" = type { ptr, ptr }
%"class.xalanc_1_10::XStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator" }
%"class.xalanc_1_10::ReusableArenaAllocator" = type <{ %"class.xalanc_1_10::ArenaAllocator", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i16, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.0" }
%"class.xalanc_1_10::ReusableArenaAllocator.0" = type <{ %"class.xalanc_1_10::ArenaAllocator.1", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.1" = type { ptr, i16, %"class.xalanc_1_10::XalanList.2" }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringCachedAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.4" }
%"class.xalanc_1_10::ReusableArenaAllocator.4" = type <{ %"class.xalanc_1_10::ArenaAllocator.5", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.5" = type { ptr, i16, %"class.xalanc_1_10::XalanList.6" }
%"class.xalanc_1_10::XalanList.6" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XStringReferenceAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.8" }
%"class.xalanc_1_10::ReusableArenaAllocator.8" = type <{ %"class.xalanc_1_10::ArenaAllocator.9", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.9" = type { ptr, i16, %"class.xalanc_1_10::XalanList.10" }
%"class.xalanc_1_10::XalanList.10" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNumberAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.12" }
%"class.xalanc_1_10::ReusableArenaAllocator.12" = type <{ %"class.xalanc_1_10::ArenaAllocator.13", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.13" = type { ptr, i16, %"class.xalanc_1_10::XalanList.14" }
%"class.xalanc_1_10::XalanList.14" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.16" }
%"class.xalanc_1_10::ReusableArenaAllocator.16" = type <{ %"class.xalanc_1_10::ArenaAllocator.17", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.17" = type { ptr, i16, %"class.xalanc_1_10::XalanList.18" }
%"class.xalanc_1_10::XalanList.18" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XNodeSetNodeProxyAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.20" }
%"class.xalanc_1_10::ReusableArenaAllocator.20" = type <{ %"class.xalanc_1_10::ArenaAllocator.21", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.21" = type { ptr, i16, %"class.xalanc_1_10::XalanList.22" }
%"class.xalanc_1_10::XalanList.22" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenNumberAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.24" }
%"class.xalanc_1_10::ReusableArenaAllocator.24" = type <{ %"class.xalanc_1_10::ArenaAllocator.25", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.25" = type { ptr, i16, %"class.xalanc_1_10::XalanList.26" }
%"class.xalanc_1_10::XalanList.26" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XTokenStringAdapterAllocator" = type { %"class.xalanc_1_10::ReusableArenaAllocator.28" }
%"class.xalanc_1_10::ReusableArenaAllocator.28" = type <{ %"class.xalanc_1_10::ArenaAllocator.29", i8, [7 x i8] }>
%"class.xalanc_1_10::ArenaAllocator.29" = type { ptr, i16, %"class.xalanc_1_10::XalanList.30" }
%"class.xalanc_1_10::XalanList.30" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.32" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.33" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.34" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XNull" = type { %"class.xalanc_1_10::XObject" }
%"class.xalanc_1_10::XObject" = type { %"class.xalanc_1_10::XalanReferenceCountedObject.base", i32, ptr }
%"class.xalanc_1_10::XalanReferenceCountedObject.base" = type <{ ptr, i32 }>
%"class.xalanc_1_10::XBoolean" = type <{ %"class.xalanc_1_10::XObject", i8, [7 x i8] }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XString" = type { %"class.xalanc_1_10::XStringBase", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XStringBase" = type { %"class.xalanc_1_10::XObject", double, %"class.xalanc_1_10::XObjectResultTreeFragProxy" }
%"class.xalanc_1_10::XObjectResultTreeFragProxy" = type { %"class.xalanc_1_10::XObjectResultTreeFragProxyBase", %"class.xalanc_1_10::XObjectResultTreeFragProxyText" }
%"class.xalanc_1_10::XObjectResultTreeFragProxyBase" = type { %"class.xalanc_1_10::XalanDocumentFragment" }
%"class.xalanc_1_10::XalanDocumentFragment" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XObjectResultTreeFragProxyText" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.35", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.35" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

$_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm = comdat any

@_ZTVN11xalanc_1_1021XObjectFactoryDefaultE = dso_local unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XObjectFactoryDefaultE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD0Ev, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createBooleanEb, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault10createNullEv, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKt, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKtj, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault19createStringAdapterERKNS_10XObjectPtrE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createUnknownERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1021XObjectFactoryDefaultE = dso_local constant [39 x i8] c"N11xalanc_1_1021XObjectFactoryDefaultE\00", align 1
@_ZTIN11xalanc_1_1014XObjectFactoryE = external constant ptr
@_ZTIN11xalanc_1_1021XObjectFactoryDefaultE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XObjectFactoryDefaultE, ptr @_ZTIN11xalanc_1_1014XObjectFactoryE }, align 8

@_ZN11xalanc_1_1021XObjectFactoryDefaultC1ERN11xercesc_2_713MemoryManagerEtttt = dso_local unnamed_addr alias void (ptr, ptr, i16, i16, i16, i16), ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt
@_ZN11xalanc_1_1021XObjectFactoryDefaultD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4, i16 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  tail call void @_ZN11xalanc_1_1014XObjectFactoryC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xalanc_1_1021XObjectFactoryDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1023XStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2)
          to label %8 unwind label %39, !prof !112

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1016XStringAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2)
          to label %10 unwind label %41, !prof !112

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2)
          to label %12 unwind label %43, !prof !112

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1025XStringReferenceAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2)
          to label %14 unwind label %45, !prof !112

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  invoke void @_ZN11xalanc_1_1016XNumberAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %15, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %3)
          to label %16 unwind label %47, !prof !112

16:                                               ; preds = %14
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  invoke void @_ZN11xalanc_1_1017XNodeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %17, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %4)
          to label %18 unwind label %49, !prof !112

18:                                               ; preds = %16
  %19 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  invoke void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %19, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %5)
          to label %20 unwind label %51, !prof !112

20:                                               ; preds = %18
  %21 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  invoke void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %3)
          to label %22 unwind label %53, !prof !112

22:                                               ; preds = %20
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  invoke void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull align 8 dereferenceable(8) %1, i16 noundef zeroext %2)
          to label %24 unwind label %55, !prof !112

24:                                               ; preds = %22
  %25 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10
  store ptr %1, ptr %25, align 8, !tbaa !113
  %26 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10, i32 1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  store ptr %1, ptr %27, align 8, !tbaa !118
  %28 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11, i32 1
  %29 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, i8 0, i64 24, i1 false)
  store ptr %1, ptr %29, align 8, !tbaa !120
  %30 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12, i32 1
  %31 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  store ptr %1, ptr %31, align 8, !tbaa !122
  %32 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13, i32 1
  %33 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_105XNullC1Ev(ptr noundef nonnull align 8 dereferenceable(24) %33)
          to label %34 unwind label %57, !prof !112

34:                                               ; preds = %24
  %35 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 15
  invoke void @_ZN11xalanc_1_108XBooleanC1Eb(ptr noundef nonnull align 8 dereferenceable(25) %35, i1 noundef zeroext false)
          to label %36 unwind label %59, !prof !112

36:                                               ; preds = %34
  %37 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 16
  invoke void @_ZN11xalanc_1_108XBooleanC1Eb(ptr noundef nonnull align 8 dereferenceable(25) %37, i1 noundef zeroext true)
          to label %38 unwind label %61, !prof !112

38:                                               ; preds = %36
  ret void

39:                                               ; preds = %6
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %83

41:                                               ; preds = %8
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %81

43:                                               ; preds = %10
  %44 = landingpad { ptr, i32 }
          cleanup
  br label %79

45:                                               ; preds = %12
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %77

47:                                               ; preds = %14
  %48 = landingpad { ptr, i32 }
          cleanup
  br label %75

49:                                               ; preds = %16
  %50 = landingpad { ptr, i32 }
          cleanup
  br label %73

51:                                               ; preds = %18
  %52 = landingpad { ptr, i32 }
          cleanup
  br label %71

53:                                               ; preds = %20
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %69

55:                                               ; preds = %22
  %56 = landingpad { ptr, i32 }
          cleanup
  br label %67

57:                                               ; preds = %24
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %65

59:                                               ; preds = %34
  %60 = landingpad { ptr, i32 }
          cleanup
  br label %63

61:                                               ; preds = %36
  %62 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %35) #13
  br label %63

63:                                               ; preds = %61, %59
  %64 = phi { ptr, i32 } [ %62, %61 ], [ %60, %59 ]
  tail call void @_ZN11xalanc_1_105XNullD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %33) #13
  br label %65

65:                                               ; preds = %63, %57
  %66 = phi { ptr, i32 } [ %64, %63 ], [ %58, %57 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %31) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %29) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %27) #13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #13
  tail call void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %23) #13
  br label %67

67:                                               ; preds = %65, %55
  %68 = phi { ptr, i32 } [ %66, %65 ], [ %56, %55 ]
  tail call void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %21) #13
  br label %69

69:                                               ; preds = %67, %53
  %70 = phi { ptr, i32 } [ %68, %67 ], [ %54, %53 ]
  tail call void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %19) #13
  br label %71

71:                                               ; preds = %69, %51
  %72 = phi { ptr, i32 } [ %70, %69 ], [ %52, %51 ]
  tail call void @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %17) #13
  br label %73

73:                                               ; preds = %71, %49
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %50, %49 ]
  tail call void @_ZN11xalanc_1_1016XNumberAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  br label %75

75:                                               ; preds = %73, %47
  %76 = phi { ptr, i32 } [ %74, %73 ], [ %48, %47 ]
  tail call void @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  br label %77

77:                                               ; preds = %75, %45
  %78 = phi { ptr, i32 } [ %76, %75 ], [ %46, %45 ]
  tail call void @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #13
  br label %79

79:                                               ; preds = %77, %43
  %80 = phi { ptr, i32 } [ %78, %77 ], [ %44, %43 ]
  tail call void @_ZN11xalanc_1_1016XStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %9) #13
  br label %81

81:                                               ; preds = %79, %41
  %82 = phi { ptr, i32 } [ %80, %79 ], [ %42, %41 ]
  tail call void @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %7) #13
  br label %83

83:                                               ; preds = %81, %39
  %84 = phi { ptr, i32 } [ %82, %81 ], [ %40, %39 ]
  tail call void @_ZN11xalanc_1_1014XObjectFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  resume { ptr, i32 } %84
}

declare void @_ZN11xalanc_1_1014XObjectFactoryC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xalanc_1_1023XStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1016XStringAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1025XStringReferenceAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1016XNumberAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1017XNodeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8), i16 noundef zeroext) unnamed_addr #1

declare void @_ZN11xalanc_1_105XNullC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZN11xalanc_1_108XBooleanC1Eb(ptr noundef nonnull align 8 dereferenceable(25), i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_105XNullD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !124
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = load ptr, ptr %0, align 8, !tbaa !122
  %9 = load ptr, ptr %8, align 8, !tbaa !109
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
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !126
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !128
  %8 = load ptr, ptr %0, align 8, !tbaa !120
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !129

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !130
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !127

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !131
  %8 = load ptr, ptr %0, align 8, !tbaa !118
  %9 = load ptr, ptr %8, align 8, !tbaa !109
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !129

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !132
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !112

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !133
  %8 = load ptr, ptr %0, align 8, !tbaa !113
  %9 = load ptr, ptr %8, align 8, !tbaa !109
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
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XNumberAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1014XObjectFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XObjectFactoryDefault6createERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %6 = load ptr, ptr %0, align 8, !tbaa !109
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 664)
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt(ptr noundef nonnull align 8 dereferenceable(664) %9, ptr noundef nonnull align 8 dereferenceable(8) %0, i16 noundef zeroext %1, i16 noundef zeroext %2, i16 noundef zeroext %3, i16 noundef zeroext %4)
          to label %10 unwind label %11

10:                                               ; preds = %5
  ret ptr %9

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  %13 = icmp eq ptr %9, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !109
  %16 = getelementptr inbounds ptr, ptr %15, i64 3
  %17 = load ptr, ptr %16, align 8
  invoke void %17(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %9)
          to label %21 unwind label %18

18:                                               ; preds = %14
  %19 = landingpad { ptr, i32 }
          catch ptr null
  %20 = extractvalue { ptr, i32 } %19, 0
  tail call void @__clang_call_terminate(ptr %20) #14
  unreachable

21:                                               ; preds = %11, %14
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTVN11xalanc_1_1021XObjectFactoryDefaultE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !109
  invoke void @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(664) %0)
          to label %2 unwind label %19, !prof !112

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 16
  tail call void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %3) #13
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 15
  tail call void @_ZN11xalanc_1_108XBooleanD1Ev(ptr noundef nonnull align 8 dereferenceable(25) %4) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 14
  tail call void @_ZN11xalanc_1_105XNullD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #13
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  %8 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #13
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %10) #13
  %11 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %11) #13
  %12 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %12) #13
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %13) #13
  %14 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1016XNumberAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %14) #13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %15) #13
  %16 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %16) #13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1016XStringAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %17) #13
  %18 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev(ptr noundef nonnull align 8 dereferenceable(48) %18) #13
  tail call void @_ZN11xalanc_1_1014XObjectFactoryD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #13
  ret void

19:                                               ; preds = %1
  %20 = landingpad { ptr, i32 }
          catch ptr null
  %21 = extractvalue { ptr, i32 } %20, 0
  tail call void @__clang_call_terminate(ptr %21) #14
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat !prof !134 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefaultD0Ev(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #3 align 2 !prof !134 {
  tail call void @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev(ptr noundef nonnull align 8 dereferenceable(664) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #15
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #7 align 2 !prof !135 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !136
  %8 = load ptr, ptr %1, align 8, !tbaa !109
  %9 = getelementptr inbounds ptr, ptr %8, i64 16
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(24) %1), !prof !137
  switch i32 %11, label %72 [
    i32 2, label %12
    i32 0, label %12
    i32 9, label %12
    i32 11, label %16
    i32 12, label %20
    i32 4, label %24
    i32 10, label %36
    i32 8, label %40
    i32 3, label %44
    i32 5, label %56
    i32 13, label %68
  ], !prof !138

12:                                               ; preds = %3, %3, %3
  %13 = load ptr, ptr %4, align 8, !tbaa !136
  %14 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  %15 = tail call noundef zeroext i1 @_ZN11xalanc_1_1023XStringAdapterAllocator7destroyEPNS_14XStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef %13)
  br label %105

16:                                               ; preds = %3
  %17 = load ptr, ptr %4, align 8, !tbaa !136
  %18 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator7destroyEPNS_19XTokenNumberAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef %17)
  br label %105

20:                                               ; preds = %3
  %21 = load ptr, ptr %4, align 8, !tbaa !136
  %22 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  %23 = tail call noundef zeroext i1 @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef %21)
  br label %105

24:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %25 = load ptr, ptr %4, align 8, !tbaa !136
  store ptr %25, ptr %5, align 8, !tbaa !136
  %26 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13, i32 1
  %27 = load i64, ptr %26, align 8, !tbaa !139
  %28 = icmp ult i64 %27, 40
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %30, ptr noundef nonnull align 8 dereferenceable(8) %5)
  br label %34

31:                                               ; preds = %24
  %32 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  %33 = tail call noundef zeroext i1 @_ZN11xalanc_1_1016XStringAllocator7destroyEPNS_7XStringE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef %25)
  br label %34

34:                                               ; preds = %31, %29
  %35 = phi i1 [ true, %29 ], [ %33, %31 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %105

36:                                               ; preds = %3
  %37 = load ptr, ptr %4, align 8, !tbaa !136
  %38 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  %39 = tail call noundef zeroext i1 @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE(ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef %37)
  br label %105

40:                                               ; preds = %3
  %41 = load ptr, ptr %4, align 8, !tbaa !136
  %42 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  %43 = tail call noundef zeroext i1 @_ZN11xalanc_1_1025XStringReferenceAllocator7destroyEPNS_16XStringReferenceE(ptr noundef nonnull align 8 dereferenceable(48) %42, ptr noundef %41)
  br label %105

44:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %45 = load ptr, ptr %4, align 8, !tbaa !136
  store ptr %45, ptr %6, align 8, !tbaa !136
  %46 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11, i32 1
  %47 = load i64, ptr %46, align 8, !tbaa !140
  %48 = icmp ult i64 %47, 40
  br i1 %48, label %49, label %51, !prof !141

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %50, ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %54

51:                                               ; preds = %44
  %52 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  %53 = tail call noundef zeroext i1 @_ZN11xalanc_1_1016XNumberAllocator7destroyEPNS_7XNumberE(ptr noundef nonnull align 8 dereferenceable(48) %52, ptr noundef %45)
  br label %54

54:                                               ; preds = %51, %49
  %55 = phi i1 [ true, %49 ], [ %53, %51 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %105

56:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %57 = load ptr, ptr %4, align 8, !tbaa !136
  store ptr %57, ptr %7, align 8, !tbaa !136
  %58 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12, i32 1
  %59 = load i64, ptr %58, align 8, !tbaa !142
  %60 = icmp ult i64 %59, 40
  br i1 %60, label %61, label %63, !prof !143

61:                                               ; preds = %56
  %62 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12
  tail call void @_ZN11xalanc_1_108XNodeSet7releaseEv(ptr noundef nonnull align 8 dereferenceable(104) %57)
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %62, ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %66

63:                                               ; preds = %56
  %64 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  %65 = tail call noundef zeroext i1 @_ZN11xalanc_1_1017XNodeSetAllocator7destroyEPNS_8XNodeSetE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef %57)
  br label %66

66:                                               ; preds = %63, %61
  %67 = phi i1 [ true, %61 ], [ %65, %63 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %105

68:                                               ; preds = %3
  %69 = load ptr, ptr %4, align 8, !tbaa !136
  %70 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  %71 = tail call noundef zeroext i1 @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator7destroyEPNS_17XNodeSetNodeProxyE(ptr noundef nonnull align 8 dereferenceable(48) %70, ptr noundef %69)
  br label %105

72:                                               ; preds = %3
  %73 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10, i32 3
  %74 = load ptr, ptr %73, align 8, !tbaa !133
  %75 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10, i32 1
  %76 = load i64, ptr %75, align 8, !tbaa !144
  %77 = getelementptr inbounds ptr, ptr %74, i64 %76
  %78 = call noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %74, ptr noundef %77, ptr nonnull %4)
  %79 = load ptr, ptr %73, align 8, !tbaa !133
  %80 = load i64, ptr %75, align 8, !tbaa !144
  %81 = getelementptr inbounds ptr, ptr %79, i64 %80
  %82 = icmp ne ptr %78, %81
  br i1 %82, label %83, label %105

83:                                               ; preds = %72
  br i1 %2, label %94, label %84

84:                                               ; preds = %83
  %85 = getelementptr inbounds ptr, ptr %78, i64 1
  %86 = icmp eq ptr %81, %85
  br i1 %86, label %91, label %87

87:                                               ; preds = %84
  %88 = ptrtoint ptr %85 to i64
  %89 = ptrtoint ptr %81 to i64
  %90 = sub i64 %89, %88
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %78, ptr nonnull align 8 %85, i64 %90, i1 false)
  br label %91

91:                                               ; preds = %84, %87
  %92 = load i64, ptr %75, align 8, !tbaa !144
  %93 = add i64 %92, -1
  store i64 %93, ptr %75, align 8, !tbaa !144
  br label %94

94:                                               ; preds = %91, %83
  %95 = load ptr, ptr %4, align 8, !tbaa !136
  %96 = icmp eq ptr %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %94
  %98 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactory", ptr %0, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !145
  %100 = load ptr, ptr %95, align 8, !tbaa !109
  %101 = load ptr, ptr %100, align 8
  call void %101(ptr noundef nonnull align 8 dereferenceable(24) %95) #13
  %102 = load ptr, ptr %99, align 8, !tbaa !109
  %103 = getelementptr inbounds ptr, ptr %102, i64 3
  %104 = load ptr, ptr %103, align 8
  call void %104(ptr noundef nonnull align 8 dereferenceable(8) %99, ptr noundef nonnull %95)
  br label %105

105:                                              ; preds = %97, %94, %72, %68, %66, %54, %40, %36, %34, %20, %16, %12
  %106 = phi i1 [ %71, %68 ], [ %67, %66 ], [ %55, %54 ], [ %43, %40 ], [ %39, %36 ], [ %35, %34 ], [ %23, %20 ], [ %19, %16 ], [ %15, %12 ], [ %82, %72 ], [ true, %94 ], [ true, %97 ]
  ret i1 %106
}

declare noundef zeroext i1 @_ZN11xalanc_1_1023XStringAdapterAllocator7destroyEPNS_14XStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator7destroyEPNS_19XTokenNumberAdapterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1016XStringAllocator7destroyEPNS_7XStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1025XStringReferenceAllocator7destroyEPNS_16XStringReferenceE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1016XNumberAllocator7destroyEPNS_7XNumberE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_108XNodeSet7releaseEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1017XNodeSetAllocator7destroyEPNS_8XNodeSetE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator7destroyEPNS_17XNodeSetNodeProxyE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createBooleanEb(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, i1 noundef zeroext %2) unnamed_addr #8 align 2 !prof !147 {
  br i1 %2, label %4, label %6, !prof !148

4:                                                ; preds = %3
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 16
  br label %8

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 15
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi ptr [ %7, %6 ], [ %5, %4 ]
  store ptr %9, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %9)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault10createNullEv(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1) unnamed_addr #0 align 2 !prof !134 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 14
  store ptr %3, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createUnknownERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !134 {
  %4 = alloca ptr, align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !113
  %7 = tail call noundef ptr @_ZN11xalanc_1_108XUnknown6createERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %6)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  store ptr %7, ptr %4, align 8, !tbaa !136
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(8) %4)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %8 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %7, i64 0, i32 2
  store ptr %1, ptr %8, align 8, !tbaa !151
  store ptr %7, ptr %0, align 8, !tbaa !149
  call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %7)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_108XUnknown6createERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, double noundef %2) unnamed_addr #7 align 2 !prof !156 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 11
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 11, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !140
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %15, label %8, !prof !157

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 11, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !131
  %11 = getelementptr ptr, ptr %10, i64 %6
  %12 = getelementptr ptr, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = add i64 %6, -1
  store i64 %14, ptr %5, align 8, !tbaa !140
  tail call void @_ZN11xalanc_1_107XNumber3setEd(ptr noundef nonnull align 8 dereferenceable(72) %13, double noundef %2)
  store ptr %13, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %13)
  br label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 11, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !130
  %18 = icmp ult i64 %17, 40
  br i1 %18, label %19, label %20, !prof !112

19:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 40)
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 5
  %22 = tail call noundef ptr @_ZN11xalanc_1_1016XNumberAllocator12createNumberEd(ptr noundef nonnull align 8 dereferenceable(48) %21, double noundef %2)
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %22, i64 0, i32 2
  store ptr %1, ptr %23, align 8, !tbaa !151
  store ptr %22, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %22)
  br label %24

24:                                               ; preds = %20, %8
  ret void
}

declare void @_ZN11xalanc_1_107XNumber3setEd(ptr noundef nonnull align 8 dereferenceable(72), double noundef) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1016XNumberAllocator12createNumberEd(ptr noundef nonnull align 8 dereferenceable(48), double noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 1 %2) unnamed_addr #7 align 2 !prof !158 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 8
  %5 = tail call noundef ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %5, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #8 align 2 !prof !159 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 12
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 12, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !142
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %15, label %8, !prof !160

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 12, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !128
  %11 = getelementptr ptr, ptr %10, i64 %6
  %12 = getelementptr ptr, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = add i64 %6, -1
  store i64 %14, ptr %5, align 8, !tbaa !142
  tail call void @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(104) %13, ptr noundef nonnull align 8 dereferenceable(16) %2)
  store ptr %13, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef nonnull %13)
  br label %24

15:                                               ; preds = %3
  %16 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 12, i32 2
  %17 = load i64, ptr %16, align 8, !tbaa !126
  %18 = icmp ult i64 %17, 40
  br i1 %18, label %19, label %20, !prof !161

19:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 40)
  br label %20

20:                                               ; preds = %15, %19
  %21 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 6
  %22 = tail call noundef ptr @_ZN11xalanc_1_1017XNodeSetAllocator13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %22, i64 0, i32 2
  store ptr %1, ptr %23, align 8, !tbaa !151
  store ptr %22, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %22)
  br label %24

24:                                               ; preds = %20, %8
  ret void
}

declare void @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

declare noundef ptr @_ZN11xalanc_1_1017XNodeSetAllocator13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetEPNS_9XalanNodeE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !134 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 7
  %5 = tail call noundef ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator6createEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %5, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator6createEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #0 align 2 !prof !134 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 13
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 13, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !139
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 13, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !125
  %11 = getelementptr ptr, ptr %10, i64 %6
  %12 = getelementptr ptr, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !tbaa !136
  %14 = add i64 %6, -1
  store i64 %14, ptr %5, align 8, !tbaa !139
  %15 = getelementptr inbounds %"class.xalanc_1_10::XString", ptr %13, i64 0, i32 1
  %16 = icmp eq ptr %15, %2
  br i1 %16, label %31, label %17

17:                                               ; preds = %8
  %18 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %15, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !162
  %21 = getelementptr inbounds %"class.xalanc_1_10::XString", ptr %13, i64 0, i32 1, i32 1
  store i32 %20, ptr %21, align 8, !tbaa !162
  br label %31

22:                                               ; preds = %3
  %23 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 13, i32 2
  %24 = load i64, ptr %23, align 8, !tbaa !124
  %25 = icmp ult i64 %24, 40
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef 40)
  br label %27

27:                                               ; preds = %22, %26
  %28 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 2
  %29 = tail call noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %30 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %29, i64 0, i32 2
  store ptr %1, ptr %30, align 8, !tbaa !151
  br label %31

31:                                               ; preds = %17, %8, %27
  %32 = phi ptr [ %29, %27 ], [ %13, %8 ], [ %13, %17 ]
  store ptr %32, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %32)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKt(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef %2) unnamed_addr #0 align 2 !prof !134 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %5, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKt(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringEPKtj(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 align 2 !prof !134 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 2
  %6 = tail call noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %2, i32 noundef %3)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %6, i64 0, i32 2
  store ptr %1, ptr %7, align 8, !tbaa !151
  store ptr %6, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %6)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1016XStringAllocator12createStringEPKtj(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 1 %2) unnamed_addr #8 align 2 !prof !165 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 9
  %5 = tail call noundef ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 1 %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %5, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 1) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #8 align 2 !prof !166 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 4
  %5 = tail call noundef ptr @_ZN11xalanc_1_1025XStringReferenceAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %5, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1025XStringReferenceAllocator12createStringERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault19createStringAdapterERKNS_10XObjectPtrE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 !prof !134 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xalanc_1_1023XStringAdapterAllocator12createStringERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %5, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1023XStringAdapterAllocator12createStringERKNS_10XObjectPtrE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(664) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #7 align 2 !prof !167 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %1, i64 0, i32 3
  %5 = tail call noundef ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(16) %2)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObject", ptr %5, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !151
  store ptr %5, ptr %0, align 8, !tbaa !149
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef %5)
  ret void
}

declare noundef ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv(ptr noundef nonnull align 8 dereferenceable(664) %0) unnamed_addr #0 align 2 !prof !168 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %2)
  %3 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1016XStringAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %3)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %4)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1025XStringReferenceAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 5
  tail call void @_ZN11xalanc_1_1016XNumberAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %6)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_1017XNodeSetAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %8)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %9)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 9
  tail call void @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48) %10)
  %11 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !133
  %13 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 10, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !144
  %15 = getelementptr inbounds ptr, ptr %12, i64 %14
  %16 = icmp eq i64 %14, 0
  br i1 %16, label %26, label %17, !prof !112

17:                                               ; preds = %1, %17
  %18 = phi ptr [ %24, %17 ], [ %12, %1 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !136
  %20 = load ptr, ptr %0, align 8, !tbaa !109
  %21 = getelementptr inbounds ptr, ptr %20, i64 17
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef zeroext i1 %22(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %19, i1 noundef zeroext true)
  %24 = getelementptr inbounds ptr, ptr %18, i64 1
  %25 = icmp eq ptr %24, %15
  br i1 %25, label %26, label %17, !prof !112, !llvm.loop !169

26:                                               ; preds = %17, %1
  %27 = load i64, ptr %13, align 8, !tbaa !144
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %30, label %29, !prof !172

29:                                               ; preds = %26
  store i64 0, ptr %13, align 8, !tbaa !144
  br label %30

30:                                               ; preds = %29, %26
  %31 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 11, i32 1
  %32 = load i64, ptr %31, align 8, !tbaa !140
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %35, label %34, !prof !173

34:                                               ; preds = %30
  store i64 0, ptr %31, align 8, !tbaa !140
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 12, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !142
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %40, label %39, !prof !173

39:                                               ; preds = %35
  store i64 0, ptr %36, align 8, !tbaa !142
  br label %40

40:                                               ; preds = %39, %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::XObjectFactoryDefault", ptr %0, i64 0, i32 13, i32 1
  %42 = load i64, ptr %41, align 8, !tbaa !139
  %43 = icmp eq i64 %42, 0
  br i1 %43, label %45, label %44, !prof !172

44:                                               ; preds = %40
  store i64 0, ptr %41, align 8, !tbaa !139
  br label %45

45:                                               ; preds = %44, %40
  ret void
}

declare void @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1016XStringAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1025XStringReferenceAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1016XNumberAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1017XNodeSetAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !175

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !176
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !177
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !178

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !179
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !177
  %16 = load i64, ptr %6, align 8, !tbaa !176
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !180
  %19 = load ptr, ptr %3, align 8, !tbaa !179
  store ptr %19, ptr %0, align 8, !tbaa !179
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !177
  store i64 %21, ptr %14, align 8, !tbaa !177
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !176
  store i64 %23, ptr %6, align 8, !tbaa !176
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !180
  store ptr %25, ptr %17, align 8, !tbaa !180
  store ptr %13, ptr %3, align 8, !tbaa !179
  store i64 %15, ptr %20, align 8, !tbaa !177
  store i64 %16, ptr %22, align 8, !tbaa !176
  store ptr %18, ptr %24, align 8, !tbaa !180
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !181

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !109
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !182

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #14
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !180
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !177
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !183

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !184

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !180
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !177
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !177
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !180
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !185

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !180
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !186
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !187 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  store ptr %2, ptr %0, align 8, !tbaa !179
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !177
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !188

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !179
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !177
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !176
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !189
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !180
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !180
  %24 = load i64, ptr %9, align 8, !tbaa !177
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !190

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !179
  %28 = load i64, ptr %6, align 8, !tbaa !177
  %29 = load i64, ptr %7, align 8, !tbaa !176
  %30 = load ptr, ptr %8, align 8, !tbaa !180
  %31 = load ptr, ptr %5, align 8, !tbaa !179
  store ptr %31, ptr %0, align 8, !tbaa !179
  %32 = load i64, ptr %14, align 8, !tbaa !177
  store i64 %32, ptr %6, align 8, !tbaa !177
  %33 = load i64, ptr %15, align 8, !tbaa !176
  store i64 %33, ptr %7, align 8, !tbaa !176
  %34 = load ptr, ptr %21, align 8, !tbaa !180
  store ptr %34, ptr %8, align 8, !tbaa !180
  store ptr %27, ptr %5, align 8, !tbaa !179
  store i64 %28, ptr %14, align 8, !tbaa !177
  store i64 %29, ptr %15, align 8, !tbaa !176
  store ptr %30, ptr %21, align 8, !tbaa !180
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !190

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !176
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !180
  %50 = load ptr, ptr %5, align 8, !tbaa !179
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !191

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !109
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !192
  store ptr %65, ptr %8, align 8, !tbaa !180
  store i64 %3, ptr %7, align 8, !tbaa !176
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !193 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !194

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !177
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !180
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !176
  br i1 %18, label %21, label %39, !prof !195

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !196

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !197

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !180
  %28 = load i64, ptr %12, align 8, !tbaa !177
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !198
  store i16 %34, ptr %32, align 2, !tbaa !198
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !200, !llvm.loop !201

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !202

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !179
  store ptr %42, ptr %5, align 8, !tbaa !179
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !177
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !176
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !203
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !180
  %51 = load i64, ptr %43, align 8, !tbaa !177
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !180
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !204

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !180
  %56 = load i64, ptr %43, align 8, !tbaa !177
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !204

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !180
  %60 = load i64, ptr %43, align 8, !tbaa !177
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !180
  %63 = load i64, ptr %12, align 8, !tbaa !177
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !204

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !179
  %67 = load i64, ptr %12, align 8, !tbaa !177
  %68 = load i64, ptr %19, align 8, !tbaa !176
  %69 = load ptr, ptr %15, align 8, !tbaa !180
  %70 = load ptr, ptr %5, align 8, !tbaa !179
  store ptr %70, ptr %0, align 8, !tbaa !179
  %71 = load i64, ptr %43, align 8, !tbaa !177
  store i64 %71, ptr %12, align 8, !tbaa !177
  %72 = load i64, ptr %44, align 8, !tbaa !176
  store i64 %72, ptr %19, align 8, !tbaa !176
  %73 = load ptr, ptr %50, align 8, !tbaa !180
  store ptr %73, ptr %15, align 8, !tbaa !180
  store ptr %66, ptr %5, align 8, !tbaa !179
  store i64 %67, ptr %43, align 8, !tbaa !177
  store i64 %68, ptr %44, align 8, !tbaa !176
  store ptr %69, ptr %50, align 8, !tbaa !180
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !205

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !109
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !206

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !176
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !180
  %89 = load ptr, ptr %5, align 8, !tbaa !179
  %90 = load ptr, ptr %89, align 8, !tbaa !109
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #14
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !207

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !208

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !208

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !209, !llvm.loop !210

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !211, !llvm.loop !212

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !213
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
  br i1 %123, label %124, label %120, !llvm.loop !214

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
  store i64 %36, ptr %12, align 8, !tbaa !177
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !215 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !177
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !176
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !216

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !180
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !198
  store i16 %13, ptr %12, align 2, !tbaa !198
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !177
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !179
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !179
  %24 = load i64, ptr %4, align 8, !tbaa !177
  %25 = load i64, ptr %6, align 8, !tbaa !176
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !180
  %28 = load ptr, ptr %3, align 8, !tbaa !179
  store ptr %28, ptr %0, align 8, !tbaa !179
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !177
  store i64 %30, ptr %4, align 8, !tbaa !177
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !176
  store i64 %32, ptr %6, align 8, !tbaa !176
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !180
  store ptr %34, ptr %26, align 8, !tbaa !180
  store ptr %23, ptr %3, align 8, !tbaa !179
  store i64 %24, ptr %29, align 8, !tbaa !177
  store i64 %25, ptr %31, align 8, !tbaa !176
  store ptr %27, ptr %33, align 8, !tbaa !180
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !176
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !180
  %52 = load ptr, ptr %3, align 8, !tbaa !179
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !217 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.35", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !179
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !177
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !188

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !179
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !177
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !176
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !109
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !218
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !180
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !180
  %20 = load i64, ptr %5, align 8, !tbaa !177
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !190

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !179
  %24 = load i64, ptr %10, align 8, !tbaa !177
  %25 = load i64, ptr %11, align 8, !tbaa !176
  %26 = load ptr, ptr %17, align 8, !tbaa !180
  store ptr %4, ptr %3, align 8, !tbaa !179
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !176
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !180
  %33 = load ptr, ptr %3, align 8, !tbaa !179
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #14
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !191

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !109
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !219
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !179
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !176
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.35", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !180
  store ptr %53, ptr %0, align 8, !tbaa !179
  store i64 %52, ptr %5, align 8, !tbaa !177
  store i64 %51, ptr %55, align 8, !tbaa !176
  store ptr %50, ptr %57, align 8, !tbaa !180
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !220

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !109
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !221

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #14
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #9

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #10

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !139
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !124
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %13, ptr %12, align 8, !tbaa !136
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !139
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !122
  %24 = load i64, ptr %4, align 8, !tbaa !139
  %25 = load i64, ptr %6, align 8, !tbaa !124
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !125
  %28 = load ptr, ptr %3, align 8, !tbaa !122
  store ptr %28, ptr %0, align 8, !tbaa !122
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !139
  store i64 %30, ptr %4, align 8, !tbaa !139
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !124
  store i64 %32, ptr %6, align 8, !tbaa !124
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !125
  store ptr %34, ptr %26, align 8, !tbaa !125
  store ptr %23, ptr %3, align 8, !tbaa !122
  store i64 %24, ptr %29, align 8, !tbaa !139
  store i64 %25, ptr %31, align 8, !tbaa !124
  store ptr %27, ptr %33, align 8, !tbaa !125
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !124
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !125
  %52 = load ptr, ptr %3, align 8, !tbaa !122
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  store ptr %2, ptr %0, align 8, !tbaa !122
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !139
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !122
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !139
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !124
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !125
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !125
  %24 = load i64, ptr %9, align 8, !tbaa !139
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !122
  %28 = load i64, ptr %6, align 8, !tbaa !139
  %29 = load i64, ptr %7, align 8, !tbaa !124
  %30 = load ptr, ptr %8, align 8, !tbaa !125
  %31 = load ptr, ptr %5, align 8, !tbaa !122
  store ptr %31, ptr %0, align 8, !tbaa !122
  %32 = load i64, ptr %14, align 8, !tbaa !139
  store i64 %32, ptr %6, align 8, !tbaa !139
  %33 = load i64, ptr %15, align 8, !tbaa !124
  store i64 %33, ptr %7, align 8, !tbaa !124
  %34 = load ptr, ptr %21, align 8, !tbaa !125
  store ptr %34, ptr %8, align 8, !tbaa !125
  store ptr %27, ptr %5, align 8, !tbaa !122
  store i64 %28, ptr %14, align 8, !tbaa !139
  store i64 %29, ptr %15, align 8, !tbaa !124
  store ptr %30, ptr %21, align 8, !tbaa !125
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !124
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !125
  %50 = load ptr, ptr %5, align 8, !tbaa !122
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !109
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !125
  store i64 %3, ptr %7, align 8, !tbaa !124
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !139
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !125
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !124
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !125
  %28 = load i64, ptr %12, align 8, !tbaa !139
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !136
  store ptr %34, ptr %32, align 8, !tbaa !136
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !222

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !122
  store ptr %42, ptr %5, align 8, !tbaa !122
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !139
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !124
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !125
  %51 = load i64, ptr %43, align 8, !tbaa !139
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !125
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !125
  %56 = load i64, ptr %43, align 8, !tbaa !139
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !125
  %60 = load i64, ptr %43, align 8, !tbaa !139
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !125
  %63 = load i64, ptr %12, align 8, !tbaa !139
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !122
  %67 = load i64, ptr %12, align 8, !tbaa !139
  %68 = load i64, ptr %19, align 8, !tbaa !124
  %69 = load ptr, ptr %15, align 8, !tbaa !125
  %70 = load ptr, ptr %5, align 8, !tbaa !122
  store ptr %70, ptr %0, align 8, !tbaa !122
  %71 = load i64, ptr %43, align 8, !tbaa !139
  store i64 %71, ptr %12, align 8, !tbaa !139
  %72 = load i64, ptr %44, align 8, !tbaa !124
  store i64 %72, ptr %19, align 8, !tbaa !124
  %73 = load ptr, ptr %50, align 8, !tbaa !125
  store ptr %73, ptr %15, align 8, !tbaa !125
  store ptr %66, ptr %5, align 8, !tbaa !122
  store i64 %67, ptr %43, align 8, !tbaa !139
  store i64 %68, ptr %44, align 8, !tbaa !124
  store ptr %69, ptr %50, align 8, !tbaa !125
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !109
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !124
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !125
  %89 = load ptr, ptr %5, align 8, !tbaa !122
  %90 = load ptr, ptr %89, align 8, !tbaa !109
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #14
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !223

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !224

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !225

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
  store i64 %36, ptr %12, align 8, !tbaa !139
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.34", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !122
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !122
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !139
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !124
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = load ptr, ptr %3, align 8, !tbaa !122
  store ptr %12, ptr %0, align 8, !tbaa !122
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !139
  store i64 %14, ptr %6, align 8, !tbaa !139
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !124
  store i64 %16, ptr %8, align 8, !tbaa !124
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.34", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !125
  store ptr %18, ptr %10, align 8, !tbaa !125
  store ptr %5, ptr %3, align 8, !tbaa !122
  store i64 %7, ptr %13, align 8, !tbaa !139
  store i64 %9, ptr %15, align 8, !tbaa !124
  store ptr %11, ptr %17, align 8, !tbaa !125
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !109
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #14
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !156 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !140
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !130
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !141

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %13, ptr %12, align 8, !tbaa !136
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !140
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !118
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !118
  %24 = load i64, ptr %4, align 8, !tbaa !140
  %25 = load i64, ptr %6, align 8, !tbaa !130
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !131
  %28 = load ptr, ptr %3, align 8, !tbaa !118
  store ptr %28, ptr %0, align 8, !tbaa !118
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !140
  store i64 %30, ptr %4, align 8, !tbaa !140
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !130
  store i64 %32, ptr %6, align 8, !tbaa !130
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !131
  store ptr %34, ptr %26, align 8, !tbaa !131
  store ptr %23, ptr %3, align 8, !tbaa !118
  store i64 %24, ptr %29, align 8, !tbaa !140
  store i64 %25, ptr %31, align 8, !tbaa !130
  store ptr %27, ptr %33, align 8, !tbaa !131
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !130
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !131
  %52 = load ptr, ptr %3, align 8, !tbaa !118
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  store ptr %2, ptr %0, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !140
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !112

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !118
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !140
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !130
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !131
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !131
  %24 = load i64, ptr %9, align 8, !tbaa !140
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !118
  %28 = load i64, ptr %6, align 8, !tbaa !140
  %29 = load i64, ptr %7, align 8, !tbaa !130
  %30 = load ptr, ptr %8, align 8, !tbaa !131
  %31 = load ptr, ptr %5, align 8, !tbaa !118
  store ptr %31, ptr %0, align 8, !tbaa !118
  %32 = load i64, ptr %14, align 8, !tbaa !140
  store i64 %32, ptr %6, align 8, !tbaa !140
  %33 = load i64, ptr %15, align 8, !tbaa !130
  store i64 %33, ptr %7, align 8, !tbaa !130
  %34 = load ptr, ptr %21, align 8, !tbaa !131
  store ptr %34, ptr %8, align 8, !tbaa !131
  store ptr %27, ptr %5, align 8, !tbaa !118
  store i64 %28, ptr %14, align 8, !tbaa !140
  store i64 %29, ptr %15, align 8, !tbaa !130
  store ptr %30, ptr %21, align 8, !tbaa !131
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !130
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !131
  %50 = load ptr, ptr %5, align 8, !tbaa !118
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !127

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !109
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !226
  store ptr %65, ptr %8, align 8, !tbaa !131
  store i64 %3, ptr %7, align 8, !tbaa !130
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !140
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !131
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !130
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !131
  %28 = load i64, ptr %12, align 8, !tbaa !140
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !136
  store ptr %34, ptr %32, align 8, !tbaa !136
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !227

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !118
  store ptr %42, ptr %5, align 8, !tbaa !118
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !140
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !130
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !131
  %51 = load i64, ptr %43, align 8, !tbaa !140
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !131
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !131
  %56 = load i64, ptr %43, align 8, !tbaa !140
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !131
  %60 = load i64, ptr %43, align 8, !tbaa !140
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !131
  %63 = load i64, ptr %12, align 8, !tbaa !140
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !118
  %67 = load i64, ptr %12, align 8, !tbaa !140
  %68 = load i64, ptr %19, align 8, !tbaa !130
  %69 = load ptr, ptr %15, align 8, !tbaa !131
  %70 = load ptr, ptr %5, align 8, !tbaa !118
  store ptr %70, ptr %0, align 8, !tbaa !118
  %71 = load i64, ptr %43, align 8, !tbaa !140
  store i64 %71, ptr %12, align 8, !tbaa !140
  %72 = load i64, ptr %44, align 8, !tbaa !130
  store i64 %72, ptr %19, align 8, !tbaa !130
  %73 = load ptr, ptr %50, align 8, !tbaa !131
  store ptr %73, ptr %15, align 8, !tbaa !131
  store ptr %66, ptr %5, align 8, !tbaa !118
  store i64 %67, ptr %43, align 8, !tbaa !140
  store i64 %68, ptr %44, align 8, !tbaa !130
  store ptr %69, ptr %50, align 8, !tbaa !131
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !109
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !130
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !131
  %89 = load ptr, ptr %5, align 8, !tbaa !118
  %90 = load ptr, ptr %89, align 8, !tbaa !109
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #14
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !228

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !229

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !230

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
  store i64 %36, ptr %12, align 8, !tbaa !140
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.32", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !118
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !118
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !140
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !130
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  %12 = load ptr, ptr %3, align 8, !tbaa !118
  store ptr %12, ptr %0, align 8, !tbaa !118
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !140
  store i64 %14, ptr %6, align 8, !tbaa !140
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !130
  store i64 %16, ptr %8, align 8, !tbaa !130
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.32", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !131
  store ptr %18, ptr %10, align 8, !tbaa !131
  store ptr %5, ptr %3, align 8, !tbaa !118
  store i64 %7, ptr %13, align 8, !tbaa !140
  store i64 %9, ptr %15, align 8, !tbaa !130
  store ptr %11, ptr %17, align 8, !tbaa !131
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !112

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !109
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #14
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !159 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !142
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !126
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !143

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %13, ptr %12, align 8, !tbaa !136
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !142
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !120
  %24 = load i64, ptr %4, align 8, !tbaa !142
  %25 = load i64, ptr %6, align 8, !tbaa !126
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !128
  %28 = load ptr, ptr %3, align 8, !tbaa !120
  store ptr %28, ptr %0, align 8, !tbaa !120
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !142
  store i64 %30, ptr %4, align 8, !tbaa !142
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !126
  store i64 %32, ptr %6, align 8, !tbaa !126
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !128
  store ptr %34, ptr %26, align 8, !tbaa !128
  store ptr %23, ptr %3, align 8, !tbaa !120
  store i64 %24, ptr %29, align 8, !tbaa !142
  store i64 %25, ptr %31, align 8, !tbaa !126
  store ptr %27, ptr %33, align 8, !tbaa !128
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !126
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !128
  %52 = load ptr, ptr %3, align 8, !tbaa !120
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  store ptr %2, ptr %0, align 8, !tbaa !120
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !142
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !112

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !120
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !142
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !126
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !128
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !128
  %24 = load i64, ptr %9, align 8, !tbaa !142
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !120
  %28 = load i64, ptr %6, align 8, !tbaa !142
  %29 = load i64, ptr %7, align 8, !tbaa !126
  %30 = load ptr, ptr %8, align 8, !tbaa !128
  %31 = load ptr, ptr %5, align 8, !tbaa !120
  store ptr %31, ptr %0, align 8, !tbaa !120
  %32 = load i64, ptr %14, align 8, !tbaa !142
  store i64 %32, ptr %6, align 8, !tbaa !142
  %33 = load i64, ptr %15, align 8, !tbaa !126
  store i64 %33, ptr %7, align 8, !tbaa !126
  %34 = load ptr, ptr %21, align 8, !tbaa !128
  store ptr %34, ptr %8, align 8, !tbaa !128
  store ptr %27, ptr %5, align 8, !tbaa !120
  store i64 %28, ptr %14, align 8, !tbaa !142
  store i64 %29, ptr %15, align 8, !tbaa !126
  store ptr %30, ptr %21, align 8, !tbaa !128
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !126
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !128
  %50 = load ptr, ptr %5, align 8, !tbaa !120
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !127

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !109
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !226
  store ptr %65, ptr %8, align 8, !tbaa !128
  store i64 %3, ptr %7, align 8, !tbaa !126
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !142
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !128
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !126
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !128
  %28 = load i64, ptr %12, align 8, !tbaa !142
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !136
  store ptr %34, ptr %32, align 8, !tbaa !136
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !231

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !120
  store ptr %42, ptr %5, align 8, !tbaa !120
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !142
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !126
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !128
  %51 = load i64, ptr %43, align 8, !tbaa !142
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !128
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !128
  %56 = load i64, ptr %43, align 8, !tbaa !142
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !128
  %60 = load i64, ptr %43, align 8, !tbaa !142
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !128
  %63 = load i64, ptr %12, align 8, !tbaa !142
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !120
  %67 = load i64, ptr %12, align 8, !tbaa !142
  %68 = load i64, ptr %19, align 8, !tbaa !126
  %69 = load ptr, ptr %15, align 8, !tbaa !128
  %70 = load ptr, ptr %5, align 8, !tbaa !120
  store ptr %70, ptr %0, align 8, !tbaa !120
  %71 = load i64, ptr %43, align 8, !tbaa !142
  store i64 %71, ptr %12, align 8, !tbaa !142
  %72 = load i64, ptr %44, align 8, !tbaa !126
  store i64 %72, ptr %19, align 8, !tbaa !126
  %73 = load ptr, ptr %50, align 8, !tbaa !128
  store ptr %73, ptr %15, align 8, !tbaa !128
  store ptr %66, ptr %5, align 8, !tbaa !120
  store i64 %67, ptr %43, align 8, !tbaa !142
  store i64 %68, ptr %44, align 8, !tbaa !126
  store ptr %69, ptr %50, align 8, !tbaa !128
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !109
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !126
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !128
  %89 = load ptr, ptr %5, align 8, !tbaa !120
  %90 = load ptr, ptr %89, align 8, !tbaa !109
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #14
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !232

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !233

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !234

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
  store i64 %36, ptr %12, align 8, !tbaa !142
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !108 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.33", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !120
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !120
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !142
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !126
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !128
  %12 = load ptr, ptr %3, align 8, !tbaa !120
  store ptr %12, ptr %0, align 8, !tbaa !120
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !142
  store i64 %14, ptr %6, align 8, !tbaa !142
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !126
  store i64 %16, ptr %8, align 8, !tbaa !126
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.33", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !128
  store ptr %18, ptr %10, align 8, !tbaa !128
  store ptr %5, ptr %3, align 8, !tbaa !120
  store i64 %7, ptr %13, align 8, !tbaa !142
  store i64 %9, ptr %15, align 8, !tbaa !126
  store ptr %11, ptr %17, align 8, !tbaa !128
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !112

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !109
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #14
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZSt9__find_ifIPPN11xalanc_1_107XObjectEN9__gnu_cxx5__ops16_Iter_equals_valIKS2_EEET_S9_S9_T0_St26random_access_iterator_tag(ptr noundef %0, ptr noundef %1, ptr %2) local_unnamed_addr #0 comdat !prof !134 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr i64 %6, 5
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %3
  %10 = load ptr, ptr %2, align 8, !tbaa !136
  %11 = and i64 %6, -32
  %12 = getelementptr i8, ptr %0, i64 %11
  br label %13

13:                                               ; preds = %9, %30
  %14 = phi i64 [ %7, %9 ], [ %32, %30 ]
  %15 = phi ptr [ %0, %9 ], [ %31, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !136
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %64, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds ptr, ptr %15, i64 1
  %20 = load ptr, ptr %19, align 8, !tbaa !136
  %21 = icmp eq ptr %20, %10
  br i1 %21, label %58, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds ptr, ptr %15, i64 2
  %24 = load ptr, ptr %23, align 8, !tbaa !136
  %25 = icmp eq ptr %24, %10
  br i1 %25, label %60, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds ptr, ptr %15, i64 3
  %28 = load ptr, ptr %27, align 8, !tbaa !136
  %29 = icmp eq ptr %28, %10
  br i1 %29, label %62, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds ptr, ptr %15, i64 4
  %32 = add nsw i64 %14, -1
  %33 = icmp sgt i64 %14, 1
  br i1 %33, label %13, label %34, !llvm.loop !235

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
  %40 = load ptr, ptr %35, align 8, !tbaa !136
  %41 = load ptr, ptr %2, align 8, !tbaa !136
  %42 = icmp eq ptr %40, %41
  br i1 %42, label %64, label %43

43:                                               ; preds = %39
  %44 = getelementptr inbounds ptr, ptr %35, i64 1
  br label %45

45:                                               ; preds = %34, %43
  %46 = phi ptr [ %35, %34 ], [ %44, %43 ]
  %47 = load ptr, ptr %46, align 8, !tbaa !136
  %48 = load ptr, ptr %2, align 8, !tbaa !136
  %49 = icmp eq ptr %47, %48
  br i1 %49, label %64, label %50

50:                                               ; preds = %45
  %51 = getelementptr inbounds ptr, ptr %46, i64 1
  br label %52

52:                                               ; preds = %34, %50
  %53 = phi ptr [ %51, %50 ], [ %35, %34 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !136
  %55 = load ptr, ptr %2, align 8, !tbaa !136
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !144
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !132
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !136
  store ptr %13, ptr %12, align 8, !tbaa !136
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !144
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !113
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !113
  %24 = load i64, ptr %4, align 8, !tbaa !144
  %25 = load i64, ptr %6, align 8, !tbaa !132
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !133
  %28 = load ptr, ptr %3, align 8, !tbaa !113
  store ptr %28, ptr %0, align 8, !tbaa !113
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !144
  store i64 %30, ptr %4, align 8, !tbaa !144
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !132
  store i64 %32, ptr %6, align 8, !tbaa !132
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !133
  store ptr %34, ptr %26, align 8, !tbaa !133
  store ptr %23, ptr %3, align 8, !tbaa !113
  store i64 %24, ptr %29, align 8, !tbaa !144
  store i64 %25, ptr %31, align 8, !tbaa !132
  store ptr %27, ptr %33, align 8, !tbaa !133
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !132
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !133
  %52 = load ptr, ptr %3, align 8, !tbaa !113
  %53 = load ptr, ptr %52, align 8, !tbaa !109
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #14
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !113
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !144
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !113
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !144
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !132
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !109
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !133
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !133
  %24 = load i64, ptr %9, align 8, !tbaa !144
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !113
  %28 = load i64, ptr %6, align 8, !tbaa !144
  %29 = load i64, ptr %7, align 8, !tbaa !132
  %30 = load ptr, ptr %8, align 8, !tbaa !133
  %31 = load ptr, ptr %5, align 8, !tbaa !113
  store ptr %31, ptr %0, align 8, !tbaa !113
  %32 = load i64, ptr %14, align 8, !tbaa !144
  store i64 %32, ptr %6, align 8, !tbaa !144
  %33 = load i64, ptr %15, align 8, !tbaa !132
  store i64 %33, ptr %7, align 8, !tbaa !132
  %34 = load ptr, ptr %21, align 8, !tbaa !133
  store ptr %34, ptr %8, align 8, !tbaa !133
  store ptr %27, ptr %5, align 8, !tbaa !113
  store i64 %28, ptr %14, align 8, !tbaa !144
  store i64 %29, ptr %15, align 8, !tbaa !132
  store ptr %30, ptr %21, align 8, !tbaa !133
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !109
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #14
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !132
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !133
  %50 = load ptr, ptr %5, align 8, !tbaa !113
  %51 = load ptr, ptr %50, align 8, !tbaa !109
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #14
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !109
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !133
  store i64 %3, ptr %7, align 8, !tbaa !132
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !144
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !133
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !132
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !133
  %28 = load i64, ptr %12, align 8, !tbaa !144
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !136
  store ptr %34, ptr %32, align 8, !tbaa !136
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !236

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !113
  store ptr %42, ptr %5, align 8, !tbaa !113
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !144
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !132
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !109
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !133
  %51 = load i64, ptr %43, align 8, !tbaa !144
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !133
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !133
  %56 = load i64, ptr %43, align 8, !tbaa !144
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !133
  %60 = load i64, ptr %43, align 8, !tbaa !144
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !133
  %63 = load i64, ptr %12, align 8, !tbaa !144
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !113
  %67 = load i64, ptr %12, align 8, !tbaa !144
  %68 = load i64, ptr %19, align 8, !tbaa !132
  %69 = load ptr, ptr %15, align 8, !tbaa !133
  %70 = load ptr, ptr %5, align 8, !tbaa !113
  store ptr %70, ptr %0, align 8, !tbaa !113
  %71 = load i64, ptr %43, align 8, !tbaa !144
  store i64 %71, ptr %12, align 8, !tbaa !144
  %72 = load i64, ptr %44, align 8, !tbaa !132
  store i64 %72, ptr %19, align 8, !tbaa !132
  %73 = load ptr, ptr %50, align 8, !tbaa !133
  store ptr %73, ptr %15, align 8, !tbaa !133
  store ptr %66, ptr %5, align 8, !tbaa !113
  store i64 %67, ptr %43, align 8, !tbaa !144
  store i64 %68, ptr %44, align 8, !tbaa !132
  store ptr %69, ptr %50, align 8, !tbaa !133
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !109
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #14
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !132
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !133
  %89 = load ptr, ptr %5, align 8, !tbaa !113
  %90 = load ptr, ptr %89, align 8, !tbaa !109
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #14
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !237

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !238

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !239

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
  store i64 %36, ptr %12, align 8, !tbaa !144
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !113
  call void @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !113
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !144
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !132
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !133
  %12 = load ptr, ptr %3, align 8, !tbaa !113
  store ptr %12, ptr %0, align 8, !tbaa !113
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !144
  store i64 %14, ptr %6, align 8, !tbaa !144
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !132
  store i64 %16, ptr %8, align 8, !tbaa !132
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  store ptr %18, ptr %10, align 8, !tbaa !133
  store ptr %5, ptr %3, align 8, !tbaa !113
  store i64 %7, ptr %13, align 8, !tbaa !144
  store i64 %9, ptr %15, align 8, !tbaa !132
  store ptr %11, ptr %17, align 8, !tbaa !133
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !109
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #14
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!107}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!35 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1014XObjectFactoryC2ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1023XStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1016XStringAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1022XStringCachedAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1025XStringReferenceAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1016XNumberAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1017XNodeSetAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!44 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorC1ERN11xercesc_2_713MemoryManagerEt, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_105XNullC1Ev, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultC2ERN11xercesc_2_713MemoryManagerEtttt, ptr @_ZN11xalanc_1_108XBooleanC1Eb, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_108XBooleanD1Ev, i64 2}
!49 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_105XNullD1Ev, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEED2Ev, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocatorD1Ev, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocatorD1Ev, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocatorD1Ev, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1017XNodeSetAllocatorD1Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1016XNumberAllocatorD1Ev, i64 1}
!59 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1025XStringReferenceAllocatorD1Ev, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1022XStringCachedAllocatorD1Ev, i64 1}
!61 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1016XStringAllocatorD1Ev, i64 1}
!62 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1023XStringAdapterAllocatorD1Ev, i64 1}
!63 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefaultD2Ev, ptr @_ZN11xalanc_1_1014XObjectFactoryD2Ev, i64 1}
!64 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator7destroyEPNS_19XTokenNumberAdapterE, i64 89504425}
!65 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator7destroyEPNS_19XTokenStringAdapterE, i64 103035}
!66 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1022XStringCachedAllocator7destroyEPNS_13XStringCachedE, i64 67113825}
!67 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1025XStringReferenceAllocator7destroyEPNS_16XStringReferenceE, i64 33406}
!68 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 44684557}
!69 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_108XNodeSet7releaseEv, i64 207523}
!70 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault14doReturnObjectEPNS_7XObjectEb, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE10doPushBackERKS2_, i64 207523}
!71 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createBooleanEb, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 19395}
!72 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_107XNumber3setEd, i64 44684556}
!73 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 44684557}
!74 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!75 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberEd, ptr @_ZN11xalanc_1_1016XNumberAllocator12createNumberEd, i64 1}
!76 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator6createERKNS_6XTokenE, i64 89504425}
!77 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createNumberERKNS_6XTokenE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 89504425}
!78 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_108XNodeSet3setERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, i64 207521}
!79 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 207523}
!80 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, i64 1}
!81 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, ptr @_ZN11xalanc_1_1017XNodeSetAllocator13createNodeSetERNS_21XPathExecutionContext30BorrowReturnMutableNodeRefListE, i64 2}
!82 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator6createERKNS_6XTokenE, i64 103035}
!83 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERKNS_6XTokenE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 103035}
!84 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1025XStringReferenceAllocator12createStringERKNS_14XalanDOMStringE, i64 33406}
!85 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault21createStringReferenceERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 33406}
!86 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1022XStringCachedAllocator12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, i64 67113825}
!87 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault12createStringERNS_21XPathExecutionContext25GetAndReleaseCachedStringE, ptr @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_, i64 67113825}
!88 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1023XStringAdapterAllocator5resetEv, i64 4}
!89 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1016XStringAllocator5resetEv, i64 4}
!90 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1022XStringCachedAllocator5resetEv, i64 4}
!91 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1025XStringReferenceAllocator5resetEv, i64 4}
!92 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1016XNumberAllocator5resetEv, i64 4}
!93 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1017XNodeSetAllocator5resetEv, i64 4}
!94 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1026XNodeSetNodeProxyAllocator5resetEv, i64 4}
!95 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1028XTokenNumberAdapterAllocator5resetEv, i64 4}
!96 = !{ptr @_ZN11xalanc_1_1021XObjectFactoryDefault5resetEv, ptr @_ZN11xalanc_1_1028XTokenStringAdapterAllocator5resetEv, i64 4}
!97 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!98 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!99 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!100 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!101 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!102 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!103 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!104 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!105 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!106 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm, i64 1}
!107 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!108 = !{!"function_entry_count", i64 1}
!109 = !{!110, !110, i64 0}
!110 = !{!"vtable pointer", !111, i64 0}
!111 = !{!"Simple C++ TBAA"}
!112 = !{!"branch_weights", i32 1, i32 0}
!113 = !{!114, !115, i64 0}
!114 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_7XObjectENS_31MemoryManagedConstructionTraitsIS2_EEEE", !115, i64 0, !117, i64 8, !117, i64 16, !115, i64 24}
!115 = !{!"any pointer", !116, i64 0}
!116 = !{!"omnipotent char", !111, i64 0}
!117 = !{!"long", !116, i64 0}
!118 = !{!119, !115, i64 0}
!119 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_7XNumberENS_31MemoryManagedConstructionTraitsIS2_EEEE", !115, i64 0, !117, i64 8, !117, i64 16, !115, i64 24}
!120 = !{!121, !115, i64 0}
!121 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_8XNodeSetENS_31MemoryManagedConstructionTraitsIS2_EEEE", !115, i64 0, !117, i64 8, !117, i64 16, !115, i64 24}
!122 = !{!123, !115, i64 0}
!123 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_7XStringENS_31MemoryManagedConstructionTraitsIS2_EEEE", !115, i64 0, !117, i64 8, !117, i64 16, !115, i64 24}
!124 = !{!123, !117, i64 16}
!125 = !{!123, !115, i64 24}
!126 = !{!121, !117, i64 16}
!127 = !{!"branch_weights", i32 0, i32 1}
!128 = !{!121, !115, i64 24}
!129 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!130 = !{!119, !117, i64 16}
!131 = !{!119, !115, i64 24}
!132 = !{!114, !117, i64 16}
!133 = !{!114, !115, i64 24}
!134 = !{!"function_entry_count", i64 0}
!135 = !{!"function_entry_count", i64 201646771}
!136 = !{!115, !115, i64 0}
!137 = !{!"VP", i32 0, i64 201646771, i64 -7389748359309861874, i64 89504425, i64 442668377684110484, i64 67113825, i64 -3631583670412132279, i64 44892080}
!138 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 0, i32 89504425, i32 103035, i32 0, i32 67113825, i32 33406, i32 44684557, i32 207523, i32 0}
!139 = !{!123, !117, i64 8}
!140 = !{!119, !117, i64 8}
!141 = !{!"branch_weights", i32 44684557, i32 0}
!142 = !{!121, !117, i64 8}
!143 = !{!"branch_weights", i32 207523, i32 0}
!144 = !{!114, !117, i64 8}
!145 = !{!146, !115, i64 8}
!146 = !{!"_ZTSN11xalanc_1_1014XObjectFactoryE", !115, i64 8}
!147 = !{!"function_entry_count", i64 19395}
!148 = !{!"branch_weights", i32 0, i32 19395}
!149 = !{!150, !115, i64 0}
!150 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !115, i64 0}
!151 = !{!152, !115, i64 16}
!152 = !{!"_ZTSN11xalanc_1_107XObjectE", !153, i64 0, !155, i64 12, !115, i64 16}
!153 = !{!"_ZTSN11xalanc_1_1027XalanReferenceCountedObjectE", !154, i64 8}
!154 = !{!"int", !116, i64 0}
!155 = !{!"_ZTSN11xalanc_1_107XObject11eObjectTypeE", !116, i64 0}
!156 = !{!"function_entry_count", i64 44684557}
!157 = !{!"branch_weights", i32 1, i32 44684556}
!158 = !{!"function_entry_count", i64 89504425}
!159 = !{!"function_entry_count", i64 207523}
!160 = !{!"branch_weights", i32 2, i32 207521}
!161 = !{!"branch_weights", i32 1, i32 1}
!162 = !{!163, !154, i64 32}
!163 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !164, i64 0, !154, i64 32}
!164 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !115, i64 0, !117, i64 8, !117, i64 16, !115, i64 24}
!165 = !{!"function_entry_count", i64 103035}
!166 = !{!"function_entry_count", i64 33406}
!167 = !{!"function_entry_count", i64 67113825}
!168 = !{!"function_entry_count", i64 4}
!169 = distinct !{!169, !170, !171}
!170 = !{!"llvm.loop.mustprogress"}
!171 = !{!"llvm.loop.unroll.disable"}
!172 = !{!"branch_weights", i32 4, i32 0}
!173 = !{!"branch_weights", i32 3, i32 1}
!174 = !{!"function_entry_count", i64 41614}
!175 = !{!"branch_weights", i32 0, i32 41614}
!176 = !{!164, !117, i64 16}
!177 = !{!164, !117, i64 8}
!178 = !{!"branch_weights", i32 12, i32 41602}
!179 = !{!164, !115, i64 0}
!180 = !{!164, !115, i64 24}
!181 = !{!"branch_weights", i32 5, i32 7}
!182 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!183 = !{!"branch_weights", i32 354, i32 41248}
!184 = !{!"branch_weights", i32 40889, i32 359}
!185 = !{!"branch_weights", i32 40581, i32 1021}
!186 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!187 = !{!"function_entry_count", i64 22}
!188 = !{!"branch_weights", i32 64551590, i32 18}
!189 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!190 = !{!"branch_weights", i32 18, i32 0}
!191 = !{!"branch_weights", i32 4, i32 64551586}
!192 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!193 = !{!"function_entry_count", i64 155828046}
!194 = !{!"branch_weights", i32 0, i32 155828046}
!195 = !{!"branch_weights", i32 133170777, i32 22657269}
!196 = !{!"branch_weights", i32 20, i32 133170757}
!197 = !{!"branch_weights", i32 1, i32 19024395}
!198 = !{!199, !199, i64 0}
!199 = !{!"short", !116, i64 0}
!200 = !{!"branch_weights", i32 19024395, i32 -26420601}
!201 = distinct !{!201, !170, !171}
!202 = !{!"branch_weights", i32 20748786, i32 1908483}
!203 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!204 = !{!"branch_weights", i32 20748786, i32 0}
!205 = !{!"branch_weights", i32 0, i32 20748786}
!206 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!207 = !{!"branch_weights", i32 0, i32 1908483}
!208 = !{!"branch_weights", i32 1, i32 1908482}
!209 = !{!"branch_weights", i32 1908482, i32 49797853}
!210 = distinct !{!210, !170, !171}
!211 = !{!"branch_weights", i32 1908482, i32 1}
!212 = distinct !{!212, !170, !171}
!213 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!214 = distinct !{!214, !170, !171}
!215 = !{!"function_entry_count", i64 124150652}
!216 = !{!"branch_weights", i32 124150652, i32 0}
!217 = !{!"function_entry_count", i64 64551586}
!218 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!219 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!220 = !{!"branch_weights", i32 42418193, i32 22133393}
!221 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!222 = distinct !{!222, !170, !171}
!223 = distinct !{!223, !170, !171}
!224 = distinct !{!224, !170, !171}
!225 = distinct !{!225, !170, !171}
!226 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!227 = distinct !{!227, !170, !171}
!228 = distinct !{!228, !170, !171}
!229 = distinct !{!229, !170, !171}
!230 = distinct !{!230, !170, !171}
!231 = distinct !{!231, !170, !171}
!232 = distinct !{!232, !170, !171}
!233 = distinct !{!233, !170, !171}
!234 = distinct !{!234, !170, !171}
!235 = distinct !{!235, !170, !171}
!236 = distinct !{!236, !170, !171}
!237 = distinct !{!237, !170, !171}
!238 = distinct !{!238, !170, !171}
!239 = distinct !{!239, !170, !171}
