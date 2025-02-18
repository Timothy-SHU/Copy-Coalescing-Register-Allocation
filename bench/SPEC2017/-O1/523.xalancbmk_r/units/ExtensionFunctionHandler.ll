; ModuleID = 'ExtensionFunctionHandler.cpp'
source_filename = "ExtensionFunctionHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::ExtensionFunctionHandler" = type <{ ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", ptr, %"class.xalanc_1_10::XalanSet", i8, [7 x i8] }>
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSet" = type { %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::StringTokenizer" = type { ptr, ptr, i8, i32, i32, i32 }
%"struct.xalanc_1_10::XalanMapIterator.1" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"struct.std::pair" = type { %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8] }

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_bEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKb = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKb = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6rehashEv = comdat any

$_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE = comdat any

@_ZN11xalanc_1_1024ExtensionFunctionHandler26s_tokenDelimiterCharactersE = dso_local constant [5 x i16] [i16 32, i16 9, i16 10, i16 13, i16 0], align 2
@_ZTVN11xalanc_1_1024ExtensionFunctionHandlerE = dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024ExtensionFunctionHandlerE, ptr @_ZN11xalanc_1_1024ExtensionFunctionHandlerD2Ev, ptr @_ZN11xalanc_1_1024ExtensionFunctionHandlerD0Ev, ptr @_ZN11xalanc_1_1024ExtensionFunctionHandler12setFunctionsERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1024ExtensionFunctionHandler9setScriptERKNS_14XalanDOMStringES3_S3_, ptr @_ZNK11xalanc_1_1024ExtensionFunctionHandler19isFunctionAvailableERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1024ExtensionFunctionHandler12callFunctionERKNS_14XalanDOMStringERKNS_11XalanVectorIPvNS_31MemoryManagedConstructionTraitsIS5_EEEE, ptr @_ZN11xalanc_1_1024ExtensionFunctionHandler16startupComponentEv] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1024ExtensionFunctionHandlerE = dso_local constant [42 x i8] c"N11xalanc_1_1024ExtensionFunctionHandlerE\00", align 1
@_ZTIN11xalanc_1_1024ExtensionFunctionHandlerE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024ExtensionFunctionHandlerE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external local_unnamed_addr constant i16, align 2

@_ZN11xalanc_1_1024ExtensionFunctionHandlerC1ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1024ExtensionFunctionHandlerC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1024ExtensionFunctionHandlerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1024ExtensionFunctionHandlerD2Ev
@_ZN11xalanc_1_1024ExtensionFunctionHandlerC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_S6_S6_S6_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1024ExtensionFunctionHandlerC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_S6_S6_S6_

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandlerC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xalanc_1_1024ExtensionFunctionHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %4 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
  %5 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %6 unwind label %24

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %8 unwind label %26

8:                                                ; preds = %6
  %9 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %10 unwind label %28

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 5
  store ptr null, ptr %11, align 8, !tbaa !49
  %12 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 2
  store ptr %2, ptr %12, align 8, !tbaa !65
  %13 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 3
  store float 7.500000e-01, ptr %13, align 8, !tbaa !66
  %14 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 4
  store i64 29, ptr %14, align 8, !tbaa !67
  %15 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 5
  store i64 0, ptr %15, align 8, !tbaa !68
  %16 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 6
  store ptr %2, ptr %16, align 8, !tbaa !69
  %17 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 6, i32 1
  %18 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %17, i8 0, i64 16, i1 false)
  store ptr %2, ptr %18, align 8, !tbaa !69
  %19 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 7, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %19, i8 0, i64 16, i1 false)
  store ptr %2, ptr %20, align 8, !tbaa !70
  %21 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 8, i32 1
  %22 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %21, i8 0, i64 32, i1 false)
  store i64 50, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 7
  store i8 0, ptr %23, align 8, !tbaa !72
  ret void

24:                                               ; preds = %3
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %32

26:                                               ; preds = %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %8
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #16
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %27, %26 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  br label %32

32:                                               ; preds = %30, %24
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %25, %24 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  resume { ptr, i32 } %33
}

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(313) %0) unnamed_addr #2 align 2 !prof !45 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xalanc_1_1024ExtensionFunctionHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %2 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %2) #16
  %3 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  %4 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %5 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  %6 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %6) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(313) %0) unnamed_addr #2 align 2 !prof !45 {
  tail call void @_ZN11xalanc_1_1024ExtensionFunctionHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(313) %0) #16
  tail call void @_ZdlPv(ptr noundef %0) #17
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandlerC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringES6_S6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(36) %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xalanc_1_1024ExtensionFunctionHandlerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !46
  %8 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
  %9 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(36) %4, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %10 unwind label %32

10:                                               ; preds = %7
  %11 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %12 unwind label %34

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef 0, i32 noundef -1)
          to label %14 unwind label %36

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 5
  store ptr null, ptr %15, align 8, !tbaa !49
  %16 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 2
  store ptr %1, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 3
  store float 7.500000e-01, ptr %17, align 8, !tbaa !66
  %18 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 4
  store i64 29, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 5
  store i64 0, ptr %19, align 8, !tbaa !68
  %20 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 6
  store ptr %1, ptr %20, align 8, !tbaa !69
  %21 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 6, i32 1
  %22 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %21, i8 0, i64 16, i1 false)
  store ptr %1, ptr %22, align 8, !tbaa !69
  %23 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 7, i32 1
  %24 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %23, i8 0, i64 16, i1 false)
  store ptr %1, ptr %24, align 8, !tbaa !70
  %25 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 8, i32 1
  %26 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %25, i8 0, i64 32, i1 false)
  store i64 50, ptr %26, align 8, !tbaa !71
  %27 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 7
  store i8 0, ptr %27, align 8, !tbaa !72
  %28 = load ptr, ptr %0, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(36) %3)
          to label %31 unwind label %38

31:                                               ; preds = %14
  ret void

32:                                               ; preds = %7
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %45

34:                                               ; preds = %10
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %43

36:                                               ; preds = %12
  %37 = landingpad { ptr, i32 }
          cleanup
  br label %41

38:                                               ; preds = %14
  %39 = landingpad { ptr, i32 }
          cleanup
  %40 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %40) #16
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  br label %41

41:                                               ; preds = %38, %36
  %42 = phi { ptr, i32 } [ %39, %38 ], [ %37, %36 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #16
  br label %43

43:                                               ; preds = %41, %34
  %44 = phi { ptr, i32 } [ %42, %41 ], [ %35, %34 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #16
  br label %45

45:                                               ; preds = %43, %32
  %46 = phi { ptr, i32 } [ %44, %43 ], [ %33, %32 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %8) #16
  resume { ptr, i32 } %46
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandler12setFunctionsERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca i8, align 1
  %4 = alloca %"class.xalanc_1_10::StringTokenizer", align 8
  %5 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %7 = load i32, ptr %6, align 8, !tbaa !73
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %52, label %9

9:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringEPKtb(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull @_ZN11xalanc_1_1024ExtensionFunctionHandler26s_tokenDelimiterCharactersE, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %5) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !74
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %20

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6
  br label %14

14:                                               ; preds = %12, %19
  %15 = invoke noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %16 unwind label %22

16:                                               ; preds = %14
  br i1 %15, label %17, label %37

17:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(36) %5)
          to label %18 unwind label %22

18:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %3) #16
  store i8 1, ptr %3, align 1, !tbaa !75
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKb(ptr noundef nonnull align 8 dereferenceable(136) %13, ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 1 dereferenceable(1) %3)
          to label %19 unwind label %22

19:                                               ; preds = %18
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %3) #16
  br label %14

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %53

22:                                               ; preds = %18, %17, %14
  %23 = landingpad { ptr, i32 }
          cleanup
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %25 = load i64, ptr %24, align 8, !tbaa !76
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %53, label %27

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !77
  %30 = load ptr, ptr %5, align 8, !tbaa !74
  %31 = load ptr, ptr %30, align 8, !tbaa !46
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %29)
          to label %53 unwind label %34

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          catch ptr null
  %36 = extractvalue { ptr, i32 } %35, 0
  call void @__clang_call_terminate(ptr %36) #18
  unreachable

37:                                               ; preds = %16
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  %39 = load i64, ptr %38, align 8, !tbaa !76
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %51, label %41

41:                                               ; preds = %37
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = load ptr, ptr %5, align 8, !tbaa !74
  %45 = load ptr, ptr %44, align 8, !tbaa !46
  %46 = getelementptr inbounds ptr, ptr %45, i64 3
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(8) %44, ptr noundef %43)
          to label %51 unwind label %48

48:                                               ; preds = %41
  %49 = landingpad { ptr, i32 }
          catch ptr null
  %50 = extractvalue { ptr, i32 } %49, 0
  call void @__clang_call_terminate(ptr %50) #18
  unreachable

51:                                               ; preds = %37, %41
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  br label %52

52:                                               ; preds = %2, %51
  ret void

53:                                               ; preds = %27, %22, %20
  %54 = phi { ptr, i32 } [ %21, %20 ], [ %23, %22 ], [ %23, %27 ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #16
  resume { ptr, i32 } %54
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xalanc_1_1015StringTokenizerC1ERKNS_14XalanDOMStringEPKtb(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xalanc_1_1015StringTokenizer13hasMoreTokensEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1015StringTokenizer9nextTokenERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1015StringTokenizerD1Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #5

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandler9setScriptERKNS_14XalanDOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #0 align 2 !prof !45 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 2
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %12, label %7

7:                                                ; preds = %4
  %8 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef nonnull align 8 dereferenceable(32) %1)
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %1, i64 0, i32 1
  %10 = load i32, ptr %9, align 8, !tbaa !73
  %11 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 2, i32 1
  store i32 %10, ptr %11, align 8, !tbaa !73
  br label %12

12:                                               ; preds = %4, %7
  %13 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 4
  %14 = icmp eq ptr %13, %2
  br i1 %14, label %20, label %15

15:                                               ; preds = %12
  %16 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %2)
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %2, i64 0, i32 1
  %18 = load i32, ptr %17, align 8, !tbaa !73
  %19 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 4, i32 1
  store i32 %18, ptr %19, align 8, !tbaa !73
  br label %20

20:                                               ; preds = %12, %15
  %21 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 3
  %22 = icmp eq ptr %21, %3
  br i1 %22, label %28, label %23

23:                                               ; preds = %20
  %24 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %3, i64 0, i32 1
  %26 = load i32, ptr %25, align 8, !tbaa !73
  %27 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 3, i32 1
  store i32 %26, ptr %27, align 8, !tbaa !73
  br label %28

28:                                               ; preds = %20, %23
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1024ExtensionFunctionHandler19isFunctionAvailableERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(313) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !45 {
  %3 = alloca %"struct.xalanc_1_10::XalanMapIterator.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #16, !noalias !78
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.1") align 8 %3, ptr noundef nonnull align 8 dereferenceable(136) %4, ptr noundef nonnull align 8 dereferenceable(36) %1), !noalias !78
  %5 = load ptr, ptr %3, align 8, !tbaa !83, !noalias !78
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #16, !noalias !78
  %6 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 6, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !85, !noalias !86
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::ExtensionFunctionHandler", ptr %0, i64 0, i32 6, i32 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !69, !noalias !86
  %12 = load ptr, ptr %11, align 8, !tbaa !46, !noalias !86
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8, !noalias !86
  %15 = call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef 32), !noalias !86
  store ptr %15, ptr %6, align 8, !tbaa !85, !noalias !86
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %15, i64 0, i32 2
  store ptr %15, ptr %16, align 8, !tbaa !95, !noalias !86
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %15, i64 0, i32 1
  store ptr %15, ptr %17, align 8, !tbaa !98, !noalias !86
  br label %18

18:                                               ; preds = %2, %9
  %19 = load ptr, ptr %6, align 8, !tbaa !85, !noalias !86
  %20 = icmp ne ptr %19, %5
  ret i1 %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandler12callFunctionERKNS_14XalanDOMStringERKNS_11XalanVectorIPvNS_31MemoryManagedConstructionTraitsIS5_EEEE(ptr dead_on_unwind noalias nocapture writable writeonly sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2, ptr nocapture nonnull readnone align 1 %3) unnamed_addr #0 align 2 !prof !45 {
  store ptr null, ptr %0, align 8, !tbaa !99
  tail call void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef null)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1024ExtensionFunctionHandler16startupComponentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !45 {
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !101 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !76
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !102

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !77
  %8 = load ptr, ptr %0, align 8, !tbaa !74
  %9 = load ptr, ptr %8, align 8, !tbaa !46
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !103

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !45 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !104
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !85, !noalias !105
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !69, !noalias !105
  %13 = load ptr, ptr %12, align 8, !tbaa !46, !noalias !105
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !105
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !85, !noalias !105
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !95, !noalias !105
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !98, !noalias !105
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !85, !noalias !105
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !95, !noalias !108
  %27 = load ptr, ptr %8, align 8, !tbaa !85, !noalias !109
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !69, !noalias !109
  %31 = load ptr, ptr %30, align 8, !tbaa !46, !noalias !109
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !109
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !85, !noalias !109
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !95, !noalias !109
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !98, !noalias !109
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !85, !noalias !109
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !112
  %43 = load ptr, ptr %22, align 8, !tbaa !65
  %44 = load ptr, ptr %43, align 8, !tbaa !46
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !113

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #16
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #16
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #16
  ret void

51:                                               ; preds = %29, %41
  %52 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

53:                                               ; preds = %1, %11
  %54 = landingpad { ptr, i32 }
          catch ptr null
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi { ptr, i32 } [ %52, %51 ], [ %54, %53 ]
  %57 = extractvalue { ptr, i32 } %56, 0
  tail call void @__clang_call_terminate(ptr %57) #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.1", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !68
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #16
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %10 = load ptr, ptr %7, align 8, !tbaa !85, !noalias !119
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !69, !noalias !119
  %14 = load ptr, ptr %13, align 8, !tbaa !46, !noalias !119
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !119
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !119
  store ptr %17, ptr %7, align 8, !tbaa !85, !noalias !119
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !95, !noalias !119
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !98, !noalias !119
  br label %20

20:                                               ; preds = %9, %12
  %21 = load ptr, ptr %7, align 8, !tbaa !85, !noalias !119
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !95, !noalias !119
  store ptr %23, ptr %2, align 8, !tbaa !83, !alias.scope !116
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_bEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #16
  %24 = load i64, ptr %3, align 8, !tbaa !68
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !122

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !123
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !124
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !104
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #16
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !125

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !124
  %18 = load ptr, ptr %0, align 8, !tbaa !70
  %19 = load ptr, ptr %18, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %25) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !95, !noalias !126
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !85, !noalias !129
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !69, !noalias !129
  %14 = load ptr, ptr %13, align 8, !tbaa !46, !noalias !129
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !129
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !85, !noalias !129
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !95, !noalias !129
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !98, !noalias !129
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !85, !noalias !129
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !95, !noalias !132
  %27 = load ptr, ptr %0, align 8, !tbaa !69
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !135

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !136
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !95
  %40 = load ptr, ptr %0, align 8, !tbaa !69
  %41 = load ptr, ptr %40, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !85
  %46 = load ptr, ptr %0, align 8, !tbaa !69
  %47 = load ptr, ptr %46, align 8, !tbaa !46
  %48 = getelementptr inbounds ptr, ptr %47, i64 3
  %49 = load ptr, ptr %48, align 8
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %45)
          to label %50 unwind label %55

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
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_bEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %3 = load ptr, ptr %1, align 8, !tbaa !83
  %4 = load ptr, ptr %3, align 8, !tbaa !112
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #16
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !85, !noalias !137
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !69, !noalias !137
  %11 = load ptr, ptr %10, align 8, !tbaa !46, !noalias !137
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !137
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !137
  store ptr %14, ptr %5, align 8, !tbaa !85, !noalias !137
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !95, !noalias !137
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !98, !noalias !137
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !85, !noalias !137
  %19 = load ptr, ptr %1, align 8, !tbaa !83
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !95
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !98
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %25, i64 0, i32 2
  store ptr %23, ptr %26, align 8, !tbaa !95
  %27 = load ptr, ptr %22, align 8, !tbaa !95
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %27, i64 0, i32 1
  store ptr %25, ptr %28, align 8, !tbaa !98
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !98
  store ptr %30, ptr %24, align 8, !tbaa !98
  store ptr %18, ptr %22, align 8, !tbaa !95
  %31 = load ptr, ptr %29, align 8, !tbaa !98
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %31, i64 0, i32 2
  store ptr %19, ptr %32, align 8, !tbaa !95
  store ptr %19, ptr %29, align 8, !tbaa !98
  br label %33

33:                                               ; preds = %17, %21
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %19, i64 0, i32 1
  store i8 1, ptr %34, align 8, !tbaa !140
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !68
  %37 = add i64 %36, -1
  store i64 %37, ptr %35, align 8, !tbaa !68
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !141
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = load ptr, ptr %0, align 8, !tbaa !144
  %9 = load ptr, ptr %8, align 8, !tbaa !46
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
  tail call void @__clang_call_terminate(ptr %15) #18
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !145 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !146

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !147
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !148

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !74
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !147
  %16 = load i64, ptr %6, align 8, !tbaa !76
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = load ptr, ptr %3, align 8, !tbaa !74
  store ptr %19, ptr %0, align 8, !tbaa !74
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !147
  store i64 %21, ptr %14, align 8, !tbaa !147
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !76
  store i64 %23, ptr %6, align 8, !tbaa !76
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !77
  store ptr %25, ptr %17, align 8, !tbaa !77
  store ptr %13, ptr %3, align 8, !tbaa !74
  store i64 %15, ptr %20, align 8, !tbaa !147
  store i64 %16, ptr %22, align 8, !tbaa !76
  store ptr %18, ptr %24, align 8, !tbaa !77
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !149

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !150

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %63

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !147
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !151

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !152

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !77
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !147
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !147
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !77
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !153

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !77
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !154
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !155 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !74
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !147
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !156

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !74
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !147
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !76
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !157
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !77
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = load i64, ptr %9, align 8, !tbaa !147
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !158

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !74
  %28 = load i64, ptr %6, align 8, !tbaa !147
  %29 = load i64, ptr %7, align 8, !tbaa !76
  %30 = load ptr, ptr %8, align 8, !tbaa !77
  %31 = load ptr, ptr %5, align 8, !tbaa !74
  store ptr %31, ptr %0, align 8, !tbaa !74
  %32 = load i64, ptr %14, align 8, !tbaa !147
  store i64 %32, ptr %6, align 8, !tbaa !147
  %33 = load i64, ptr %15, align 8, !tbaa !76
  store i64 %33, ptr %7, align 8, !tbaa !76
  %34 = load ptr, ptr %21, align 8, !tbaa !77
  store ptr %34, ptr %8, align 8, !tbaa !77
  store ptr %27, ptr %5, align 8, !tbaa !74
  store i64 %28, ptr %14, align 8, !tbaa !147
  store i64 %29, ptr %15, align 8, !tbaa !76
  store ptr %30, ptr %21, align 8, !tbaa !77
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !158

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !76
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !77
  %50 = load ptr, ptr %5, align 8, !tbaa !74
  %51 = load ptr, ptr %50, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60, !prof !159

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !46
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !160
  store ptr %65, ptr %8, align 8, !tbaa !77
  store i64 %3, ptr %7, align 8, !tbaa !76
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !161 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !162

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !147
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !77
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !76
  br i1 %18, label %21, label %39, !prof !163

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !164

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !165

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !77
  %28 = load i64, ptr %12, align 8, !tbaa !147
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !166
  store i16 %34, ptr %32, align 2, !tbaa !166
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !168, !llvm.loop !169

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !170

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !74
  store ptr %42, ptr %5, align 8, !tbaa !74
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !147
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !76
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !46
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !171
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !77
  %51 = load i64, ptr %43, align 8, !tbaa !147
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !77
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !172

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !77
  %56 = load i64, ptr %43, align 8, !tbaa !147
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !172

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !77
  %60 = load i64, ptr %43, align 8, !tbaa !147
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !77
  %63 = load i64, ptr %12, align 8, !tbaa !147
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !172

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !74
  %67 = load i64, ptr %12, align 8, !tbaa !147
  %68 = load i64, ptr %19, align 8, !tbaa !76
  %69 = load ptr, ptr %15, align 8, !tbaa !77
  %70 = load ptr, ptr %5, align 8, !tbaa !74
  store ptr %70, ptr %0, align 8, !tbaa !74
  %71 = load i64, ptr %43, align 8, !tbaa !147
  store i64 %71, ptr %12, align 8, !tbaa !147
  %72 = load i64, ptr %44, align 8, !tbaa !76
  store i64 %72, ptr %19, align 8, !tbaa !76
  %73 = load ptr, ptr %50, align 8, !tbaa !77
  store ptr %73, ptr %15, align 8, !tbaa !77
  store ptr %66, ptr %5, align 8, !tbaa !74
  store i64 %67, ptr %43, align 8, !tbaa !147
  store i64 %68, ptr %44, align 8, !tbaa !76
  store ptr %69, ptr %50, align 8, !tbaa !77
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !173

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !46
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !174

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #18
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %134

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !76
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !77
  %89 = load ptr, ptr %5, align 8, !tbaa !74
  %90 = load ptr, ptr %89, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %116, label %102, !prof !175

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !176

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !176

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !177, !llvm.loop !178

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !179, !llvm.loop !180

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !181
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
  br i1 %123, label %124, label %120, !llvm.loop !182

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
  store i64 %36, ptr %12, align 8, !tbaa !147
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !183 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !147
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !76
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !184

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !77
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !166
  store i16 %13, ptr %12, align 2, !tbaa !166
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !147
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !74
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !74
  %24 = load i64, ptr %4, align 8, !tbaa !147
  %25 = load i64, ptr %6, align 8, !tbaa !76
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !77
  %28 = load ptr, ptr %3, align 8, !tbaa !74
  store ptr %28, ptr %0, align 8, !tbaa !74
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !147
  store i64 %30, ptr %4, align 8, !tbaa !147
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !76
  store i64 %32, ptr %6, align 8, !tbaa !76
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !77
  store ptr %34, ptr %26, align 8, !tbaa !77
  store ptr %23, ptr %3, align 8, !tbaa !74
  store i64 %24, ptr %29, align 8, !tbaa !147
  store i64 %25, ptr %31, align 8, !tbaa !76
  store ptr %27, ptr %33, align 8, !tbaa !77
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !76
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !77
  %52 = load ptr, ptr %3, align 8, !tbaa !74
  %53 = load ptr, ptr %52, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !185 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !74
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !147
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !156

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !74
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !147
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !76
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !46
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !186
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !77
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !77
  %20 = load i64, ptr %5, align 8, !tbaa !147
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !158

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !74
  %24 = load i64, ptr %10, align 8, !tbaa !147
  %25 = load i64, ptr %11, align 8, !tbaa !76
  %26 = load ptr, ptr %17, align 8, !tbaa !77
  store ptr %4, ptr %3, align 8, !tbaa !74
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !76
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !77
  %33 = load ptr, ptr %3, align 8, !tbaa !74
  %34 = load ptr, ptr %33, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %28

41:                                               ; preds = %2
  %42 = icmp eq i64 %1, 0
  br i1 %42, label %49, label %43, !prof !159

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !46
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !187
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !74
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !76
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !77
  store ptr %53, ptr %0, align 8, !tbaa !74
  store i64 %52, ptr %5, align 8, !tbaa !147
  store i64 %51, ptr %55, align 8, !tbaa !76
  store ptr %50, ptr %57, align 8, !tbaa !77
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !188

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !46
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !189

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #18
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #11

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #12

declare void @_ZN11xalanc_1_1027XalanReferenceCountedObject12addReferenceEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.1", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.1", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.1") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !83
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !85, !noalias !190
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !69, !noalias !190
  %13 = load ptr, ptr %12, align 8, !tbaa !46, !noalias !190
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !190
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !190
  store ptr %16, ptr %7, align 8, !tbaa !85, !noalias !190
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !95, !noalias !190
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !98, !noalias !190
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !85, !noalias !190
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #16
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKb(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.1") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #16
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.1") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !68
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !104
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !147
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = load i16, ptr %15, align 2, !tbaa !166
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %30, label %18

18:                                               ; preds = %7, %18
  %19 = phi i16 [ %26, %18 ], [ %16, %7 ]
  %20 = phi i64 [ %24, %18 ], [ 0, %7 ]
  %21 = phi ptr [ %25, %18 ], [ %15, %7 ]
  %22 = mul i64 %20, 5
  %23 = zext i16 %19 to i64
  %24 = add i64 %22, %23
  %25 = getelementptr inbounds i16, ptr %21, i64 1
  %26 = load i16, ptr %25, align 2, !tbaa !166
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !195

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !124
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !196
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !143
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !83
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !140, !range !197, !noundef !108
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !112
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !83
  store ptr %52, ptr %0, align 8, !tbaa !83
  br i1 %42, label %59, label %74

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !143
  %56 = load i64, ptr %36, align 8, !tbaa !196
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !llvm.loop !198

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !85, !noalias !202
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !69, !noalias !202
  %66 = load ptr, ptr %65, align 8, !tbaa !46, !noalias !202
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !202
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !noalias !202
  store ptr %69, ptr %60, align 8, !tbaa !85, !noalias !202
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !95, !noalias !202
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !98, !noalias !202
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !85, !noalias !202
  store ptr %73, ptr %0, align 8, !tbaa !83, !alias.scope !199
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKb(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.1") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !104
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  store ptr %18, ptr %5, align 8, !tbaa !144
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !141
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !143
  %27 = load ptr, ptr %5, align 8, !tbaa !144
  %28 = load ptr, ptr %27, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !141
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !143
  %41 = load ptr, ptr %5, align 8, !tbaa !144
  %42 = load ptr, ptr %41, align 8, !tbaa !46
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #18
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !66
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !68
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !104
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !104
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !147
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66
  %68 = load i16, ptr %67, align 2, !tbaa !166
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %82, label %70

70:                                               ; preds = %60, %70
  %71 = phi i16 [ %78, %70 ], [ %68, %60 ]
  %72 = phi i64 [ %76, %70 ], [ 0, %60 ]
  %73 = phi ptr [ %77, %70 ], [ %67, %60 ]
  %74 = mul i64 %72, 5
  %75 = zext i16 %71 to i64
  %76 = add i64 %74, %75
  %77 = getelementptr inbounds i16, ptr %73, i64 1
  %78 = load i16, ptr %77, align 2, !tbaa !166
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %70, !llvm.loop !195

80:                                               ; preds = %70
  %81 = add i64 %76, 1
  br label %82

82:                                               ; preds = %80, %60
  %83 = phi i64 [ 1, %60 ], [ %81, %80 ]
  %84 = urem i64 %83, %61
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7
  %86 = call noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %85)
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #16
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !65
  %90 = load ptr, ptr %89, align 8, !tbaa !46
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 48)
  store ptr %93, ptr %6, align 8, !tbaa !112
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !140
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #16
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !85, !noalias !205
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !69, !noalias !205
  %101 = load ptr, ptr %100, align 8, !tbaa !46, !noalias !205
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !205
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !205
  store ptr %104, ptr %96, align 8, !tbaa !85, !noalias !205
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !95, !noalias !205
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !98, !noalias !205
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !85, !noalias !205
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !98, !noalias !208
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !140
  %112 = load ptr, ptr %110, align 8, !tbaa !112
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !65
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %107
  %117 = load ptr, ptr %110, align 8, !tbaa !112
  %118 = getelementptr inbounds %"struct.std::pair", ptr %117, i64 0, i32 1
  %119 = load i8, ptr %3, align 1, !tbaa !75, !range !197, !noundef !108
  store i8 %119, ptr %118, align 1, !tbaa !75
  br label %120

120:                                              ; preds = %107, %116
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !85, !noalias !211
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !69, !noalias !211
  %127 = load ptr, ptr %126, align 8, !tbaa !46, !noalias !211
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !211
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !211
  store ptr %130, ptr %122, align 8, !tbaa !85, !noalias !211
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !95, !noalias !211
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !98, !noalias !211
  br label %133

133:                                              ; preds = %120, %125
  %134 = load ptr, ptr %122, align 8, !tbaa !85, !noalias !211
  %135 = load ptr, ptr %96, align 8, !tbaa !85, !noalias !214
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load ptr, ptr %85, align 8, !tbaa !69, !noalias !214
  %139 = load ptr, ptr %138, align 8, !tbaa !46, !noalias !214
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8, !noalias !214
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %138, i64 noundef 32), !noalias !214
  store ptr %142, ptr %96, align 8, !tbaa !85, !noalias !214
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !95, !noalias !214
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %142, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !98, !noalias !214
  br label %145

145:                                              ; preds = %133, %137
  %146 = load ptr, ptr %96, align 8, !tbaa !85, !noalias !214
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !98, !noalias !217
  %149 = icmp eq ptr %134, %148
  br i1 %149, label %162, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %148, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !95
  %153 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %148, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !98
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %152, ptr %155, align 8, !tbaa !95
  %156 = load ptr, ptr %151, align 8, !tbaa !95
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %156, i64 0, i32 1
  store ptr %154, ptr %157, align 8, !tbaa !98
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %134, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !98
  store ptr %159, ptr %153, align 8, !tbaa !98
  store ptr %134, ptr %151, align 8, !tbaa !95
  %160 = load ptr, ptr %158, align 8, !tbaa !98
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %160, i64 0, i32 2
  store ptr %148, ptr %161, align 8, !tbaa !95
  store ptr %148, ptr %158, align 8, !tbaa !98
  br label %162

162:                                              ; preds = %145, %150
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !124
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %164, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #16
  %166 = load ptr, ptr %122, align 8, !tbaa !85, !noalias !220
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load ptr, ptr %121, align 8, !tbaa !69, !noalias !220
  %170 = load ptr, ptr %169, align 8, !tbaa !46, !noalias !220
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8, !noalias !220
  %173 = call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %169, i64 noundef 32), !noalias !220
  store ptr %173, ptr %122, align 8, !tbaa !85, !noalias !220
  %174 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %173, i64 0, i32 2
  store ptr %173, ptr %174, align 8, !tbaa !95, !noalias !220
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %173, i64 0, i32 1
  store ptr %173, ptr %175, align 8, !tbaa !98, !noalias !220
  br label %176

176:                                              ; preds = %162, %168
  %177 = load ptr, ptr %122, align 8, !tbaa !85, !noalias !220
  call void @llvm.experimental.noalias.scope.decl(metadata !223)
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !98, !noalias !223
  store ptr %179, ptr %7, align 8, !tbaa !83, !alias.scope !223
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %165, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #16
  %180 = load i64, ptr %52, align 8, !tbaa !68
  %181 = add i64 %180, 1
  store i64 %181, ptr %52, align 8, !tbaa !68
  %182 = load ptr, ptr %122, align 8, !tbaa !85, !noalias !226
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = load ptr, ptr %121, align 8, !tbaa !69, !noalias !226
  %186 = load ptr, ptr %185, align 8, !tbaa !46, !noalias !226
  %187 = getelementptr inbounds ptr, ptr %186, i64 2
  %188 = load ptr, ptr %187, align 8, !noalias !226
  %189 = call noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %185, i64 noundef 32), !noalias !226
  store ptr %189, ptr %122, align 8, !tbaa !85, !noalias !226
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %189, i64 0, i32 2
  store ptr %189, ptr %190, align 8, !tbaa !95, !noalias !226
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %189, i64 0, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !98, !noalias !226
  br label %192

192:                                              ; preds = %176, %184
  %193 = load ptr, ptr %122, align 8, !tbaa !85, !noalias !226
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !98, !noalias !229
  store ptr %195, ptr %0, align 8, !tbaa !83
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !104
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !123
  br i1 %12, label %15, label %33

15:                                               ; preds = %4
  %16 = icmp ult i64 %14, %8
  br i1 %16, label %17, label %18

17:                                               ; preds = %15
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %8)
  br label %18

18:                                               ; preds = %15, %17
  %19 = icmp eq i64 %2, 0
  br i1 %19, label %126, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %9, align 8, !tbaa !124
  %22 = load i64, ptr %6, align 8, !tbaa !104
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !70
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !104
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !104
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !232

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %36 = load ptr, ptr %0, align 8, !tbaa !70
  store ptr %36, ptr %5, align 8, !tbaa !70
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !104
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !123
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !46
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !124
  %45 = load i64, ptr %37, align 8, !tbaa !104
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !124
  %50 = load i64, ptr %37, align 8, !tbaa !104
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !124
  %54 = load i64, ptr %37, align 8, !tbaa !104
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !124
  %57 = load i64, ptr %6, align 8, !tbaa !104
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !70
  %61 = load i64, ptr %6, align 8, !tbaa !104
  %62 = load i64, ptr %13, align 8, !tbaa !123
  %63 = load ptr, ptr %9, align 8, !tbaa !124
  %64 = load ptr, ptr %5, align 8, !tbaa !70
  store ptr %64, ptr %0, align 8, !tbaa !70
  %65 = load i64, ptr %37, align 8, !tbaa !104
  store i64 %65, ptr %6, align 8, !tbaa !104
  %66 = load i64, ptr %38, align 8, !tbaa !123
  store i64 %66, ptr %13, align 8, !tbaa !123
  %67 = load ptr, ptr %44, align 8, !tbaa !124
  store ptr %67, ptr %9, align 8, !tbaa !124
  store ptr %60, ptr %5, align 8, !tbaa !70
  store i64 %61, ptr %37, align 8, !tbaa !104
  store i64 %62, ptr %38, align 8, !tbaa !123
  store ptr %63, ptr %44, align 8, !tbaa !124
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %69

70:                                               ; preds = %33
  %71 = ptrtoint ptr %11 to i64
  %72 = ptrtoint ptr %1 to i64
  %73 = sub i64 %71, %72
  %74 = ashr exact i64 %73, 5
  %75 = icmp ugt i64 %74, %2
  br i1 %75, label %96, label %76

76:                                               ; preds = %70
  %77 = sub i64 %2, %74
  %78 = icmp eq i64 %74, %2
  br i1 %78, label %79, label %81

79:                                               ; preds = %81, %76
  %80 = icmp eq ptr %11, %1
  br i1 %80, label %85, label %87

81:                                               ; preds = %76, %81
  %82 = phi i64 [ %83, %81 ], [ 0, %76 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %83 = add nuw i64 %82, 1
  %84 = icmp eq i64 %83, %77
  br i1 %84, label %79, label %81, !llvm.loop !233

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !234

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !235

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !236

104:                                              ; preds = %100, %96
  %105 = ptrtoint ptr %98 to i64
  %106 = sub i64 %105, %72
  %107 = ashr exact i64 %106, 5
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %104, %109
  %110 = phi i64 [ %116, %109 ], [ %107, %104 ]
  %111 = phi ptr [ %114, %109 ], [ %11, %104 ]
  %112 = phi ptr [ %113, %109 ], [ %98, %104 ]
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !237

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !235

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !68
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  store ptr %11, ptr %3, align 8, !tbaa !144
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !141
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !143
  %20 = load ptr, ptr %3, align 8, !tbaa !144
  %21 = load ptr, ptr %20, align 8, !tbaa !46
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #18
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #16
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !85, !noalias !238
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !69, !noalias !238
  %34 = load ptr, ptr %33, align 8, !tbaa !46, !noalias !238
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !238
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !85, !noalias !238
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !95, !noalias !238
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !98, !noalias !238
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !241, !noalias !108
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !95, !noalias !108
  store ptr %47, ptr %4, align 8, !tbaa !83
  %48 = load ptr, ptr %29, align 8, !tbaa !85, !noalias !242
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !69, !noalias !242
  %52 = load ptr, ptr %51, align 8, !tbaa !46, !noalias !242
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !242
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !85, !noalias !242
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !95, !noalias !242
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !98, !noalias !242
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !85, !noalias !242
  %61 = load ptr, ptr %4, align 8, !tbaa !83
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !112
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !147
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = load i16, ptr %70, align 2, !tbaa !166
  %72 = icmp eq i16 %71, 0
  br i1 %72, label %83, label %73

73:                                               ; preds = %63, %73
  %74 = phi i16 [ %81, %73 ], [ %71, %63 ]
  %75 = phi i64 [ %79, %73 ], [ 0, %63 ]
  %76 = phi ptr [ %80, %73 ], [ %70, %63 ]
  %77 = mul i64 %75, 5
  %78 = zext i16 %74 to i64
  %79 = add i64 %77, %78
  %80 = getelementptr inbounds i16, ptr %76, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !166
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !195

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !124
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !245

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !141
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !143
  %95 = load ptr, ptr %3, align 8, !tbaa !144
  %96 = load ptr, ptr %95, align 8, !tbaa !46
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #18
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %127

103:                                              ; preds = %32
  %104 = landingpad { ptr, i32 }
          cleanup
  br label %125

105:                                              ; preds = %50
  %106 = landingpad { ptr, i32 }
          cleanup
  br label %125

107:                                              ; preds = %83
  %108 = landingpad { ptr, i32 }
          cleanup
  br label %125

109:                                              ; preds = %59
  %110 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  %111 = load ptr, ptr %110, align 8, !tbaa !70
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !104
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !123
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !124
  %118 = load ptr, ptr %2, align 8, !tbaa !70
  store ptr %118, ptr %110, align 8, !tbaa !70
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !104
  store i64 %120, ptr %112, align 8, !tbaa !104
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !123
  store i64 %122, ptr %114, align 8, !tbaa !123
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !124
  store ptr %124, ptr %116, align 8, !tbaa !124
  store ptr %111, ptr %2, align 8, !tbaa !70
  store i64 %113, ptr %119, align 8, !tbaa !104
  store i64 %115, ptr %121, align 8, !tbaa !123
  store ptr %117, ptr %123, align 8, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #16
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #16
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #16
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !69
  %7 = load ptr, ptr %6, align 8, !tbaa !46
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !85
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !95
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !98
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !85
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !95
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !69
  %20 = load ptr, ptr %19, align 8, !tbaa !46
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !85
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !95
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !98
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !85
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat align 2 !prof !45 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !85, !noalias !246
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !69, !noalias !246
  %8 = load ptr, ptr %7, align 8, !tbaa !46, !noalias !246
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !246
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !246
  store ptr %11, ptr %3, align 8, !tbaa !85, !noalias !246
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !95, !noalias !246
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !98, !noalias !246
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !85, !noalias !246
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !136
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !95
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !69
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !136
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !249
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !98
  store ptr %33, ptr %31, align 8, !tbaa !241
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !241
  %35 = load ptr, ptr %32, align 8, !tbaa !98
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !95
  store ptr %29, ptr %32, align 8, !tbaa !98
  store ptr %30, ptr %16, align 8, !tbaa !136
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !104
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !124
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !123
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %139, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !124
  %28 = load i64, ptr %12, align 8, !tbaa !104
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !70
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !104
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !104
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !250

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !70
  store ptr %42, ptr %5, align 8, !tbaa !70
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !104
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !123
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !46
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !124
  %51 = load i64, ptr %43, align 8, !tbaa !104
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !124
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !124
  %56 = load i64, ptr %43, align 8, !tbaa !104
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !124
  %60 = load i64, ptr %43, align 8, !tbaa !104
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !124
  %63 = load i64, ptr %12, align 8, !tbaa !104
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !70
  %67 = load i64, ptr %12, align 8, !tbaa !104
  %68 = load i64, ptr %19, align 8, !tbaa !123
  %69 = load ptr, ptr %15, align 8, !tbaa !124
  %70 = load ptr, ptr %5, align 8, !tbaa !70
  store ptr %70, ptr %0, align 8, !tbaa !70
  %71 = load i64, ptr %43, align 8, !tbaa !104
  store i64 %71, ptr %12, align 8, !tbaa !104
  %72 = load i64, ptr %44, align 8, !tbaa !123
  store i64 %72, ptr %19, align 8, !tbaa !123
  %73 = load ptr, ptr %50, align 8, !tbaa !124
  store ptr %73, ptr %15, align 8, !tbaa !124
  store ptr %66, ptr %5, align 8, !tbaa !70
  store i64 %67, ptr %43, align 8, !tbaa !104
  store i64 %68, ptr %44, align 8, !tbaa !123
  store ptr %69, ptr %50, align 8, !tbaa !124
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %106, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %87)
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !251

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !252

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !253

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !254

114:                                              ; preds = %110, %106
  %115 = ptrtoint ptr %108 to i64
  %116 = sub i64 %115, %78
  %117 = ashr exact i64 %116, 5
  %118 = icmp sgt i64 %117, 0
  br i1 %118, label %121, label %119

119:                                              ; preds = %121, %114
  %120 = icmp sgt i64 %9, 0
  br i1 %120, label %130, label %139

121:                                              ; preds = %114, %121
  %122 = phi i64 [ %128, %121 ], [ %117, %114 ]
  %123 = phi ptr [ %126, %121 ], [ %17, %114 ]
  %124 = phi ptr [ %125, %121 ], [ %108, %114 ]
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !237

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !253

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !123
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !104
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !104
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %22 = load ptr, ptr %0, align 8, !tbaa !70
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !70
  %25 = load i64, ptr %4, align 8, !tbaa !104
  %26 = load i64, ptr %6, align 8, !tbaa !123
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !124
  %29 = load ptr, ptr %3, align 8, !tbaa !70
  store ptr %29, ptr %0, align 8, !tbaa !70
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !104
  store i64 %31, ptr %4, align 8, !tbaa !104
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !123
  store i64 %33, ptr %6, align 8, !tbaa !123
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !124
  store ptr %35, ptr %27, align 8, !tbaa !124
  store ptr %24, ptr %3, align 8, !tbaa !70
  store i64 %25, ptr %30, align 8, !tbaa !104
  store i64 %26, ptr %32, align 8, !tbaa !123
  store ptr %28, ptr %34, align 8, !tbaa !124
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !70
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !104
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !123
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !124
  %12 = load ptr, ptr %3, align 8, !tbaa !70
  store ptr %12, ptr %0, align 8, !tbaa !70
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !104
  store i64 %14, ptr %6, align 8, !tbaa !104
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !123
  store i64 %16, ptr %8, align 8, !tbaa !123
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !124
  store ptr %18, ptr %10, align 8, !tbaa !124
  store ptr %5, ptr %3, align 8, !tbaa !70
  store i64 %7, ptr %13, align 8, !tbaa !104
  store i64 %9, ptr %15, align 8, !tbaa !123
  store ptr %11, ptr %17, align 8, !tbaa !124
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %2, ptr %0, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !104
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !70
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !104
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !123
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !124
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !124
  %24 = load i64, ptr %9, align 8, !tbaa !104
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !70
  %28 = load i64, ptr %6, align 8, !tbaa !104
  %29 = load i64, ptr %7, align 8, !tbaa !123
  %30 = load ptr, ptr %8, align 8, !tbaa !124
  %31 = load ptr, ptr %5, align 8, !tbaa !70
  store ptr %31, ptr %0, align 8, !tbaa !70
  %32 = load i64, ptr %14, align 8, !tbaa !104
  store i64 %32, ptr %6, align 8, !tbaa !104
  %33 = load i64, ptr %15, align 8, !tbaa !123
  store i64 %33, ptr %7, align 8, !tbaa !123
  %34 = load ptr, ptr %21, align 8, !tbaa !124
  store ptr %34, ptr %8, align 8, !tbaa !124
  store ptr %27, ptr %5, align 8, !tbaa !70
  store i64 %28, ptr %14, align 8, !tbaa !104
  store i64 %29, ptr %15, align 8, !tbaa !123
  store ptr %30, ptr %21, align 8, !tbaa !124
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !46
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !124
  store i64 %3, ptr %7, align 8, !tbaa !123
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !144
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !196
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !144
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !196
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !141
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !46
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !143
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !143
  %24 = load i64, ptr %9, align 8, !tbaa !196
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !144
  %28 = load i64, ptr %6, align 8, !tbaa !196
  %29 = load i64, ptr %7, align 8, !tbaa !141
  %30 = load ptr, ptr %8, align 8, !tbaa !143
  %31 = load ptr, ptr %5, align 8, !tbaa !144
  store ptr %31, ptr %0, align 8, !tbaa !144
  %32 = load i64, ptr %14, align 8, !tbaa !196
  store i64 %32, ptr %6, align 8, !tbaa !196
  %33 = load i64, ptr %15, align 8, !tbaa !141
  store i64 %33, ptr %7, align 8, !tbaa !141
  %34 = load ptr, ptr %21, align 8, !tbaa !143
  store ptr %34, ptr %8, align 8, !tbaa !143
  store ptr %27, ptr %5, align 8, !tbaa !144
  store i64 %28, ptr %14, align 8, !tbaa !196
  store i64 %29, ptr %15, align 8, !tbaa !141
  store ptr %30, ptr %21, align 8, !tbaa !143
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !141
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !143
  %50 = load ptr, ptr %5, align 8, !tbaa !144
  %51 = load ptr, ptr %50, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !46
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !143
  store i64 %3, ptr %7, align 8, !tbaa !141
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !196
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !143
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !141
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %161, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !143
  %28 = load i64, ptr %12, align 8, !tbaa !196
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !83
  store ptr %34, ptr %32, align 8, !tbaa !83
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !255

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  %42 = load ptr, ptr %0, align 8, !tbaa !144
  store ptr %42, ptr %5, align 8, !tbaa !144
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !196
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !141
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !46
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !143
  %51 = load i64, ptr %43, align 8, !tbaa !196
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !143
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !143
  %56 = load i64, ptr %43, align 8, !tbaa !196
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !143
  %60 = load i64, ptr %43, align 8, !tbaa !196
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !143
  %63 = load i64, ptr %12, align 8, !tbaa !196
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !144
  %67 = load i64, ptr %12, align 8, !tbaa !196
  %68 = load i64, ptr %19, align 8, !tbaa !141
  %69 = load ptr, ptr %15, align 8, !tbaa !143
  %70 = load ptr, ptr %5, align 8, !tbaa !144
  store ptr %70, ptr %0, align 8, !tbaa !144
  %71 = load i64, ptr %43, align 8, !tbaa !196
  store i64 %71, ptr %12, align 8, !tbaa !196
  %72 = load i64, ptr %44, align 8, !tbaa !141
  store i64 %72, ptr %19, align 8, !tbaa !141
  %73 = load ptr, ptr %50, align 8, !tbaa !143
  store ptr %73, ptr %15, align 8, !tbaa !143
  store ptr %66, ptr %5, align 8, !tbaa !144
  store i64 %67, ptr %43, align 8, !tbaa !196
  store i64 %68, ptr %44, align 8, !tbaa !141
  store ptr %69, ptr %50, align 8, !tbaa !143
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !141
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !143
  %89 = load ptr, ptr %5, align 8, !tbaa !144
  %90 = load ptr, ptr %89, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %84

97:                                               ; preds = %39
  %98 = ptrtoint ptr %17 to i64
  %99 = ptrtoint ptr %1 to i64
  %100 = sub i64 %98, %99
  %101 = icmp ugt i64 %100, %8
  br i1 %101, label %127, label %102

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !256

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !257

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !83
  store ptr %122, ptr %120, align 8, !tbaa !83
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !258

127:                                              ; preds = %97
  %128 = sub nsw i64 0, %9
  %129 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %17, i64 %128
  %130 = icmp eq ptr %3, %2
  br i1 %130, label %135, label %131

131:                                              ; preds = %127, %131
  %132 = phi ptr [ %133, %131 ], [ %129, %127 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %132)
  %133 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %132, i64 1
  %134 = icmp eq ptr %133, %17
  br i1 %134, label %135, label %131, !llvm.loop !259

135:                                              ; preds = %131, %127
  %136 = ptrtoint ptr %129 to i64
  %137 = sub i64 %136, %99
  %138 = ashr exact i64 %137, 3
  %139 = icmp sgt i64 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %142, %135
  %141 = icmp sgt i64 %9, 0
  br i1 %141, label %151, label %161

142:                                              ; preds = %135, %142
  %143 = phi i64 [ %149, %142 ], [ %138, %135 ]
  %144 = phi ptr [ %147, %142 ], [ %17, %135 ]
  %145 = phi ptr [ %146, %142 ], [ %129, %135 ]
  %146 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %145, i64 -1
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %144, i64 -1
  %148 = load ptr, ptr %146, align 8, !tbaa !83
  store ptr %148, ptr %147, align 8, !tbaa !83
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !260

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !83
  store ptr %155, ptr %153, align 8, !tbaa !83
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !258

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !196
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !196
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !141
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !83
  store ptr %13, ptr %12, align 8, !tbaa !83
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !196
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %21 = load ptr, ptr %0, align 8, !tbaa !144
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !144
  %24 = load i64, ptr %4, align 8, !tbaa !196
  %25 = load i64, ptr %6, align 8, !tbaa !141
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !143
  %28 = load ptr, ptr %3, align 8, !tbaa !144
  store ptr %28, ptr %0, align 8, !tbaa !144
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !196
  store i64 %30, ptr %4, align 8, !tbaa !196
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !141
  store i64 %32, ptr %6, align 8, !tbaa !141
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !143
  store ptr %34, ptr %26, align 8, !tbaa !143
  store ptr %23, ptr %3, align 8, !tbaa !144
  store i64 %24, ptr %29, align 8, !tbaa !196
  store i64 %25, ptr %31, align 8, !tbaa !141
  store ptr %27, ptr %33, align 8, !tbaa !143
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !141
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !143
  %52 = load ptr, ptr %3, align 8, !tbaa !144
  %53 = load ptr, ptr %52, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %4 = load ptr, ptr %0, align 8, !tbaa !144
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !144
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !196
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !141
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !143
  %12 = load ptr, ptr %3, align 8, !tbaa !144
  store ptr %12, ptr %0, align 8, !tbaa !144
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !196
  store i64 %14, ptr %6, align 8, !tbaa !196
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !141
  store i64 %16, ptr %8, align 8, !tbaa !141
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  store ptr %18, ptr %10, align 8, !tbaa !143
  store ptr %5, ptr %3, align 8, !tbaa !144
  store i64 %7, ptr %13, align 8, !tbaa !196
  store i64 %9, ptr %15, align 8, !tbaa !141
  store ptr %11, ptr %17, align 8, !tbaa !143
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !46
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
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !141
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !196
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #16
  %12 = load ptr, ptr %0, align 8, !tbaa !144
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !144
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !196
  %16 = load i64, ptr %6, align 8, !tbaa !141
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !143
  %19 = load ptr, ptr %3, align 8, !tbaa !144
  store ptr %19, ptr %0, align 8, !tbaa !144
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !196
  store i64 %21, ptr %14, align 8, !tbaa !196
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !141
  store i64 %23, ptr %6, align 8, !tbaa !141
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !143
  store ptr %25, ptr %17, align 8, !tbaa !143
  store ptr %13, ptr %3, align 8, !tbaa !144
  store i64 %15, ptr %20, align 8, !tbaa !196
  store i64 %16, ptr %22, align 8, !tbaa !141
  store ptr %18, ptr %24, align 8, !tbaa !143
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !46
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #18
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #16
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !143
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !196
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !143
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !196
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !196
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !143
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !143
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !83
  store ptr %68, ptr %66, align 8, !tbaa !83
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !258

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.0", align 8
  store ptr %3, ptr %0, align 8, !tbaa !70
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #16
  store ptr %3, ptr %5, align 8, !tbaa !70
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !70
  %14 = load i64, ptr %6, align 8, !tbaa !104
  %15 = load i64, ptr %12, align 8, !tbaa !123
  %16 = load ptr, ptr %11, align 8, !tbaa !124
  %17 = load ptr, ptr %5, align 8, !tbaa !70
  store ptr %17, ptr %0, align 8, !tbaa !70
  %18 = load i64, ptr %7, align 8, !tbaa !104
  store i64 %18, ptr %6, align 8, !tbaa !104
  %19 = load i64, ptr %10, align 8, !tbaa !123
  store i64 %19, ptr %12, align 8, !tbaa !123
  %20 = load ptr, ptr %9, align 8, !tbaa !124
  store ptr %20, ptr %11, align 8, !tbaa !124
  store ptr %13, ptr %5, align 8, !tbaa !70
  store i64 %14, ptr %7, align 8, !tbaa !104
  store i64 %15, ptr %10, align 8, !tbaa !123
  store ptr %16, ptr %9, align 8, !tbaa !124
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #16
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #16
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #14

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #13

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { builtin nounwind }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!44}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!38 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!40 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!41 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!43 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!44 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!45 = !{!"function_entry_count", i64 0}
!46 = !{!47, !47, i64 0}
!47 = !{!"vtable pointer", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !53, i64 168}
!50 = !{!"_ZTSN11xalanc_1_1024ExtensionFunctionHandlerE", !51, i64 8, !51, i64 48, !51, i64 88, !51, i64 128, !53, i64 168, !57, i64 176, !64, i64 312}
!51 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !52, i64 0, !56, i64 32}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !53, i64 0, !55, i64 8, !55, i64 16, !53, i64 24}
!53 = !{!"any pointer", !54, i64 0}
!54 = !{!"omnipotent char", !48, i64 0}
!55 = !{!"long", !54, i64 0}
!56 = !{!"int", !54, i64 0}
!57 = !{!"_ZTSN11xalanc_1_108XalanSetINS_14XalanDOMStringEEE", !58, i64 0}
!58 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEEE", !59, i64 0, !60, i64 1, !53, i64 8, !61, i64 16, !55, i64 24, !55, i64 32, !62, i64 40, !62, i64 64, !63, i64 88, !55, i64 120, !55, i64 128}
!59 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!60 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!61 = !{!"float", !54, i64 0}
!62 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !53, i64 0, !53, i64 8, !53, i64 16}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEE", !53, i64 0, !55, i64 8, !55, i64 16, !53, i64 24}
!64 = !{!"bool", !54, i64 0}
!65 = !{!58, !53, i64 8}
!66 = !{!58, !61, i64 16}
!67 = !{!58, !55, i64 24}
!68 = !{!58, !55, i64 32}
!69 = !{!62, !53, i64 0}
!70 = !{!63, !53, i64 0}
!71 = !{!58, !55, i64 128}
!72 = !{!50, !64, i64 312}
!73 = !{!51, !56, i64 32}
!74 = !{!52, !53, i64 0}
!75 = !{!64, !64, i64 0}
!76 = !{!52, !55, i64 16}
!77 = !{!52, !53, i64 24}
!78 = !{!79, !81}
!79 = distinct !{!79, !80, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_: argument 0"}
!80 = distinct !{!80, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_"}
!81 = distinct !{!81, !82, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE4findERKS1_: argument 0"}
!82 = distinct !{!82, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE4findERKS1_"}
!83 = !{!84, !53, i64 0}
!84 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEE", !53, i64 0}
!85 = !{!62, !53, i64 8}
!86 = !{!87, !89, !91, !93}
!87 = distinct !{!87, !88, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!88 = distinct !{!88, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!89 = distinct !{!89, !90, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!90 = distinct !{!90, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!91 = distinct !{!91, !92, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!92 = distinct !{!92, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!93 = distinct !{!93, !94, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE3endEv: argument 0"}
!94 = distinct !{!94, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE3endEv"}
!95 = !{!96, !53, i64 24}
!96 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !97, i64 0, !53, i64 16, !53, i64 24}
!97 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE5EntryE", !53, i64 0, !64, i64 8}
!98 = !{!96, !53, i64 16}
!99 = !{!100, !53, i64 0}
!100 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !53, i64 0}
!101 = !{!"function_entry_count", i64 42470003}
!102 = !{!"branch_weights", i32 52000, i32 42418003}
!103 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!104 = !{!63, !55, i64 8}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!107 = distinct !{!107, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!108 = !{}
!109 = !{!110}
!110 = distinct !{!110, !111, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!111 = distinct !{!111, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!112 = !{!97, !53, i64 0}
!113 = distinct !{!113, !114, !115}
!114 = !{!"llvm.loop.mustprogress"}
!115 = !{!"llvm.loop.unroll.disable"}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!118 = distinct !{!118, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!119 = !{!120, !117}
!120 = distinct !{!120, !121, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!121 = distinct !{!121, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!122 = distinct !{!122, !114, !115}
!123 = !{!63, !55, i64 16}
!124 = !{!63, !53, i64 24}
!125 = distinct !{!125, !114, !115}
!126 = !{!127}
!127 = distinct !{!127, !128, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!128 = distinct !{!128, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!129 = !{!130}
!130 = distinct !{!130, !131, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!131 = distinct !{!131, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!132 = !{!133}
!133 = distinct !{!133, !134, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEppEi: argument 0"}
!134 = distinct !{!134, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEppEi"}
!135 = distinct !{!135, !114, !115}
!136 = !{!62, !53, i64 16}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!139 = distinct !{!139, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!140 = !{!97, !64, i64 8}
!141 = !{!142, !55, i64 16}
!142 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEE", !53, i64 0, !55, i64 8, !55, i64 16, !53, i64 24}
!143 = !{!142, !53, i64 24}
!144 = !{!142, !53, i64 0}
!145 = !{!"function_entry_count", i64 41614}
!146 = !{!"branch_weights", i32 0, i32 41614}
!147 = !{!52, !55, i64 8}
!148 = !{!"branch_weights", i32 12, i32 41602}
!149 = !{!"branch_weights", i32 5, i32 7}
!150 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!151 = !{!"branch_weights", i32 354, i32 41248}
!152 = !{!"branch_weights", i32 40889, i32 359}
!153 = !{!"branch_weights", i32 40581, i32 1021}
!154 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!155 = !{!"function_entry_count", i64 22}
!156 = !{!"branch_weights", i32 64551590, i32 18}
!157 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!158 = !{!"branch_weights", i32 18, i32 0}
!159 = !{!"branch_weights", i32 4, i32 64551586}
!160 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!161 = !{!"function_entry_count", i64 155828046}
!162 = !{!"branch_weights", i32 0, i32 155828046}
!163 = !{!"branch_weights", i32 133170777, i32 22657269}
!164 = !{!"branch_weights", i32 20, i32 133170757}
!165 = !{!"branch_weights", i32 1, i32 19024395}
!166 = !{!167, !167, i64 0}
!167 = !{!"short", !54, i64 0}
!168 = !{!"branch_weights", i32 19024395, i32 -26420601}
!169 = distinct !{!169, !114, !115}
!170 = !{!"branch_weights", i32 20748786, i32 1908483}
!171 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!172 = !{!"branch_weights", i32 20748786, i32 0}
!173 = !{!"branch_weights", i32 0, i32 20748786}
!174 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!175 = !{!"branch_weights", i32 0, i32 1908483}
!176 = !{!"branch_weights", i32 1, i32 1908482}
!177 = !{!"branch_weights", i32 1908482, i32 49797853}
!178 = distinct !{!178, !114, !115}
!179 = !{!"branch_weights", i32 1908482, i32 1}
!180 = distinct !{!180, !114, !115}
!181 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!182 = distinct !{!182, !114, !115}
!183 = !{!"function_entry_count", i64 124150652}
!184 = !{!"branch_weights", i32 124150652, i32 0}
!185 = !{!"function_entry_count", i64 64551586}
!186 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!187 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!188 = !{!"branch_weights", i32 42418193, i32 22133393}
!189 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!190 = !{!191, !193}
!191 = distinct !{!191, !192, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!192 = distinct !{!192, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!193 = distinct !{!193, !194, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!194 = distinct !{!194, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!195 = distinct !{!195, !114, !115}
!196 = !{!142, !55, i64 8}
!197 = !{i8 0, i8 2}
!198 = distinct !{!198, !114, !115}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!201 = distinct !{!201, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!202 = !{!203, !200}
!203 = distinct !{!203, !204, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!204 = distinct !{!204, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!205 = !{!206}
!206 = distinct !{!206, !207, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!207 = distinct !{!207, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!210 = distinct !{!210, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!213 = distinct !{!213, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!216 = distinct !{!216, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!217 = !{!218}
!218 = distinct !{!218, !219, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!219 = distinct !{!219, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!220 = !{!221}
!221 = distinct !{!221, !222, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!222 = distinct !{!222, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!223 = !{!224}
!224 = distinct !{!224, !225, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!225 = distinct !{!225, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!226 = !{!227}
!227 = distinct !{!227, !228, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!228 = distinct !{!228, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!229 = !{!230}
!230 = distinct !{!230, !231, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!231 = distinct !{!231, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!232 = distinct !{!232, !114, !115}
!233 = distinct !{!233, !114, !115}
!234 = distinct !{!234, !114, !115}
!235 = distinct !{!235, !114, !115}
!236 = distinct !{!236, !114, !115}
!237 = distinct !{!237, !114, !115}
!238 = !{!239}
!239 = distinct !{!239, !240, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!240 = distinct !{!240, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!241 = !{!53, !53, i64 0}
!242 = !{!243}
!243 = distinct !{!243, !244, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!244 = distinct !{!244, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!245 = distinct !{!245, !114, !115}
!246 = !{!247}
!247 = distinct !{!247, !248, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!248 = distinct !{!248, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!249 = !{i64 0, i64 8, !241, i64 8, i64 1, !75}
!250 = distinct !{!250, !114, !115}
!251 = distinct !{!251, !114, !115}
!252 = distinct !{!252, !114, !115}
!253 = distinct !{!253, !114, !115}
!254 = distinct !{!254, !114, !115}
!255 = distinct !{!255, !114, !115}
!256 = distinct !{!256, !114, !115}
!257 = distinct !{!257, !114, !115}
!258 = distinct !{!258, !114, !115}
!259 = distinct !{!259, !114, !115}
!260 = distinct !{!260, !114, !115}
