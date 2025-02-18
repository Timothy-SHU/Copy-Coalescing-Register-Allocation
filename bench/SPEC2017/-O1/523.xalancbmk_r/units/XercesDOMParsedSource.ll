; ModuleID = 'XercesDOMParsedSource.cpp'
source_filename = "XercesDOMParsedSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDOMParsedSourceHelper" = type { %"class.xalanc_1_10::XalanParsedSourceHelper", %"class.xalanc_1_10::XercesDOMSupport", %"class.xalanc_1_10::XercesParserLiaison" }
%"class.xalanc_1_10::XalanParsedSourceHelper" = type { ptr }
%"class.xalanc_1_10::XercesDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", %"class.xalanc_1_10::DOMSupportDefault" }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::DOMSupportDefault" = type { %"class.xalanc_1_10::DOMSupport", %"class.xalanc_1_10::XalanDOMStringPool" }
%"class.xalanc_1_10::XalanDOMStringPool" = type { ptr, %"class.xalanc_1_10::XalanDOMStringAllocator", i64, %"class.xalanc_1_10::XalanDOMStringHashTable" }
%"class.xalanc_1_10::XalanDOMStringAllocator" = type { %"class.xalanc_1_10::ArenaAllocator" }
%"class.xalanc_1_10::ArenaAllocator" = type { ptr, i64, %"class.xalanc_1_10::XalanList" }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanDOMStringHashTable" = type <{ i64, i64, %"class.xalanc_1_10::XalanMemMgrAutoPtrArray", i64, i32, [4 x i8] }>
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtrArray<xalanc_1_10::XalanVector<const xalanc_1_10::XalanDOMString *>>::MemMgrAutoPtrArrayData" = type { ptr, ptr, i64 }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.0", %"class.xalanc_1_10::XalanList.0", %"class.xalanc_1_10::XalanVector.1", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList.0" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.1" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XercesDOMParsedSource" = type { %"class.xalanc_1_10::XalanParsedSource", %"class.xalanc_1_10::XercesParserLiaison", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanParsedSource" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

$_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

@_ZTVN11xalanc_1_1027XercesDOMParsedSourceHelperE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1027XercesDOMParsedSourceHelperE, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD0Ev, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper13getDOMSupportEv, ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper16getParserLiaisonEv] }, align 8
@_ZTVN11xalanc_1_1021XercesDOMParsedSourceE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XercesDOMParsedSourceE, ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceD2Ev, ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceD0Ev, ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource11getDocumentEv, ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource6getURIEv] }, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1027XercesDOMParsedSourceHelperE = dso_local constant [45 x i8] c"N11xalanc_1_1027XercesDOMParsedSourceHelperE\00", align 1
@_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant [41 x i8] c"N11xalanc_1_1023XalanParsedSourceHelperE\00", comdat, align 1
@_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanParsedSourceHelperE }, comdat, align 8
@_ZTIN11xalanc_1_1027XercesDOMParsedSourceHelperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1027XercesDOMParsedSourceHelperE, ptr @_ZTIN11xalanc_1_1023XalanParsedSourceHelperE }, align 8
@_ZTSN11xalanc_1_1021XercesDOMParsedSourceE = dso_local constant [39 x i8] c"N11xalanc_1_1021XercesDOMParsedSourceE\00", align 1
@_ZTIN11xalanc_1_1017XalanParsedSourceE = external constant ptr
@_ZTIN11xalanc_1_1021XercesDOMParsedSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XercesDOMParsedSourceE, ptr @_ZTIN11xalanc_1_1017XalanParsedSourceE }, align 8

@_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC1ERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC2ERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD2Ev
@_ZN11xalanc_1_1021XercesDOMParsedSourceC1ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE
@_ZN11xalanc_1_1021XercesDOMParsedSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XercesDOMParsedSourceD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(424) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1027XercesDOMParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1016XercesDOMSupportC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %5 unwind label %6

5:                                                ; preds = %2
  ret void

6:                                                ; preds = %2
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1016XercesDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  resume { ptr, i32 } %7
}

declare void @_ZN11xalanc_1_1016XercesDOMSupportC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1016XercesDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds ptr, ptr %2, i64 2
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 424)
  invoke void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperC2ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(424) %5, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %6 unwind label %7

6:                                                ; preds = %1
  ret ptr %5

7:                                                ; preds = %1
  %8 = landingpad { ptr, i32 }
          cleanup
  %9 = icmp eq ptr %5, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %7
  %11 = load ptr, ptr %0, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 3
  %13 = load ptr, ptr %12, align 8
  invoke void %13(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5)
          to label %17 unwind label %14

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #12
  unreachable

17:                                               ; preds = %7, %10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1027XercesDOMParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1016XercesDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1027XercesDOMParsedSourceHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(424) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1027XercesDOMParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1016XercesDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(128) %3) #11
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper13getDOMSupportEv(ptr noundef nonnull readnone align 8 dereferenceable(424) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper16getParserLiaisonEv(ptr noundef nonnull readnone align 8 dereferenceable(424) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSourceHelper", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDOMParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(344) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %7) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %9 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDOMParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1019XercesParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %11 unwind label %48

11:                                               ; preds = %8
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 2
  store ptr null, ptr %12, align 8, !tbaa !41
  %13 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %14 unwind label %52

14:                                               ; preds = %11
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(288) %10, i1 noundef zeroext %2)
          to label %15 unwind label %56

15:                                               ; preds = %14
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %4)
          to label %16 unwind label %56

16:                                               ; preds = %15
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %3)
          to label %17 unwind label %56

17:                                               ; preds = %16
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %5)
          to label %18 unwind label %56

18:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef %6)
          to label %19 unwind label %56

19:                                               ; preds = %18
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %9) #11
  %20 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
          to label %21 unwind label %60

21:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %9, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %22 unwind label %60

22:                                               ; preds = %21
  %23 = invoke noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288) %10, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(36) %9)
          to label %24 unwind label %62

24:                                               ; preds = %22
  store ptr %23, ptr %12, align 8, !tbaa !41
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %26 = load i64, ptr %25, align 8, !tbaa !60
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  %31 = load ptr, ptr %9, align 8, !tbaa !62
  %32 = load ptr, ptr %31, align 8, !tbaa !38
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  invoke void %34(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %30)
          to label %38 unwind label %35

35:                                               ; preds = %28
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  call void @__clang_call_terminate(ptr %37) #12
  unreachable

38:                                               ; preds = %24, %28
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #11
  %39 = load ptr, ptr %1, align 8, !tbaa !38
  %40 = getelementptr inbounds ptr, ptr %39, i64 5
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %43 unwind label %81

43:                                               ; preds = %38
  %44 = icmp eq ptr %42, null
  br i1 %44, label %103, label %45

45:                                               ; preds = %43
  %46 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %42)
          to label %47 unwind label %85

47:                                               ; preds = %45
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef nonnull %42, i32 noundef %46, ptr noundef nonnull align 8 dereferenceable(36) %13)
          to label %103 unwind label %85

48:                                               ; preds = %8
  %49 = landingpad { ptr, i32 }
          cleanup
  %50 = extractvalue { ptr, i32 } %49, 0
  %51 = extractvalue { ptr, i32 } %49, 1
  br label %110

52:                                               ; preds = %11
  %53 = landingpad { ptr, i32 }
          cleanup
  %54 = extractvalue { ptr, i32 } %53, 0
  %55 = extractvalue { ptr, i32 } %53, 1
  br label %107

56:                                               ; preds = %18, %17, %16, %15, %14
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %57, 0
  %59 = extractvalue { ptr, i32 } %57, 1
  br label %104

60:                                               ; preds = %21, %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %77

62:                                               ; preds = %22
  %63 = landingpad { ptr, i32 }
          cleanup
  %64 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 2
  %65 = load i64, ptr %64, align 8, !tbaa !60
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %62
  %68 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %9, i64 0, i32 3
  %69 = load ptr, ptr %68, align 8, !tbaa !61
  %70 = load ptr, ptr %9, align 8, !tbaa !62
  %71 = load ptr, ptr %70, align 8, !tbaa !38
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  invoke void %73(ptr noundef nonnull align 8 dereferenceable(8) %70, ptr noundef %69)
          to label %77 unwind label %74

74:                                               ; preds = %67
  %75 = landingpad { ptr, i32 }
          catch ptr null
  %76 = extractvalue { ptr, i32 } %75, 0
  call void @__clang_call_terminate(ptr %76) #12
  unreachable

77:                                               ; preds = %67, %62, %60
  %78 = phi { ptr, i32 } [ %61, %60 ], [ %63, %62 ], [ %63, %67 ]
  %79 = extractvalue { ptr, i32 } %78, 0
  %80 = extractvalue { ptr, i32 } %78, 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %9) #11
  br label %104

81:                                               ; preds = %38
  %82 = landingpad { ptr, i32 }
          cleanup
  %83 = extractvalue { ptr, i32 } %82, 0
  %84 = extractvalue { ptr, i32 } %82, 1
  br label %104

85:                                               ; preds = %47, %45
  %86 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %87 = extractvalue { ptr, i32 } %86, 0
  %88 = extractvalue { ptr, i32 } %86, 1
  %89 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %90 = icmp eq i32 %88, %89
  br i1 %90, label %91, label %104

91:                                               ; preds = %85
  %92 = call ptr @__cxa_begin_catch(ptr %87) #11
  %93 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %13, ptr noundef nonnull %42)
          to label %94 unwind label %95

94:                                               ; preds = %91
  invoke void @__cxa_end_catch()
          to label %103 unwind label %97

95:                                               ; preds = %91
  %96 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %99 unwind label %115

97:                                               ; preds = %94
  %98 = landingpad { ptr, i32 }
          cleanup
  br label %99

99:                                               ; preds = %95, %97
  %100 = phi { ptr, i32 } [ %98, %97 ], [ %96, %95 ]
  %101 = extractvalue { ptr, i32 } %100, 0
  %102 = extractvalue { ptr, i32 } %100, 1
  br label %104

103:                                              ; preds = %47, %94, %43
  ret void

104:                                              ; preds = %81, %85, %99, %77, %56
  %105 = phi i32 [ %80, %77 ], [ %59, %56 ], [ %102, %99 ], [ %88, %85 ], [ %84, %81 ]
  %106 = phi ptr [ %79, %77 ], [ %58, %56 ], [ %101, %99 ], [ %87, %85 ], [ %83, %81 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %13) #11
  br label %107

107:                                              ; preds = %104, %52
  %108 = phi i32 [ %105, %104 ], [ %55, %52 ]
  %109 = phi ptr [ %106, %104 ], [ %54, %52 ]
  call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %10) #11
  br label %110

110:                                              ; preds = %107, %48
  %111 = phi i32 [ %108, %107 ], [ %51, %48 ]
  %112 = phi ptr [ %109, %107 ], [ %50, %48 ]
  call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %113 = insertvalue { ptr, i32 } poison, ptr %112, 0
  %114 = insertvalue { ptr, i32 } %113, i32 %111, 1
  resume { ptr, i32 } %114

115:                                              ; preds = %95
  %116 = landingpad { ptr, i32 }
          catch ptr null
  %117 = extractvalue { ptr, i32 } %116, 0
  call void @__clang_call_terminate(ptr %117) #12
  unreachable
}

declare void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1019XercesParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(288), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11xalanc_1_1019XercesParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019XercesParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019XercesParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1019XercesParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1019XercesParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(288), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !37 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3)
  ret ptr %4
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1021XercesDOMParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 2
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 344)
  invoke void @_ZN11xalanc_1_1021XercesDOMParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_RNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(344) %11, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %12 unwind label %13

12:                                               ; preds = %7
  ret ptr %11

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = icmp eq ptr %11, null
  br i1 %15, label %23, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 3
  %19 = load ptr, ptr %18, align 8
  invoke void %19(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %11)
          to label %23 unwind label %20

20:                                               ; preds = %16
  %21 = landingpad { ptr, i32 }
          catch ptr null
  %22 = extractvalue { ptr, i32 } %21, 0
  tail call void @__clang_call_terminate(ptr %22) #12
  unreachable

23:                                               ; preds = %13, %16
  resume { ptr, i32 } %14
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDOMParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDOMParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %3) #11
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1021XercesDOMParsedSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(344) %0) unnamed_addr #5 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1021XercesDOMParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1019XercesParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(288) %3) #11
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(344) %0) unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource12createHelperERN11xercesc_2_713MemoryManagerE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1027XercesDOMParsedSourceHelper6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1021XercesDOMParsedSource6getURIEv(ptr noundef nonnull readnone align 8 dereferenceable(344) %0) unnamed_addr #6 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDOMParsedSource", ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !63 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !60
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !64

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !61
  %8 = load ptr, ptr %0, align 8, !tbaa !62
  %9 = load ptr, ptr %8, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !65

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #12
  unreachable
}

declare void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, i32 noundef) local_unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, i32 noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!36}

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
!34 = distinct !{!35}
!35 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !50, i64 296}
!42 = !{!"_ZTSN11xalanc_1_1021XercesDOMParsedSourceE", !43, i64 0, !44, i64 8, !50, i64 296, !51, i64 304}
!43 = !{!"_ZTSN11xalanc_1_1017XalanParsedSourceE"}
!44 = !{!"_ZTSN11xalanc_1_1019XercesParserLiaisonE", !45, i64 0, !46, i64 8, !47, i64 16, !49, i64 20, !49, i64 21, !49, i64 22, !49, i64 23, !50, i64 24, !50, i64 32, !51, i64 40, !51, i64 80, !54, i64 120, !49, i64 256, !49, i64 257, !49, i64 258, !49, i64 259, !50, i64 264, !50, i64 272, !50, i64 280}
!45 = !{!"_ZTSN11xalanc_1_1016XMLParserLiaisonE"}
!46 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !40, i64 0}
!49 = !{!"bool", !48, i64 0}
!50 = !{!"any pointer", !48, i64 0}
!51 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !52, i64 0, !47, i64 32}
!52 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !50, i64 0, !53, i64 8, !53, i64 16, !50, i64 24}
!53 = !{!"long", !48, i64 0}
!54 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEE", !55, i64 0, !56, i64 1, !50, i64 8, !57, i64 16, !53, i64 24, !53, i64 32, !58, i64 40, !58, i64 64, !59, i64 88, !53, i64 120, !53, i64 128}
!55 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_13XalanDocumentEEE"}
!56 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_1013XalanDocumentEE"}
!57 = !{!"float", !48, i64 0}
!58 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !50, i64 0, !50, i64 8, !50, i64 16}
!59 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !50, i64 0, !53, i64 8, !53, i64 16, !50, i64 24}
!60 = !{!52, !53, i64 16}
!61 = !{!52, !50, i64 24}
!62 = !{!52, !50, i64 0}
!63 = !{!"function_entry_count", i64 42470003}
!64 = !{!"branch_weights", i32 52000, i32 42418003}
!65 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
