; ModuleID = 'XalanDefaultParsedSource.cpp'
source_filename = "XalanDefaultParsedSource.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport" = type { %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr }
%"class.xalanc_1_10::XalanSourceTreeDOMSupport" = type { %"class.xalanc_1_10::DOMSupport", ptr }
%"class.xalanc_1_10::DOMSupport" = type { ptr }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDefaultParsedSourceHelper" = type { %"class.xalanc_1_10::XalanParsedSourceHelper", %"class.xalanc_1_10::XalanSourceTreeParserLiaison", %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport" }
%"class.xalanc_1_10::XalanParsedSourceHelper" = type { ptr }
%"class.xalanc_1_10::XalanSourceTreeParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xalanc_1_10::XercesParserLiaison", %"class.xalanc_1_10::XalanMap.1", i8, ptr }
%"class.xalanc_1_10::XMLParserLiaison" = type { ptr }
%"class.xalanc_1_10::XercesParserLiaison" = type { %"class.xalanc_1_10::XMLParserLiaison", %"class.xercesc_2_7::ErrorHandler", i32, i8, i8, i8, i8, ptr, ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanMap", i8, i8, i8, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xalanc_1_10::XalanMap" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanList", %"class.xalanc_1_10::XalanVector.0", i64, i64 }
%"class.xalanc_1_10::XalanHasher" = type { i8 }
%"struct.std::equal_to" = type { i8 }
%"class.xalanc_1_10::XalanList" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.0" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanMap.1" = type { %"class.xalanc_1_10::XalanHasher", %"struct.std::equal_to", ptr, float, i64, i64, %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanList.2", %"class.xalanc_1_10::XalanVector.3", i64, i64 }
%"class.xalanc_1_10::XalanList.2" = type { ptr, ptr, ptr }
%"class.xalanc_1_10::XalanVector.3" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanDefaultParsedSource" = type { %"class.xalanc_1_10::XalanParsedSource", %"class.xalanc_1_10::XalanSourceTreeParserLiaison", %"class.xalanc_1_10::XalanSourceTreeDOMSupport", ptr, %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XalanParsedSource" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringaSEPKt = comdat any

$__clang_call_terminate = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

$_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = comdat any

@_ZTVN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD0Ev, ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupport5resetEv, ptr @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE, ptr @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport11isNodeAfterERKNS_9XalanNodeES3_] }, align 8
@_ZTVN11xalanc_1_1030XalanDefaultParsedSourceHelperE = dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1030XalanDefaultParsedSourceHelperE, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD0Ev, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper13getDOMSupportEv, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper16getParserLiaisonEv] }, align 8
@_ZTVN11xalanc_1_1024XalanDefaultParsedSourceE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XalanDefaultParsedSourceE, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD0Ev, ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource11getDocumentEv, ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource6getURIEv] }, align 8
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE = dso_local constant [52 x i8] c"N11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE\00", align 1
@_ZTIN11xalanc_1_1025XalanSourceTreeDOMSupportE = external constant ptr
@_ZTIN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE, ptr @_ZTIN11xalanc_1_1025XalanSourceTreeDOMSupportE }, align 8
@_ZTSN11xalanc_1_1030XalanDefaultParsedSourceHelperE = dso_local constant [48 x i8] c"N11xalanc_1_1030XalanDefaultParsedSourceHelperE\00", align 1
@_ZTSN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant [41 x i8] c"N11xalanc_1_1023XalanParsedSourceHelperE\00", comdat, align 1
@_ZTIN11xalanc_1_1023XalanParsedSourceHelperE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanParsedSourceHelperE }, comdat, align 8
@_ZTIN11xalanc_1_1030XalanDefaultParsedSourceHelperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1030XalanDefaultParsedSourceHelperE, ptr @_ZTIN11xalanc_1_1023XalanParsedSourceHelperE }, align 8
@_ZTSN11xalanc_1_1024XalanDefaultParsedSourceE = dso_local constant [42 x i8] c"N11xalanc_1_1024XalanDefaultParsedSourceE\00", align 1
@_ZTIN11xalanc_1_1017XalanParsedSourceE = external constant ptr
@_ZTIN11xalanc_1_1024XalanDefaultParsedSourceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XalanDefaultParsedSourceE, ptr @_ZTIN11xalanc_1_1017XalanParsedSourceE }, align 8

@_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE
@_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev
@_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC1ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE
@_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev
@_ZN11xalanc_1_1024XalanDefaultParsedSourceC1ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i1, ptr, ptr, ptr, ptr, i1, ptr), ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE
@_ZN11xalanc_1_1024XalanDefaultParsedSourceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonERKNS_25XalanSourceTreeDOMSupportE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(448) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) unnamed_addr #1 align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(448) %1)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !66
  ret void
}

declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1034XalanDefaultParsedSourceDOMSupport5resetEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !69 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !62 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef nonnull align 8 dereferenceable(36) ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanDOMString", ptr %9, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanSourceTreeDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  br label %15

15:                                               ; preds = %3, %13
  %16 = phi ptr [ %14, %13 ], [ %9, %3 ]
  ret ptr %16
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XalanSourceTreeDOMSupport20getUnparsedEntityURIERKNS_14XalanDOMStringERKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1034XalanDefaultParsedSourceDOMSupport11isNodeAfterERKNS_9XalanNodeES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 !prof !62 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceDOMSupport", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !70
  %6 = load ptr, ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds ptr, ptr %6, i64 4
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
  ret i1 %9
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(480) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanDefaultParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %4, ptr noundef nonnull align 8 dereferenceable(8) %2)
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(448) %4)
          to label %6 unwind label %8, !prof !80

6:                                                ; preds = %3
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !63
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2, i32 1
  store ptr %1, ptr %7, align 8, !tbaa !66
  ret void

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %4) #11
  resume { ptr, i32 } %9
}

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = load ptr, ptr %1, align 8, !tbaa !63
  %4 = getelementptr inbounds ptr, ptr %3, i64 2
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 480), !prof !81
  invoke void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(480) %6, ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %7 unwind label %8, !prof !80

7:                                                ; preds = %2
  ret ptr %6

8:                                                ; preds = %2
  %9 = landingpad { ptr, i32 }
          cleanup
  %10 = icmp eq ptr %6, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %8
  %12 = load ptr, ptr %1, align 8, !tbaa !63
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  invoke void %14(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %6)
          to label %18 unwind label %15

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          catch ptr null
  %17 = extractvalue { ptr, i32 } %16, 0
  tail call void @__clang_call_terminate(ptr %17) #13
  unreachable

18:                                               ; preds = %8, %11
  resume { ptr, i32 } %9
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #4 align 2 !prof !79 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanDefaultParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %3) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD0Ev(ptr noundef nonnull align 8 dereferenceable(480) %0) unnamed_addr #4 align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xalanc_1_1030XalanDefaultParsedSourceHelperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %3) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper13getDOMSupportEv(ptr noundef nonnull readnone align 8 dereferenceable(480) %0) unnamed_addr #5 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper16getParserLiaisonEv(ptr noundef nonnull readnone align 8 dereferenceable(480) %0) unnamed_addr #5 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSourceHelper", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(8) %8) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %10 = alloca %"class.xalanc_1_10::XalanDOMString", align 8
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanDefaultParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 1
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %12 unwind label %56, !prof !80

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(448) %11)
          to label %14 unwind label %60, !prof !80

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 3
  store ptr null, ptr %15, align 8, !tbaa !82
  %16 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 4
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull align 8 dereferenceable(8) %8)
          to label %17 unwind label %64, !prof !80

17:                                               ; preds = %14
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(448) %11, i1 noundef zeroext %2)
          to label %18 unwind label %68, !prof !80

18:                                               ; preds = %17
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %4)
          to label %19 unwind label %68, !prof !80

19:                                               ; preds = %18
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %3)
          to label %20 unwind label %68, !prof !80

20:                                               ; preds = %19
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %5)
          to label %21 unwind label %68, !prof !80

21:                                               ; preds = %20
  invoke void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %6)
          to label %22 unwind label %68, !prof !80

22:                                               ; preds = %21
  %23 = zext i1 %7 to i8
  %24 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 1, i32 3
  store i8 %23, ptr %24, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %10) #11
  %25 = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
          to label %26 unwind label %72, !prof !80

26:                                               ; preds = %22
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) %10, ptr noundef nonnull align 8 dereferenceable(8) %25)
          to label %27 unwind label %72, !prof !80

27:                                               ; preds = %26
  %28 = invoke noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef nonnull align 8 dereferenceable(41) %1, ptr noundef nonnull align 8 dereferenceable(36) %10)
          to label %29 unwind label %74, !prof !80

29:                                               ; preds = %27
  %30 = invoke noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(448) %11, ptr noundef %28)
          to label %31 unwind label %74, !prof !80

31:                                               ; preds = %29
  store ptr %30, ptr %15, align 8, !tbaa !82
  %32 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %33 = load i64, ptr %32, align 8, !tbaa !100
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %45, label %35, !prof !80

35:                                               ; preds = %31
  %36 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  %38 = load ptr, ptr %10, align 8, !tbaa !102
  %39 = load ptr, ptr %38, align 8, !tbaa !63
  %40 = getelementptr inbounds ptr, ptr %39, i64 3
  %41 = load ptr, ptr %40, align 8
  invoke void %41(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %37)
          to label %45 unwind label %42

42:                                               ; preds = %35
  %43 = landingpad { ptr, i32 }
          catch ptr null
  %44 = extractvalue { ptr, i32 } %43, 0
  call void @__clang_call_terminate(ptr %44) #13
  unreachable

45:                                               ; preds = %31, %35
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #11
  %46 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2, i32 1
  store ptr %11, ptr %46, align 8, !tbaa !103
  %47 = load ptr, ptr %1, align 8, !tbaa !63
  %48 = getelementptr inbounds ptr, ptr %47, i64 5
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %51 unwind label %93, !prof !104

51:                                               ; preds = %45
  %52 = icmp eq ptr %50, null
  br i1 %52, label %115, label %53, !prof !105

53:                                               ; preds = %51
  %54 = invoke noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull %50)
          to label %55 unwind label %97, !prof !80

55:                                               ; preds = %53
  invoke void @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE(ptr noundef nonnull %50, i32 noundef %54, ptr noundef nonnull align 8 dereferenceable(36) %16)
          to label %115 unwind label %97, !prof !80

56:                                               ; preds = %9
  %57 = landingpad { ptr, i32 }
          cleanup
  %58 = extractvalue { ptr, i32 } %57, 0
  %59 = extractvalue { ptr, i32 } %57, 1
  br label %125

60:                                               ; preds = %12
  %61 = landingpad { ptr, i32 }
          cleanup
  %62 = extractvalue { ptr, i32 } %61, 0
  %63 = extractvalue { ptr, i32 } %61, 1
  br label %122

64:                                               ; preds = %14
  %65 = landingpad { ptr, i32 }
          cleanup
  %66 = extractvalue { ptr, i32 } %65, 0
  %67 = extractvalue { ptr, i32 } %65, 1
  br label %119

68:                                               ; preds = %21, %20, %19, %18, %17
  %69 = landingpad { ptr, i32 }
          cleanup
  %70 = extractvalue { ptr, i32 } %69, 0
  %71 = extractvalue { ptr, i32 } %69, 1
  br label %116

72:                                               ; preds = %26, %22
  %73 = landingpad { ptr, i32 }
          cleanup
  br label %89

74:                                               ; preds = %29, %27
  %75 = landingpad { ptr, i32 }
          cleanup
  %76 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 2
  %77 = load i64, ptr %76, align 8, !tbaa !100
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %89, label %79

79:                                               ; preds = %74
  %80 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %10, i64 0, i32 3
  %81 = load ptr, ptr %80, align 8, !tbaa !101
  %82 = load ptr, ptr %10, align 8, !tbaa !102
  %83 = load ptr, ptr %82, align 8, !tbaa !63
  %84 = getelementptr inbounds ptr, ptr %83, i64 3
  %85 = load ptr, ptr %84, align 8
  invoke void %85(ptr noundef nonnull align 8 dereferenceable(8) %82, ptr noundef %81)
          to label %89 unwind label %86

86:                                               ; preds = %79
  %87 = landingpad { ptr, i32 }
          catch ptr null
  %88 = extractvalue { ptr, i32 } %87, 0
  call void @__clang_call_terminate(ptr %88) #13
  unreachable

89:                                               ; preds = %79, %74, %72
  %90 = phi { ptr, i32 } [ %73, %72 ], [ %75, %74 ], [ %75, %79 ]
  %91 = extractvalue { ptr, i32 } %90, 0
  %92 = extractvalue { ptr, i32 } %90, 1
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %10) #11
  br label %116

93:                                               ; preds = %45
  %94 = landingpad { ptr, i32 }
          cleanup
  %95 = extractvalue { ptr, i32 } %94, 0
  %96 = extractvalue { ptr, i32 } %94, 1
  br label %116

97:                                               ; preds = %55, %53
  %98 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_712XMLExceptionE
  %99 = extractvalue { ptr, i32 } %98, 0
  %100 = extractvalue { ptr, i32 } %98, 1
  %101 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_712XMLExceptionE) #11
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %116

103:                                              ; preds = %97
  %104 = call ptr @__cxa_begin_catch(ptr %99) #11
  %105 = invoke noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %16, ptr noundef nonnull %50)
          to label %106 unwind label %107

106:                                              ; preds = %103
  invoke void @__cxa_end_catch()
          to label %115 unwind label %109

107:                                              ; preds = %103
  %108 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %111 unwind label %130

109:                                              ; preds = %106
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %111

111:                                              ; preds = %107, %109
  %112 = phi { ptr, i32 } [ %110, %109 ], [ %108, %107 ]
  %113 = extractvalue { ptr, i32 } %112, 0
  %114 = extractvalue { ptr, i32 } %112, 1
  br label %116

115:                                              ; preds = %55, %106, %51
  ret void

116:                                              ; preds = %93, %97, %111, %89, %68
  %117 = phi i32 [ %92, %89 ], [ %71, %68 ], [ %114, %111 ], [ %100, %97 ], [ %96, %93 ]
  %118 = phi ptr [ %91, %89 ], [ %70, %68 ], [ %113, %111 ], [ %99, %97 ], [ %95, %93 ]
  call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %16) #11
  br label %119

119:                                              ; preds = %116, %64
  %120 = phi i32 [ %117, %116 ], [ %67, %64 ]
  %121 = phi ptr [ %118, %116 ], [ %66, %64 ]
  call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %13) #11
  br label %122

122:                                              ; preds = %119, %60
  %123 = phi i32 [ %120, %119 ], [ %63, %60 ]
  %124 = phi ptr [ %121, %119 ], [ %62, %60 ]
  call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %11) #11
  br label %125

125:                                              ; preds = %122, %56
  %126 = phi i32 [ %123, %122 ], [ %59, %56 ]
  %127 = phi ptr [ %124, %122 ], [ %58, %56 ]
  call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  %128 = insertvalue { ptr, i32 } poison, ptr %127, 0
  %129 = insertvalue { ptr, i32 } %128, i32 %126, 1
  resume { ptr, i32 } %129

130:                                              ; preds = %107
  %131 = landingpad { ptr, i32 }
          catch ptr null
  %132 = extractvalue { ptr, i32 } %131, 0
  call void @__clang_call_terminate(ptr %132) #13
  unreachable
}

declare void @_ZN11xalanc_1_1017XalanParsedSourceC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(448)) unnamed_addr #2

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb(ptr noundef nonnull align 8 dereferenceable(448), i1 noundef zeroext) unnamed_addr #2

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #2

declare void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) unnamed_addr #2

declare noundef ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef) local_unnamed_addr #2

declare noundef ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(448), ptr noundef nonnull align 8 dereferenceable(41), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #2

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #7

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMStringaSEPKt(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1) local_unnamed_addr #1 comdat align 2 !prof !62 {
  tail call void @_ZN11xalanc_1_1014XalanDOMString5eraseEjj(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 0, i32 noundef -1)
  %3 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %1)
  %4 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1014XalanDOMString6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef %1, i32 noundef %3)
  ret ptr %4
}

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !62 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %9 = load ptr, ptr %0, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 520), !prof !81
  invoke void @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(520) %12, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i1 noundef zeroext %7, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %13 unwind label %14, !prof !80

13:                                               ; preds = %8
  ret ptr %12

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          cleanup
  %16 = icmp eq ptr %12, null
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load ptr, ptr %0, align 8, !tbaa !63
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  invoke void %20(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %12)
          to label %24 unwind label %21

21:                                               ; preds = %17
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  tail call void @__clang_call_terminate(ptr %23) #13
  unreachable

24:                                               ; preds = %14, %17
  resume { ptr, i32 } %15
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #4 align 2 !prof !79 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanDefaultParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %4) #11
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024XalanDefaultParsedSourceD0Ev(ptr noundef nonnull align 8 dereferenceable(520) %0) unnamed_addr #4 align 2 !prof !62 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanDefaultParsedSourceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 4
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #11
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 1
  tail call void @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev(ptr noundef nonnull align 8 dereferenceable(448) %4) #11
  tail call void @_ZN11xalanc_1_1017XalanParsedSourceD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource11getDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(520) %0) unnamed_addr #9 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !82
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource12createHelperERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(520) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 align 2 !prof !79 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret ptr %4
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource6getURIEv(ptr noundef nonnull readnone align 8 dereferenceable(520) %0) unnamed_addr #5 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanDefaultParsedSource", ptr %0, i64 0, i32 4
  ret ptr %2
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !106 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !100
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !107

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !101
  %8 = load ptr, ptr %0, align 8, !tbaa !102
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !108

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #13
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
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree nosync nounwind memory(none) }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!61}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60}
!35 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!36 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC2ERKNS_28XalanSourceTreeParserLiaisonE, i64 1}
!37 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperC2ERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, i64 1}
!38 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD2Ev, i64 1}
!39 = !{ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelperD2Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev, i64 1}
!40 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1017XalanParsedSourceC2Ev, i64 1}
!41 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportC1ERKNS_28XalanSourceTreeParserLiaisonE, i64 1}
!43 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 2}
!44 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison16setUseValidationEb, i64 1}
!45 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison17setEntityResolverEPN11xercesc_2_714EntityResolverE, i64 1}
!46 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison15setErrorHandlerEPN11xercesc_2_712ErrorHandlerE, i64 1}
!47 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison25setExternalSchemaLocationEPKt, i64 1}
!48 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison36setExternalNoNamespaceSchemaLocationEPKt, i64 1}
!49 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!50 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaison14parseXMLStreamERKN11xercesc_2_711InputSourceERKNS_14XalanDOMStringE, i64 1}
!51 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZNK11xalanc_1_1028XalanSourceTreeParserLiaison11mapDocumentEPKNS_13XalanDocumentE, i64 1}
!52 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt, i64 1}
!53 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, ptr @_ZN11xalanc_1_1010URISupport22getURLStringFromStringEPKtjRNS_14XalanDOMStringE, i64 1}
!54 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSource6createERN11xercesc_2_713MemoryManagerERKNS1_11InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSC_b, ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceC2ERKN11xercesc_2_711InputSourceEbPNS1_12ErrorHandlerEPNS1_14EntityResolverEPKtSA_bRNS1_13MemoryManagerE, i64 1}
!55 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, i64 1}
!56 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1025XalanSourceTreeDOMSupportD1Ev, i64 1}
!57 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1028XalanSourceTreeParserLiaisonD1Ev, i64 1}
!58 = !{ptr @_ZN11xalanc_1_1024XalanDefaultParsedSourceD2Ev, ptr @_ZN11xalanc_1_1017XalanParsedSourceD2Ev, i64 1}
!59 = !{ptr @_ZNK11xalanc_1_1024XalanDefaultParsedSource12createHelperERN11xercesc_2_713MemoryManagerE, ptr @_ZN11xalanc_1_1030XalanDefaultParsedSourceHelper6createERKNS_25XalanSourceTreeDOMSupportERN11xercesc_2_713MemoryManagerE, i64 1}
!60 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!61 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !65, i64 0}
!65 = !{!"Simple C++ TBAA"}
!66 = !{!67, !67, i64 0}
!67 = !{!"any pointer", !68, i64 0}
!68 = !{!"omnipotent char", !65, i64 0}
!69 = !{!"function_entry_count", i64 3}
!70 = !{!71, !67, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1034XalanDefaultParsedSourceDOMSupportE", !72, i64 0, !67, i64 16}
!72 = !{!"_ZTSN11xalanc_1_1025XalanSourceTreeDOMSupportE", !73, i64 0, !67, i64 8}
!73 = !{!"_ZTSN11xalanc_1_1010DOMSupportE"}
!74 = !{!75, !78, i64 32}
!75 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !76, i64 0, !78, i64 32}
!76 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !67, i64 0, !77, i64 8, !77, i64 16, !67, i64 24}
!77 = !{!"long", !68, i64 0}
!78 = !{!"int", !68, i64 0}
!79 = !{!"function_entry_count", i64 1}
!80 = !{!"branch_weights", i32 1, i32 0}
!81 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!82 = !{!83, !67, i64 472}
!83 = !{!"_ZTSN11xalanc_1_1024XalanDefaultParsedSourceE", !84, i64 0, !85, i64 8, !72, i64 456, !67, i64 472, !75, i64 480}
!84 = !{!"_ZTSN11xalanc_1_1017XalanParsedSourceE"}
!85 = !{!"_ZTSN11xalanc_1_1028XalanSourceTreeParserLiaisonE", !86, i64 0, !87, i64 8, !96, i64 296, !89, i64 432, !67, i64 440}
!86 = !{!"_ZTSN11xalanc_1_1016XMLParserLiaisonE"}
!87 = !{!"_ZTSN11xalanc_1_1019XercesParserLiaisonE", !86, i64 0, !88, i64 8, !78, i64 16, !89, i64 20, !89, i64 21, !89, i64 22, !89, i64 23, !67, i64 24, !67, i64 32, !75, i64 40, !75, i64 80, !90, i64 120, !89, i64 256, !89, i64 257, !89, i64 258, !89, i64 259, !67, i64 264, !67, i64 272, !67, i64 280}
!88 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!89 = !{!"bool", !68, i64 0}
!90 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS3_EEEE", !91, i64 0, !92, i64 1, !67, i64 8, !93, i64 16, !77, i64 24, !77, i64 32, !94, i64 40, !94, i64 64, !95, i64 88, !77, i64 120, !77, i64 128}
!91 = !{!"_ZTSN11xalanc_1_1011XalanHasherIPKNS_13XalanDocumentEEE"}
!92 = !{!"_ZTSSt8equal_toIPKN11xalanc_1_1013XalanDocumentEE"}
!93 = !{!"float", !68, i64 0}
!94 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!95 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentENS_19XercesParserLiaison13DocumentEntryENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !67, i64 0, !77, i64 8, !77, i64 16, !67, i64 24}
!96 = !{!"_ZTSN11xalanc_1_108XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS3_EEEE", !91, i64 0, !92, i64 1, !67, i64 8, !93, i64 16, !77, i64 24, !77, i64 32, !97, i64 40, !97, i64 64, !98, i64 88, !77, i64 120, !77, i64 128}
!97 = !{!"_ZTSN11xalanc_1_109XalanListINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS4_EEE5EntryEEE", !67, i64 0, !67, i64 8, !67, i64 16}
!98 = !{!"_ZTSN11xalanc_1_1011XalanVectorINS0_INS_21XalanListIteratorBaseINS_23XalanListIteratorTraitsINS_8XalanMapIPKNS_13XalanDocumentEPNS_23XalanSourceTreeDocumentENS_17XalanMapKeyTraitsIS6_EEE5EntryEEENS_9XalanListISC_E4NodeEEENS_31MemoryManagedConstructionTraitsISH_EEEENS_32ConstructWithMemoryManagerTraitsISK_EEEE", !67, i64 0, !77, i64 8, !77, i64 16, !67, i64 24}
!99 = !{!85, !89, i64 432}
!100 = !{!76, !77, i64 16}
!101 = !{!76, !67, i64 24}
!102 = !{!76, !67, i64 0}
!103 = !{!72, !67, i64 8}
!104 = !{!"VP", i32 0, i64 1, i64 -3228203282622328352, i64 1}
!105 = !{!"branch_weights", i32 0, i32 1}
!106 = !{!"function_entry_count", i64 42470003}
!107 = !{!"branch_weights", i32 52000, i32 42418003}
!108 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
