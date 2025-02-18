; ModuleID = 'FunctionDistinct.cpp'
source_filename = "FunctionDistinct.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XObjectPtr" = type { ptr }
%"struct.xalanc_1_10::XalanMapIterator.3" = type { %"struct.xalanc_1_10::XalanListIteratorBase" }
%"struct.xalanc_1_10::XalanListIteratorBase" = type { ptr }
%"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList" = type { ptr, ptr }
%"class.xalanc_1_10::XalanSet" = type { %"class.xalanc_1_10::XalanMap" }
%"class.xalanc_1_10::XalanMap" = type { %"struct.xalanc_1_10::DOMStringHashFunction", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.2", i64, i64 }
%"struct.xalanc_1_10::DOMStringHashFunction" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::ExecutionContext" = type { ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.0", i32, [4 x i8] }>
%"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node" = type { %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr, ptr }
%"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry" = type <{ ptr, i8, [7 x i8] }>
%"class.xalanc_1_10::MutableNodeRefList" = type <{ %"class.xalanc_1_10::NodeRefList", i32, [4 x i8] }>
%"class.xalanc_1_10::NodeRefList" = type { %"class.xalanc_1_10::NodeRefListBase", %"class.xalanc_1_10::XalanVector.1" }
%"class.xalanc_1_10::NodeRefListBase" = type { ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XPathExecutionContext" = type { %"class.xalanc_1_10::ExecutionContext", ptr }
%"class.xalanc_1_10::XalanVector.4" = type { ptr, i64, i64, ptr }
%"struct.std::pair" = type { %"class.xalanc_1_10::XalanDOMString", i8, [7 x i8] }

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev = comdat any

$_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_bEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_ = comdat any

$_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKb = comdat any

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

@_ZTVN11xalanc_1_1016FunctionDistinctE = dso_local unnamed_addr constant { [11 x ptr] } { [11 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1016FunctionDistinctE, ptr @_ZN11xalanc_1_1016FunctionDistinctD2Ev, ptr @_ZN11xalanc_1_1016FunctionDistinctD0Ev, ptr @_ZNK11xalanc_1_1016FunctionDistinct7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE, ptr @_ZNK11xalanc_1_1016FunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1016FunctionDistinct8getErrorERNS_14XalanDOMStringE] }, align 8
@.str = private unnamed_addr constant [9 x i8] c"distinct\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1016FunctionDistinctE = dso_local constant [34 x i8] c"N11xalanc_1_1016FunctionDistinctE\00", align 1
@_ZTIN11xalanc_1_108FunctionE = external constant ptr
@_ZTIN11xalanc_1_1016FunctionDistinctE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1016FunctionDistinctE, ptr @_ZTIN11xalanc_1_108FunctionE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external local_unnamed_addr constant i16, align 2

@_ZN11xalanc_1_1016FunctionDistinctC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016FunctionDistinctC2Ev
@_ZN11xalanc_1_1016FunctionDistinctD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1016FunctionDistinctD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionDistinctC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionDistinctE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  ret void
}

declare void @_ZN11xalanc_1_108FunctionC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionDistinctD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !39 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1016FunctionDistinctD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 !prof !43 {
  tail call void @_ZN11xalanc_1_108FunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  tail call void @_ZdlPv(ptr noundef %0) #14
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZNK11xalanc_1_1016FunctionDistinct7executeERNS_21XPathExecutionContextEPNS_9XalanNodeERKNS_11XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS6_EEEEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind noalias writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef %3, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %4, ptr noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %7 = alloca i8, align 1
  %8 = alloca %"struct.xalanc_1_10::XalanMapIterator.3", align 8
  %9 = alloca %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", align 8
  %10 = alloca %"class.xalanc_1_10::XalanSet", align 8
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !44
  %13 = icmp eq i64 %12, 1
  br i1 %13, label %44, label %14

14:                                               ; preds = %6
  %15 = load ptr, ptr %2, align 8, !tbaa !40
  %16 = getelementptr inbounds ptr, ptr %15, i64 23
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %19 = load ptr, ptr %1, align 8, !tbaa !40
  %20 = getelementptr inbounds ptr, ptr %19, i64 8
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %23 unwind label %35

23:                                               ; preds = %14
  %24 = load ptr, ptr %2, align 8, !tbaa !40
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef %3, ptr noundef %5)
          to label %27 unwind label %35

27:                                               ; preds = %23
  %28 = load ptr, ptr %2, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 24
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef zeroext i1 %30(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %44 unwind label %32

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          catch ptr null
  %34 = extractvalue { ptr, i32 } %33, 0
  tail call void @__clang_call_terminate(ptr %34) #15
  unreachable

35:                                               ; preds = %23, %14
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load ptr, ptr %2, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 24
  %39 = load ptr, ptr %38, align 8
  %40 = invoke noundef zeroext i1 %39(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %18)
          to label %193 unwind label %41

41:                                               ; preds = %35
  %42 = landingpad { ptr, i32 }
          catch ptr null
  %43 = extractvalue { ptr, i32 } %42, 0
  tail call void @__clang_call_terminate(ptr %43) #15
  unreachable

44:                                               ; preds = %27, %6
  %45 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %4, i64 0, i32 3
  %46 = load ptr, ptr %45, align 8, !tbaa !49
  %47 = load ptr, ptr %46, align 8, !tbaa !50
  %48 = load ptr, ptr %47, align 8, !tbaa !40
  %49 = getelementptr inbounds ptr, ptr %48, i64 13
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef nonnull align 8 dereferenceable(8) ptr %50(ptr noundef nonnull align 8 dereferenceable(24) %47)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #13
  store ptr %2, ptr %9, align 8, !tbaa !52
  %52 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext::BorrowReturnMutableNodeRefList", ptr %9, i64 0, i32 1
  %53 = load ptr, ptr %2, align 8, !tbaa !40
  %54 = getelementptr inbounds ptr, ptr %53, i64 21
  %55 = load ptr, ptr %54, align 8
  %56 = tail call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(24) %2)
  store ptr %56, ptr %52, align 8, !tbaa !54
  %57 = load ptr, ptr %51, align 8, !tbaa !40
  %58 = getelementptr inbounds ptr, ptr %57, i64 3
  %59 = load ptr, ptr %58, align 8
  %60 = invoke noundef i32 %59(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %61 unwind label %69

61:                                               ; preds = %44
  switch i32 %60, label %71 [
    i32 1, label %62
    i32 0, label %156
  ]

62:                                               ; preds = %61
  %63 = load ptr, ptr %52, align 8, !tbaa !54
  %64 = load ptr, ptr %51, align 8, !tbaa !40
  %65 = getelementptr inbounds ptr, ptr %64, i64 2
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef 0)
          to label %68 unwind label %69

68:                                               ; preds = %62
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44) %63, ptr noundef %67)
          to label %156 unwind label %69

69:                                               ; preds = %156, %68, %62, %44
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %178

71:                                               ; preds = %61
  %72 = load ptr, ptr %2, align 8, !tbaa !40
  %73 = getelementptr inbounds ptr, ptr %72, i64 23
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef nonnull align 8 dereferenceable(36) ptr %74(ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %76 unwind label %102

76:                                               ; preds = %71
  call void @llvm.lifetime.start.p0(i64 136, ptr nonnull %10) #13
  %77 = getelementptr inbounds %"class.xalanc_1_10::ExecutionContext", ptr %2, i64 0, i32 1
  %78 = load ptr, ptr %77, align 8, !tbaa !55
  %79 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 2
  store ptr %78, ptr %79, align 8, !tbaa !57
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 3
  store float 7.500000e-01, ptr %80, align 8, !tbaa !64
  %81 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 4
  store i64 29, ptr %81, align 8, !tbaa !65
  %82 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 5
  store i64 0, ptr %82, align 8, !tbaa !66
  %83 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 6
  store ptr %78, ptr %83, align 8, !tbaa !67
  %84 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 6, i32 1
  %85 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %84, i8 0, i64 16, i1 false)
  store ptr %78, ptr %85, align 8, !tbaa !67
  %86 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 7, i32 1
  %87 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %86, i8 0, i64 16, i1 false)
  store ptr %78, ptr %87, align 8, !tbaa !68
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 8, i32 1
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %10, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %88, i8 0, i64 32, i1 false)
  store i64 50, ptr %89, align 8, !tbaa !69
  %90 = icmp eq i32 %60, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %76
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %75, i64 0, i32 1
  %93 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %75, i64 0, i32 1
  br label %104

94:                                               ; preds = %144, %76
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %10) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %10) #13
  %95 = load ptr, ptr %2, align 8, !tbaa !40
  %96 = getelementptr inbounds ptr, ptr %95, i64 24
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef zeroext i1 %97(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %156 unwind label %99

99:                                               ; preds = %94
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #15
  unreachable

102:                                              ; preds = %71
  %103 = landingpad { ptr, i32 }
          cleanup
  br label %178

104:                                              ; preds = %91, %144
  %105 = phi i32 [ 0, %91 ], [ %145, %144 ]
  %106 = load ptr, ptr %51, align 8, !tbaa !40
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8
  %109 = invoke noundef ptr %108(ptr noundef nonnull align 8 dereferenceable(8) %51, i32 noundef %105)
          to label %110 unwind label %132

110:                                              ; preds = %104
  invoke void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %109, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %111 unwind label %132

111:                                              ; preds = %110
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13, !noalias !70
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.3") align 8 %8, ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %112 unwind label %134

112:                                              ; preds = %111
  %113 = load ptr, ptr %8, align 8, !tbaa !75, !noalias !70
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13, !noalias !70
  %114 = load ptr, ptr %84, align 8, !tbaa !77, !noalias !78
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load ptr, ptr %83, align 8, !tbaa !67, !noalias !78
  %118 = load ptr, ptr %117, align 8, !tbaa !40, !noalias !78
  %119 = getelementptr inbounds ptr, ptr %118, i64 2
  %120 = load ptr, ptr %119, align 8, !noalias !78
  %121 = invoke noundef ptr %120(ptr noundef nonnull align 8 dereferenceable(8) %117, i64 noundef 32)
          to label %122 unwind label %136

122:                                              ; preds = %116
  store ptr %121, ptr %84, align 8, !tbaa !77, !noalias !78
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %121, i64 0, i32 2
  store ptr %121, ptr %123, align 8, !tbaa !87, !noalias !78
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %121, i64 0, i32 1
  store ptr %121, ptr %124, align 8, !tbaa !91, !noalias !78
  br label %125

125:                                              ; preds = %112, %122
  %126 = load ptr, ptr %84, align 8, !tbaa !77, !noalias !78
  %127 = icmp eq ptr %113, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load ptr, ptr %52, align 8, !tbaa !54
  invoke void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44) %129, ptr noundef nonnull %109, ptr noundef nonnull align 8 dereferenceable(24) %2)
          to label %130 unwind label %132

130:                                              ; preds = %128
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #13
  store i8 1, ptr %7, align 1, !tbaa !92
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKb(ptr noundef nonnull align 8 dereferenceable(136) %10, ptr noundef nonnull align 8 dereferenceable(36) %75, ptr noundef nonnull align 1 dereferenceable(1) %7)
          to label %131 unwind label %132

131:                                              ; preds = %130
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #13
  br label %138

132:                                              ; preds = %130, %128, %110, %104
  %133 = landingpad { ptr, i32 }
          cleanup
  br label %147

134:                                              ; preds = %111
  %135 = landingpad { ptr, i32 }
          cleanup
  br label %147

136:                                              ; preds = %116
  %137 = landingpad { ptr, i32 }
          cleanup
  br label %147

138:                                              ; preds = %131, %125
  %139 = load i64, ptr %92, align 8, !tbaa !93
  %140 = icmp eq i64 %139, 0
  br i1 %140, label %144, label %141

141:                                              ; preds = %138
  %142 = load i64, ptr %92, align 8, !tbaa !93
  %143 = sub i64 %142, %139
  store i64 %143, ptr %92, align 8, !tbaa !93
  br label %144

144:                                              ; preds = %141, %138
  store i32 0, ptr %93, align 8, !tbaa !95
  %145 = add nuw i32 %105, 1
  %146 = icmp eq i32 %145, %60
  br i1 %146, label %94, label %104, !llvm.loop !98

147:                                              ; preds = %134, %136, %132
  %148 = phi { ptr, i32 } [ %133, %132 ], [ %137, %136 ], [ %135, %134 ]
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %10) #13
  call void @llvm.lifetime.end.p0(i64 136, ptr nonnull %10) #13
  %149 = load ptr, ptr %2, align 8, !tbaa !40
  %150 = getelementptr inbounds ptr, ptr %149, i64 24
  %151 = load ptr, ptr %150, align 8
  %152 = invoke noundef zeroext i1 %151(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(36) %75)
          to label %178 unwind label %153

153:                                              ; preds = %147
  %154 = landingpad { ptr, i32 }
          catch ptr null
  %155 = extractvalue { ptr, i32 } %154, 0
  call void @__clang_call_terminate(ptr %155) #15
  unreachable

156:                                              ; preds = %68, %94, %61
  %157 = load ptr, ptr %52, align 8, !tbaa !54
  %158 = getelementptr inbounds %"class.xalanc_1_10::MutableNodeRefList", ptr %157, i64 0, i32 1
  store i32 1, ptr %158, align 8, !tbaa !101
  %159 = getelementptr inbounds %"class.xalanc_1_10::XPathExecutionContext", ptr %2, i64 0, i32 1
  %160 = load ptr, ptr %159, align 8, !tbaa !107
  %161 = load ptr, ptr %160, align 8, !tbaa !40
  %162 = getelementptr inbounds ptr, ptr %161, i64 4
  %163 = load ptr, ptr %162, align 8
  invoke void %163(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %160, ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %164 unwind label %69

164:                                              ; preds = %156
  %165 = load ptr, ptr %52, align 8, !tbaa !54
  %166 = icmp eq ptr %165, null
  br i1 %166, label %177, label %167

167:                                              ; preds = %164
  %168 = load ptr, ptr %9, align 8, !tbaa !52
  %169 = load ptr, ptr %168, align 8, !tbaa !40
  %170 = getelementptr inbounds ptr, ptr %169, i64 22
  %171 = load ptr, ptr %170, align 8
  %172 = invoke noundef zeroext i1 %171(ptr noundef nonnull align 8 dereferenceable(24) %168, ptr noundef nonnull %165)
          to label %173 unwind label %174

173:                                              ; preds = %167
  store ptr null, ptr %52, align 8, !tbaa !54
  br label %177

174:                                              ; preds = %167
  %175 = landingpad { ptr, i32 }
          catch ptr null
  %176 = extractvalue { ptr, i32 } %175, 0
  call void @__clang_call_terminate(ptr %176) #15
  unreachable

177:                                              ; preds = %164, %173
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  ret void

178:                                              ; preds = %102, %147, %69
  %179 = phi { ptr, i32 } [ %70, %69 ], [ %103, %102 ], [ %148, %147 ]
  %180 = load ptr, ptr %52, align 8, !tbaa !54
  %181 = icmp eq ptr %180, null
  br i1 %181, label %192, label %182

182:                                              ; preds = %178
  %183 = load ptr, ptr %9, align 8, !tbaa !52
  %184 = load ptr, ptr %183, align 8, !tbaa !40
  %185 = getelementptr inbounds ptr, ptr %184, i64 22
  %186 = load ptr, ptr %185, align 8
  %187 = invoke noundef zeroext i1 %186(ptr noundef nonnull align 8 dereferenceable(24) %183, ptr noundef nonnull %180)
          to label %188 unwind label %189

188:                                              ; preds = %182
  store ptr null, ptr %52, align 8, !tbaa !54
  br label %192

189:                                              ; preds = %182
  %190 = landingpad { ptr, i32 }
          catch ptr null
  %191 = extractvalue { ptr, i32 } %190, 0
  call void @__clang_call_terminate(ptr %191) #15
  unreachable

192:                                              ; preds = %178, %188
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #13
  br label %193

193:                                              ; preds = %35, %192
  %194 = phi { ptr, i32 } [ %179, %192 ], [ %36, %35 ]
  resume { ptr, i32 } %194
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare void @_ZN11xalanc_1_1018MutableNodeRefList7addNodeEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1011DOMServices11getNodeDataERKNS_9XalanNodeERNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

declare void @_ZN11xalanc_1_1018MutableNodeRefList17addNodeInDocOrderEPNS_9XalanNodeERNS_21XPathExecutionContextE(ptr noundef nonnull align 8 dereferenceable(44), ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1016FunctionDistinct5cloneERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !109 {
  %3 = load ptr, ptr %1, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 8), !prof !110
  store ptr getelementptr inbounds ({ [11 x ptr] }, ptr @_ZTVN11xalanc_1_1016FunctionDistinctE, i64 0, inrange i32 0, i64 2), ptr %6, align 8, !tbaa !40
  ret ptr %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1016FunctionDistinct8getErrorERNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #0 align 2 !prof !43 {
  %3 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36) %1, i32 noundef 83, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null)
  ret ptr %3
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesEPKcS6_S6_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrEPKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK11xalanc_1_108Function7executeERNS_21XPathExecutionContextEPNS_9XalanNodeENS_10XObjectPtrES5_S5_PKN11xercesc_2_77LocatorE(ptr dead_on_unwind writable sret(%"class.xalanc_1_10::XObjectPtr") align 8, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !43 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(136) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  invoke void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0)
          to label %2 unwind label %53

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %4 = load i64, ptr %3, align 8, !tbaa !111
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %47, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !77, !noalias !112
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %20

11:                                               ; preds = %6
  %12 = load ptr, ptr %7, align 8, !tbaa !67, !noalias !112
  %13 = load ptr, ptr %12, align 8, !tbaa !40, !noalias !112
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !112
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32)
          to label %17 unwind label %53

17:                                               ; preds = %11
  store ptr %16, ptr %8, align 8, !tbaa !77, !noalias !112
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %18, align 8, !tbaa !87, !noalias !112
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %19, align 8, !tbaa !91, !noalias !112
  br label %20

20:                                               ; preds = %6, %17
  %21 = load ptr, ptr %8, align 8, !tbaa !77, !noalias !112
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  br label %23

23:                                               ; preds = %41, %20
  %24 = phi ptr [ %21, %20 ], [ %26, %41 ]
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %24, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !87, !noalias !115
  %27 = load ptr, ptr %8, align 8, !tbaa !77, !noalias !116
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load ptr, ptr %7, align 8, !tbaa !67, !noalias !116
  %31 = load ptr, ptr %30, align 8, !tbaa !40, !noalias !116
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8, !noalias !116
  %34 = invoke noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef 32)
          to label %35 unwind label %51

35:                                               ; preds = %29
  store ptr %34, ptr %8, align 8, !tbaa !77, !noalias !116
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %34, i64 0, i32 2
  store ptr %34, ptr %36, align 8, !tbaa !87, !noalias !116
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %34, i64 0, i32 1
  store ptr %34, ptr %37, align 8, !tbaa !91, !noalias !116
  br label %38

38:                                               ; preds = %23, %35
  %39 = load ptr, ptr %8, align 8, !tbaa !77, !noalias !116
  %40 = icmp eq ptr %26, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %38
  %42 = load ptr, ptr %26, align 8, !tbaa !119
  %43 = load ptr, ptr %22, align 8, !tbaa !57
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %23 unwind label %51, !llvm.loop !120

47:                                               ; preds = %38, %2
  %48 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %48) #13
  %49 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %49) #13
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  tail call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %50) #13
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
  tail call void @__clang_call_terminate(ptr %57) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE15doRemoveEntriesEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = alloca %"struct.xalanc_1_10::XalanMapIterator.3", align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %4 = load i64, ptr %3, align 8, !tbaa !66
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %6, %20
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  %10 = load ptr, ptr %7, align 8, !tbaa !77, !noalias !124
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %20

12:                                               ; preds = %9
  %13 = load ptr, ptr %8, align 8, !tbaa !67, !noalias !124
  %14 = load ptr, ptr %13, align 8, !tbaa !40, !noalias !124
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !124
  %17 = call noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32), !noalias !124
  store ptr %17, ptr %7, align 8, !tbaa !77, !noalias !124
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %18, align 8, !tbaa !87, !noalias !124
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %19, align 8, !tbaa !91, !noalias !124
  br label %20

20:                                               ; preds = %9, %12
  %21 = load ptr, ptr %7, align 8, !tbaa !77, !noalias !124
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %21, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !87, !noalias !124
  store ptr %23, ptr %2, align 8, !tbaa !75, !alias.scope !121
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_bEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %24 = load i64, ptr %3, align 8, !tbaa !66
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %9, !llvm.loop !127

26:                                               ; preds = %20, %1
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !128
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !129
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %14, %12 ], [ %7, %5 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #13
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %13, i64 1
  %15 = icmp eq ptr %14, %10
  br i1 %15, label %16, label %12, !llvm.loop !130

16:                                               ; preds = %12, %5
  %17 = load ptr, ptr %6, align 8, !tbaa !129
  %18 = load ptr, ptr %0, align 8, !tbaa !68
  %19 = load ptr, ptr %18, align 8, !tbaa !40
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
  tail call void @__clang_call_terminate(ptr %25) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %50, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %3, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !87, !noalias !131
  br label %8

8:                                                ; preds = %24, %5
  %9 = phi ptr [ %7, %5 ], [ %26, %24 ]
  %10 = load ptr, ptr %2, align 8, !tbaa !77, !noalias !134
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %8
  %13 = load ptr, ptr %0, align 8, !tbaa !67, !noalias !134
  %14 = load ptr, ptr %13, align 8, !tbaa !40, !noalias !134
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8, !noalias !134
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 32)
          to label %18 unwind label %53

18:                                               ; preds = %12
  store ptr %17, ptr %2, align 8, !tbaa !77, !noalias !134
  %19 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 2
  store ptr %17, ptr %19, align 8, !tbaa !87, !noalias !134
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 1
  store ptr %17, ptr %20, align 8, !tbaa !91, !noalias !134
  br label %21

21:                                               ; preds = %8, %18
  %22 = load ptr, ptr %2, align 8, !tbaa !77, !noalias !134
  %23 = icmp eq ptr %9, %22
  br i1 %23, label %31, label %24

24:                                               ; preds = %21
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %9, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !87, !noalias !137
  %27 = load ptr, ptr %0, align 8, !tbaa !67
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef nonnull %9)
          to label %8 unwind label %53, !llvm.loop !140

31:                                               ; preds = %21
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !141
  br label %34

34:                                               ; preds = %37, %31
  %35 = phi ptr [ %33, %31 ], [ %39, %37 ]
  %36 = icmp eq ptr %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %35, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !87
  %40 = load ptr, ptr %0, align 8, !tbaa !67
  %41 = load ptr, ptr %40, align 8, !tbaa !40
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %40, ptr noundef nonnull %35)
          to label %34 unwind label %51

44:                                               ; preds = %34
  %45 = load ptr, ptr %2, align 8, !tbaa !77
  %46 = load ptr, ptr %0, align 8, !tbaa !67
  %47 = load ptr, ptr %46, align 8, !tbaa !40
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
  tail call void @__clang_call_terminate(ptr %59) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doRemoveEntryERKNS_16XalanMapIteratorINS_22XalanMapIteratorTraitsISt4pairIKS1_bEEENS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS4_5EntryEEENS_9XalanListISD_E4NodeEEEEE(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = load ptr, ptr %1, align 8, !tbaa !75
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #13
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !77, !noalias !142
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 7
  %10 = load ptr, ptr %9, align 8, !tbaa !67, !noalias !142
  %11 = load ptr, ptr %10, align 8, !tbaa !40, !noalias !142
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8, !noalias !142
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef 32), !noalias !142
  store ptr %14, ptr %5, align 8, !tbaa !77, !noalias !142
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %14, i64 0, i32 2
  store ptr %14, ptr %15, align 8, !tbaa !87, !noalias !142
  %16 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %14, i64 0, i32 1
  store ptr %14, ptr %16, align 8, !tbaa !91, !noalias !142
  br label %17

17:                                               ; preds = %2, %8
  %18 = load ptr, ptr %5, align 8, !tbaa !77, !noalias !142
  %19 = load ptr, ptr %1, align 8, !tbaa !75
  %20 = icmp eq ptr %18, %19
  br i1 %20, label %33, label %21

21:                                               ; preds = %17
  %22 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %19, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !87
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %19, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !91
  %26 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %25, i64 0, i32 2
  store ptr %23, ptr %26, align 8, !tbaa !87
  %27 = load ptr, ptr %22, align 8, !tbaa !87
  %28 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %27, i64 0, i32 1
  store ptr %25, ptr %28, align 8, !tbaa !91
  %29 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %18, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !91
  store ptr %30, ptr %24, align 8, !tbaa !91
  store ptr %18, ptr %22, align 8, !tbaa !87
  %31 = load ptr, ptr %29, align 8, !tbaa !91
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %31, i64 0, i32 2
  store ptr %19, ptr %32, align 8, !tbaa !87
  store ptr %19, ptr %29, align 8, !tbaa !91
  br label %33

33:                                               ; preds = %17, %21
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %19, i64 0, i32 1
  store i8 1, ptr %34, align 8, !tbaa !145
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %36 = load i64, ptr %35, align 8, !tbaa !66
  %37 = add i64 %36, -1
  store i64 %37, ptr %35, align 8, !tbaa !66
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !147
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !148

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !149
  %8 = load ptr, ptr %0, align 8, !tbaa !150
  %9 = load ptr, ptr %8, align 8, !tbaa !40
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !151

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !152
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !154
  %8 = load ptr, ptr %0, align 8, !tbaa !155
  %9 = load ptr, ptr %8, align 8, !tbaa !40
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
  tail call void @__clang_call_terminate(ptr %15) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %5 = load i64, ptr %4, align 8, !tbaa !66
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %59, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !111
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !93
  %12 = icmp eq i64 %11, 0
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8
  %15 = select i1 %12, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = load i16, ptr %15, align 2, !tbaa !156
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
  %26 = load i16, ptr %25, align 2, !tbaa !156
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %18, !llvm.loop !158

28:                                               ; preds = %18
  %29 = add i64 %24, 1
  br label %30

30:                                               ; preds = %28, %7
  %31 = phi i64 [ 1, %7 ], [ %29, %28 ]
  %32 = urem i64 %31, %9
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !129
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %34, i64 %32, i32 3
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %34, i64 %32, i32 1
  %37 = load i64, ptr %36, align 8, !tbaa !159
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %59, label %39

39:                                               ; preds = %30
  %40 = load ptr, ptr %35, align 8, !tbaa !154
  br label %41

41:                                               ; preds = %39, %53
  %42 = phi i1 [ %58, %53 ], [ %38, %39 ]
  %43 = phi ptr [ %54, %53 ], [ %40, %39 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !75
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %44, i64 0, i32 1
  %46 = load i8, ptr %45, align 8, !tbaa !145, !range !160, !noundef !115
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load ptr, ptr %44, align 8, !tbaa !119
  %50 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %49)
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load ptr, ptr %43, align 8, !tbaa !75
  store ptr %52, ptr %0, align 8, !tbaa !75
  br i1 %42, label %59, label %74

53:                                               ; preds = %48, %41
  %54 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %43, i64 1
  %55 = load ptr, ptr %35, align 8, !tbaa !154
  %56 = load i64, ptr %36, align 8, !tbaa !159
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  %58 = icmp eq ptr %54, %57
  br i1 %58, label %59, label %41, !llvm.loop !161

59:                                               ; preds = %53, %30, %51, %3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %60 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !77, !noalias !165
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %72

63:                                               ; preds = %59
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %65 = load ptr, ptr %64, align 8, !tbaa !67, !noalias !165
  %66 = load ptr, ptr %65, align 8, !tbaa !40, !noalias !165
  %67 = getelementptr inbounds ptr, ptr %66, i64 2
  %68 = load ptr, ptr %67, align 8, !noalias !165
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(8) %65, i64 noundef 32), !noalias !165
  store ptr %69, ptr %60, align 8, !tbaa !77, !noalias !165
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %69, i64 0, i32 2
  store ptr %69, ptr %70, align 8, !tbaa !87, !noalias !165
  %71 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %69, i64 0, i32 1
  store ptr %69, ptr %71, align 8, !tbaa !91, !noalias !165
  br label %72

72:                                               ; preds = %59, %63
  %73 = load ptr, ptr %60, align 8, !tbaa !77, !noalias !165
  store ptr %73, ptr %0, align 8, !tbaa !75, !alias.scope !162
  br label %74

74:                                               ; preds = %51, %72
  ret void
}

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6insertERKS1_RKb(ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %4 = alloca %"struct.xalanc_1_10::XalanMapIterator.3", align 8
  %5 = alloca %"struct.xalanc_1_10::XalanMapIterator.3", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.3") align 8 %4, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %6 = load ptr, ptr %4, align 8, !tbaa !75
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !77, !noalias !168
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !67, !noalias !168
  %13 = load ptr, ptr %12, align 8, !tbaa !40, !noalias !168
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8, !noalias !168
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 32), !noalias !168
  store ptr %16, ptr %7, align 8, !tbaa !77, !noalias !168
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !87, !noalias !168
  %18 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %16, i64 0, i32 1
  store ptr %16, ptr %18, align 8, !tbaa !91, !noalias !168
  br label %19

19:                                               ; preds = %3, %10
  %20 = load ptr, ptr %7, align 8, !tbaa !77, !noalias !168
  %21 = icmp eq ptr %20, %6
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKb(ptr dead_on_unwind nonnull writable sret(%"struct.xalanc_1_10::XalanMapIterator.3") align 8 %5, ptr noundef nonnull align 8 dereferenceable(136) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %23

23:                                               ; preds = %22, %19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE13doCreateEntryERKS1_PKb(ptr dead_on_unwind noalias writable sret(%"struct.xalanc_1_10::XalanMapIterator.3") align 8 %0, ptr noundef nonnull align 8 dereferenceable(136) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %6 = alloca %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", align 8
  %7 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !111
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %49

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !129
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 4
  %16 = load i64, ptr %15, align 8, !tbaa !65
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !57
  store ptr %18, ptr %5, align 8, !tbaa !155
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef %14, i64 noundef %16, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %22 unwind label %35

22:                                               ; preds = %11
  %23 = load i64, ptr %20, align 8, !tbaa !152
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %21, align 8, !tbaa !154
  %27 = load ptr, ptr %5, align 8, !tbaa !155
  %28 = load ptr, ptr %27, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26)
          to label %34 unwind label %31

31:                                               ; preds = %25
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #15
  unreachable

34:                                               ; preds = %22, %25
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %49

35:                                               ; preds = %11
  %36 = landingpad { ptr, i32 }
          cleanup
  %37 = load i64, ptr %20, align 8, !tbaa !152
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %48, label %39

39:                                               ; preds = %35
  %40 = load ptr, ptr %21, align 8, !tbaa !154
  %41 = load ptr, ptr %5, align 8, !tbaa !155
  %42 = load ptr, ptr %41, align 8, !tbaa !40
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  invoke void %44(ptr noundef nonnull align 8 dereferenceable(8) %41, ptr noundef %40)
          to label %48 unwind label %45

45:                                               ; preds = %39
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #15
  unreachable

48:                                               ; preds = %35, %39
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %36

49:                                               ; preds = %34, %4
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 3
  %51 = load float, ptr %50, align 8, !tbaa !64
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 5
  %53 = load i64, ptr %52, align 8, !tbaa !66
  %54 = uitofp i64 %53 to float
  %55 = fmul float %51, %54
  %56 = fptoui float %55 to i64
  %57 = load i64, ptr %8, align 8, !tbaa !111
  %58 = icmp ult i64 %57, %56
  br i1 %58, label %59, label %60

59:                                               ; preds = %49
  call void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %1)
  br label %60

60:                                               ; preds = %59, %49
  %61 = load i64, ptr %8, align 8, !tbaa !111
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !93
  %64 = icmp eq i64 %63, 0
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8
  %67 = select i1 %64, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %66
  %68 = load i16, ptr %67, align 2, !tbaa !156
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
  %78 = load i16, ptr %77, align 2, !tbaa !156
  %79 = icmp eq i16 %78, 0
  br i1 %79, label %80, label %70, !llvm.loop !158

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
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %89 = load ptr, ptr %88, align 8, !tbaa !57
  %90 = load ptr, ptr %89, align 8, !tbaa !40
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(8) %89, i64 noundef 48)
  store ptr %93, ptr %6, align 8, !tbaa !119
  %94 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %6, i64 0, i32 1
  store i8 0, ptr %94, align 8, !tbaa !145
  call void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %85, ptr noundef nonnull align 8 dereferenceable(9) %6)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  br label %95

95:                                               ; preds = %87, %82
  %96 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 7, i32 1
  %97 = load ptr, ptr %96, align 8, !tbaa !77, !noalias !173
  %98 = icmp eq ptr %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %95
  %100 = load ptr, ptr %85, align 8, !tbaa !67, !noalias !173
  %101 = load ptr, ptr %100, align 8, !tbaa !40, !noalias !173
  %102 = getelementptr inbounds ptr, ptr %101, i64 2
  %103 = load ptr, ptr %102, align 8, !noalias !173
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(8) %100, i64 noundef 32), !noalias !173
  store ptr %104, ptr %96, align 8, !tbaa !77, !noalias !173
  %105 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %104, i64 0, i32 2
  store ptr %104, ptr %105, align 8, !tbaa !87, !noalias !173
  %106 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %104, i64 0, i32 1
  store ptr %104, ptr %106, align 8, !tbaa !91, !noalias !173
  br label %107

107:                                              ; preds = %95, %99
  %108 = load ptr, ptr %96, align 8, !tbaa !77, !noalias !173
  %109 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !91, !noalias !176
  %111 = getelementptr inbounds %"struct.xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry", ptr %110, i64 0, i32 1
  store i8 0, ptr %111, align 8, !tbaa !145
  %112 = load ptr, ptr %110, align 8, !tbaa !119
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 2
  %114 = load ptr, ptr %113, align 8, !tbaa !57
  call void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %112, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %114, i32 noundef 0, i32 noundef -1)
  %115 = icmp eq ptr %3, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %107
  %117 = load ptr, ptr %110, align 8, !tbaa !119
  %118 = getelementptr inbounds %"struct.std::pair", ptr %117, i64 0, i32 1
  %119 = load i8, ptr %3, align 1, !tbaa !92, !range !160, !noundef !115
  store i8 %119, ptr %118, align 1, !tbaa !92
  br label %120

120:                                              ; preds = %107, %116
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6
  %122 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 6, i32 1
  %123 = load ptr, ptr %122, align 8, !tbaa !77, !noalias !179
  %124 = icmp eq ptr %123, null
  br i1 %124, label %125, label %133

125:                                              ; preds = %120
  %126 = load ptr, ptr %121, align 8, !tbaa !67, !noalias !179
  %127 = load ptr, ptr %126, align 8, !tbaa !40, !noalias !179
  %128 = getelementptr inbounds ptr, ptr %127, i64 2
  %129 = load ptr, ptr %128, align 8, !noalias !179
  %130 = call noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(8) %126, i64 noundef 32), !noalias !179
  store ptr %130, ptr %122, align 8, !tbaa !77, !noalias !179
  %131 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %130, i64 0, i32 2
  store ptr %130, ptr %131, align 8, !tbaa !87, !noalias !179
  %132 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %130, i64 0, i32 1
  store ptr %130, ptr %132, align 8, !tbaa !91, !noalias !179
  br label %133

133:                                              ; preds = %120, %125
  %134 = load ptr, ptr %122, align 8, !tbaa !77, !noalias !179
  %135 = load ptr, ptr %96, align 8, !tbaa !77, !noalias !182
  %136 = icmp eq ptr %135, null
  br i1 %136, label %137, label %145

137:                                              ; preds = %133
  %138 = load ptr, ptr %85, align 8, !tbaa !67, !noalias !182
  %139 = load ptr, ptr %138, align 8, !tbaa !40, !noalias !182
  %140 = getelementptr inbounds ptr, ptr %139, i64 2
  %141 = load ptr, ptr %140, align 8, !noalias !182
  %142 = call noundef ptr %141(ptr noundef nonnull align 8 dereferenceable(8) %138, i64 noundef 32), !noalias !182
  store ptr %142, ptr %96, align 8, !tbaa !77, !noalias !182
  %143 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %142, i64 0, i32 2
  store ptr %142, ptr %143, align 8, !tbaa !87, !noalias !182
  %144 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %142, i64 0, i32 1
  store ptr %142, ptr %144, align 8, !tbaa !91, !noalias !182
  br label %145

145:                                              ; preds = %133, %137
  %146 = load ptr, ptr %96, align 8, !tbaa !77, !noalias !182
  %147 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %146, i64 0, i32 1
  %148 = load ptr, ptr %147, align 8, !tbaa !91, !noalias !185
  %149 = icmp eq ptr %134, %148
  br i1 %149, label %162, label %150

150:                                              ; preds = %145
  %151 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %148, i64 0, i32 2
  %152 = load ptr, ptr %151, align 8, !tbaa !87
  %153 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %148, i64 0, i32 1
  %154 = load ptr, ptr %153, align 8, !tbaa !91
  %155 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %154, i64 0, i32 2
  store ptr %152, ptr %155, align 8, !tbaa !87
  %156 = load ptr, ptr %151, align 8, !tbaa !87
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %156, i64 0, i32 1
  store ptr %154, ptr %157, align 8, !tbaa !91
  %158 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %134, i64 0, i32 1
  %159 = load ptr, ptr %158, align 8, !tbaa !91
  store ptr %159, ptr %153, align 8, !tbaa !91
  store ptr %134, ptr %151, align 8, !tbaa !87
  %160 = load ptr, ptr %158, align 8, !tbaa !91
  %161 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %160, i64 0, i32 2
  store ptr %148, ptr %161, align 8, !tbaa !87
  store ptr %148, ptr %158, align 8, !tbaa !91
  br label %162

162:                                              ; preds = %145, %150
  %163 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %1, i64 0, i32 8, i32 3
  %164 = load ptr, ptr %163, align 8, !tbaa !129
  %165 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %164, i64 %84
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %166 = load ptr, ptr %122, align 8, !tbaa !77, !noalias !188
  %167 = icmp eq ptr %166, null
  br i1 %167, label %168, label %176

168:                                              ; preds = %162
  %169 = load ptr, ptr %121, align 8, !tbaa !67, !noalias !188
  %170 = load ptr, ptr %169, align 8, !tbaa !40, !noalias !188
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8, !noalias !188
  %173 = call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %169, i64 noundef 32), !noalias !188
  store ptr %173, ptr %122, align 8, !tbaa !77, !noalias !188
  %174 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %173, i64 0, i32 2
  store ptr %173, ptr %174, align 8, !tbaa !87, !noalias !188
  %175 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %173, i64 0, i32 1
  store ptr %173, ptr %175, align 8, !tbaa !91, !noalias !188
  br label %176

176:                                              ; preds = %162, %168
  %177 = load ptr, ptr %122, align 8, !tbaa !77, !noalias !188
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  %178 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %177, i64 0, i32 1
  %179 = load ptr, ptr %178, align 8, !tbaa !91, !noalias !191
  store ptr %179, ptr %7, align 8, !tbaa !75, !alias.scope !191
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %165, ptr noundef nonnull align 8 dereferenceable(8) %7)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  %180 = load i64, ptr %52, align 8, !tbaa !66
  %181 = add i64 %180, 1
  store i64 %181, ptr %52, align 8, !tbaa !66
  %182 = load ptr, ptr %122, align 8, !tbaa !77, !noalias !194
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %192

184:                                              ; preds = %176
  %185 = load ptr, ptr %121, align 8, !tbaa !67, !noalias !194
  %186 = load ptr, ptr %185, align 8, !tbaa !40, !noalias !194
  %187 = getelementptr inbounds ptr, ptr %186, i64 2
  %188 = load ptr, ptr %187, align 8, !noalias !194
  %189 = call noundef ptr %188(ptr noundef nonnull align 8 dereferenceable(8) %185, i64 noundef 32), !noalias !194
  store ptr %189, ptr %122, align 8, !tbaa !77, !noalias !194
  %190 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %189, i64 0, i32 2
  store ptr %189, ptr %190, align 8, !tbaa !87, !noalias !194
  %191 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %189, i64 0, i32 1
  store ptr %189, ptr %191, align 8, !tbaa !91, !noalias !194
  br label %192

192:                                              ; preds = %176, %184
  %193 = load ptr, ptr %122, align 8, !tbaa !77, !noalias !194
  %194 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %193, i64 0, i32 1
  %195 = load ptr, ptr %194, align 8, !tbaa !91, !noalias !197
  store ptr %195, ptr %0, align 8, !tbaa !75
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = add i64 %7, %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !129
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %10, i64 %7
  %12 = icmp eq ptr %11, %1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %14 = load i64, ptr %13, align 8, !tbaa !128
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
  %21 = load ptr, ptr %9, align 8, !tbaa !129
  %22 = load i64, ptr %6, align 8, !tbaa !111
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %21, i64 %22
  br label %24

24:                                               ; preds = %20, %24
  %25 = phi ptr [ %28, %24 ], [ %23, %20 ]
  %26 = phi i64 [ %31, %24 ], [ 0, %20 ]
  %27 = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 0)
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %25, i64 1
  %29 = load i64, ptr %6, align 8, !tbaa !111
  %30 = add i64 %29, 1
  store i64 %30, ptr %6, align 8, !tbaa !111
  %31 = add nuw i64 %26, 1
  %32 = icmp eq i64 %31, %2
  br i1 %32, label %126, label %24, !llvm.loop !200

33:                                               ; preds = %4
  %34 = icmp ugt i64 %8, %14
  br i1 %34, label %35, label %70

35:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %36 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %36, ptr %5, align 8, !tbaa !68
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %37, align 8, !tbaa !111
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %8, ptr %38, align 8, !tbaa !128
  %39 = shl i64 %8, 5
  %40 = load ptr, ptr %36, align 8, !tbaa !40
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(8) %36, i64 noundef %39)
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %43, ptr %44, align 8, !tbaa !129
  %45 = load i64, ptr %37, align 8, !tbaa !111
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %43, i64 %45
  %47 = load ptr, ptr %9, align 8, !tbaa !129
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %46, ptr noundef %47, ptr noundef %1)
          to label %48 unwind label %68

48:                                               ; preds = %35
  %49 = load ptr, ptr %44, align 8, !tbaa !129
  %50 = load i64, ptr %37, align 8, !tbaa !111
  %51 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %49, i64 %50
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %51, i64 noundef %2, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %52 unwind label %68

52:                                               ; preds = %48
  %53 = load ptr, ptr %44, align 8, !tbaa !129
  %54 = load i64, ptr %37, align 8, !tbaa !111
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %53, i64 %54
  %56 = load ptr, ptr %9, align 8, !tbaa !129
  %57 = load i64, ptr %6, align 8, !tbaa !111
  %58 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %56, i64 %57
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %55, ptr noundef %1, ptr noundef %58)
          to label %59 unwind label %68

59:                                               ; preds = %52
  %60 = load ptr, ptr %0, align 8, !tbaa !68
  %61 = load i64, ptr %6, align 8, !tbaa !111
  %62 = load i64, ptr %13, align 8, !tbaa !128
  %63 = load ptr, ptr %9, align 8, !tbaa !129
  %64 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %64, ptr %0, align 8, !tbaa !68
  %65 = load i64, ptr %37, align 8, !tbaa !111
  store i64 %65, ptr %6, align 8, !tbaa !111
  %66 = load i64, ptr %38, align 8, !tbaa !128
  store i64 %66, ptr %13, align 8, !tbaa !128
  %67 = load ptr, ptr %44, align 8, !tbaa !129
  store ptr %67, ptr %9, align 8, !tbaa !129
  store ptr %60, ptr %5, align 8, !tbaa !68
  store i64 %61, ptr %37, align 8, !tbaa !111
  store i64 %62, ptr %38, align 8, !tbaa !128
  store ptr %63, ptr %44, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %126

68:                                               ; preds = %52, %48, %35
  %69 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  br i1 %84, label %79, label %81, !llvm.loop !201

85:                                               ; preds = %87, %79
  %86 = icmp eq ptr %11, %1
  br i1 %86, label %126, label %91

87:                                               ; preds = %79, %87
  %88 = phi ptr [ %89, %87 ], [ %1, %79 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %88)
  %89 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %88, i64 1
  %90 = icmp eq ptr %89, %11
  br i1 %90, label %85, label %87, !llvm.loop !202

91:                                               ; preds = %85, %91
  %92 = phi ptr [ %94, %91 ], [ %1, %85 ]
  %93 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %92, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %94 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %92, i64 1
  %95 = icmp eq ptr %94, %11
  br i1 %95, label %126, label %91, !llvm.loop !203

96:                                               ; preds = %70
  %97 = sub i64 0, %2
  %98 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %11, i64 %97
  %99 = icmp eq i64 %2, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %101)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %101, i64 1
  %103 = icmp eq ptr %102, %11
  br i1 %103, label %104, label %100, !llvm.loop !204

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
  %113 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %112, i64 -1
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %111, i64 -1
  %115 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %114, ptr noundef nonnull align 8 dereferenceable(32) %113)
  %116 = add nsw i64 %110, -1
  %117 = icmp sgt i64 %110, 1
  br i1 %117, label %109, label %118, !llvm.loop !205

118:                                              ; preds = %109, %104
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 %2
  %120 = icmp eq i64 %2, 0
  br i1 %120, label %126, label %121

121:                                              ; preds = %118, %121
  %122 = phi ptr [ %124, %121 ], [ %1, %118 ]
  %123 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %122, ptr noundef nonnull align 8 dereferenceable(32) %3)
  %124 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %122, i64 1
  %125 = icmp eq ptr %124, %119
  br i1 %125, label %126, label %121, !llvm.loop !203

126:                                              ; preds = %91, %121, %24, %85, %118, %18, %59
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(136) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %4 = alloca %"struct.xalanc_1_10::XalanListIteratorBase", align 8
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 5
  %6 = load i64, ptr %5, align 8, !tbaa !66
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 1.600000e+00
  %9 = fptoui double %8 to i64
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !57
  store ptr %11, ptr %3, align 8, !tbaa !155
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %9, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %15 unwind label %89

15:                                               ; preds = %1
  %16 = load i64, ptr %13, align 8, !tbaa !152
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %27, label %18

18:                                               ; preds = %15
  %19 = load ptr, ptr %14, align 8, !tbaa !154
  %20 = load ptr, ptr %3, align 8, !tbaa !155
  %21 = load ptr, ptr %20, align 8, !tbaa !40
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %27 unwind label %24

24:                                               ; preds = %18
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #15
  unreachable

27:                                               ; preds = %15, %18
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %28 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 6, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !77, !noalias !206
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load ptr, ptr %28, align 8, !tbaa !67, !noalias !206
  %34 = load ptr, ptr %33, align 8, !tbaa !40, !noalias !206
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8, !noalias !206
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 32)
          to label %38 unwind label %103

38:                                               ; preds = %32
  store ptr %37, ptr %29, align 8, !tbaa !77, !noalias !206
  %39 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %37, i64 0, i32 2
  store ptr %37, ptr %39, align 8, !tbaa !87, !noalias !206
  %40 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %37, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !91, !noalias !206
  br label %41

41:                                               ; preds = %27, %38
  %42 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  br label %43

43:                                               ; preds = %83, %41
  %44 = phi ptr [ %29, %41 ], [ %4, %83 ]
  %45 = load ptr, ptr %44, align 8, !tbaa !209, !noalias !115
  %46 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %45, i64 0, i32 2
  %47 = load ptr, ptr %46, align 8, !tbaa !87, !noalias !115
  store ptr %47, ptr %4, align 8, !tbaa !75
  %48 = load ptr, ptr %29, align 8, !tbaa !77, !noalias !210
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %59

50:                                               ; preds = %43
  %51 = load ptr, ptr %28, align 8, !tbaa !67, !noalias !210
  %52 = load ptr, ptr %51, align 8, !tbaa !40, !noalias !210
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8, !noalias !210
  %55 = invoke noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef 32)
          to label %56 unwind label %105

56:                                               ; preds = %50
  store ptr %55, ptr %29, align 8, !tbaa !77, !noalias !210
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %55, i64 0, i32 2
  store ptr %55, ptr %57, align 8, !tbaa !87, !noalias !210
  %58 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %55, i64 0, i32 1
  store ptr %55, ptr %58, align 8, !tbaa !91, !noalias !210
  br label %59

59:                                               ; preds = %43, %56
  %60 = load ptr, ptr %29, align 8, !tbaa !77, !noalias !210
  %61 = load ptr, ptr %4, align 8, !tbaa !75
  %62 = icmp eq ptr %61, %60
  br i1 %62, label %109, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr %61, align 8, !tbaa !119
  %65 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !93
  %67 = icmp eq i64 %66, 0
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.0", ptr %64, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8
  %70 = select i1 %67, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %69
  %71 = load i16, ptr %70, align 2, !tbaa !156
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
  %81 = load i16, ptr %80, align 2, !tbaa !156
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %73, !llvm.loop !158

83:                                               ; preds = %73, %63
  %84 = phi i64 [ 0, %63 ], [ %79, %73 ]
  %85 = add i64 %84, 1
  %86 = urem i64 %85, %9
  %87 = load ptr, ptr %42, align 8, !tbaa !129
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %87, i64 %86
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %88, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %43 unwind label %107, !llvm.loop !213

89:                                               ; preds = %1
  %90 = landingpad { ptr, i32 }
          cleanup
  %91 = load i64, ptr %13, align 8, !tbaa !152
  %92 = icmp eq i64 %91, 0
  br i1 %92, label %102, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr %14, align 8, !tbaa !154
  %95 = load ptr, ptr %3, align 8, !tbaa !155
  %96 = load ptr, ptr %95, align 8, !tbaa !40
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  invoke void %98(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %94)
          to label %102 unwind label %99

99:                                               ; preds = %93
  %100 = landingpad { ptr, i32 }
          catch ptr null
  %101 = extractvalue { ptr, i32 } %100, 0
  call void @__clang_call_terminate(ptr %101) #15
  unreachable

102:                                              ; preds = %89, %93
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
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
  %111 = load ptr, ptr %110, align 8, !tbaa !68
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 1
  %113 = load i64, ptr %112, align 8, !tbaa !111
  %114 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 2
  %115 = load i64, ptr %114, align 8, !tbaa !128
  %116 = getelementptr inbounds %"class.xalanc_1_10::XalanMap", ptr %0, i64 0, i32 8, i32 3
  %117 = load ptr, ptr %116, align 8, !tbaa !129
  %118 = load ptr, ptr %2, align 8, !tbaa !68
  store ptr %118, ptr %110, align 8, !tbaa !68
  %119 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 1
  %120 = load i64, ptr %119, align 8, !tbaa !111
  store i64 %120, ptr %112, align 8, !tbaa !111
  %121 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 2
  %122 = load i64, ptr %121, align 8, !tbaa !128
  store i64 %122, ptr %114, align 8, !tbaa !128
  %123 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %2, i64 0, i32 3
  %124 = load ptr, ptr %123, align 8, !tbaa !129
  store ptr %124, ptr %116, align 8, !tbaa !129
  store ptr %111, ptr %2, align 8, !tbaa !68
  store i64 %113, ptr %119, align 8, !tbaa !111
  store i64 %115, ptr %121, align 8, !tbaa !128
  store ptr %117, ptr %123, align 8, !tbaa !129
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  ret void

125:                                              ; preds = %107, %105, %103
  %126 = phi { ptr, i32 } [ %106, %105 ], [ %104, %103 ], [ %108, %107 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #13
  br label %127

127:                                              ; preds = %125, %102
  %128 = phi { ptr, i32 } [ %126, %125 ], [ %90, %102 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #13
  resume { ptr, i32 } %128
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5emptyEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !77
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !67
  %7 = load ptr, ptr %6, align 8, !tbaa !40
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32)
  store ptr %10, ptr %2, align 8, !tbaa !77
  %11 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %10, i64 0, i32 2
  store ptr %10, ptr %11, align 8, !tbaa !87
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %10, i64 0, i32 1
  store ptr %10, ptr %12, align 8, !tbaa !91
  br label %13

13:                                               ; preds = %1, %5
  %14 = load ptr, ptr %2, align 8, !tbaa !77
  %15 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %14, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !87
  %17 = icmp eq ptr %14, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %13
  %19 = load ptr, ptr %0, align 8, !tbaa !67
  %20 = load ptr, ptr %19, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %19, i64 noundef 32)
  store ptr %23, ptr %2, align 8, !tbaa !77
  %24 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %23, i64 0, i32 2
  store ptr %23, ptr %24, align 8, !tbaa !87
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %23, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !91
  br label %26

26:                                               ; preds = %13, %18
  %27 = load ptr, ptr %2, align 8, !tbaa !77
  %28 = icmp eq ptr %16, %27
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE9push_backERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(9) %1) local_unnamed_addr #0 comdat align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !77, !noalias !214
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !67, !noalias !214
  %8 = load ptr, ptr %7, align 8, !tbaa !40, !noalias !214
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8, !noalias !214
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7, i64 noundef 32), !noalias !214
  store ptr %11, ptr %3, align 8, !tbaa !77, !noalias !214
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %11, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !87, !noalias !214
  %13 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %11, i64 0, i32 1
  store ptr %11, ptr %13, align 8, !tbaa !91, !noalias !214
  br label %14

14:                                               ; preds = %2, %6
  %15 = load ptr, ptr %3, align 8, !tbaa !77, !noalias !214
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanList", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !141
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %17, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !87
  br label %28

22:                                               ; preds = %14
  %23 = load ptr, ptr %0, align 8, !tbaa !67
  %24 = load ptr, ptr %23, align 8, !tbaa !40
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 32)
  store ptr %27, ptr %16, align 8, !tbaa !141
  br label %28

28:                                               ; preds = %19, %22
  %29 = phi ptr [ %17, %19 ], [ %27, %22 ]
  %30 = phi ptr [ %21, %19 ], [ null, %22 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !217
  %31 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %29, i64 0, i32 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %15, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !91
  store ptr %33, ptr %31, align 8, !tbaa !209
  %34 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %29, i64 0, i32 2
  store ptr %15, ptr %34, align 8, !tbaa !209
  %35 = load ptr, ptr %32, align 8, !tbaa !91
  %36 = getelementptr inbounds %"struct.xalanc_1_10::XalanList<xalanc_1_10::XalanMap<xalanc_1_10::XalanDOMString, bool>::Entry>::Node", ptr %35, i64 0, i32 2
  store ptr %29, ptr %36, align 8, !tbaa !87
  store ptr %29, ptr %32, align 8, !tbaa !91
  store ptr %30, ptr %16, align 8, !tbaa !141
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 5
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %139, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !111
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !129
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !128
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
  %27 = load ptr, ptr %15, align 8, !tbaa !129
  %28 = load i64, ptr %12, align 8, !tbaa !111
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(32) %31, ptr noundef nonnull align 8 dereferenceable(8) %33, i64 noundef 0)
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !111
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !111
  %37 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %139, label %30, !llvm.loop !218

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !68
  store ptr %42, ptr %5, align 8, !tbaa !68
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !111
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !128
  %45 = shl i64 %14, 5
  %46 = load ptr, ptr %42, align 8, !tbaa !40
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !129
  %51 = load i64, ptr %43, align 8, !tbaa !111
  %52 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !129
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !129
  %56 = load i64, ptr %43, align 8, !tbaa !111
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !129
  %60 = load i64, ptr %43, align 8, !tbaa !111
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !129
  %63 = load i64, ptr %12, align 8, !tbaa !111
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !68
  %67 = load i64, ptr %12, align 8, !tbaa !111
  %68 = load i64, ptr %19, align 8, !tbaa !128
  %69 = load ptr, ptr %15, align 8, !tbaa !129
  %70 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %70, ptr %0, align 8, !tbaa !68
  %71 = load i64, ptr %43, align 8, !tbaa !111
  store i64 %71, ptr %12, align 8, !tbaa !111
  %72 = load i64, ptr %44, align 8, !tbaa !128
  store i64 %72, ptr %19, align 8, !tbaa !128
  %73 = load ptr, ptr %50, align 8, !tbaa !129
  store ptr %73, ptr %15, align 8, !tbaa !129
  store ptr %66, ptr %5, align 8, !tbaa !68
  store i64 %67, ptr %43, align 8, !tbaa !111
  store i64 %68, ptr %44, align 8, !tbaa !128
  store ptr %69, ptr %50, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %139

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  %88 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !219

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %91)
  %92 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !220

94:                                               ; preds = %90, %84
  %95 = ashr exact i64 %79, 5
  %96 = icmp sgt i64 %95, 0
  br i1 %96, label %97, label %139

97:                                               ; preds = %94, %97
  %98 = phi i64 [ %104, %97 ], [ %95, %94 ]
  %99 = phi ptr [ %103, %97 ], [ %1, %94 ]
  %100 = phi ptr [ %102, %97 ], [ %2, %94 ]
  %101 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %99, ptr noundef nonnull align 8 dereferenceable(32) %100)
  %102 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %100, i64 1
  %103 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %99, i64 1
  %104 = add nsw i64 %98, -1
  %105 = icmp sgt i64 %98, 1
  br i1 %105, label %97, label %139, !llvm.loop !221

106:                                              ; preds = %76
  %107 = sub nsw i64 0, %9
  %108 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %17, i64 %107
  %109 = icmp eq ptr %3, %2
  br i1 %109, label %114, label %110

110:                                              ; preds = %106, %110
  %111 = phi ptr [ %112, %110 ], [ %108, %106 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %111)
  %112 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %111, i64 1
  %113 = icmp eq ptr %112, %17
  br i1 %113, label %114, label %110, !llvm.loop !222

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
  %125 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %124, i64 -1
  %126 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %123, i64 -1
  %127 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %126, ptr noundef nonnull align 8 dereferenceable(32) %125)
  %128 = add nsw i64 %122, -1
  %129 = icmp sgt i64 %122, 1
  br i1 %129, label %121, label %119, !llvm.loop !205

130:                                              ; preds = %119, %130
  %131 = phi i64 [ %137, %130 ], [ %9, %119 ]
  %132 = phi ptr [ %136, %130 ], [ %1, %119 ]
  %133 = phi ptr [ %135, %130 ], [ %2, %119 ]
  %134 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %132, ptr noundef nonnull align 8 dereferenceable(32) %133)
  %135 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %133, i64 1
  %136 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %132, i64 1
  %137 = add nsw i64 %131, -1
  %138 = icmp sgt i64 %131, 1
  br i1 %138, label %130, label %139, !llvm.loop !221

139:                                              ; preds = %97, %130, %30, %94, %119, %24, %65, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !111
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !128
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef 0)
  %14 = load i64, ptr %4, align 8, !tbaa !111
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !111
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !68
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE10doPushBackERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !68
  %25 = load i64, ptr %4, align 8, !tbaa !111
  %26 = load i64, ptr %6, align 8, !tbaa !128
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !129
  %29 = load ptr, ptr %3, align 8, !tbaa !68
  store ptr %29, ptr %0, align 8, !tbaa !68
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !111
  store i64 %31, ptr %4, align 8, !tbaa !111
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !128
  store i64 %33, ptr %6, align 8, !tbaa !128
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !129
  store ptr %35, ptr %27, align 8, !tbaa !129
  store ptr %24, ptr %3, align 8, !tbaa !68
  store i64 %25, ptr %30, align 8, !tbaa !111
  store i64 %26, ptr %32, align 8, !tbaa !128
  store ptr %28, ptr %34, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !68
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !111
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !128
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !129
  %12 = load ptr, ptr %3, align 8, !tbaa !68
  store ptr %12, ptr %0, align 8, !tbaa !68
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !111
  store i64 %14, ptr %6, align 8, !tbaa !111
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !128
  store i64 %16, ptr %8, align 8, !tbaa !128
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !129
  store ptr %18, ptr %10, align 8, !tbaa !129
  store ptr %5, ptr %3, align 8, !tbaa !68
  store i64 %7, ptr %13, align 8, !tbaa !111
  store i64 %9, ptr %15, align 8, !tbaa !128
  store ptr %11, ptr %17, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2ERKSJ_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !111
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !68
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !111
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !128
  %16 = shl i64 %13, 5
  %17 = load ptr, ptr %2, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !129
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !129
  %24 = load i64, ptr %9, align 8, !tbaa !111
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_PKSG_SM_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !68
  %28 = load i64, ptr %6, align 8, !tbaa !111
  %29 = load i64, ptr %7, align 8, !tbaa !128
  %30 = load ptr, ptr %8, align 8, !tbaa !129
  %31 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %31, ptr %0, align 8, !tbaa !68
  %32 = load i64, ptr %14, align 8, !tbaa !111
  store i64 %32, ptr %6, align 8, !tbaa !111
  %33 = load i64, ptr %15, align 8, !tbaa !128
  store i64 %33, ptr %7, align 8, !tbaa !128
  %34 = load ptr, ptr %21, align 8, !tbaa !129
  store ptr %34, ptr %8, align 8, !tbaa !129
  store ptr %27, ptr %5, align 8, !tbaa !68
  store i64 %28, ptr %14, align 8, !tbaa !111
  store i64 %29, ptr %15, align 8, !tbaa !128
  store ptr %30, ptr %21, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 5
  %41 = load ptr, ptr %2, align 8, !tbaa !40
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !129
  store i64 %3, ptr %7, align 8, !tbaa !128
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  store ptr %2, ptr %0, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !159
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !155
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !159
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !152
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !154
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !154
  %24 = load i64, ptr %9, align 8, !tbaa !159
  %25 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !155
  %28 = load i64, ptr %6, align 8, !tbaa !159
  %29 = load i64, ptr %7, align 8, !tbaa !152
  %30 = load ptr, ptr %8, align 8, !tbaa !154
  %31 = load ptr, ptr %5, align 8, !tbaa !155
  store ptr %31, ptr %0, align 8, !tbaa !155
  %32 = load i64, ptr %14, align 8, !tbaa !159
  store i64 %32, ptr %6, align 8, !tbaa !159
  %33 = load i64, ptr %15, align 8, !tbaa !152
  store i64 %33, ptr %7, align 8, !tbaa !152
  %34 = load ptr, ptr %21, align 8, !tbaa !154
  store ptr %34, ptr %8, align 8, !tbaa !154
  store ptr %27, ptr %5, align 8, !tbaa !155
  store i64 %28, ptr %14, align 8, !tbaa !159
  store i64 %29, ptr %15, align 8, !tbaa !152
  store ptr %30, ptr %21, align 8, !tbaa !154
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %30)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %26, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %66

44:                                               ; preds = %12
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = load i64, ptr %15, align 8, !tbaa !152
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !154
  %50 = load ptr, ptr %5, align 8, !tbaa !155
  %51 = load ptr, ptr %50, align 8, !tbaa !40
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(8) %50, ptr noundef %49)
          to label %57 unwind label %54

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          catch ptr null
  %56 = extractvalue { ptr, i32 } %55, 0
  call void @__clang_call_terminate(ptr %56) #15
  unreachable

57:                                               ; preds = %44, %48
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %45

58:                                               ; preds = %4
  %59 = icmp eq i64 %3, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !40
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61)
  store ptr %65, ptr %8, align 8, !tbaa !154
  store i64 %3, ptr %7, align 8, !tbaa !152
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %161, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !159
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !154
  %17 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !152
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
  %27 = load ptr, ptr %15, align 8, !tbaa !154
  %28 = load i64, ptr %12, align 8, !tbaa !159
  %29 = getelementptr %"struct.xalanc_1_10::XalanListIteratorBase", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !75
  store ptr %34, ptr %32, align 8, !tbaa !75
  %35 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %160, label %30, !llvm.loop !223

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !155
  store ptr %42, ptr %5, align 8, !tbaa !155
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !159
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !152
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !40
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !154
  %51 = load i64, ptr %43, align 8, !tbaa !159
  %52 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !154
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !154
  %56 = load i64, ptr %43, align 8, !tbaa !159
  %57 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !154
  %60 = load i64, ptr %43, align 8, !tbaa !159
  %61 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !154
  %63 = load i64, ptr %12, align 8, !tbaa !159
  %64 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !155
  %67 = load i64, ptr %12, align 8, !tbaa !159
  %68 = load i64, ptr %19, align 8, !tbaa !152
  %69 = load ptr, ptr %15, align 8, !tbaa !154
  %70 = load ptr, ptr %5, align 8, !tbaa !155
  store ptr %70, ptr %0, align 8, !tbaa !155
  %71 = load i64, ptr %43, align 8, !tbaa !159
  store i64 %71, ptr %12, align 8, !tbaa !159
  %72 = load i64, ptr %44, align 8, !tbaa !152
  store i64 %72, ptr %19, align 8, !tbaa !152
  %73 = load ptr, ptr %50, align 8, !tbaa !154
  store ptr %73, ptr %15, align 8, !tbaa !154
  store ptr %66, ptr %5, align 8, !tbaa !155
  store i64 %67, ptr %43, align 8, !tbaa !159
  store i64 %68, ptr %44, align 8, !tbaa !152
  store ptr %69, ptr %50, align 8, !tbaa !154
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !40
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79

79:                                               ; preds = %75
  %80 = landingpad { ptr, i32 }
          catch ptr null
  %81 = extractvalue { ptr, i32 } %80, 0
  call void @__clang_call_terminate(ptr %81) #15
  unreachable

82:                                               ; preds = %65, %75
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %161

83:                                               ; preds = %58, %54, %41
  %84 = landingpad { ptr, i32 }
          cleanup
  %85 = load i64, ptr %44, align 8, !tbaa !152
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !154
  %89 = load ptr, ptr %5, align 8, !tbaa !155
  %90 = load ptr, ptr %89, align 8, !tbaa !40
  %91 = getelementptr inbounds ptr, ptr %90, i64 3
  %92 = load ptr, ptr %91, align 8
  invoke void %92(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %88)
          to label %96 unwind label %93

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          catch ptr null
  %95 = extractvalue { ptr, i32 } %94, 0
  call void @__clang_call_terminate(ptr %95) #15
  unreachable

96:                                               ; preds = %83, %87
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
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
  br i1 %110, label %105, label %107, !llvm.loop !224

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !225

115:                                              ; preds = %111, %105
  %116 = ashr exact i64 %100, 3
  %117 = icmp sgt i64 %116, 0
  br i1 %117, label %118, label %161

118:                                              ; preds = %115, %118
  %119 = phi i64 [ %125, %118 ], [ %116, %115 ]
  %120 = phi ptr [ %124, %118 ], [ %1, %115 ]
  %121 = phi ptr [ %123, %118 ], [ %2, %115 ]
  %122 = load ptr, ptr %121, align 8, !tbaa !75
  store ptr %122, ptr %120, align 8, !tbaa !75
  %123 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %121, i64 1
  %124 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %120, i64 1
  %125 = add nsw i64 %119, -1
  %126 = icmp sgt i64 %119, 1
  br i1 %126, label %118, label %161, !llvm.loop !226

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
  br i1 %134, label %135, label %131, !llvm.loop !227

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
  %148 = load ptr, ptr %146, align 8, !tbaa !75
  store ptr %148, ptr %147, align 8, !tbaa !75
  %149 = add nsw i64 %143, -1
  %150 = icmp sgt i64 %143, 1
  br i1 %150, label %142, label %140, !llvm.loop !228

151:                                              ; preds = %140, %151
  %152 = phi i64 [ %158, %151 ], [ %9, %140 ]
  %153 = phi ptr [ %157, %151 ], [ %1, %140 ]
  %154 = phi ptr [ %156, %151 ], [ %2, %140 ]
  %155 = load ptr, ptr %154, align 8, !tbaa !75
  store ptr %155, ptr %153, align 8, !tbaa !75
  %156 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %154, i64 1
  %157 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %153, i64 1
  %158 = add nsw i64 %152, -1
  %159 = icmp sgt i64 %152, 1
  br i1 %159, label %151, label %161, !llvm.loop !226

160:                                              ; preds = %30
  store i64 %36, ptr %12, align 8, !tbaa !159
  br label %161

161:                                              ; preds = %118, %151, %115, %140, %24, %160, %82, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !159
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !152
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !75
  store ptr %13, ptr %12, align 8, !tbaa !75
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !159
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !155
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE10doPushBackERKSD_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !155
  %24 = load i64, ptr %4, align 8, !tbaa !159
  %25 = load i64, ptr %6, align 8, !tbaa !152
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !154
  %28 = load ptr, ptr %3, align 8, !tbaa !155
  store ptr %28, ptr %0, align 8, !tbaa !155
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !159
  store i64 %30, ptr %4, align 8, !tbaa !159
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !152
  store i64 %32, ptr %6, align 8, !tbaa !152
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !154
  store ptr %34, ptr %26, align 8, !tbaa !154
  store ptr %23, ptr %3, align 8, !tbaa !155
  store i64 %24, ptr %29, align 8, !tbaa !159
  store i64 %25, ptr %31, align 8, !tbaa !152
  store ptr %27, ptr %33, align 8, !tbaa !154
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !40
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %27)
          to label %43 unwind label %40

40:                                               ; preds = %36
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  call void @__clang_call_terminate(ptr %42) #15
  unreachable

43:                                               ; preds = %22, %36
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %60

44:                                               ; preds = %15
  %45 = landingpad { ptr, i32 }
          cleanup
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !152
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !154
  %52 = load ptr, ptr %3, align 8, !tbaa !155
  %53 = load ptr, ptr %52, align 8, !tbaa !40
  %54 = getelementptr inbounds ptr, ptr %53, i64 3
  %55 = load ptr, ptr %54, align 8
  invoke void %55(ptr noundef nonnull align 8 dereferenceable(8) %52, ptr noundef %51)
          to label %59 unwind label %56

56:                                               ; preds = %49
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  call void @__clang_call_terminate(ptr %58) #15
  unreachable

59:                                               ; preds = %44, %49
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %45

60:                                               ; preds = %43, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !155
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !155
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !159
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !154
  %12 = load ptr, ptr %3, align 8, !tbaa !155
  store ptr %12, ptr %0, align 8, !tbaa !155
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !159
  store i64 %14, ptr %6, align 8, !tbaa !159
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !152
  store i64 %16, ptr %8, align 8, !tbaa !152
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !154
  store ptr %18, ptr %10, align 8, !tbaa !154
  store ptr %5, ptr %3, align 8, !tbaa !155
  store i64 %7, ptr %13, align 8, !tbaa !159
  store i64 %9, ptr %15, align 8, !tbaa !152
  store ptr %11, ptr %17, align 8, !tbaa !154
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !40
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %11)
          to label %27 unwind label %24

24:                                               ; preds = %20
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  call void @__clang_call_terminate(ptr %26) #15
  unreachable

27:                                               ; preds = %2, %20
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEaSERKSG_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.4", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %73, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !152
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !159
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !155
  call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEC2ERKSG_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !155
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !159
  %16 = load i64, ptr %6, align 8, !tbaa !152
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !154
  %19 = load ptr, ptr %3, align 8, !tbaa !155
  store ptr %19, ptr %0, align 8, !tbaa !155
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !159
  store i64 %21, ptr %14, align 8, !tbaa !159
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !152
  store i64 %23, ptr %6, align 8, !tbaa !152
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !154
  store ptr %25, ptr %17, align 8, !tbaa !154
  store ptr %13, ptr %3, align 8, !tbaa !155
  store i64 %15, ptr %20, align 8, !tbaa !159
  store i64 %16, ptr %22, align 8, !tbaa !152
  store ptr %18, ptr %24, align 8, !tbaa !154
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          catch ptr null
  %33 = extractvalue { ptr, i32 } %32, 0
  call void @__clang_call_terminate(ptr %33) #15
  unreachable

34:                                               ; preds = %11, %27
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %73

35:                                               ; preds = %5
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !154
  %38 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !159
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53

44:                                               ; preds = %42
  %45 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !154
  %48 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEE6insertEPSD_PKSD_SJ_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !159
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !159
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !154
  %56 = ptrtoint ptr %54 to i64
  %57 = ptrtoint ptr %55 to i64
  %58 = sub i64 %56, %57
  %59 = ashr exact i64 %58, 3
  %60 = icmp sgt i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.4", ptr %0, i64 0, i32 3
  %63 = load ptr, ptr %62, align 8, !tbaa !154
  br label %64

64:                                               ; preds = %61, %64
  %65 = phi i64 [ %71, %64 ], [ %59, %61 ]
  %66 = phi ptr [ %70, %64 ], [ %63, %61 ]
  %67 = phi ptr [ %69, %64 ], [ %55, %61 ]
  %68 = load ptr, ptr %67, align 8, !tbaa !75
  store ptr %68, ptr %66, align 8, !tbaa !75
  %69 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %67, i64 1
  %70 = getelementptr inbounds %"struct.xalanc_1_10::XalanListIteratorBase", ptr %66, i64 1
  %71 = add nsw i64 %65, -1
  %72 = icmp sgt i64 %65, 1
  br i1 %72, label %64, label %73, !llvm.loop !226

73:                                               ; preds = %64, %53, %34, %2
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEC2EmRKSG_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %3, ptr %0, align 8, !tbaa !68
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  store ptr %3, ptr %5, align 8, !tbaa !68
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEE6insertEPSG_mRKSG_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef null, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2)
          to label %8 unwind label %21

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %0, align 8, !tbaa !68
  %14 = load i64, ptr %6, align 8, !tbaa !111
  %15 = load i64, ptr %12, align 8, !tbaa !128
  %16 = load ptr, ptr %11, align 8, !tbaa !129
  %17 = load ptr, ptr %5, align 8, !tbaa !68
  store ptr %17, ptr %0, align 8, !tbaa !68
  %18 = load i64, ptr %7, align 8, !tbaa !111
  store i64 %18, ptr %6, align 8, !tbaa !111
  %19 = load i64, ptr %10, align 8, !tbaa !128
  store i64 %19, ptr %12, align 8, !tbaa !128
  %20 = load ptr, ptr %9, align 8, !tbaa !129
  store ptr %20, ptr %11, align 8, !tbaa !129
  store ptr %13, ptr %5, align 8, !tbaa !68
  store i64 %14, ptr %7, align 8, !tbaa !111
  store i64 %15, ptr %10, align 8, !tbaa !128
  store ptr %16, ptr %9, align 8, !tbaa !129
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  ret void

21:                                               ; preds = %4
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #10

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xalanc_1_1016FunctionDistinctC2Ev, ptr @_ZN11xalanc_1_108FunctionC2Ev, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1016FunctionDistinctD2Ev, ptr @_ZN11xalanc_1_108FunctionD2Ev, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 2}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !48, i64 8}
!45 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_10XObjectPtrENS_31MemoryManagedConstructionTraitsIS1_EEEE", !46, i64 0, !48, i64 8, !48, i64 16, !46, i64 24}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !42, i64 0}
!48 = !{!"long", !47, i64 0}
!49 = !{!45, !46, i64 24}
!50 = !{!51, !46, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1010XObjectPtrE", !46, i64 0}
!52 = !{!53, !46, i64 0}
!53 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContext30BorrowReturnMutableNodeRefListE", !46, i64 0, !46, i64 8}
!54 = !{!53, !46, i64 8}
!55 = !{!56, !46, i64 8}
!56 = !{!"_ZTSN11xalanc_1_1016ExecutionContextE", !46, i64 8}
!57 = !{!58, !46, i64 8}
!58 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEEE", !59, i64 0, !60, i64 1, !46, i64 8, !61, i64 16, !48, i64 24, !48, i64 32, !62, i64 40, !62, i64 64, !63, i64 88, !48, i64 120, !48, i64 128}
!59 = !{!"_ZTSN11xalanc_1_1021DOMStringHashFunctionE"}
!60 = !{!"_ZTSSt8equal_toIN11xalanc_1_1014XalanDOMStringEE"}
!61 = !{!"float", !47, i64 0}
!62 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEEE", !46, i64 0, !46, i64 8, !46, i64 16}
!63 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEENS_32ConstructWithMemoryManagerTraitsISG_EEEE", !46, i64 0, !48, i64 8, !48, i64 16, !46, i64 24}
!64 = !{!58, !61, i64 16}
!65 = !{!58, !48, i64 24}
!66 = !{!58, !48, i64 32}
!67 = !{!62, !46, i64 0}
!68 = !{!63, !46, i64 0}
!69 = !{!58, !48, i64 128}
!70 = !{!71, !73}
!71 = distinct !{!71, !72, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_: argument 0"}
!72 = distinct !{!72, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE4findERKS1_"}
!73 = distinct !{!73, !74, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE4findERKS1_: argument 0"}
!74 = distinct !{!74, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE4findERKS1_"}
!75 = !{!76, !46, i64 0}
!76 = !{!"_ZTSN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEE", !46, i64 0}
!77 = !{!62, !46, i64 8}
!78 = !{!79, !81, !83, !85}
!79 = distinct !{!79, !80, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!80 = distinct !{!80, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!81 = distinct !{!81, !82, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!82 = distinct !{!82, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!83 = distinct !{!83, !84, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!84 = distinct !{!84, !"_ZNK11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!85 = distinct !{!85, !86, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE3endEv: argument 0"}
!86 = distinct !{!86, !"_ZNK11xalanc_1_108XalanSetINS_14XalanDOMStringEE3endEv"}
!87 = !{!88, !46, i64 24}
!88 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE4NodeE", !89, i64 0, !46, i64 16, !46, i64 24}
!89 = !{!"_ZTSN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE5EntryE", !46, i64 0, !90, i64 8}
!90 = !{!"bool", !47, i64 0}
!91 = !{!88, !46, i64 16}
!92 = !{!90, !90, i64 0}
!93 = !{!94, !48, i64 8}
!94 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !46, i64 0, !48, i64 8, !48, i64 16, !46, i64 24}
!95 = !{!96, !97, i64 32}
!96 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !94, i64 0, !97, i64 32}
!97 = !{!"int", !47, i64 0}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!102, !106, i64 40}
!102 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefListE", !103, i64 0, !106, i64 40}
!103 = !{!"_ZTSN11xalanc_1_1011NodeRefListE", !104, i64 0, !105, i64 8}
!104 = !{!"_ZTSN11xalanc_1_1015NodeRefListBaseE"}
!105 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_9XalanNodeENS_31MemoryManagedConstructionTraitsIS2_EEEE", !46, i64 0, !48, i64 8, !48, i64 16, !46, i64 24}
!106 = !{!"_ZTSN11xalanc_1_1018MutableNodeRefList6eOrderE", !47, i64 0}
!107 = !{!108, !46, i64 16}
!108 = !{!"_ZTSN11xalanc_1_1021XPathExecutionContextE", !56, i64 0, !46, i64 16}
!109 = !{!"function_entry_count", i64 1}
!110 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!111 = !{!63, !48, i64 8}
!112 = !{!113}
!113 = distinct !{!113, !114, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!114 = distinct !{!114, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!115 = !{}
!116 = !{!117}
!117 = distinct !{!117, !118, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!118 = distinct !{!118, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!119 = !{!89, !46, i64 0}
!120 = distinct !{!120, !99, !100}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE5beginEv: argument 0"}
!123 = distinct !{!123, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE5beginEv"}
!124 = !{!125, !122}
!125 = distinct !{!125, !126, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!126 = distinct !{!126, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!127 = distinct !{!127, !99, !100}
!128 = !{!63, !48, i64 16}
!129 = !{!63, !46, i64 24}
!130 = distinct !{!130, !99, !100}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!133 = distinct !{!133, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!136 = distinct !{!136, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!137 = !{!138}
!138 = distinct !{!138, !139, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEppEi: argument 0"}
!139 = distinct !{!139, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEppEi"}
!140 = distinct !{!140, !99, !100}
!141 = !{!62, !46, i64 16}
!142 = !{!143}
!143 = distinct !{!143, !144, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!144 = distinct !{!144, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!145 = !{!89, !90, i64 8}
!146 = !{!"function_entry_count", i64 42470003}
!147 = !{!94, !48, i64 16}
!148 = !{!"branch_weights", i32 52000, i32 42418003}
!149 = !{!94, !46, i64 24}
!150 = !{!94, !46, i64 0}
!151 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!152 = !{!153, !48, i64 16}
!153 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS4_EEE5EntryEEENS_9XalanListIS8_E4NodeEEENS_31MemoryManagedConstructionTraitsISD_EEEE", !46, i64 0, !48, i64 8, !48, i64 16, !46, i64 24}
!154 = !{!153, !46, i64 24}
!155 = !{!153, !46, i64 0}
!156 = !{!157, !157, i64 0}
!157 = !{!"short", !47, i64 0}
!158 = distinct !{!158, !99, !100}
!159 = !{!153, !48, i64 8}
!160 = !{i8 0, i8 2}
!161 = distinct !{!161, !99, !100}
!162 = !{!163}
!163 = distinct !{!163, !164, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!164 = distinct !{!164, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!165 = !{!166, !163}
!166 = distinct !{!166, !167, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!167 = distinct !{!167, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!168 = !{!169, !171}
!169 = distinct !{!169, !170, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!170 = distinct !{!170, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!171 = distinct !{!171, !172, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv: argument 0"}
!172 = distinct !{!172, !"_ZN11xalanc_1_108XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS1_EEE3endEv"}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!175 = distinct !{!175, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!176 = !{!177}
!177 = distinct !{!177, !178, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!178 = distinct !{!178, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!179 = !{!180}
!180 = distinct !{!180, !181, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!181 = distinct !{!181, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!184 = distinct !{!184, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!185 = !{!186}
!186 = distinct !{!186, !187, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!187 = distinct !{!187, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!188 = !{!189}
!189 = distinct !{!189, !190, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!190 = distinct !{!190, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!193 = distinct !{!193, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!196 = distinct !{!196, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!197 = !{!198}
!198 = distinct !{!198, !199, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv: argument 0"}
!199 = distinct !{!199, !"_ZN11xalanc_1_1021XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS3_EEE5EntryEEENS_9XalanListIS7_E4NodeEEmmEv"}
!200 = distinct !{!200, !99, !100}
!201 = distinct !{!201, !99, !100}
!202 = distinct !{!202, !99, !100}
!203 = distinct !{!203, !99, !100}
!204 = distinct !{!204, !99, !100}
!205 = distinct !{!205, !99, !100}
!206 = !{!207}
!207 = distinct !{!207, !208, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv: argument 0"}
!208 = distinct !{!208, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE5beginEv"}
!209 = !{!46, !46, i64 0}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!212 = distinct !{!212, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!213 = distinct !{!213, !99, !100}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv: argument 0"}
!216 = distinct !{!216, !"_ZN11xalanc_1_109XalanListINS_8XalanMapINS_14XalanDOMStringEbNS_17XalanMapKeyTraitsIS2_EEE5EntryEE3endEv"}
!217 = !{i64 0, i64 8, !209, i64 8, i64 1, !92}
!218 = distinct !{!218, !99, !100}
!219 = distinct !{!219, !99, !100}
!220 = distinct !{!220, !99, !100}
!221 = distinct !{!221, !99, !100}
!222 = distinct !{!222, !99, !100}
!223 = distinct !{!223, !99, !100}
!224 = distinct !{!224, !99, !100}
!225 = distinct !{!225, !99, !100}
!226 = distinct !{!226, !99, !100}
!227 = distinct !{!227, !99, !100}
!228 = distinct !{!228, !99, !100}
