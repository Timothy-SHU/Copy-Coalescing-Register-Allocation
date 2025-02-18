; ModuleID = 'XalanQNameByValue.cpp'
source_filename = "XalanQNameByValue.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanQNameByValue" = type { %"class.xalanc_1_10::XalanQName", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanQName" = type { ptr }
%"class.xalanc_1_10::ElementPrefixResolverProxy" = type { %"class.xalanc_1_10::PrefixResolver", ptr, ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::PrefixResolver" = type { ptr }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZTSN11xalanc_1_1010XalanQNameE = comdat any

$_ZTIN11xalanc_1_1010XalanQNameE = comdat any

@_ZTVN11xalanc_1_1017XalanQNameByValueE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XalanQNameByValueE, ptr @_ZN11xalanc_1_1017XalanQNameByValueD2Ev, ptr @_ZN11xalanc_1_1017XalanQNameByValueD0Ev, ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getLocalPartEv, ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getNamespaceEv] }, align 8
@_ZN11xalanc_1_1011DOMServices11s_XMLStringE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE = external local_unnamed_addr constant ptr, align 8
@_ZN11xalanc_1_1010XalanQName13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZTIN11xalanc_1_1010XalanQName21InvalidQNameExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XalanQNameByValueE = dso_local constant [35 x i8] c"N11xalanc_1_1017XalanQNameByValueE\00", align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1010XalanQNameE = linkonce_odr dso_local constant [28 x i8] c"N11xalanc_1_1010XalanQNameE\00", comdat, align 1
@_ZTIN11xalanc_1_1010XalanQNameE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1010XalanQNameE }, comdat, align 8
@_ZTIN11xalanc_1_1017XalanQNameByValueE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XalanQNameByValueE, ptr @_ZTIN11xalanc_1_1010XalanQNameE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1017XalanQNameByValueC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017XalanQNameByValueC1ERKS0_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERKS0_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_10XalanQNameERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_10XalanQNameERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorEb
@_ZN11xalanc_1_1017XalanQNameByValueC1EPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEERN11xercesc_2_713MemoryManagerEPKNSC_7LocatorEb = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2EPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEERN11xercesc_2_713MemoryManagerEPKNSC_7LocatorEb
@_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringEPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringEPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorE
@_ZN11xalanc_1_1017XalanQNameByValueC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE
@_ZN11xalanc_1_1017XalanQNameByValueD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XalanQNameByValueD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !60 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %5 unwind label %6, !prof !64

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  resume { ptr, i32 } %7
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %1, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  resume { ptr, i32 } %10
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_10XalanQNameERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %1, align 8, !tbaa !61
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef nonnull align 8 dereferenceable(36) ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
  %9 = load ptr, ptr %1, align 8, !tbaa !61
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = invoke noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %13 unwind label %16

13:                                               ; preds = %3
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %14, ptr noundef nonnull align 8 dereferenceable(36) %12, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %15 unwind label %16

15:                                               ; preds = %13
  ret void

16:                                               ; preds = %13, %3
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  resume { ptr, i32 } %17
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef -1)
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0, i32 noundef -1)
          to label %7 unwind label %8

7:                                                ; preds = %4
  ret void

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  resume { ptr, i32 } %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1017XalanQNameByValue6createERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %4 = load ptr, ptr %2, align 8, !tbaa !61
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef 88)
  invoke void @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringES3_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret ptr %7

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = icmp eq ptr %7, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %2, align 8, !tbaa !61
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %7)
          to label %19 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #17
  unreachable

19:                                               ; preds = %9, %12
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %9 unwind label %19

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !66
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %17 = load i32, ptr %16, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %15, i32 noundef %17, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %4, i1 noundef zeroext %5)
          to label %18 unwind label %21

18:                                               ; preds = %9
  ret void

19:                                               ; preds = %6
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %9
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  resume { ptr, i32 } %24
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %4, i1 noundef zeroext %5) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  br label %11

11:                                               ; preds = %14, %6
  %12 = phi ptr [ %1, %6 ], [ %15, %14 ]
  %13 = load i16, ptr %12, align 2, !tbaa !75
  switch i16 %13, label %14 [
    i16 58, label %16
    i16 0, label %16
  ], !prof !77

14:                                               ; preds = %11
  %15 = getelementptr inbounds i16, ptr %12, i64 1
  br label %11, !llvm.loop !78

16:                                               ; preds = %11, %11
  %17 = ptrtoint ptr %12 to i64
  %18 = ptrtoint ptr %1 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %68, !prof !81

23:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #16
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %25)
  %26 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %7, i32 noundef 178)
          to label %27 unwind label %31

27:                                               ; preds = %23
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #16
  %28 = load ptr, ptr %24, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %29 unwind label %33

29:                                               ; preds = %27
  invoke fastcc void @_ZN11xalanc_1_10L14throwExceptionERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorERS0_(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %8)
          to label %30 unwind label %35

30:                                               ; preds = %29
  unreachable

31:                                               ; preds = %23
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %52

33:                                               ; preds = %27
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %50

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %38 = load i64, ptr %37, align 8, !tbaa !83
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %50, label %40

40:                                               ; preds = %35
  %41 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !84
  %43 = load ptr, ptr %8, align 8, !tbaa !82
  %44 = load ptr, ptr %43, align 8, !tbaa !61
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47

47:                                               ; preds = %40
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #17
  unreachable

50:                                               ; preds = %40, %35, %33
  %51 = phi { ptr, i32 } [ %34, %33 ], [ %36, %35 ], [ %36, %40 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #16
  br label %52

52:                                               ; preds = %50, %31
  %53 = phi { ptr, i32 } [ %51, %50 ], [ %32, %31 ]
  %54 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %55 = load i64, ptr %54, align 8, !tbaa !83
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %67, label %57

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !84
  %60 = load ptr, ptr %7, align 8, !tbaa !82
  %61 = load ptr, ptr %60, align 8, !tbaa !61
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %59)
          to label %67 unwind label %64

64:                                               ; preds = %57
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %52, %57
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #16
  br label %192

68:                                               ; preds = %16
  %69 = icmp ult i32 %21, %2
  br i1 %69, label %70, label %163, !prof !85

70:                                               ; preds = %68
  %71 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  %72 = add i32 %2, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2, i32 0, i32 2
  %75 = load i64, ptr %74, align 8, !tbaa !83
  %76 = icmp ult i64 %75, %73
  br i1 %76, label %77, label %78, !prof !86

77:                                               ; preds = %70
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %71, i64 noundef %73)
  br label %78

78:                                               ; preds = %70, %77
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %71, i32 noundef 0, i32 noundef -1)
  %79 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef %1, i32 noundef %21)
  %80 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !87
  %81 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef nonnull align 8 dereferenceable(36) %80)
  br i1 %81, label %82, label %89, !prof !88

82:                                               ; preds = %78
  %83 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !87
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %85 = icmp eq ptr %83, %84
  br i1 %85, label %156, label %86

86:                                               ; preds = %82
  %87 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %84, ptr noundef nonnull align 8 dereferenceable(32) %83)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %83, i64 0, i32 1
  br label %152

89:                                               ; preds = %78
  %90 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !87
  %91 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef nonnull align 8 dereferenceable(36) %90)
  br i1 %91, label %92, label %99, !prof !89

92:                                               ; preds = %89
  %93 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !87
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %95 = icmp eq ptr %93, %94
  br i1 %95, label %156, label %96, !prof !88

96:                                               ; preds = %92
  %97 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %94, ptr noundef nonnull align 8 dereferenceable(32) %93)
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %93, i64 0, i32 1
  br label %152

99:                                               ; preds = %89
  %100 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) %71)
  %101 = icmp eq ptr %100, null
  br i1 %101, label %106, label %102

102:                                              ; preds = %99
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %100, i64 0, i32 1
  %104 = load i32, ptr %103, align 8, !tbaa !71
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %147

106:                                              ; preds = %102, %99
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #16
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %108)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #16
  %109 = load ptr, ptr %107, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %109)
          to label %110 unwind label %114

110:                                              ; preds = %106
  %111 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %9, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %71)
          to label %112 unwind label %116

112:                                              ; preds = %110
  invoke fastcc void @_ZN11xalanc_1_10L14throwExceptionERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorERS0_(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %113 unwind label %116

113:                                              ; preds = %112
  unreachable

114:                                              ; preds = %106
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %131

116:                                              ; preds = %112, %110
  %117 = landingpad { ptr, i32 }
          cleanup
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !83
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !84
  %124 = load ptr, ptr %10, align 8, !tbaa !82
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = getelementptr inbounds ptr, ptr %125, i64 3
  %127 = load ptr, ptr %126, align 8
  invoke void %127(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef %123)
          to label %131 unwind label %128

128:                                              ; preds = %121
  %129 = landingpad { ptr, i32 }
          catch ptr null
  %130 = extractvalue { ptr, i32 } %129, 0
  call void @__clang_call_terminate(ptr %130) #17
  unreachable

131:                                              ; preds = %121, %116, %114
  %132 = phi { ptr, i32 } [ %115, %114 ], [ %117, %116 ], [ %117, %121 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #16
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %134 = load i64, ptr %133, align 8, !tbaa !83
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !84
  %139 = load ptr, ptr %9, align 8, !tbaa !82
  %140 = load ptr, ptr %139, align 8, !tbaa !61
  %141 = getelementptr inbounds ptr, ptr %140, i64 3
  %142 = load ptr, ptr %141, align 8
  invoke void %142(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef %138)
          to label %146 unwind label %143

143:                                              ; preds = %136
  %144 = landingpad { ptr, i32 }
          catch ptr null
  %145 = extractvalue { ptr, i32 } %144, 0
  call void @__clang_call_terminate(ptr %145) #17
  unreachable

146:                                              ; preds = %131, %136
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #16
  br label %192

147:                                              ; preds = %102
  %148 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %149 = icmp eq ptr %100, %148
  br i1 %149, label %156, label %150

150:                                              ; preds = %147
  %151 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %148, ptr noundef nonnull align 8 dereferenceable(32) %100)
  br label %152

152:                                              ; preds = %86, %96, %150
  %153 = phi ptr [ %103, %150 ], [ %98, %96 ], [ %88, %86 ]
  %154 = load i32, ptr %153, align 8, !tbaa !71
  %155 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 1
  store i32 %154, ptr %155, align 8, !tbaa !71
  br label %156

156:                                              ; preds = %152, %147, %92, %82
  %157 = and i64 %20, 4294967295
  %158 = getelementptr inbounds i16, ptr %1, i64 %157
  %159 = getelementptr inbounds i16, ptr %158, i64 1
  %160 = xor i32 %21, -1
  %161 = add i32 %160, %2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %71, i32 noundef 0, i32 noundef -1)
  %162 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %71, ptr noundef nonnull %159, i32 noundef %161)
  br label %191

163:                                              ; preds = %68
  br i1 %5, label %171, label %164, !prof !90

164:                                              ; preds = %163
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 0, i32 1
  %166 = load i64, ptr %165, align 8, !tbaa !66
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %184, label %168, !prof !91

168:                                              ; preds = %164
  %169 = load i64, ptr %165, align 8, !tbaa !66
  %170 = sub i64 %169, %166
  store i64 %170, ptr %165, align 8, !tbaa !66
  br label %184

171:                                              ; preds = %163
  %172 = tail call noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_1010XalanQName13s_emptyStringE)
  %173 = icmp eq ptr %172, null
  br i1 %173, label %187, label %174, !prof !92

174:                                              ; preds = %171
  %175 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %172, i64 0, i32 1
  %176 = load i32, ptr %175, align 8, !tbaa !71
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %187, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %180 = icmp eq ptr %172, %179
  br i1 %180, label %187, label %181

181:                                              ; preds = %178
  %182 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %179, ptr noundef nonnull align 8 dereferenceable(32) %172)
  %183 = load i32, ptr %175, align 8, !tbaa !71
  br label %184

184:                                              ; preds = %164, %168, %181
  %185 = phi i32 [ %183, %181 ], [ 0, %168 ], [ 0, %164 ]
  %186 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 1
  store i32 %185, ptr %186, align 8, !tbaa !71
  br label %187

187:                                              ; preds = %184, %178, %171, %174
  %188 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %188, i32 noundef 0, i32 noundef -1)
  %189 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %190 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %188, ptr noundef %1, i32 noundef %189)
  br label %191

191:                                              ; preds = %156, %187
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue8validateEPKtjPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  ret void

192:                                              ; preds = %146, %67
  %193 = phi { ptr, i32 } [ %53, %67 ], [ %132, %146 ]
  resume { ptr, i32 } %193
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2EPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEERN11xercesc_2_713MemoryManagerEPKNSC_7LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %4, i1 noundef zeroext %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !93 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %3)
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %9 unwind label %21, !prof !91

9:                                                ; preds = %6, %9
  %10 = phi ptr [ %13, %9 ], [ %1, %6 ]
  %11 = load i16, ptr %10, align 2, !tbaa !75
  %12 = icmp eq i16 %11, 0
  %13 = getelementptr inbounds i16, ptr %10, i64 1
  br i1 %12, label %14, label %9, !prof !94, !llvm.loop !95

14:                                               ; preds = %9
  %15 = ptrtoint ptr %10 to i64
  %16 = ptrtoint ptr %1 to i64
  %17 = sub i64 %15, %16
  %18 = lshr exact i64 %17, 1
  %19 = trunc i64 %18 to i32
  invoke void @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %19, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %4, i1 noundef zeroext %5)
          to label %20 unwind label %23, !prof !91

20:                                               ; preds = %14
  ret void

21:                                               ; preds = %6
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %14
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  resume { ptr, i32 } %26
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringEPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerEPKNSD_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %8 = alloca %"class.xalanc_1_10::ElementPrefixResolverProxy", align 8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %11 unwind label %22

11:                                               ; preds = %7
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %8) #16
  invoke void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef %2, ptr noundef nonnull align 1 %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %12 unwind label %24

12:                                               ; preds = %11
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !66
  %15 = icmp eq i64 %14, 0
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8
  %18 = select i1 %15, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %17
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %20 = load i32, ptr %19, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1017XalanQNameByValue13resolvePrefixEPKtjPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %18, i32 noundef %20, ptr noundef nonnull %8, ptr noundef %6)
          to label %21 unwind label %26

21:                                               ; preds = %12
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  ret void

22:                                               ; preds = %7
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %30

24:                                               ; preds = %11
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %28

26:                                               ; preds = %12
  %27 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64) %8) #16
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %25, %24 ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %8) #16
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %10) #16
  br label %30

30:                                               ; preds = %28, %22
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %23, %22 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  resume { ptr, i32 } %31
}

declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyC1EPKNS_12XalanElementERKNS_15XPathEnvSupportERKNS_10DOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 1, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValue13resolvePrefixEPKtjPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  %6 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %7 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %8 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %11 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  br label %12

12:                                               ; preds = %15, %5
  %13 = phi ptr [ %1, %5 ], [ %16, %15 ]
  %14 = load i16, ptr %13, align 2, !tbaa !75
  switch i16 %14, label %15 [
    i16 58, label %17
    i16 0, label %17
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds i16, ptr %13, i64 1
  br label %12, !llvm.loop !78

17:                                               ; preds = %12, %12
  %18 = ptrtoint ptr %13 to i64
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %65

24:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %6) #16
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %26)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #16
  %27 = load ptr, ptr %25, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %28 unwind label %32

28:                                               ; preds = %24
  %29 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36) %6, i32 noundef 178)
          to label %30 unwind label %34

30:                                               ; preds = %28
  invoke fastcc void @_ZN11xalanc_1_10L14throwExceptionERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorERS0_(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %7)
          to label %31 unwind label %34

31:                                               ; preds = %30
  unreachable

32:                                               ; preds = %24
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %49

34:                                               ; preds = %30, %28
  %35 = landingpad { ptr, i32 }
          cleanup
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !83
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %49, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %7, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !84
  %42 = load ptr, ptr %7, align 8, !tbaa !82
  %43 = load ptr, ptr %42, align 8, !tbaa !61
  %44 = getelementptr inbounds ptr, ptr %43, i64 3
  %45 = load ptr, ptr %44, align 8
  invoke void %45(ptr noundef nonnull align 8 dereferenceable(8) %42, ptr noundef %41)
          to label %49 unwind label %46

46:                                               ; preds = %39
  %47 = landingpad { ptr, i32 }
          catch ptr null
  %48 = extractvalue { ptr, i32 } %47, 0
  call void @__clang_call_terminate(ptr %48) #17
  unreachable

49:                                               ; preds = %39, %34, %32
  %50 = phi { ptr, i32 } [ %33, %32 ], [ %35, %34 ], [ %35, %39 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #16
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 2
  %52 = load i64, ptr %51, align 8, !tbaa !83
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %64, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %6, i64 0, i32 3
  %56 = load ptr, ptr %55, align 8, !tbaa !84
  %57 = load ptr, ptr %6, align 8, !tbaa !82
  %58 = load ptr, ptr %57, align 8, !tbaa !61
  %59 = getelementptr inbounds ptr, ptr %58, i64 3
  %60 = load ptr, ptr %59, align 8
  invoke void %60(ptr noundef nonnull align 8 dereferenceable(8) %57, ptr noundef %56)
          to label %64 unwind label %61

61:                                               ; preds = %54
  %62 = landingpad { ptr, i32 }
          catch ptr null
  %63 = extractvalue { ptr, i32 } %62, 0
  call void @__clang_call_terminate(ptr %63) #17
  unreachable

64:                                               ; preds = %49, %54
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %6) #16
  br label %216

65:                                               ; preds = %17
  %66 = icmp ult i32 %22, %2
  %67 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  br i1 %66, label %78, label %68

68:                                               ; preds = %65
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %67, i32 noundef 0, i32 noundef -1)
  %69 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %67, ptr noundef %1, i32 noundef %2)
  %70 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 0, i32 1
  %71 = load i64, ptr %70, align 8, !tbaa !66
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i64, ptr %70, align 8, !tbaa !66
  %75 = sub i64 %74, %71
  store i64 %75, ptr %70, align 8, !tbaa !66
  br label %76

76:                                               ; preds = %73, %68
  %77 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 1
  store i32 0, ptr %77, align 8, !tbaa !71
  br label %215

78:                                               ; preds = %65
  %79 = add i32 %2, 1
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2, i32 0, i32 2
  %82 = load i64, ptr %81, align 8, !tbaa !83
  %83 = icmp ult i64 %82, %80
  br i1 %83, label %84, label %85

84:                                               ; preds = %78
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %67, i64 noundef %80)
  br label %85

85:                                               ; preds = %78, %84
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %67, i32 noundef 0, i32 noundef -1)
  %86 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %67, ptr noundef %1, i32 noundef %22)
  %87 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices11s_XMLStringE, align 8, !tbaa !87
  %88 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %67, ptr noundef nonnull align 8 dereferenceable(36) %87)
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices17s_XMLNamespaceURIE, align 8, !tbaa !87
  %91 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %92 = icmp eq ptr %90, %91
  br i1 %92, label %163, label %93

93:                                               ; preds = %89
  %94 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %91, ptr noundef nonnull align 8 dereferenceable(32) %90)
  br label %158

95:                                               ; preds = %85
  %96 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices14s_XMLNamespaceE, align 8, !tbaa !87
  %97 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %67, ptr noundef nonnull align 8 dereferenceable(36) %96)
  br i1 %97, label %98, label %104

98:                                               ; preds = %95
  %99 = load ptr, ptr @_ZN11xalanc_1_1011DOMServices23s_XMLNamespacePrefixURIE, align 8, !tbaa !87
  %100 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %101 = icmp eq ptr %99, %100
  br i1 %101, label %163, label %102

102:                                              ; preds = %98
  %103 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %100, ptr noundef nonnull align 8 dereferenceable(32) %99)
  br label %158

104:                                              ; preds = %95
  %105 = icmp eq ptr %3, null
  br i1 %105, label %106, label %147

106:                                              ; preds = %104
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %8) #16
  %107 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %108)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #16
  %109 = load ptr, ptr %107, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %109)
          to label %110 unwind label %114

110:                                              ; preds = %106
  %111 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %8, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %67)
          to label %112 unwind label %116

112:                                              ; preds = %110
  invoke fastcc void @_ZN11xalanc_1_10L14throwExceptionERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorERS0_(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %113 unwind label %116

113:                                              ; preds = %112
  unreachable

114:                                              ; preds = %106
  %115 = landingpad { ptr, i32 }
          cleanup
  br label %131

116:                                              ; preds = %112, %110
  %117 = landingpad { ptr, i32 }
          cleanup
  %118 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %119 = load i64, ptr %118, align 8, !tbaa !83
  %120 = icmp eq i64 %119, 0
  br i1 %120, label %131, label %121

121:                                              ; preds = %116
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %123 = load ptr, ptr %122, align 8, !tbaa !84
  %124 = load ptr, ptr %9, align 8, !tbaa !82
  %125 = load ptr, ptr %124, align 8, !tbaa !61
  %126 = getelementptr inbounds ptr, ptr %125, i64 3
  %127 = load ptr, ptr %126, align 8
  invoke void %127(ptr noundef nonnull align 8 dereferenceable(8) %124, ptr noundef %123)
          to label %131 unwind label %128

128:                                              ; preds = %121
  %129 = landingpad { ptr, i32 }
          catch ptr null
  %130 = extractvalue { ptr, i32 } %129, 0
  call void @__clang_call_terminate(ptr %130) #17
  unreachable

131:                                              ; preds = %121, %116, %114
  %132 = phi { ptr, i32 } [ %115, %114 ], [ %117, %116 ], [ %117, %121 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #16
  %133 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 2
  %134 = load i64, ptr %133, align 8, !tbaa !83
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %146, label %136

136:                                              ; preds = %131
  %137 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %8, i64 0, i32 3
  %138 = load ptr, ptr %137, align 8, !tbaa !84
  %139 = load ptr, ptr %8, align 8, !tbaa !82
  %140 = load ptr, ptr %139, align 8, !tbaa !61
  %141 = getelementptr inbounds ptr, ptr %140, i64 3
  %142 = load ptr, ptr %141, align 8
  invoke void %142(ptr noundef nonnull align 8 dereferenceable(8) %139, ptr noundef %138)
          to label %146 unwind label %143

143:                                              ; preds = %136
  %144 = landingpad { ptr, i32 }
          catch ptr null
  %145 = extractvalue { ptr, i32 } %144, 0
  call void @__clang_call_terminate(ptr %145) #17
  unreachable

146:                                              ; preds = %131, %136
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %8) #16
  br label %216

147:                                              ; preds = %104
  %148 = load ptr, ptr %3, align 8, !tbaa !61
  %149 = getelementptr inbounds ptr, ptr %148, i64 2
  %150 = load ptr, ptr %149, align 8
  %151 = tail call noundef ptr %150(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(36) %67)
  %152 = icmp eq ptr %151, null
  br i1 %152, label %163, label %153

153:                                              ; preds = %147
  %154 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %155 = icmp eq ptr %151, %154
  br i1 %155, label %163, label %156

156:                                              ; preds = %153
  %157 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %154, ptr noundef nonnull align 8 dereferenceable(32) %151)
  br label %158

158:                                              ; preds = %93, %102, %156
  %159 = phi ptr [ %151, %156 ], [ %99, %102 ], [ %90, %93 ]
  %160 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %159, i64 0, i32 1
  %161 = load i32, ptr %160, align 8, !tbaa !71
  %162 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 1
  store i32 %161, ptr %162, align 8, !tbaa !71
  br label %163

163:                                              ; preds = %158, %153, %98, %89, %147
  %164 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1, i32 1
  %165 = load i32, ptr %164, align 8, !tbaa !71
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %208

167:                                              ; preds = %163
  %168 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #16
  %169 = load ptr, ptr %168, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %169)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %11) #16
  %170 = load ptr, ptr %168, align 8, !tbaa !82
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(8) %170)
          to label %171 unwind label %175

171:                                              ; preds = %167
  %172 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36) %10, i32 noundef 27, ptr noundef nonnull align 8 dereferenceable(36) %67)
          to label %173 unwind label %177

173:                                              ; preds = %171
  invoke fastcc void @_ZN11xalanc_1_10L14throwExceptionERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorERS0_(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef %4, ptr noundef nonnull align 8 dereferenceable(36) %11)
          to label %174 unwind label %177

174:                                              ; preds = %173
  unreachable

175:                                              ; preds = %167
  %176 = landingpad { ptr, i32 }
          cleanup
  br label %192

177:                                              ; preds = %173, %171
  %178 = landingpad { ptr, i32 }
          cleanup
  %179 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 2
  %180 = load i64, ptr %179, align 8, !tbaa !83
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %192, label %182

182:                                              ; preds = %177
  %183 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %11, i64 0, i32 3
  %184 = load ptr, ptr %183, align 8, !tbaa !84
  %185 = load ptr, ptr %11, align 8, !tbaa !82
  %186 = load ptr, ptr %185, align 8, !tbaa !61
  %187 = getelementptr inbounds ptr, ptr %186, i64 3
  %188 = load ptr, ptr %187, align 8
  invoke void %188(ptr noundef nonnull align 8 dereferenceable(8) %185, ptr noundef %184)
          to label %192 unwind label %189

189:                                              ; preds = %182
  %190 = landingpad { ptr, i32 }
          catch ptr null
  %191 = extractvalue { ptr, i32 } %190, 0
  call void @__clang_call_terminate(ptr %191) #17
  unreachable

192:                                              ; preds = %182, %177, %175
  %193 = phi { ptr, i32 } [ %176, %175 ], [ %178, %177 ], [ %178, %182 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %11) #16
  %194 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %195 = load i64, ptr %194, align 8, !tbaa !83
  %196 = icmp eq i64 %195, 0
  br i1 %196, label %207, label %197

197:                                              ; preds = %192
  %198 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %199 = load ptr, ptr %198, align 8, !tbaa !84
  %200 = load ptr, ptr %10, align 8, !tbaa !82
  %201 = load ptr, ptr %200, align 8, !tbaa !61
  %202 = getelementptr inbounds ptr, ptr %201, i64 3
  %203 = load ptr, ptr %202, align 8
  invoke void %203(ptr noundef nonnull align 8 dereferenceable(8) %200, ptr noundef %199)
          to label %207 unwind label %204

204:                                              ; preds = %197
  %205 = landingpad { ptr, i32 }
          catch ptr null
  %206 = extractvalue { ptr, i32 } %205, 0
  call void @__clang_call_terminate(ptr %206) #17
  unreachable

207:                                              ; preds = %192, %197
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #16
  br label %216

208:                                              ; preds = %163
  %209 = and i64 %21, 4294967295
  %210 = getelementptr inbounds i16, ptr %1, i64 %209
  %211 = getelementptr inbounds i16, ptr %210, i64 1
  %212 = xor i32 %22, -1
  %213 = add i32 %212, %2
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %67, i32 noundef 0, i32 noundef -1)
  %214 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %67, ptr noundef nonnull %211, i32 noundef %213)
  br label %215

215:                                              ; preds = %76, %208
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue8validateEPKtjPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  ret void

216:                                              ; preds = %207, %146, %64
  %217 = phi { ptr, i32 } [ %50, %64 ], [ %193, %207 ], [ %132, %146 ]
  resume { ptr, i32 } %217
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1026ElementPrefixResolverProxyD1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerEPKNS_14PrefixResolverEPKNS4_7LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !65 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %18

8:                                                ; preds = %5
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !66
  %11 = icmp eq i64 %10, 0
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8
  %14 = select i1 %11, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %13
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %16 = load i32, ptr %15, align 8, !tbaa !71
  invoke void @_ZN11xalanc_1_1017XalanQNameByValue13resolvePrefixEPKtjPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %14, i32 noundef %16, ptr noundef %3, ptr noundef %4)
          to label %17 unwind label %20

17:                                               ; preds = %8
  ret void

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %8
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  resume { ptr, i32 } %23
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 align 2 !prof !96 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValueD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #5 align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1017XalanQNameByValueE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !61
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  tail call void @_ZdlPv(ptr noundef %0) #18
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getLocalPartEv(ptr noundef nonnull readnone align 8 dereferenceable(88) %0) unnamed_addr #7 align 2 !prof !97 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getNamespaceEv(ptr noundef nonnull readnone align 8 dereferenceable(88) %0) unnamed_addr #7 align 2 !prof !98 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValue3setERKNS_14XalanDOMStringERKNS_10XalanDequeINS4_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS5_EEEENS6_IS8_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #0 align 2 !prof !65 {
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !71
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %11, i32 noundef %13, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4) local_unnamed_addr #3 align 2 !prof !99 {
  br label %6

6:                                                ; preds = %6, %5
  %7 = phi ptr [ %1, %5 ], [ %10, %6 ]
  %8 = load i16, ptr %7, align 2, !tbaa !75
  %9 = icmp eq i16 %8, 0
  %10 = getelementptr inbounds i16, ptr %7, i64 1
  br i1 %9, label %11, label %6, !prof !100, !llvm.loop !95

11:                                               ; preds = %6
  %12 = ptrtoint ptr %7 to i64
  %13 = ptrtoint ptr %1 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %16, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef %3, i1 noundef zeroext %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValue3setERKNS_14XalanDOMStringEPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !65 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i64 %6, 0
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8
  %10 = select i1 %7, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %9
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 8, !tbaa !71
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue13resolvePrefixEPKtjPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %10, i32 noundef %12, ptr noundef %2, ptr noundef %3)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 !prof !65 {
  br label %5

5:                                                ; preds = %5, %4
  %6 = phi ptr [ %1, %4 ], [ %9, %5 ]
  %7 = load i16, ptr %6, align 2, !tbaa !75
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds i16, ptr %6, i64 1
  br i1 %8, label %10, label %5, !llvm.loop !95

10:                                               ; preds = %5
  %11 = ptrtoint ptr %6 to i64
  %12 = ptrtoint ptr %1 to i64
  %13 = sub i64 %11, %12
  %14 = lshr exact i64 %13, 1
  %15 = trunc i64 %14 to i32
  tail call void @_ZN11xalanc_1_1017XalanQNameByValue13resolvePrefixEPKtjPKNS_14PrefixResolverEPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %15, ptr noundef %2, ptr noundef %3)
  ret void
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesE(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress noreturn uwtable
define internal fastcc void @_ZN11xalanc_1_10L14throwExceptionERKNS_14XalanDOMStringEPKN11xercesc_2_77LocatorERS0_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #8 personality ptr @__gxx_personality_v0 !prof !65 {
  %4 = icmp eq ptr %1, null
  %5 = tail call ptr @__cxa_allocate_exception(i64 104) #16
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !66
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %0, i64 0, i32 1
  %13 = load i32, ptr %12, align 8, !tbaa !71
  br i1 %4, label %14, label %18

14:                                               ; preds = %3
  invoke void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1EPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef %11, i32 noundef %13, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %15 unwind label %16

15:                                               ; preds = %14
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, ptr nonnull @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD1Ev) #19
  unreachable

16:                                               ; preds = %14
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %22

18:                                               ; preds = %3
  invoke void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1ERKN11xercesc_2_77LocatorEPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %11, i32 noundef %13, ptr noundef nonnull align 8 dereferenceable(36) %2)
          to label %19 unwind label %20

19:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, ptr nonnull @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD1Ev) #19
  unreachable

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %22

22:                                               ; preds = %20, %16
  %23 = phi { ptr, i32 } [ %17, %16 ], [ %21, %20 ]
  tail call void @__cxa_free_exception(ptr %5) #16
  resume { ptr, i32 } %23
}

declare noundef ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XalanQNameByValue8validateEPKtjPKN11xercesc_2_77LocatorE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !74 {
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = load ptr, ptr %0, align 8, !tbaa !61
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %0), !prof !101
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %9)
  br i1 %10, label %42, label %11, !prof !102

11:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanQNameByValue", ptr %0, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = icmp eq ptr %3, null
  %15 = call ptr @__cxa_allocate_exception(i64 104) #16
  br i1 %14, label %21, label %16

16:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1ERKN11xercesc_2_77LocatorEPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %22 unwind label %17

17:                                               ; preds = %16
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #16
  br label %26

19:                                               ; preds = %22
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %26

21:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1EPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %15, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %22 unwind label %24

22:                                               ; preds = %16, %21
  invoke void @__cxa_throw(ptr nonnull %15, ptr nonnull @_ZTIN11xalanc_1_1010XalanQName21InvalidQNameExceptionE, ptr nonnull @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD1Ev) #19
          to label %23 unwind label %19

23:                                               ; preds = %22
  unreachable

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %15) #16
  br label %26

26:                                               ; preds = %24, %19, %17
  %27 = phi { ptr, i32 } [ %20, %19 ], [ %18, %17 ], [ %25, %24 ]
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %29 = load i64, ptr %28, align 8, !tbaa !83
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !84
  %34 = load ptr, ptr %5, align 8, !tbaa !82
  %35 = load ptr, ptr %34, align 8, !tbaa !61
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  invoke void %37(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %33)
          to label %41 unwind label %38

38:                                               ; preds = %31
  %39 = landingpad { ptr, i32 }
          catch ptr null
  %40 = extractvalue { ptr, i32 } %39, 0
  call void @__clang_call_terminate(ptr %40) #17
  unreachable

41:                                               ; preds = %26, %31
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  resume { ptr, i32 } %27

42:                                               ; preds = %4
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1ERKN11xercesc_2_77LocatorEPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xalanc_1_1010XalanQName21InvalidQNameExceptionC1EPKtjRNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #1

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !103 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !83
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !104

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !84
  %8 = load ptr, ptr %0, align 8, !tbaa !82
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !105

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !65 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !82
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !107

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !82
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !66
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !83
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !61
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !108
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !84
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !84
  %20 = load i64, ptr %5, align 8, !tbaa !66
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !109

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !82
  %24 = load i64, ptr %10, align 8, !tbaa !66
  %25 = load i64, ptr %11, align 8, !tbaa !83
  %26 = load ptr, ptr %17, align 8, !tbaa !84
  store ptr %4, ptr %3, align 8, !tbaa !82
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !83
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !84
  %33 = load ptr, ptr %3, align 8, !tbaa !82
  %34 = load ptr, ptr %33, align 8, !tbaa !61
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef %32)
          to label %40 unwind label %37

37:                                               ; preds = %31
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  call void @__clang_call_terminate(ptr %39) #17
  unreachable

40:                                               ; preds = %31, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !110

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !61
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !111
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !82
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !83
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !84
  store ptr %53, ptr %0, align 8, !tbaa !82
  store i64 %52, ptr %5, align 8, !tbaa !66
  store i64 %51, ptr %55, align 8, !tbaa !83
  store ptr %50, ptr %57, align 8, !tbaa !84
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !112

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !61
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !113

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !114 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !82
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !66
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !107

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !82
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !66
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !83
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !61
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !115
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !84
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !84
  %24 = load i64, ptr %9, align 8, !tbaa !66
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !109

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !82
  %28 = load i64, ptr %6, align 8, !tbaa !66
  %29 = load i64, ptr %7, align 8, !tbaa !83
  %30 = load ptr, ptr %8, align 8, !tbaa !84
  %31 = load ptr, ptr %5, align 8, !tbaa !82
  store ptr %31, ptr %0, align 8, !tbaa !82
  %32 = load i64, ptr %14, align 8, !tbaa !66
  store i64 %32, ptr %6, align 8, !tbaa !66
  %33 = load i64, ptr %15, align 8, !tbaa !83
  store i64 %33, ptr %7, align 8, !tbaa !83
  %34 = load ptr, ptr %21, align 8, !tbaa !84
  store ptr %34, ptr %8, align 8, !tbaa !84
  store ptr %27, ptr %5, align 8, !tbaa !82
  store i64 %28, ptr %14, align 8, !tbaa !66
  store i64 %29, ptr %15, align 8, !tbaa !83
  store ptr %30, ptr %21, align 8, !tbaa !84
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !109

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !61
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !83
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !84
  %50 = load ptr, ptr %5, align 8, !tbaa !82
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #17
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !110

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !61
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !116
  store ptr %65, ptr %8, align 8, !tbaa !84
  store i64 %3, ptr %7, align 8, !tbaa !83
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !117 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !118

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !66
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !84
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !83
  br i1 %18, label %21, label %39, !prof !119

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !120

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !121

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !84
  %28 = load i64, ptr %12, align 8, !tbaa !66
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !75
  store i16 %34, ptr %32, align 2, !tbaa !75
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !122, !llvm.loop !123

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !124

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !82
  store ptr %42, ptr %5, align 8, !tbaa !82
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !66
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !83
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !61
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !125
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !84
  %51 = load i64, ptr %43, align 8, !tbaa !66
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !84
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !126

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !84
  %56 = load i64, ptr %43, align 8, !tbaa !66
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !126

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !84
  %60 = load i64, ptr %43, align 8, !tbaa !66
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !84
  %63 = load i64, ptr %12, align 8, !tbaa !66
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !126

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !82
  %67 = load i64, ptr %12, align 8, !tbaa !66
  %68 = load i64, ptr %19, align 8, !tbaa !83
  %69 = load ptr, ptr %15, align 8, !tbaa !84
  %70 = load ptr, ptr %5, align 8, !tbaa !82
  store ptr %70, ptr %0, align 8, !tbaa !82
  %71 = load i64, ptr %43, align 8, !tbaa !66
  store i64 %71, ptr %12, align 8, !tbaa !66
  %72 = load i64, ptr %44, align 8, !tbaa !83
  store i64 %72, ptr %19, align 8, !tbaa !83
  %73 = load ptr, ptr %50, align 8, !tbaa !84
  store ptr %73, ptr %15, align 8, !tbaa !84
  store ptr %66, ptr %5, align 8, !tbaa !82
  store i64 %67, ptr %43, align 8, !tbaa !66
  store i64 %68, ptr %44, align 8, !tbaa !83
  store ptr %69, ptr %50, align 8, !tbaa !84
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !127

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !61
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !128

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #17
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !83
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !84
  %89 = load ptr, ptr %5, align 8, !tbaa !82
  %90 = load ptr, ptr %89, align 8, !tbaa !61
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #17
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !129

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !130

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !130

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !131, !llvm.loop !132

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !133, !llvm.loop !134

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !135
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
  br i1 %123, label %124, label %120, !llvm.loop !136

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
  store i64 %36, ptr %12, align 8, !tbaa !66
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 !prof !137 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !66
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !83
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !138

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !75
  store i16 %13, ptr %12, align 2, !tbaa !75
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !66
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !82
  %24 = load i64, ptr %4, align 8, !tbaa !66
  %25 = load i64, ptr %6, align 8, !tbaa !83
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !84
  %28 = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %28, ptr %0, align 8, !tbaa !82
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !66
  store i64 %30, ptr %4, align 8, !tbaa !66
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !83
  store i64 %32, ptr %6, align 8, !tbaa !83
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !84
  store ptr %34, ptr %26, align 8, !tbaa !84
  store ptr %23, ptr %3, align 8, !tbaa !82
  store i64 %24, ptr %29, align 8, !tbaa !66
  store i64 %25, ptr %31, align 8, !tbaa !83
  store ptr %27, ptr %33, align 8, !tbaa !84
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !61
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #17
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !83
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !84
  %52 = load ptr, ptr %3, align 8, !tbaa !82
  %53 = load ptr, ptr %52, align 8, !tbaa !61
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #12

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #13

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #1

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !140

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !83
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !66
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !141

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !82
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !82
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !66
  %16 = load i64, ptr %6, align 8, !tbaa !83
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !84
  %19 = load ptr, ptr %3, align 8, !tbaa !82
  store ptr %19, ptr %0, align 8, !tbaa !82
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !66
  store i64 %21, ptr %14, align 8, !tbaa !66
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !83
  store i64 %23, ptr %6, align 8, !tbaa !83
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !84
  store ptr %25, ptr %17, align 8, !tbaa !84
  store ptr %13, ptr %3, align 8, !tbaa !82
  store i64 %15, ptr %20, align 8, !tbaa !66
  store i64 %16, ptr %22, align 8, !tbaa !83
  store ptr %18, ptr %24, align 8, !tbaa !84
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !142

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !61
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !143

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #17
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !84
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !66
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !144

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !145

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !84
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !66
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !66
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !84
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !146

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !84
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !147
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }
attributes #19 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!59}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58}
!35 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValueC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 12}
!36 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1014XalanDOMString5eraseEjj, i64 278}
!38 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj, i64 278}
!39 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_, i64 8}
!40 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, i64 4}
!41 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1010XalanQName21getNamespaceForPrefixERKNS_10XalanDequeINS1_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS3_IS5_EEEERKNS_14XalanDOMStringE, i64 244}
!42 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 270}
!43 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1017XalanQNameByValue8validateEPKtjPKN11xercesc_2_77LocatorE, i64 274}
!44 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValueC2EPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEERN11xercesc_2_713MemoryManagerEPKNSC_7LocatorEb, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 52}
!45 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValueC2EPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEERN11xercesc_2_713MemoryManagerEPKNSC_7LocatorEb, ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, i64 26}
!46 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValueD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 56}
!47 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue3setEPKtRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, ptr @_ZN11xalanc_1_1017XalanQNameByValue10initializeEPKtjRKNS_10XalanDequeINS3_INS_9NameSpaceENS_32ConstructWithMemoryManagerTraitsIS4_EEEENS5_IS7_EEEEPKN11xercesc_2_77LocatorEb, i64 248}
!48 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue8validateEPKtjPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1017XalanQNameByValue12getLocalPartEv, i64 274}
!49 = !{ptr @_ZN11xalanc_1_1017XalanQNameByValue8validateEPKtjPKN11xercesc_2_77LocatorE, ptr @_ZN11xalanc_1_1010XalanQName13isValidNCNameERKNS_14XalanDOMStringE, i64 274}
!50 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!51 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!52 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!53 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!56 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!57 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!59 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!60 = !{!"function_entry_count", i64 6}
!61 = !{!62, !62, i64 0}
!62 = !{!"vtable pointer", !63, i64 0}
!63 = !{!"Simple C++ TBAA"}
!64 = !{!"branch_weights", i32 6, i32 0}
!65 = !{!"function_entry_count", i64 0}
!66 = !{!67, !70, i64 8}
!67 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !68, i64 0, !70, i64 8, !70, i64 16, !68, i64 24}
!68 = !{!"any pointer", !69, i64 0}
!69 = !{!"omnipotent char", !63, i64 0}
!70 = !{!"long", !69, i64 0}
!71 = !{!72, !73, i64 32}
!72 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !67, i64 0, !73, i64 32}
!73 = !{!"int", !69, i64 0}
!74 = !{!"function_entry_count", i64 274}
!75 = !{!76, !76, i64 0}
!76 = !{!"short", !69, i64 0}
!77 = !{!"branch_weights", i32 1638, i32 4, i32 270}
!78 = distinct !{!78, !79, !80}
!79 = !{!"llvm.loop.mustprogress"}
!80 = !{!"llvm.loop.unroll.disable"}
!81 = !{!"branch_weights", i32 0, i32 274}
!82 = !{!67, !68, i64 0}
!83 = !{!67, !70, i64 16}
!84 = !{!67, !68, i64 24}
!85 = !{!"branch_weights", i32 4, i32 270}
!86 = !{!"branch_weights", i32 1, i32 3}
!87 = !{!68, !68, i64 0}
!88 = !{!"branch_weights", i32 0, i32 4}
!89 = !{!"branch_weights", i32 4, i32 0}
!90 = !{!"branch_weights", i32 244, i32 26}
!91 = !{!"branch_weights", i32 26, i32 0}
!92 = !{!"branch_weights", i32 244, i32 0}
!93 = !{!"function_entry_count", i64 26}
!94 = !{!"branch_weights", i32 26, i32 255}
!95 = distinct !{!95, !79, !80}
!96 = !{!"function_entry_count", i64 28}
!97 = !{!"function_entry_count", i64 470182255}
!98 = !{!"function_entry_count", i64 291397114}
!99 = !{!"function_entry_count", i64 248}
!100 = !{!"branch_weights", i32 248, i32 1401}
!101 = !{!"VP", i32 0, i64 274, i64 1429807492782621726, i64 274}
!102 = !{!"branch_weights", i32 274, i32 0}
!103 = !{!"function_entry_count", i64 42470003}
!104 = !{!"branch_weights", i32 52000, i32 42418003}
!105 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!106 = !{!"function_entry_count", i64 64551586}
!107 = !{!"branch_weights", i32 64551590, i32 18}
!108 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!109 = !{!"branch_weights", i32 18, i32 0}
!110 = !{!"branch_weights", i32 4, i32 64551586}
!111 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!112 = !{!"branch_weights", i32 42418193, i32 22133393}
!113 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!114 = !{!"function_entry_count", i64 22}
!115 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!116 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!117 = !{!"function_entry_count", i64 155828046}
!118 = !{!"branch_weights", i32 0, i32 155828046}
!119 = !{!"branch_weights", i32 133170777, i32 22657269}
!120 = !{!"branch_weights", i32 20, i32 133170757}
!121 = !{!"branch_weights", i32 1, i32 19024395}
!122 = !{!"branch_weights", i32 19024395, i32 -26420601}
!123 = distinct !{!123, !79, !80}
!124 = !{!"branch_weights", i32 20748786, i32 1908483}
!125 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!126 = !{!"branch_weights", i32 20748786, i32 0}
!127 = !{!"branch_weights", i32 0, i32 20748786}
!128 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!129 = !{!"branch_weights", i32 0, i32 1908483}
!130 = !{!"branch_weights", i32 1, i32 1908482}
!131 = !{!"branch_weights", i32 1908482, i32 49797853}
!132 = distinct !{!132, !79, !80}
!133 = !{!"branch_weights", i32 1908482, i32 1}
!134 = distinct !{!134, !79, !80}
!135 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!136 = distinct !{!136, !79, !80}
!137 = !{!"function_entry_count", i64 124150652}
!138 = !{!"branch_weights", i32 124150652, i32 0}
!139 = !{!"function_entry_count", i64 41614}
!140 = !{!"branch_weights", i32 0, i32 41614}
!141 = !{!"branch_weights", i32 12, i32 41602}
!142 = !{!"branch_weights", i32 5, i32 7}
!143 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!144 = !{!"branch_weights", i32 354, i32 41248}
!145 = !{!"branch_weights", i32 40889, i32 359}
!146 = !{!"branch_weights", i32 40581, i32 1021}
!147 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
