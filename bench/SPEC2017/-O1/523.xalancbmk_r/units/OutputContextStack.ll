; ModuleID = 'OutputContextStack.cpp'
source_filename = "OutputContextStack.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::OutputContextStack" = type { %"class.xalanc_1_10::XalanDeque", %"struct.xalanc_1_10::XalanDequeIterator", i64 }
%"class.xalanc_1_10::XalanDeque" = type { ptr, i64, %"class.xalanc_1_10::XalanVector", %"class.xalanc_1_10::XalanVector" }
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"struct.xalanc_1_10::XalanDequeIterator" = type { ptr, i64 }
%"struct.xalanc_1_10::ConstructValueWithMemoryManager" = type { %"struct.xalanc_1_10::OutputContextStack::OutputContext" }
%"struct.xalanc_1_10::OutputContextStack::OutputContext" = type <{ ptr, %"class.xalanc_1_10::AttributeListImpl", %"class.xalanc_1_10::XalanDOMString", i8, i8, [6 x i8] }>
%"class.xalanc_1_10::AttributeListImpl" = type { %"class.xercesc_2_7::AttributeList", %"class.xalanc_1_10::XalanVector.0", %"class.xalanc_1_10::XalanVector.0" }
%"class.xercesc_2_7::AttributeList" = type { ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector.1", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanVector.2" = type { ptr, i64, i64, ptr }

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev = comdat any

$_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_ = comdat any

$_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev = comdat any

$_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_ = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm = comdat any

$_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS5_EET0_T_SA_S9_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_ = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_ = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm = comdat any

$_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1018OutputContextStack13OutputContextES6_EET0_T_S8_S7_ = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv = comdat any

$_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm = comdat any

$_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv = comdat any

@_ZN11xalanc_1_1018OutputContextStackC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1018OutputContextStackC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1018OutputContextStackD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1018OutputContextStackD2Ev

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStackC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 1, i64 noundef 10)
  %3 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  store ptr %0, ptr %3, align 8, !tbaa !74, !alias.scope !80
  %4 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %5 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  store ptr %1, ptr %0, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !86
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %8 = udiv i64 %2, %3
  %9 = urem i64 %2, %3
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = add i64 %8, %11
  store ptr %1, ptr %7, align 8, !tbaa !87
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  store i64 0, ptr %13, align 8, !tbaa !88
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 2
  store i64 %12, ptr %14, align 8, !tbaa !89
  %15 = icmp eq i64 %12, 0
  br i1 %15, label %22, label %16, !prof !90

16:                                               ; preds = %4
  %17 = shl i64 %12, 3
  %18 = load ptr, ptr %1, align 8, !tbaa !91
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %17), !prof !93
  br label %22

22:                                               ; preds = %4, %16
  %23 = phi ptr [ %21, %16 ], [ null, %4 ]
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  store ptr %23, ptr %24, align 8, !tbaa !94
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  store ptr %1, ptr %25, align 8, !tbaa !87
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %5) #13
  %27 = load ptr, ptr %0, align 8, !tbaa !83
  invoke void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(122) %5, ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef null)
          to label %28 unwind label %52, !prof !95

28:                                               ; preds = %22
  %29 = icmp eq i64 %2, 0
  br i1 %29, label %35, label %30, !prof !96

30:                                               ; preds = %28, %32
  %31 = phi i64 [ %33, %32 ], [ %2, %28 ]
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(122) %5)
          to label %32 unwind label %54, !prof !95

32:                                               ; preds = %30
  %33 = add i64 %31, -1
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %30, !prof !97, !llvm.loop !98

35:                                               ; preds = %32, %28
  %36 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 2, i32 0, i32 2
  %37 = load i64, ptr %36, align 8, !tbaa !101
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %50, label %39, !prof !95

39:                                               ; preds = %35
  %40 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 2
  %41 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 2, i32 0, i32 3
  %42 = load ptr, ptr %41, align 8, !tbaa !103
  %43 = load ptr, ptr %40, align 8, !tbaa !104
  %44 = load ptr, ptr %43, align 8, !tbaa !91
  %45 = getelementptr inbounds ptr, ptr %44, i64 3
  %46 = load ptr, ptr %45, align 8
  invoke void %46(ptr noundef nonnull align 8 dereferenceable(8) %43, ptr noundef %42)
          to label %50 unwind label %47

47:                                               ; preds = %39
  %48 = landingpad { ptr, i32 }
          catch ptr null
  %49 = extractvalue { ptr, i32 } %48, 0
  call void @__clang_call_terminate(ptr %49) #14
  unreachable

50:                                               ; preds = %35, %39
  %51 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 1
  call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %51) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #13
  ret void

52:                                               ; preds = %22
  %53 = landingpad { ptr, i32 }
          cleanup
  br label %72

54:                                               ; preds = %30
  %55 = landingpad { ptr, i32 }
          cleanup
  %56 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 2, i32 0, i32 2
  %57 = load i64, ptr %56, align 8, !tbaa !101
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 2
  %61 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 2, i32 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !103
  %63 = load ptr, ptr %60, align 8, !tbaa !104
  %64 = load ptr, ptr %63, align 8, !tbaa !91
  %65 = getelementptr inbounds ptr, ptr %64, i64 3
  %66 = load ptr, ptr %65, align 8
  invoke void %66(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %62)
          to label %70 unwind label %67

67:                                               ; preds = %59
  %68 = landingpad { ptr, i32 }
          catch ptr null
  %69 = extractvalue { ptr, i32 } %68, 0
  call void @__clang_call_terminate(ptr %69) #14
  unreachable

70:                                               ; preds = %54, %59
  %71 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %5, i64 0, i32 1
  call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %71) #13
  br label %72

72:                                               ; preds = %70, %52
  %73 = phi { ptr, i32 } [ %55, %70 ], [ %53, %52 ]
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %5) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #13
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #13
  resume { ptr, i32 } %73
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %2 unwind label %28, !prof !95

2:                                                ; preds = %1
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 3
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !88
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %23, label %7, !prof !96

7:                                                ; preds = %2
  %8 = load ptr, ptr %3, align 8, !tbaa !94
  br label %9

9:                                                ; preds = %7, %17
  %10 = phi ptr [ %18, %17 ], [ %8, %7 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !105
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #13
  %12 = load ptr, ptr %10, align 8, !tbaa !105
  %13 = load ptr, ptr %0, align 8, !tbaa !83
  %14 = load ptr, ptr %13, align 8, !tbaa !91
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  invoke void %16(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %12)
          to label %17 unwind label %26, !prof !106

17:                                               ; preds = %9
  %18 = getelementptr inbounds ptr, ptr %10, i64 1
  %19 = load ptr, ptr %3, align 8, !tbaa !94
  %20 = load i64, ptr %4, align 8, !tbaa !88
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = icmp eq ptr %18, %21
  br i1 %22, label %23, label %9, !prof !97, !llvm.loop !107

23:                                               ; preds = %17, %2
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %24) #13
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %25) #13
  ret void

26:                                               ; preds = %9
  %27 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

28:                                               ; preds = %1
  %29 = landingpad { ptr, i32 }
          catch ptr null
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  %32 = extractvalue { ptr, i32 } %31, 0
  tail call void @__clang_call_terminate(ptr %32) #14
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStackD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) unnamed_addr #1 align 2 !prof !73 {
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !108 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !109
  %6 = add i64 %5, 1
  store i64 %6, ptr %4, align 8, !tbaa !109
  %7 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 2
  %8 = load i64, ptr %7, align 8, !tbaa !110
  %9 = add i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !110
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !88
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %26, label %13, !prof !112

13:                                               ; preds = %2
  %14 = add i64 %11, -1
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %16 = load i64, ptr %15, align 8, !tbaa !86, !noalias !113
  %17 = mul i64 %16, %14
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !94, !noalias !113
  %20 = getelementptr ptr, ptr %19, i64 %11
  %21 = getelementptr ptr, ptr %20, i64 -1
  %22 = load ptr, ptr %21, align 8, !tbaa !105, !noalias !113
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %22, i64 0, i32 1
  %24 = load i64, ptr %23, align 8, !tbaa !116, !noalias !113
  %25 = add i64 %24, %17
  br label %26

26:                                               ; preds = %2, %13
  %27 = phi i64 [ %25, %13 ], [ 0, %2 ]
  %28 = load ptr, ptr %3, align 8, !tbaa !74
  %29 = icmp eq ptr %28, %0
  %30 = icmp eq i64 %27, %6
  %31 = select i1 %29, i1 %30, i1 false, !prof !118
  br i1 %31, label %32, label %67, !prof !119

32:                                               ; preds = %26
  br i1 %12, label %47, label %33, !prof !120

33:                                               ; preds = %32
  %34 = add i64 %11, -1
  %35 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !86
  %37 = mul i64 %36, %34
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !94
  %40 = getelementptr ptr, ptr %39, i64 %11
  %41 = getelementptr ptr, ptr %40, i64 -1
  %42 = load ptr, ptr %41, align 8, !tbaa !105
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %42, i64 0, i32 1
  %44 = load i64, ptr %43, align 8, !tbaa !116
  %45 = add i64 %37, 1
  %46 = add i64 %45, %44
  br label %47

47:                                               ; preds = %32, %33
  %48 = phi i64 [ %46, %33 ], [ 1, %32 ]
  tail call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %48)
  %49 = load i64, ptr %10, align 8, !tbaa !88, !noalias !121
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %65, label %51, !prof !120

51:                                               ; preds = %47
  %52 = add i64 %49, -1
  %53 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %54 = load i64, ptr %53, align 8, !tbaa !86, !noalias !121
  %55 = mul i64 %54, %52
  %56 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %57 = load ptr, ptr %56, align 8, !tbaa !94, !noalias !121
  %58 = getelementptr ptr, ptr %57, i64 %49
  %59 = getelementptr ptr, ptr %58, i64 -1
  %60 = load ptr, ptr %59, align 8, !tbaa !105, !noalias !121
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %60, i64 0, i32 1
  %62 = load i64, ptr %61, align 8, !tbaa !116, !noalias !121
  %63 = add i64 %55, -1
  %64 = add i64 %63, %62
  br label %65

65:                                               ; preds = %47, %51
  %66 = phi i64 [ %64, %51 ], [ -1, %47 ]
  store ptr %0, ptr %3, align 8, !tbaa !74
  store i64 %66, ptr %4, align 8, !tbaa !109
  br label %67

67:                                               ; preds = %65, %26
  %68 = icmp eq ptr %1, null
  br i1 %68, label %83, label %69, !prof !124

69:                                               ; preds = %67
  %70 = load ptr, ptr %3, align 8, !tbaa !74
  %71 = load i64, ptr %4, align 8, !tbaa !109
  %72 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %70, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !86
  %74 = udiv i64 %71, %73
  %75 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %70, i64 0, i32 2, i32 3
  %76 = load ptr, ptr %75, align 8, !tbaa !94
  %77 = getelementptr inbounds ptr, ptr %76, i64 %74
  %78 = load ptr, ptr %77, align 8, !tbaa !105
  %79 = urem i64 %71, %73
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %78, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !125
  %82 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %81, i64 %79
  store ptr %1, ptr %82, align 8, !tbaa !126
  br label %83

83:                                               ; preds = %69, %67
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(80) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = alloca %"struct.xalanc_1_10::ConstructValueWithMemoryManager", align 8
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !83
  call void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(122) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %21, label %8, !prof !120

8:                                                ; preds = %2
  %9 = add i64 %6, -1
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !86
  %12 = mul i64 %11, %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = getelementptr ptr, ptr %14, i64 %6
  %16 = getelementptr ptr, ptr %15, i64 -1
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %17, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !116
  %20 = add i64 %19, %12
  br label %21

21:                                               ; preds = %8, %2
  %22 = phi i64 [ %20, %8 ], [ 0, %2 ]
  %23 = icmp ult i64 %22, %1
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  br i1 %23, label %26, label %50, !prof !135

26:                                               ; preds = %21, %48
  %27 = phi i64 [ %49, %48 ], [ 0, %21 ]
  %28 = load i64, ptr %5, align 8, !tbaa !88
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %41, label %30, !prof !136

30:                                               ; preds = %26
  %31 = add i64 %28, -1
  %32 = load i64, ptr %24, align 8, !tbaa !86
  %33 = mul i64 %32, %31
  %34 = load ptr, ptr %25, align 8, !tbaa !94
  %35 = getelementptr ptr, ptr %34, i64 %28
  %36 = getelementptr ptr, ptr %35, i64 -1
  %37 = load ptr, ptr %36, align 8, !tbaa !105
  %38 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %37, i64 0, i32 1
  %39 = load i64, ptr %38, align 8, !tbaa !116
  %40 = add i64 %39, %33
  br label %41

41:                                               ; preds = %30, %26
  %42 = phi i64 [ %40, %30 ], [ 0, %26 ]
  %43 = sub i64 %1, %42
  %44 = icmp ult i64 %27, %43
  br i1 %44, label %47, label %74, !prof !137

45:                                               ; preds = %47
  %46 = landingpad { ptr, i32 }
          cleanup
  br label %91

47:                                               ; preds = %41
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(122) %3)
          to label %48 unwind label %45, !prof !135

48:                                               ; preds = %47
  %49 = add nuw i64 %27, 1
  br label %26, !llvm.loop !138

50:                                               ; preds = %21, %72
  %51 = phi i64 [ %73, %72 ], [ 0, %21 ]
  %52 = load i64, ptr %5, align 8, !tbaa !88
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %65, label %54

54:                                               ; preds = %50
  %55 = add i64 %52, -1
  %56 = load i64, ptr %24, align 8, !tbaa !86
  %57 = mul i64 %56, %55
  %58 = load ptr, ptr %25, align 8, !tbaa !94
  %59 = getelementptr ptr, ptr %58, i64 %52
  %60 = getelementptr ptr, ptr %59, i64 -1
  %61 = load ptr, ptr %60, align 8, !tbaa !105
  %62 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %61, i64 0, i32 1
  %63 = load i64, ptr %62, align 8, !tbaa !116
  %64 = add i64 %63, %57
  br label %65

65:                                               ; preds = %54, %50
  %66 = phi i64 [ %64, %54 ], [ 0, %50 ]
  %67 = sub i64 %66, %1
  %68 = icmp ult i64 %51, %67
  br i1 %68, label %71, label %74

69:                                               ; preds = %71
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %91

71:                                               ; preds = %65
  invoke void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
          to label %72 unwind label %69

72:                                               ; preds = %71
  %73 = add nuw i64 %51, 1
  br label %50, !llvm.loop !139

74:                                               ; preds = %65, %41
  %75 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 2, i32 0, i32 2
  %76 = load i64, ptr %75, align 8, !tbaa !101
  %77 = icmp eq i64 %76, 0
  br i1 %77, label %89, label %78, !prof !135

78:                                               ; preds = %74
  %79 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 2
  %80 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 2, i32 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !103
  %82 = load ptr, ptr %79, align 8, !tbaa !104
  %83 = load ptr, ptr %82, align 8, !tbaa !91
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %81)
          to label %89 unwind label %86

86:                                               ; preds = %78
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #14
  unreachable

89:                                               ; preds = %74, %78
  %90 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 1
  call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %90) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  ret void

91:                                               ; preds = %69, %45
  %92 = phi { ptr, i32 } [ %46, %45 ], [ %70, %69 ]
  %93 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 2, i32 0, i32 2
  %94 = load i64, ptr %93, align 8, !tbaa !101
  %95 = icmp eq i64 %94, 0
  br i1 %95, label %107, label %96

96:                                               ; preds = %91
  %97 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 2
  %98 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 2, i32 0, i32 3
  %99 = load ptr, ptr %98, align 8, !tbaa !103
  %100 = load ptr, ptr %97, align 8, !tbaa !104
  %101 = load ptr, ptr %100, align 8, !tbaa !91
  %102 = getelementptr inbounds ptr, ptr %101, i64 3
  %103 = load ptr, ptr %102, align 8
  invoke void %103(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %99)
          to label %107 unwind label %104

104:                                              ; preds = %96
  %105 = landingpad { ptr, i32 }
          catch ptr null
  %106 = extractvalue { ptr, i32 } %105, 0
  call void @__clang_call_terminate(ptr %106) #14
  unreachable

107:                                              ; preds = %91, %96
  %108 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %3, i64 0, i32 1
  call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %108) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #13
  resume { ptr, i32 } %92
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack10popContextEv(ptr nocapture noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #2 align 2 !prof !140 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !109
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !86
  %8 = udiv i64 %5, %7
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %3, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = getelementptr inbounds ptr, ptr %10, i64 %8
  %12 = load ptr, ptr %11, align 8, !tbaa !105
  %13 = urem i64 %5, %7
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %12, i64 0, i32 3
  %15 = load ptr, ptr %14, align 8, !tbaa !125
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13
  store ptr null, ptr %16, align 8, !tbaa !126
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72) %17)
  %18 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13, i32 2, i32 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !141
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %24, label %21, !prof !142

21:                                               ; preds = %1
  %22 = load i64, ptr %18, align 8, !tbaa !141
  %23 = sub i64 %22, %19
  store i64 %23, ptr %18, align 8, !tbaa !141
  br label %24

24:                                               ; preds = %21, %1
  %25 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13, i32 2, i32 1
  store i32 0, ptr %25, align 8, !tbaa !143
  %26 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13, i32 3
  store i8 0, ptr %26, align 8, !tbaa !144
  %27 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %15, i64 %13, i32 4
  store i8 0, ptr %27, align 1, !tbaa !145
  %28 = load i64, ptr %4, align 8, !tbaa !109
  %29 = add i64 %28, -1
  store i64 %29, ptr %4, align 8, !tbaa !109
  %30 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 2
  %31 = load i64, ptr %30, align 8, !tbaa !110
  %32 = add i64 %31, -1
  store i64 %32, ptr %30, align 8, !tbaa !110
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack5clearEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %2 = alloca %"class.xalanc_1_10::XalanDeque", align 8
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %2) #13
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm(ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef 1, i64 noundef 10)
  %4 = load ptr, ptr %2, align 8, !tbaa !83
  %5 = load ptr, ptr %0, align 8, !tbaa !83
  store ptr %5, ptr %2, align 8, !tbaa !83
  store ptr %4, ptr %0, align 8, !tbaa !83
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %6, align 8, !tbaa !87
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !88
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 2
  %12 = load i64, ptr %11, align 8, !tbaa !89
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  %15 = load ptr, ptr %7, align 8, !tbaa !87
  store ptr %15, ptr %6, align 8, !tbaa !87
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !88
  store i64 %17, ptr %9, align 8, !tbaa !88
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 2
  %19 = load i64, ptr %18, align 8, !tbaa !89
  store i64 %19, ptr %11, align 8, !tbaa !89
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 2, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !94
  store ptr %21, ptr %13, align 8, !tbaa !94
  store ptr %8, ptr %7, align 8, !tbaa !87
  store i64 %10, ptr %16, align 8, !tbaa !88
  store i64 %12, ptr %18, align 8, !tbaa !89
  store ptr %14, ptr %20, align 8, !tbaa !94
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  %23 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3
  %24 = load ptr, ptr %22, align 8, !tbaa !87
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %26 = load i64, ptr %25, align 8, !tbaa !88
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 2
  %28 = load i64, ptr %27, align 8, !tbaa !89
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !94
  %31 = load ptr, ptr %23, align 8, !tbaa !87
  store ptr %31, ptr %22, align 8, !tbaa !87
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3, i32 1
  %33 = load i64, ptr %32, align 8, !tbaa !88
  store i64 %33, ptr %25, align 8, !tbaa !88
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3, i32 2
  %35 = load i64, ptr %34, align 8, !tbaa !89
  store i64 %35, ptr %27, align 8, !tbaa !89
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %2, i64 0, i32 3, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !94
  store ptr %37, ptr %29, align 8, !tbaa !94
  store ptr %24, ptr %23, align 8, !tbaa !87
  store i64 %26, ptr %32, align 8, !tbaa !88
  store i64 %28, ptr %34, align 8, !tbaa !89
  store ptr %30, ptr %36, align 8, !tbaa !94
  %38 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  store ptr %0, ptr %38, align 8, !tbaa !74
  %39 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %39, i8 0, i64 16, i1 false)
  call void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %2) #13
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %2) #13
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1018OutputContextStack5resetEv(ptr noundef nonnull align 8 dereferenceable(104) %0) local_unnamed_addr #0 align 2 !prof !134 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1
  %3 = getelementptr inbounds %"class.xalanc_1_10::OutputContextStack", ptr %0, i64 0, i32 1, i32 1
  %4 = load ptr, ptr %2, align 8, !tbaa !74
  %5 = icmp ne ptr %4, %0
  %6 = load i64, ptr %3, align 8
  %7 = icmp ne i64 %6, 0
  %8 = select i1 %5, i1 true, i1 %7, !prof !136
  br i1 %8, label %9, label %15, !prof !97

9:                                                ; preds = %1, %9
  tail call void @_ZN11xalanc_1_1018OutputContextStack10popContextEv(ptr noundef nonnull align 8 dereferenceable(104) %0)
  %10 = load ptr, ptr %2, align 8, !tbaa !74
  %11 = icmp ne ptr %10, %0
  %12 = load i64, ptr %3, align 8
  %13 = icmp ne i64 %12, 0
  %14 = select i1 %11, i1 true, i1 %13, !prof !136
  br i1 %14, label %9, label %15, !prof !96, !llvm.loop !147

15:                                               ; preds = %9, %1
  ret void
}

declare void @_ZN11xalanc_1_1017AttributeListImpl5clearEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #5

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !89
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !120

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !94
  %8 = load ptr, ptr %0, align 8, !tbaa !87
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !148

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  store ptr %2, ptr %0, align 8, !tbaa !126
  %4 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %5, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %9, !prof !150

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 3
  store i8 0, ptr %7, align 8, !tbaa !144
  %8 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 4
  store i8 0, ptr %8, align 1, !tbaa !145
  ret void

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %4) #13
  resume { ptr, i32 } %10
}

declare void @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #6

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) local_unnamed_addr #0 comdat align 2 !prof !149 {
  %3 = alloca ptr, align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !88
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %19, label %8, !prof !151

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !94
  %11 = getelementptr ptr, ptr %10, i64 %6
  %12 = getelementptr ptr, ptr %11, i64 -1
  %13 = load ptr, ptr %12, align 8, !tbaa !105
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %13, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !116
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !86
  %18 = icmp ult i64 %15, %17
  br i1 %18, label %21, label %19, !prof !135

19:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %20 = tail call noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0)
  store ptr %20, ptr %3, align 8, !tbaa !105
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br label %21

21:                                               ; preds = %19, %8
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = load i64, ptr %5, align 8, !tbaa !88
  %25 = getelementptr ptr, ptr %23, i64 %24
  %26 = getelementptr ptr, ptr %25, i64 -1
  %27 = load ptr, ptr %26, align 8, !tbaa !105
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %27, ptr noundef nonnull align 8 dereferenceable(122) %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !88
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %5, label %26, !prof !95

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !83
  %7 = load ptr, ptr %6, align 8, !tbaa !91
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef 32), !prof !93
  %11 = load ptr, ptr %0, align 8, !tbaa !83
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !86
  store ptr %11, ptr %10, align 8, !tbaa !152
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %10, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !116
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %10, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !153
  %16 = icmp eq i64 %13, 0
  br i1 %16, label %23, label %17, !prof !90

17:                                               ; preds = %5
  %18 = shl i64 %13, 7
  %19 = load ptr, ptr %11, align 8, !tbaa !91
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %18), !prof !93
  br label %23

23:                                               ; preds = %5, %17
  %24 = phi ptr [ %22, %17 ], [ null, %5 ]
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %10, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !125
  br label %33

26:                                               ; preds = %1
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !94
  %29 = getelementptr ptr, ptr %28, i64 %3
  %30 = getelementptr ptr, ptr %29, i64 -1
  %31 = load ptr, ptr %30, align 8, !tbaa !105
  %32 = add i64 %3, -1
  store i64 %32, ptr %2, align 8, !tbaa !88
  br label %33

33:                                               ; preds = %26, %23
  %34 = phi ptr [ %10, %23 ], [ %31, %26 ]
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !134 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !88
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !89
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !135

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = getelementptr inbounds ptr, ptr %11, i64 %5
  %13 = load ptr, ptr %1, align 8, !tbaa !105
  store ptr %13, ptr %12, align 8, !tbaa !105
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !88
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !87
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !87
  %24 = load i64, ptr %4, align 8, !tbaa !88
  %25 = load i64, ptr %6, align 8, !tbaa !89
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !94
  %28 = load ptr, ptr %3, align 8, !tbaa !87
  store ptr %28, ptr %0, align 8, !tbaa !87
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !88
  store i64 %30, ptr %4, align 8, !tbaa !88
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !89
  store i64 %32, ptr %6, align 8, !tbaa !89
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  store ptr %34, ptr %26, align 8, !tbaa !94
  store ptr %23, ptr %3, align 8, !tbaa !87
  store i64 %24, ptr %29, align 8, !tbaa !88
  store i64 %25, ptr %31, align 8, !tbaa !89
  store ptr %27, ptr %33, align 8, !tbaa !94
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !91
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
  %47 = load i64, ptr %46, align 8, !tbaa !89
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !94
  %52 = load ptr, ptr %3, align 8, !tbaa !87
  %53 = load ptr, ptr %52, align 8, !tbaa !91
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

; Function Attrs: mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #7

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  store ptr %2, ptr %0, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !88
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !95

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !87
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !88
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !89
  %16 = shl i64 %13, 3
  %17 = load ptr, ptr %2, align 8, !tbaa !91
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !94
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  %24 = load i64, ptr %9, align 8, !tbaa !88
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !87
  %28 = load i64, ptr %6, align 8, !tbaa !88
  %29 = load i64, ptr %7, align 8, !tbaa !89
  %30 = load ptr, ptr %8, align 8, !tbaa !94
  %31 = load ptr, ptr %5, align 8, !tbaa !87
  store ptr %31, ptr %0, align 8, !tbaa !87
  %32 = load i64, ptr %14, align 8, !tbaa !88
  store i64 %32, ptr %6, align 8, !tbaa !88
  %33 = load i64, ptr %15, align 8, !tbaa !89
  store i64 %33, ptr %7, align 8, !tbaa !89
  %34 = load ptr, ptr %21, align 8, !tbaa !94
  store ptr %34, ptr %8, align 8, !tbaa !94
  store ptr %27, ptr %5, align 8, !tbaa !87
  store i64 %28, ptr %14, align 8, !tbaa !88
  store i64 %29, ptr %15, align 8, !tbaa !89
  store ptr %30, ptr %21, align 8, !tbaa !94
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !91
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
  %46 = load i64, ptr %15, align 8, !tbaa !89
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !94
  %50 = load ptr, ptr %5, align 8, !tbaa !87
  %51 = load ptr, ptr %50, align 8, !tbaa !91
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
  br i1 %59, label %66, label %60, !prof !90

60:                                               ; preds = %58
  %61 = shl i64 %3, 3
  %62 = load ptr, ptr %2, align 8, !tbaa !91
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !93
  store ptr %65, ptr %8, align 8, !tbaa !94
  store i64 %3, ptr %7, align 8, !tbaa !89
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xalanc_1_10::XalanVector", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 3
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !88
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !94
  %17 = getelementptr inbounds ptr, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !89
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !94
  %28 = load i64, ptr %12, align 8, !tbaa !88
  %29 = getelementptr ptr, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load ptr, ptr %31, align 8, !tbaa !105
  store ptr %34, ptr %32, align 8, !tbaa !105
  %35 = getelementptr inbounds ptr, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds ptr, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !llvm.loop !154

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !87
  store ptr %42, ptr %5, align 8, !tbaa !87
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !88
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !89
  %45 = shl i64 %14, 3
  %46 = load ptr, ptr %42, align 8, !tbaa !91
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !94
  %51 = load i64, ptr %43, align 8, !tbaa !88
  %52 = getelementptr inbounds ptr, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !94
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !94
  %56 = load i64, ptr %43, align 8, !tbaa !88
  %57 = getelementptr inbounds ptr, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !94
  %60 = load i64, ptr %43, align 8, !tbaa !88
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !94
  %63 = load i64, ptr %12, align 8, !tbaa !88
  %64 = getelementptr inbounds ptr, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE6insertEPS6_PKS6_SC_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !87
  %67 = load i64, ptr %12, align 8, !tbaa !88
  %68 = load i64, ptr %19, align 8, !tbaa !89
  %69 = load ptr, ptr %15, align 8, !tbaa !94
  %70 = load ptr, ptr %5, align 8, !tbaa !87
  store ptr %70, ptr %0, align 8, !tbaa !87
  %71 = load i64, ptr %43, align 8, !tbaa !88
  store i64 %71, ptr %12, align 8, !tbaa !88
  %72 = load i64, ptr %44, align 8, !tbaa !89
  store i64 %72, ptr %19, align 8, !tbaa !89
  %73 = load ptr, ptr %50, align 8, !tbaa !94
  store ptr %73, ptr %15, align 8, !tbaa !94
  store ptr %66, ptr %5, align 8, !tbaa !87
  store i64 %67, ptr %43, align 8, !tbaa !88
  store i64 %68, ptr %44, align 8, !tbaa !89
  store ptr %69, ptr %50, align 8, !tbaa !94
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !91
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
  %85 = load i64, ptr %44, align 8, !tbaa !89
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !94
  %89 = load ptr, ptr %5, align 8, !tbaa !87
  %90 = load ptr, ptr %89, align 8, !tbaa !91
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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %108)
  %109 = getelementptr inbounds ptr, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !llvm.loop !155

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %112)
  %113 = getelementptr inbounds ptr, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !llvm.loop !156

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
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %121)
  %122 = getelementptr inbounds ptr, ptr %121, i64 1
  %123 = icmp eq ptr %122, %17
  br i1 %123, label %124, label %120, !llvm.loop !157

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
  store i64 %36, ptr %12, align 8, !tbaa !88
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %3 = alloca %"class.xalanc_1_10::XalanVector", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !87
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !87
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !88
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !89
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !94
  %12 = load ptr, ptr %3, align 8, !tbaa !87
  store ptr %12, ptr %0, align 8, !tbaa !87
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !88
  store i64 %14, ptr %6, align 8, !tbaa !88
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !89
  store i64 %16, ptr %8, align 8, !tbaa !89
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !94
  store ptr %18, ptr %10, align 8, !tbaa !94
  store ptr %5, ptr %3, align 8, !tbaa !87
  store i64 %7, ptr %13, align 8, !tbaa !88
  store i64 %9, ptr %15, align 8, !tbaa !89
  store ptr %11, ptr %17, align 8, !tbaa !94
  %19 = icmp eq i64 %9, 0
  br i1 %19, label %27, label %20, !prof !95

20:                                               ; preds = %2
  %21 = load ptr, ptr %5, align 8, !tbaa !91
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !116
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !153
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %16, !prof !150

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %11, i64 %5
  %13 = load ptr, ptr %0, align 8, !tbaa !152
  tail call void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(122) %12, ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 8 dereferenceable(8) %13)
  %14 = load i64, ptr %4, align 8, !tbaa !116
  %15 = add i64 %14, 1
  store i64 %15, ptr %4, align 8, !tbaa !116
  br label %38

16:                                               ; preds = %2
  %17 = icmp eq i64 %5, 0
  %18 = uitofp i64 %5 to double
  %19 = tail call double @llvm.fmuladd.f64(double %18, double 1.600000e+00, double 5.000000e-01)
  %20 = fptoui double %19 to i64
  %21 = select i1 %17, i64 1, i64 %20
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %22 = load ptr, ptr %0, align 8, !tbaa !152
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %22, i64 noundef %21)
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(122) %1)
          to label %23 unwind label %36

23:                                               ; preds = %16
  %24 = load ptr, ptr %0, align 8, !tbaa !152
  %25 = load i64, ptr %4, align 8, !tbaa !116
  %26 = load i64, ptr %6, align 8, !tbaa !153
  %27 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !125
  %29 = load ptr, ptr %3, align 8, !tbaa !152
  store ptr %29, ptr %0, align 8, !tbaa !152
  %30 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %31 = load i64, ptr %30, align 8, !tbaa !116
  store i64 %31, ptr %4, align 8, !tbaa !116
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !153
  store i64 %33, ptr %6, align 8, !tbaa !153
  %34 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !125
  store ptr %35, ptr %27, align 8, !tbaa !125
  store ptr %24, ptr %3, align 8, !tbaa !152
  store i64 %25, ptr %30, align 8, !tbaa !116
  store i64 %26, ptr %32, align 8, !tbaa !153
  store ptr %28, ptr %34, align 8, !tbaa !125
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %38

36:                                               ; preds = %16
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  resume { ptr, i32 } %37

38:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  store ptr %2, ptr %0, align 8, !tbaa !152
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !116
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %37, label %12

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !152
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !116
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !153
  %16 = shl i64 %13, 7
  %17 = load ptr, ptr %2, align 8, !tbaa !91
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16)
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !125
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !125
  %24 = load i64, ptr %9, align 8, !tbaa !116
  %25 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %35

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !152
  %28 = load i64, ptr %6, align 8, !tbaa !116
  %29 = load i64, ptr %7, align 8, !tbaa !153
  %30 = load ptr, ptr %8, align 8, !tbaa !125
  %31 = load ptr, ptr %5, align 8, !tbaa !152
  store ptr %31, ptr %0, align 8, !tbaa !152
  %32 = load i64, ptr %14, align 8, !tbaa !116
  store i64 %32, ptr %6, align 8, !tbaa !116
  %33 = load i64, ptr %15, align 8, !tbaa !153
  store i64 %33, ptr %7, align 8, !tbaa !153
  %34 = load ptr, ptr %21, align 8, !tbaa !125
  store ptr %34, ptr %8, align 8, !tbaa !125
  store ptr %27, ptr %5, align 8, !tbaa !152
  store i64 %28, ptr %14, align 8, !tbaa !116
  store i64 %29, ptr %15, align 8, !tbaa !153
  store ptr %30, ptr %21, align 8, !tbaa !125
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %45

35:                                               ; preds = %12
  %36 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %36

37:                                               ; preds = %4
  %38 = icmp eq i64 %3, 0
  br i1 %38, label %45, label %39

39:                                               ; preds = %37
  %40 = shl i64 %3, 7
  %41 = load ptr, ptr %2, align 8, !tbaa !91
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %40)
  store ptr %44, ptr %8, align 8, !tbaa !125
  store i64 %3, ptr %7, align 8, !tbaa !153
  br label %45

45:                                               ; preds = %37, %39, %26
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !73 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !153
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %24, label %5, !prof !90

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !125
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %7, i64 %9
  %11 = icmp eq i64 %9, 0
  br i1 %11, label %18, label %12, !prof !95

12:                                               ; preds = %5, %12
  %13 = phi ptr [ %16, %12 ], [ %7, %5 ]
  %14 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %14) #13
  %15 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 1
  %17 = icmp eq ptr %16, %10
  br i1 %17, label %18, label %12, !prof !95, !llvm.loop !158

18:                                               ; preds = %12, %5
  %19 = load ptr, ptr %6, align 8, !tbaa !125
  %20 = load ptr, ptr %0, align 8, !tbaa !152
  %21 = load ptr, ptr %20, align 8, !tbaa !91
  %22 = getelementptr inbounds ptr, ptr %21, i64 3
  %23 = load ptr, ptr %22, align 8
  invoke void %23(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %19)
          to label %24 unwind label %25, !prof !106

24:                                               ; preds = %18, %1
  ret void

25:                                               ; preds = %18
  %26 = landingpad { ptr, i32 }
          catch ptr null
  %27 = extractvalue { ptr, i32 } %26, 0
  tail call void @__clang_call_terminate(ptr %27) #14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(122) %0, ptr noundef nonnull align 8 dereferenceable(122) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !149 {
  %4 = load ptr, ptr %1, align 8, !tbaa !126
  store ptr %4, ptr %0, align 8, !tbaa !126
  %5 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(36) %8, ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 0, i32 noundef -1)
          to label %9 unwind label %16, !prof !150

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 3
  %12 = load i8, ptr %11, align 8, !tbaa !144, !range !159, !noundef !160
  store i8 %12, ptr %10, align 8, !tbaa !144
  %13 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %1, i64 0, i32 4
  %15 = load i8, ptr %14, align 1, !tbaa !145, !range !159, !noundef !160
  store i8 %15, ptr %13, align 1, !tbaa !145
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %5) #13
  resume { ptr, i32 } %17
}

declare void @_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 7
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %107, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !116
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !125
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !153
  br i1 %18, label %21, label %39

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %107, label %26

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !125
  %28 = load i64, ptr %12, align 8, !tbaa !116
  %29 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %34, %30 ], [ %29, %26 ]
  %33 = load ptr, ptr %0, align 8, !tbaa !152
  tail call void @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(122) %32, ptr noundef nonnull align 8 dereferenceable(122) %31, ptr noundef nonnull align 8 dereferenceable(8) %33)
  %34 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %32, i64 1
  %35 = load i64, ptr %12, align 8, !tbaa !116
  %36 = add i64 %35, 1
  store i64 %36, ptr %12, align 8, !tbaa !116
  %37 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %107, label %30, !llvm.loop !161

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %76

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !152
  store ptr %42, ptr %5, align 8, !tbaa !152
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !116
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !153
  %45 = shl i64 %14, 7
  %46 = load ptr, ptr %42, align 8, !tbaa !91
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45)
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !125
  %51 = load i64, ptr %43, align 8, !tbaa !116
  %52 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !125
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %74

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !125
  %56 = load i64, ptr %43, align 8, !tbaa !116
  %57 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %74

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !125
  %60 = load i64, ptr %43, align 8, !tbaa !116
  %61 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !125
  %63 = load i64, ptr %12, align 8, !tbaa !116
  %64 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6insertEPS2_PKS2_S8_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %74

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !152
  %67 = load i64, ptr %12, align 8, !tbaa !116
  %68 = load i64, ptr %19, align 8, !tbaa !153
  %69 = load ptr, ptr %15, align 8, !tbaa !125
  %70 = load ptr, ptr %5, align 8, !tbaa !152
  store ptr %70, ptr %0, align 8, !tbaa !152
  %71 = load i64, ptr %43, align 8, !tbaa !116
  store i64 %71, ptr %12, align 8, !tbaa !116
  %72 = load i64, ptr %44, align 8, !tbaa !153
  store i64 %72, ptr %19, align 8, !tbaa !153
  %73 = load ptr, ptr %50, align 8, !tbaa !125
  store ptr %73, ptr %15, align 8, !tbaa !125
  store ptr %66, ptr %5, align 8, !tbaa !152
  store i64 %67, ptr %43, align 8, !tbaa !116
  store i64 %68, ptr %44, align 8, !tbaa !153
  store ptr %69, ptr %50, align 8, !tbaa !125
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  br label %107

74:                                               ; preds = %58, %54, %41
  %75 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %5) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #13
  resume { ptr, i32 } %75

76:                                               ; preds = %39
  %77 = ptrtoint ptr %17 to i64
  %78 = ptrtoint ptr %1 to i64
  %79 = sub i64 %77, %78
  %80 = icmp ugt i64 %79, %8
  br i1 %80, label %96, label %81

81:                                               ; preds = %76
  %82 = getelementptr inbounds i8, ptr %2, i64 %79
  %83 = icmp eq ptr %82, %3
  br i1 %83, label %84, label %86

84:                                               ; preds = %86, %81
  %85 = icmp eq ptr %17, %1
  br i1 %85, label %94, label %90

86:                                               ; preds = %81, %86
  %87 = phi ptr [ %88, %86 ], [ %82, %81 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %87)
  %88 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %87, i64 1
  %89 = icmp eq ptr %88, %3
  br i1 %89, label %84, label %86, !llvm.loop !162

90:                                               ; preds = %84, %90
  %91 = phi ptr [ %92, %90 ], [ %1, %84 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %91)
  %92 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %91, i64 1
  %93 = icmp eq ptr %92, %17
  br i1 %93, label %94, label %90, !llvm.loop !163

94:                                               ; preds = %90, %84
  %95 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS5_EET0_T_SA_S9_(ptr noundef %2, ptr noundef %82, ptr noundef %1)
  br label %107

96:                                               ; preds = %76
  %97 = sub nsw i64 0, %9
  %98 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %17, i64 %97
  %99 = icmp eq ptr %3, %2
  br i1 %99, label %104, label %100

100:                                              ; preds = %96, %100
  %101 = phi ptr [ %102, %100 ], [ %98, %96 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(122) %101)
  %102 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %101, i64 1
  %103 = icmp eq ptr %102, %17
  br i1 %103, label %104, label %100, !llvm.loop !164

104:                                              ; preds = %100, %96
  %105 = tail call noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1018OutputContextStack13OutputContextES6_EET0_T_S8_S7_(ptr noundef %1, ptr noundef %98, ptr noundef %17)
  %106 = tail call noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS5_EET0_T_SA_S9_(ptr noundef %2, ptr noundef %3, ptr noundef %1)
  br label %107

107:                                              ; preds = %30, %24, %65, %104, %94, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !146 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.2", align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %4 = load ptr, ptr %0, align 8, !tbaa !152
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERKS5_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %1)
  %5 = load ptr, ptr %0, align 8, !tbaa !152
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !116
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 2
  %9 = load i64, ptr %8, align 8, !tbaa !153
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !125
  %12 = load ptr, ptr %3, align 8, !tbaa !152
  store ptr %12, ptr %0, align 8, !tbaa !152
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !116
  store i64 %14, ptr %6, align 8, !tbaa !116
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 2
  %16 = load i64, ptr %15, align 8, !tbaa !153
  store i64 %16, ptr %8, align 8, !tbaa !153
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %3, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !125
  store ptr %18, ptr %10, align 8, !tbaa !125
  store ptr %5, ptr %3, align 8, !tbaa !152
  store i64 %7, ptr %13, align 8, !tbaa !116
  store i64 %9, ptr %15, align 8, !tbaa !153
  store ptr %11, ptr %17, align 8, !tbaa !125
  call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #13
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt11__copy_moveILb0ELb0ESt26random_access_iterator_tagE8__copy_mIPKN11xalanc_1_1018OutputContextStack13OutputContextEPS5_EET0_T_SA_S9_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 7
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %27, %3
  %10 = phi ptr [ %2, %3 ], [ %32, %27 ]
  ret ptr %10

11:                                               ; preds = %3, %27
  %12 = phi i64 [ %33, %27 ], [ %7, %3 ]
  %13 = phi ptr [ %32, %27 ], [ %2, %3 ]
  %14 = phi ptr [ %31, %27 ], [ %0, %3 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !126
  store ptr %15, ptr %13, align 8, !tbaa !126
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 0, i32 1
  %17 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 0, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17)
  %19 = icmp eq ptr %14, %13
  br i1 %19, label %27, label %20

20:                                               ; preds = %11
  %21 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 0, i32 2
  %22 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 0, i32 2
  %23 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22)
  %24 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 0, i32 2, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !143
  %26 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 0, i32 2, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !143
  br label %27

27:                                               ; preds = %11, %20
  %28 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 0, i32 3
  %29 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 0, i32 3
  %30 = load i16, ptr %29, align 8
  store i16 %30, ptr %28, align 8
  %31 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 1
  %32 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %13, i64 1
  %33 = add nsw i64 %12, -1
  %34 = icmp sgt i64 %12, 1
  br i1 %34, label %11, label %9, !llvm.loop !165
}

declare noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !166 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = icmp eq ptr %1, %0
  br i1 %4, label %63, label %5, !prof !167

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !101
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !141
  %10 = icmp ult i64 %7, %9
  br i1 %10, label %11, label %35, !prof !168

11:                                               ; preds = %5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %12 = load ptr, ptr %0, align 8, !tbaa !104
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef 0)
  %13 = load ptr, ptr %0, align 8, !tbaa !104
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !141
  %16 = load i64, ptr %6, align 8, !tbaa !101
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !103
  %19 = load ptr, ptr %3, align 8, !tbaa !104
  store ptr %19, ptr %0, align 8, !tbaa !104
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %21 = load i64, ptr %20, align 8, !tbaa !141
  store i64 %21, ptr %14, align 8, !tbaa !141
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %23 = load i64, ptr %22, align 8, !tbaa !101
  store i64 %23, ptr %6, align 8, !tbaa !101
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !103
  store ptr %25, ptr %17, align 8, !tbaa !103
  store ptr %13, ptr %3, align 8, !tbaa !104
  store i64 %15, ptr %20, align 8, !tbaa !141
  store i64 %16, ptr %22, align 8, !tbaa !101
  store ptr %18, ptr %24, align 8, !tbaa !103
  %26 = icmp eq i64 %16, 0
  br i1 %26, label %34, label %27, !prof !169

27:                                               ; preds = %11
  %28 = load ptr, ptr %13, align 8, !tbaa !91
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  invoke void %30(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef %18)
          to label %34 unwind label %31, !prof !170

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
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !103
  %38 = getelementptr inbounds i16, ptr %37, i64 %9
  %39 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %40 = load i64, ptr %39, align 8, !tbaa !141
  %41 = icmp ugt i64 %40, %9
  br i1 %41, label %49, label %42, !prof !171

42:                                               ; preds = %35
  %43 = icmp ult i64 %40, %9
  br i1 %43, label %44, label %53, !prof !172

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %37, i64 %40
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !103
  %48 = getelementptr inbounds i16, ptr %47, i64 %40
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %48, ptr noundef %45, ptr noundef nonnull %38)
  br label %53

49:                                               ; preds = %35
  %50 = load i64, ptr %39, align 8, !tbaa !141
  %51 = add i64 %50, -1
  %52 = tail call i64 @llvm.umin.i64(i64 %9, i64 %51)
  store i64 %52, ptr %39, align 8, !tbaa !141
  br label %53

53:                                               ; preds = %49, %42, %44
  %54 = phi ptr [ %45, %44 ], [ %38, %42 ], [ %38, %49 ]
  %55 = load ptr, ptr %36, align 8, !tbaa !103
  %56 = icmp eq ptr %54, %55
  br i1 %56, label %63, label %57, !prof !173

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %55 to i64
  %60 = sub i64 %58, %59
  %61 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !103
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %62, ptr align 2 %55, i64 %60, i1 false), !prof !174
  br label %63

63:                                               ; preds = %57, %53, %34, %2
  ret ptr %0
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !175 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  store ptr %2, ptr %0, align 8, !tbaa !104
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %10 = load i64, ptr %9, align 8, !tbaa !141
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %58, label %12, !prof !176

12:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %13 = tail call noundef i64 @llvm.umax.i64(i64 %10, i64 %3)
  store ptr %2, ptr %5, align 8, !tbaa !104
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %14, align 8, !tbaa !141
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %13, ptr %15, align 8, !tbaa !101
  %16 = shl i64 %13, 1
  %17 = load ptr, ptr %2, align 8, !tbaa !91
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %16), !prof !177
  %21 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %20, ptr %21, align 8, !tbaa !103
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %1, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !103
  %24 = load i64, ptr %9, align 8, !tbaa !141
  %25 = getelementptr inbounds i16, ptr %23, i64 %24
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %20, ptr noundef %23, ptr noundef %25)
          to label %26 unwind label %44, !prof !178

26:                                               ; preds = %12
  %27 = load ptr, ptr %0, align 8, !tbaa !104
  %28 = load i64, ptr %6, align 8, !tbaa !141
  %29 = load i64, ptr %7, align 8, !tbaa !101
  %30 = load ptr, ptr %8, align 8, !tbaa !103
  %31 = load ptr, ptr %5, align 8, !tbaa !104
  store ptr %31, ptr %0, align 8, !tbaa !104
  %32 = load i64, ptr %14, align 8, !tbaa !141
  store i64 %32, ptr %6, align 8, !tbaa !141
  %33 = load i64, ptr %15, align 8, !tbaa !101
  store i64 %33, ptr %7, align 8, !tbaa !101
  %34 = load ptr, ptr %21, align 8, !tbaa !103
  store ptr %34, ptr %8, align 8, !tbaa !103
  store ptr %27, ptr %5, align 8, !tbaa !104
  store i64 %28, ptr %14, align 8, !tbaa !141
  store i64 %29, ptr %15, align 8, !tbaa !101
  store ptr %30, ptr %21, align 8, !tbaa !103
  %35 = icmp eq i64 %29, 0
  br i1 %35, label %43, label %36, !prof !178

36:                                               ; preds = %26
  %37 = load ptr, ptr %27, align 8, !tbaa !91
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
  %46 = load i64, ptr %15, align 8, !tbaa !101
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %21, align 8, !tbaa !103
  %50 = load ptr, ptr %5, align 8, !tbaa !104
  %51 = load ptr, ptr %50, align 8, !tbaa !91
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
  br i1 %59, label %66, label %60, !prof !179

60:                                               ; preds = %58
  %61 = shl i64 %3, 1
  %62 = load ptr, ptr %2, align 8, !tbaa !91
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %61), !prof !180
  store ptr %65, ptr %8, align 8, !tbaa !103
  store i64 %3, ptr %7, align 8, !tbaa !101
  br label %66

66:                                               ; preds = %58, %60, %43
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !181 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !101
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !182

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !103
  %8 = load ptr, ptr %0, align 8, !tbaa !104
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !183

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !184 {
  %5 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %2 to i64
  %8 = sub i64 %6, %7
  %9 = ashr exact i64 %8, 1
  %10 = icmp eq ptr %3, %2
  br i1 %10, label %134, label %11, !prof !185

11:                                               ; preds = %4
  %12 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %13 = load i64, ptr %12, align 8, !tbaa !141
  %14 = add i64 %13, %9
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !103
  %17 = getelementptr inbounds i16, ptr %16, i64 %13
  %18 = icmp eq ptr %17, %1
  %19 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %20 = load i64, ptr %19, align 8, !tbaa !101
  br i1 %18, label %21, label %39, !prof !186

21:                                               ; preds = %11
  %22 = icmp ult i64 %20, %14
  br i1 %22, label %23, label %24, !prof !187

23:                                               ; preds = %21
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %14)
  br label %24

24:                                               ; preds = %21, %23
  %25 = icmp eq ptr %2, %3
  br i1 %25, label %134, label %26, !prof !188

26:                                               ; preds = %24
  %27 = load ptr, ptr %15, align 8, !tbaa !103
  %28 = load i64, ptr %12, align 8, !tbaa !141
  %29 = getelementptr i16, ptr %27, i64 %28
  br label %30

30:                                               ; preds = %26, %30
  %31 = phi ptr [ %37, %30 ], [ %2, %26 ]
  %32 = phi ptr [ %35, %30 ], [ %29, %26 ]
  %33 = phi i64 [ %36, %30 ], [ %28, %26 ]
  %34 = load i16, ptr %31, align 2, !tbaa !189
  store i16 %34, ptr %32, align 2, !tbaa !189
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = add i64 %33, 1
  %37 = getelementptr inbounds i16, ptr %31, i64 1
  %38 = icmp eq ptr %37, %3
  br i1 %38, label %133, label %30, !prof !191, !llvm.loop !192

39:                                               ; preds = %11
  %40 = icmp ugt i64 %14, %20
  br i1 %40, label %41, label %97, !prof !193

41:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #13
  %42 = load ptr, ptr %0, align 8, !tbaa !104
  store ptr %42, ptr %5, align 8, !tbaa !104
  %43 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 1
  store i64 0, ptr %43, align 8, !tbaa !141
  %44 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 2
  store i64 %14, ptr %44, align 8, !tbaa !101
  %45 = shl i64 %14, 1
  %46 = load ptr, ptr %42, align 8, !tbaa !91
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  %49 = tail call noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(8) %42, i64 noundef %45), !prof !194
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %5, i64 0, i32 3
  store ptr %49, ptr %50, align 8, !tbaa !103
  %51 = load i64, ptr %43, align 8, !tbaa !141
  %52 = getelementptr inbounds i16, ptr %49, i64 %51
  %53 = load ptr, ptr %15, align 8, !tbaa !103
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %52, ptr noundef %53, ptr noundef %1)
          to label %54 unwind label %83, !prof !195

54:                                               ; preds = %41
  %55 = load ptr, ptr %50, align 8, !tbaa !103
  %56 = load i64, ptr %43, align 8, !tbaa !141
  %57 = getelementptr inbounds i16, ptr %55, i64 %56
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %57, ptr noundef %2, ptr noundef %3)
          to label %58 unwind label %83, !prof !195

58:                                               ; preds = %54
  %59 = load ptr, ptr %50, align 8, !tbaa !103
  %60 = load i64, ptr %43, align 8, !tbaa !141
  %61 = getelementptr inbounds i16, ptr %59, i64 %60
  %62 = load ptr, ptr %15, align 8, !tbaa !103
  %63 = load i64, ptr %12, align 8, !tbaa !141
  %64 = getelementptr inbounds i16, ptr %62, i64 %63
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr noundef %61, ptr noundef %1, ptr noundef %64)
          to label %65 unwind label %83, !prof !195

65:                                               ; preds = %58
  %66 = load ptr, ptr %0, align 8, !tbaa !104
  %67 = load i64, ptr %12, align 8, !tbaa !141
  %68 = load i64, ptr %19, align 8, !tbaa !101
  %69 = load ptr, ptr %15, align 8, !tbaa !103
  %70 = load ptr, ptr %5, align 8, !tbaa !104
  store ptr %70, ptr %0, align 8, !tbaa !104
  %71 = load i64, ptr %43, align 8, !tbaa !141
  store i64 %71, ptr %12, align 8, !tbaa !141
  %72 = load i64, ptr %44, align 8, !tbaa !101
  store i64 %72, ptr %19, align 8, !tbaa !101
  %73 = load ptr, ptr %50, align 8, !tbaa !103
  store ptr %73, ptr %15, align 8, !tbaa !103
  store ptr %66, ptr %5, align 8, !tbaa !104
  store i64 %67, ptr %43, align 8, !tbaa !141
  store i64 %68, ptr %44, align 8, !tbaa !101
  store ptr %69, ptr %50, align 8, !tbaa !103
  %74 = icmp eq i64 %68, 0
  br i1 %74, label %82, label %75, !prof !196

75:                                               ; preds = %65
  %76 = load ptr, ptr %66, align 8, !tbaa !91
  %77 = getelementptr inbounds ptr, ptr %76, i64 3
  %78 = load ptr, ptr %77, align 8
  invoke void %78(ptr noundef nonnull align 8 dereferenceable(8) %66, ptr noundef %69)
          to label %82 unwind label %79, !prof !197

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
  %85 = load i64, ptr %44, align 8, !tbaa !101
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %96, label %87

87:                                               ; preds = %83
  %88 = load ptr, ptr %50, align 8, !tbaa !103
  %89 = load ptr, ptr %5, align 8, !tbaa !104
  %90 = load ptr, ptr %89, align 8, !tbaa !91
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
  br i1 %101, label %116, label %102, !prof !198

102:                                              ; preds = %97
  %103 = getelementptr inbounds i8, ptr %2, i64 %100
  %104 = icmp eq ptr %103, %3
  br i1 %104, label %105, label %107, !prof !199

105:                                              ; preds = %107, %102
  %106 = icmp eq ptr %17, %1
  br i1 %106, label %115, label %111, !prof !199

107:                                              ; preds = %102, %107
  %108 = phi ptr [ %109, %107 ], [ %103, %102 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %108)
  %109 = getelementptr inbounds i16, ptr %108, i64 1
  %110 = icmp eq ptr %109, %3
  br i1 %110, label %105, label %107, !prof !200, !llvm.loop !201

111:                                              ; preds = %105, %111
  %112 = phi ptr [ %113, %111 ], [ %1, %105 ]
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %112)
  %113 = getelementptr inbounds i16, ptr %112, i64 1
  %114 = icmp eq ptr %113, %17
  br i1 %114, label %115, label %111, !prof !202, !llvm.loop !203

115:                                              ; preds = %111, %105
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %1, ptr align 2 %2, i64 %100, i1 false), !prof !204
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
  br i1 %123, label %124, label %120, !llvm.loop !205

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
  store i64 %36, ptr %12, align 8, !tbaa !141
  br label %134

134:                                              ; preds = %24, %133, %82, %115, %132, %4
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat !prof !146 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 2 dereferenceable(2) %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !206 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !141
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %7 = load i64, ptr %6, align 8, !tbaa !101
  %8 = icmp ult i64 %5, %7
  br i1 %8, label %9, label %15, !prof !207

9:                                                ; preds = %2
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !103
  %12 = getelementptr inbounds i16, ptr %11, i64 %5
  %13 = load i16, ptr %1, align 2, !tbaa !189
  store i16 %13, ptr %12, align 2, !tbaa !189
  %14 = add i64 %5, 1
  store i64 %14, ptr %4, align 8, !tbaa !141
  br label %60

15:                                               ; preds = %2
  %16 = icmp eq i64 %5, 0
  %17 = uitofp i64 %5 to double
  %18 = tail call double @llvm.fmuladd.f64(double %17, double 1.600000e+00, double 5.000000e-01)
  %19 = fptoui double %18 to i64
  %20 = select i1 %16, i64 1, i64 %19
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %21 = load ptr, ptr %0, align 8, !tbaa !104
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, i64 noundef %20)
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 2 dereferenceable(2) %1)
          to label %22 unwind label %44

22:                                               ; preds = %15
  %23 = load ptr, ptr %0, align 8, !tbaa !104
  %24 = load i64, ptr %4, align 8, !tbaa !141
  %25 = load i64, ptr %6, align 8, !tbaa !101
  %26 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !103
  %28 = load ptr, ptr %3, align 8, !tbaa !104
  store ptr %28, ptr %0, align 8, !tbaa !104
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  %30 = load i64, ptr %29, align 8, !tbaa !141
  store i64 %30, ptr %4, align 8, !tbaa !141
  %31 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %32 = load i64, ptr %31, align 8, !tbaa !101
  store i64 %32, ptr %6, align 8, !tbaa !101
  %33 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %34 = load ptr, ptr %33, align 8, !tbaa !103
  store ptr %34, ptr %26, align 8, !tbaa !103
  store ptr %23, ptr %3, align 8, !tbaa !104
  store i64 %24, ptr %29, align 8, !tbaa !141
  store i64 %25, ptr %31, align 8, !tbaa !101
  store ptr %27, ptr %33, align 8, !tbaa !103
  %35 = icmp eq i64 %25, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %22
  %37 = load ptr, ptr %23, align 8, !tbaa !91
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
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  %47 = load i64, ptr %46, align 8, !tbaa !101
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !103
  %52 = load ptr, ptr %3, align 8, !tbaa !104
  %53 = load ptr, ptr %52, align 8, !tbaa !91
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
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !208 {
  %3 = alloca %"class.xalanc_1_10::XalanVector.1", align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !104
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !141
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %41, label %8, !prof !176

8:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #13
  %9 = tail call noundef i64 @llvm.umax.i64(i64 %6, i64 %1)
  store ptr %4, ptr %3, align 8, !tbaa !104
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 1
  store i64 0, ptr %10, align 8, !tbaa !141
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 2
  store i64 %9, ptr %11, align 8, !tbaa !101
  %12 = shl i64 %9, 1
  %13 = load ptr, ptr %4, align 8, !tbaa !91
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %12), !prof !209
  %17 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %3, i64 0, i32 3
  store ptr %16, ptr %17, align 8, !tbaa !103
  %18 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %19 = load ptr, ptr %18, align 8, !tbaa !103
  %20 = load i64, ptr %5, align 8, !tbaa !141
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  invoke void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %16, ptr noundef %19, ptr noundef %21)
          to label %22 unwind label %27, !prof !178

22:                                               ; preds = %8
  %23 = load ptr, ptr %3, align 8, !tbaa !104
  %24 = load i64, ptr %10, align 8, !tbaa !141
  %25 = load i64, ptr %11, align 8, !tbaa !101
  %26 = load ptr, ptr %17, align 8, !tbaa !103
  store ptr %4, ptr %3, align 8, !tbaa !104
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #13
  br label %49

27:                                               ; preds = %8
  %28 = landingpad { ptr, i32 }
          cleanup
  %29 = load i64, ptr %11, align 8, !tbaa !101
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %40, label %31

31:                                               ; preds = %27
  %32 = load ptr, ptr %17, align 8, !tbaa !103
  %33 = load ptr, ptr %3, align 8, !tbaa !104
  %34 = load ptr, ptr %33, align 8, !tbaa !91
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
  br i1 %42, label %49, label %43, !prof !179

43:                                               ; preds = %41
  %44 = shl i64 %1, 1
  %45 = load ptr, ptr %4, align 8, !tbaa !91
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef %44), !prof !210
  br label %49

49:                                               ; preds = %22, %41, %43
  %50 = phi ptr [ null, %41 ], [ %48, %43 ], [ %26, %22 ]
  %51 = phi i64 [ 0, %41 ], [ %1, %43 ], [ %25, %22 ]
  %52 = phi i64 [ 0, %41 ], [ 0, %43 ], [ %24, %22 ]
  %53 = phi ptr [ %4, %41 ], [ %4, %43 ], [ %23, %22 ]
  %54 = load ptr, ptr %0, align 8, !tbaa !104
  %55 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 2
  %56 = load i64, ptr %55, align 8, !tbaa !101
  %57 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.1", ptr %0, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !103
  store ptr %53, ptr %0, align 8, !tbaa !104
  store i64 %52, ptr %5, align 8, !tbaa !141
  store i64 %51, ptr %55, align 8, !tbaa !101
  store ptr %50, ptr %57, align 8, !tbaa !103
  %59 = icmp eq i64 %56, 0
  br i1 %59, label %67, label %60, !prof !211

60:                                               ; preds = %49
  %61 = load ptr, ptr %54, align 8, !tbaa !91
  %62 = getelementptr inbounds ptr, ptr %61, i64 3
  %63 = load ptr, ptr %62, align 8
  invoke void %63(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %58)
          to label %67 unwind label %64, !prof !212

64:                                               ; preds = %60
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  call void @__clang_call_terminate(ptr %66) #14
  unreachable

67:                                               ; preds = %49, %60
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNSt20__copy_move_backwardILb0ELb0ESt26random_access_iterator_tagE13__copy_move_bIPN11xalanc_1_1018OutputContextStack13OutputContextES6_EET0_T_S8_S7_(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %4 = ptrtoint ptr %1 to i64
  %5 = ptrtoint ptr %0 to i64
  %6 = sub i64 %4, %5
  %7 = ashr exact i64 %6, 7
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %33

9:                                                ; preds = %3, %27
  %10 = phi i64 [ %31, %27 ], [ %7, %3 ]
  %11 = phi ptr [ %14, %27 ], [ %2, %3 ]
  %12 = phi ptr [ %13, %27 ], [ %1, %3 ]
  %13 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %12, i64 -1
  %14 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %11, i64 -1
  %15 = load ptr, ptr %13, align 8, !tbaa !126
  store ptr %15, ptr %14, align 8, !tbaa !126
  %16 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %11, i64 -1, i32 1
  %17 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %12, i64 -1, i32 1
  %18 = tail call noundef nonnull align 8 dereferenceable(72) ptr @_ZN11xalanc_1_1017AttributeListImplaSERKS0_(ptr noundef nonnull align 8 dereferenceable(72) %16, ptr noundef nonnull align 8 dereferenceable(72) %17)
  %19 = icmp eq ptr %12, %11
  br i1 %19, label %27, label %20

20:                                               ; preds = %9
  %21 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %11, i64 -1, i32 2
  %22 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %12, i64 -1, i32 2
  %23 = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull align 8 dereferenceable(32) %22)
  %24 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %12, i64 -1, i32 2, i32 1
  %25 = load i32, ptr %24, align 8, !tbaa !143
  %26 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %11, i64 -1, i32 2, i32 1
  store i32 %25, ptr %26, align 8, !tbaa !143
  br label %27

27:                                               ; preds = %9, %20
  %28 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %11, i64 -1, i32 3
  %29 = getelementptr %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %12, i64 -1, i32 3
  %30 = load i16, ptr %29, align 8
  store i16 %30, ptr %28, align 8
  %31 = add nsw i64 %10, -1
  %32 = icmp sgt i64 %10, 1
  br i1 %32, label %9, label %33, !llvm.loop !213

33:                                               ; preds = %27, %3
  %34 = phi ptr [ %2, %3 ], [ %14, %27 ]
  ret ptr %34
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !94
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !88
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %8 = load i64, ptr %7, align 8, !tbaa !88
  %9 = add i64 %8, %6
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3, i32 2
  %11 = load i64, ptr %10, align 8, !tbaa !89
  %12 = icmp ult i64 %11, %9
  br i1 %12, label %13, label %14, !prof !95

13:                                               ; preds = %1
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %9)
  br label %14

14:                                               ; preds = %1, %13
  %15 = load ptr, ptr %2, align 8, !tbaa !94
  %16 = load i64, ptr %7, align 8, !tbaa !88
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = icmp eq ptr %3, %17
  br i1 %18, label %32, label %19, !prof !96

19:                                               ; preds = %14, %26
  %20 = phi ptr [ %27, %26 ], [ %3, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %21, i64 0, i32 1
  %23 = load i64, ptr %22, align 8, !tbaa !116
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %26, label %25, !prof !90

25:                                               ; preds = %19
  tail call void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %21, i64 noundef 0)
  br label %26

26:                                               ; preds = %19, %25
  tail call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(8) %20)
  %27 = getelementptr inbounds ptr, ptr %20, i64 1
  %28 = load ptr, ptr %2, align 8, !tbaa !94
  %29 = load i64, ptr %7, align 8, !tbaa !88
  %30 = getelementptr inbounds ptr, ptr %28, i64 %29
  %31 = icmp eq ptr %27, %30
  br i1 %31, label %32, label %19, !prof !97, !llvm.loop !214

32:                                               ; preds = %26, %14
  %33 = phi i64 [ %16, %14 ], [ %29, %26 ]
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %36, label %35, !prof !90

35:                                               ; preds = %32
  store i64 0, ptr %7, align 8, !tbaa !88
  br label %36

36:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %0, i64 0, i32 3
  br label %5

5:                                                ; preds = %5, %2
  %6 = load i64, ptr %3, align 8, !tbaa !116
  %7 = add i64 %6, -1
  store i64 %7, ptr %3, align 8, !tbaa !116
  %8 = load ptr, ptr %4, align 8, !tbaa !125
  %9 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %8, i64 %7, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #13
  %10 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %8, i64 %7, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %10) #13
  %11 = load i64, ptr %3, align 8, !tbaa !116
  %12 = icmp ugt i64 %11, %1
  br i1 %12, label %5, label %13, !prof !215, !llvm.loop !216

13:                                               ; preds = %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE8pop_backEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #0 comdat align 2 !prof !146 {
  %2 = alloca ptr, align 8
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !94
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 2, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !88
  %7 = getelementptr ptr, ptr %4, i64 %6
  %8 = getelementptr ptr, ptr %7, i64 -1
  %9 = load ptr, ptr %8, align 8, !tbaa !105
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %9, i64 0, i32 1
  %11 = load i64, ptr %10, align 8, !tbaa !116
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !116
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanVector.2", ptr %9, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !125
  %15 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 %12, i32 2
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %15) #13
  %16 = getelementptr inbounds %"struct.xalanc_1_10::OutputContextStack::OutputContext", ptr %14, i64 %12, i32 1
  tail call void @_ZN11xalanc_1_1017AttributeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %17 = load i64, ptr %10, align 8, !tbaa !116
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = getelementptr inbounds %"class.xalanc_1_10::XalanDeque", ptr %0, i64 0, i32 3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #13
  store ptr %9, ptr %2, align 8, !tbaa !105
  call void @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #13
  %21 = load i64, ptr %5, align 8, !tbaa !88
  %22 = add i64 %21, -1
  store i64 %22, ptr %5, align 8, !tbaa !88
  br label %23

23:                                               ; preds = %19, %1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!72}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71}
!35 = !{ptr @_ZN11xalanc_1_1018OutputContextStackC2ERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEC2ERN11xercesc_2_713MemoryManagerEmm, ptr @_ZN11xalanc_1_1017AttributeListImplD1Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEED2Ev, i64 2}
!42 = !{ptr @_ZN11xalanc_1_1018OutputContextStackD2Ev, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEED2Ev, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1018OutputContextStack11pushContextEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, i64 2}
!44 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE, i64 2}
!45 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, i64 2}
!46 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE6resizeEm, ptr @_ZN11xalanc_1_1017AttributeListImplD1Ev, i64 2}
!47 = !{ptr @_ZN11xalanc_1_1018OutputContextStack10popContextEv, ptr @_ZN11xalanc_1_1017AttributeListImpl5clearEv, i64 77339}
!48 = !{ptr @_ZN11xalanc_1_1018OutputContextStack5resetEv, ptr @_ZN11xalanc_1_1018OutputContextStack10popContextEv, i64 2}
!49 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1017AttributeListImplC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!50 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERN11xercesc_2_713MemoryManagerEPNS_17FormatterListenerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 3}
!51 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE11getNewBlockEv, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE9push_backERKS2_, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, i64 3}
!54 = !{ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEC2ERKS9_RN11xercesc_2_713MemoryManagerEm, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE10doPushBackERKS2_, ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE, i64 3}
!56 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1017AttributeListImplC1ERKS0_RN11xercesc_2_713MemoryManagerE, i64 3}
!57 = !{ptr @_ZN11xalanc_1_1018OutputContextStack13OutputContextC2ERKS1_RN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj, i64 3}
!58 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEC2ERKS3_RN11xercesc_2_713MemoryManagerEm, i64 12}
!59 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEaSERKS3_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 40889}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!61 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, i64 20}
!62 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 62246358}
!63 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @__clang_call_terminate, i64 20}
!64 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE10doPushBackERKt, i64 53614818}
!65 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE6insertEPtPKtS6_, i64 18}
!66 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEE9doReserveEm, ptr @__clang_call_terminate, i64 21}
!67 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE9doReserveEm, i64 1}
!68 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm, i64 1}
!69 = !{ptr @_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5clearEv, ptr @_ZN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEE10doPushBackERKS6_, i64 1}
!70 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 3}
!71 = !{ptr @_ZN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE12shrinkToSizeEm, ptr @_ZN11xalanc_1_1017AttributeListImplD1Ev, i64 3}
!72 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!73 = !{!"function_entry_count", i64 1}
!74 = !{!75, !76, i64 0}
!75 = !{!"_ZTSN11xalanc_1_1018XalanDequeIteratorINS_24XalanDequeIteratorTraitsINS_18OutputContextStack13OutputContextEEENS_10XalanDequeIS3_NS_32ConstructWithMemoryManagerTraitsIS3_EEEEEE", !76, i64 0, !79, i64 8}
!76 = !{!"any pointer", !77, i64 0}
!77 = !{!"omnipotent char", !78, i64 0}
!78 = !{!"Simple C++ TBAA"}
!79 = !{!"long", !77, i64 0}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv: argument 0"}
!82 = distinct !{!82, !"_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE5beginEv"}
!83 = !{!84, !76, i64 0}
!84 = !{!"_ZTSN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !76, i64 0, !79, i64 8, !85, i64 16, !85, i64 48}
!85 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS0_INS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEENS_31MemoryManagedConstructionTraitsIS6_EEEE", !76, i64 0, !79, i64 8, !79, i64 16, !76, i64 24}
!86 = !{!84, !79, i64 8}
!87 = !{!85, !76, i64 0}
!88 = !{!85, !79, i64 8}
!89 = !{!85, !79, i64 16}
!90 = !{!"branch_weights", i32 0, i32 1}
!91 = !{!92, !92, i64 0}
!92 = !{!"vtable pointer", !78, i64 0}
!93 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!94 = !{!85, !76, i64 24}
!95 = !{!"branch_weights", i32 1, i32 0}
!96 = !{!"branch_weights", i32 1, i32 127}
!97 = !{!"branch_weights", i32 127, i32 1}
!98 = distinct !{!98, !99, !100}
!99 = !{!"llvm.loop.mustprogress"}
!100 = !{!"llvm.loop.unroll.disable"}
!101 = !{!102, !79, i64 16}
!102 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !76, i64 0, !79, i64 8, !79, i64 16, !76, i64 24}
!103 = !{!102, !76, i64 24}
!104 = !{!102, !76, i64 0}
!105 = !{!76, !76, i64 0}
!106 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!107 = distinct !{!107, !99, !100}
!108 = !{!"function_entry_count", i64 77340}
!109 = !{!75, !79, i64 8}
!110 = !{!111, !79, i64 96}
!111 = !{!"_ZTSN11xalanc_1_1018OutputContextStackE", !84, i64 0, !75, i64 80, !79, i64 96}
!112 = !{!"branch_weights", i32 0, i32 77340}
!113 = !{!114}
!114 = distinct !{!114, !115, !"_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv: argument 0"}
!115 = distinct !{!115, !"_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv"}
!116 = !{!117, !79, i64 8}
!117 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEEE", !76, i64 0, !79, i64 8, !79, i64 16, !76, i64 24}
!118 = !{!"branch_weights", i32 77340, i32 0}
!119 = !{!"branch_weights", i32 2, i32 77338}
!120 = !{!"branch_weights", i32 0, i32 2}
!121 = !{!122}
!122 = distinct !{!122, !123, !"_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv: argument 0"}
!123 = distinct !{!123, !"_ZN11xalanc_1_1010XalanDequeINS_18OutputContextStack13OutputContextENS_32ConstructWithMemoryManagerTraitsIS2_EEE3endEv"}
!124 = !{!"branch_weights", i32 3, i32 77337}
!125 = !{!117, !76, i64 24}
!126 = !{!127, !76, i64 0}
!127 = !{!"_ZTSN11xalanc_1_1018OutputContextStack13OutputContextE", !76, i64 0, !128, i64 8, !131, i64 80, !133, i64 120, !133, i64 121}
!128 = !{!"_ZTSN11xalanc_1_1017AttributeListImplE", !129, i64 0, !130, i64 8, !130, i64 40}
!129 = !{!"_ZTSN11xercesc_2_713AttributeListE"}
!130 = !{!"_ZTSN11xalanc_1_1011XalanVectorIPNS_20AttributeVectorEntryENS_31MemoryManagedConstructionTraitsIS2_EEEE", !76, i64 0, !79, i64 8, !79, i64 16, !76, i64 24}
!131 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !102, i64 0, !132, i64 32}
!132 = !{!"int", !77, i64 0}
!133 = !{!"bool", !77, i64 0}
!134 = !{!"function_entry_count", i64 2}
!135 = !{!"branch_weights", i32 2, i32 0}
!136 = !{!"branch_weights", i32 0, i32 4}
!137 = !{!"branch_weights", i32 2, i32 2}
!138 = distinct !{!138, !99, !100}
!139 = distinct !{!139, !99, !100}
!140 = !{!"function_entry_count", i64 77339}
!141 = !{!102, !79, i64 8}
!142 = !{!"branch_weights", i32 77339, i32 0}
!143 = !{!131, !132, i64 32}
!144 = !{!127, !133, i64 120}
!145 = !{!127, !133, i64 121}
!146 = !{!"function_entry_count", i64 0}
!147 = distinct !{!147, !99, !100}
!148 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!149 = !{!"function_entry_count", i64 3}
!150 = !{!"branch_weights", i32 3, i32 0}
!151 = !{!"branch_weights", i32 1, i32 2}
!152 = !{!117, !76, i64 0}
!153 = !{!117, !79, i64 16}
!154 = distinct !{!154, !99, !100}
!155 = distinct !{!155, !99, !100}
!156 = distinct !{!156, !99, !100}
!157 = distinct !{!157, !99, !100}
!158 = distinct !{!158, !99, !100}
!159 = !{i8 0, i8 2}
!160 = !{}
!161 = distinct !{!161, !99, !100}
!162 = distinct !{!162, !99, !100}
!163 = distinct !{!163, !99, !100}
!164 = distinct !{!164, !99, !100}
!165 = distinct !{!165, !99, !100}
!166 = !{!"function_entry_count", i64 41614}
!167 = !{!"branch_weights", i32 0, i32 41614}
!168 = !{!"branch_weights", i32 12, i32 41602}
!169 = !{!"branch_weights", i32 5, i32 7}
!170 = !{!"VP", i32 0, i64 7, i64 -7405368087501025645, i64 7}
!171 = !{!"branch_weights", i32 354, i32 41248}
!172 = !{!"branch_weights", i32 40889, i32 359}
!173 = !{!"branch_weights", i32 40581, i32 1021}
!174 = !{!"VP", i32 1, i64 1021, i64 4, i64 788, i64 65, i64 202, i64 6, i64 12, i64 17, i64 10}
!175 = !{!"function_entry_count", i64 22}
!176 = !{!"branch_weights", i32 64551590, i32 18}
!177 = !{!"VP", i32 0, i64 0, i64 8345045103670217670, i64 0}
!178 = !{!"branch_weights", i32 18, i32 0}
!179 = !{!"branch_weights", i32 4, i32 64551586}
!180 = !{!"VP", i32 0, i64 21, i64 8345045103670217670, i64 21}
!181 = !{!"function_entry_count", i64 42470003}
!182 = !{!"branch_weights", i32 52000, i32 42418003}
!183 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!184 = !{!"function_entry_count", i64 155828046}
!185 = !{!"branch_weights", i32 0, i32 155828046}
!186 = !{!"branch_weights", i32 133170777, i32 22657269}
!187 = !{!"branch_weights", i32 20, i32 133170757}
!188 = !{!"branch_weights", i32 1, i32 19024395}
!189 = !{!190, !190, i64 0}
!190 = !{!"short", !77, i64 0}
!191 = !{!"branch_weights", i32 19024395, i32 -26420601}
!192 = distinct !{!192, !99, !100}
!193 = !{!"branch_weights", i32 20748786, i32 1908483}
!194 = !{!"VP", i32 0, i64 20748786, i64 8345045103670217670, i64 20748786}
!195 = !{!"branch_weights", i32 20748786, i32 0}
!196 = !{!"branch_weights", i32 0, i32 20748786}
!197 = !{!"VP", i32 0, i64 20748786, i64 -7405368087501025645, i64 20748786}
!198 = !{!"branch_weights", i32 0, i32 1908483}
!199 = !{!"branch_weights", i32 1, i32 1908482}
!200 = !{!"branch_weights", i32 1908482, i32 49797853}
!201 = distinct !{!201, !99, !100}
!202 = !{!"branch_weights", i32 1908482, i32 1}
!203 = distinct !{!203, !99, !100}
!204 = !{!"VP", i32 1, i64 1908483, i64 2, i64 1908483}
!205 = distinct !{!205, !99, !100}
!206 = !{!"function_entry_count", i64 124150652}
!207 = !{!"branch_weights", i32 124150652, i32 0}
!208 = !{!"function_entry_count", i64 64551586}
!209 = !{!"VP", i32 0, i64 17, i64 8345045103670217670, i64 17}
!210 = !{!"VP", i32 0, i64 64551564, i64 8345045103670217670, i64 64551564}
!211 = !{!"branch_weights", i32 42418193, i32 22133393}
!212 = !{!"VP", i32 0, i64 22133393, i64 -7405368087501025645, i64 22133393}
!213 = distinct !{!213, !99, !100}
!214 = distinct !{!214, !99, !100}
!215 = !{!"branch_weights", i32 2, i32 1}
!216 = distinct !{!216, !99, !100}
