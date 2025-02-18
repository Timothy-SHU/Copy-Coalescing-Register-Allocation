; ModuleID = 'XercesDocumentTypeWrapper.cpp'
source_filename = "XercesDocumentTypeWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesDocumentTypeWrapper" = type { %"class.xalanc_1_10::XalanDocumentType", ptr, %"class.xalanc_1_10::XercesNamedNodeMapWrapper", %"class.xalanc_1_10::XercesNamedNodeMapWrapper", ptr }
%"class.xalanc_1_10::XalanDocumentType" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XercesNamedNodeMapWrapper" = type { %"class.xalanc_1_10::XalanNamedNodeMap", ptr, ptr }
%"class.xalanc_1_10::XalanNamedNodeMap" = type { ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

$__clang_call_terminate = comdat any

@_ZTVN11xalanc_1_1025XercesDocumentTypeWrapperE = dso_local unnamed_addr constant { [36 x ptr] } { [36 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1025XercesDocumentTypeWrapperE, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapperD2Ev, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapperD0Ev, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getNodeNameEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getNodeValueEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getNodeTypeEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getParentNodeEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getChildNodesEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getFirstChildEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getLastChildEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper14getNextSiblingEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getAttributesEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper9cloneNodeEb, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13hasChildNodesEv, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper9normalizeEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper9getPrefixEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getLocalNameEv, ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper9isIndexedEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper8getIndexEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper7getNameEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getEntitiesEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getNotationsEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getPublicIdEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getSystemIdEv, ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper17getInternalSubsetEv] }, align 8
@_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1025XercesDocumentTypeWrapperE = dso_local constant [43 x i8] c"N11xalanc_1_1025XercesDocumentTypeWrapperE\00", align 1
@_ZTIN11xalanc_1_1017XalanDocumentTypeE = external constant ptr
@_ZTIN11xalanc_1_1025XercesDocumentTypeWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1025XercesDocumentTypeWrapperE, ptr @_ZTIN11xalanc_1_1017XalanDocumentTypeE }, align 8

@_ZN11xalanc_1_1025XercesDocumentTypeWrapperC1EPKN11xercesc_2_715DOMDocumentTypeERKNS_22XercesWrapperNavigatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapperC2EPKN11xercesc_2_715DOMDocumentTypeERKNS_22XercesWrapperNavigatorE
@_ZN11xalanc_1_1025XercesDocumentTypeWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapperD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1025XercesDocumentTypeWrapperC2EPKN11xercesc_2_715DOMDocumentTypeERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_1017XalanDocumentTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [36 x ptr] }, ptr @_ZTVN11xalanc_1_1025XercesDocumentTypeWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %1, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 41
  %8 = load ptr, ptr %7, align 8
  %9 = invoke noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %10 unwind label %21

10:                                               ; preds = %3
  invoke void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperC1EPKN11xercesc_2_715DOMNamedNodeMapERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %9, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %11 unwind label %21

11:                                               ; preds = %10
  %12 = load ptr, ptr %4, align 8, !tbaa !38
  %13 = load ptr, ptr %12, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 42
  %15 = load ptr, ptr %14, align 8
  %16 = invoke noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %17 unwind label %23

17:                                               ; preds = %11
  %18 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperC1EPKN11xercesc_2_715DOMNamedNodeMapERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef %16, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %19 unwind label %23

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  store ptr %2, ptr %20, align 8, !tbaa !46
  ret void

21:                                               ; preds = %10, %3
  %22 = landingpad { ptr, i32 }
          cleanup
  br label %25

23:                                               ; preds = %17, %11
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #9
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  tail call void @_ZN11xalanc_1_1017XalanDocumentTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %26
}

declare void @_ZN11xalanc_1_1017XalanDocumentTypeC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperC1EPKN11xercesc_2_715DOMNamedNodeMapERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDocumentTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_15DOMDocumentTypeERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = load ptr, ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 72)
  invoke void @_ZN11xalanc_1_1025XercesDocumentTypeWrapperC2EPKN11xercesc_2_715DOMDocumentTypeERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret ptr %7

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = icmp eq ptr %7, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7)
          to label %19 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #10
  unreachable

19:                                               ; preds = %9, %12
  resume { ptr, i32 } %10
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1025XercesDocumentTypeWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [36 x ptr] }, ptr @_ZTVN11xalanc_1_1025XercesDocumentTypeWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  tail call void @_ZN11xalanc_1_1017XalanDocumentTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1025XercesDocumentTypeWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [36 x ptr] }, ptr @_ZTVN11xalanc_1_1025XercesDocumentTypeWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #9
  %3 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1025XercesNamedNodeMapWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #9
  tail call void @_ZN11xalanc_1_1017XalanDocumentTypeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  tail call void @_ZdlPv(ptr noundef %0) #11
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i32 10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  ret ptr %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #9
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #9
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1025XercesDocumentTypeWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i1 false
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1025XercesDocumentTypeWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %6
}

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1025XercesDocumentTypeWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #9
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret i1 %6
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1025XercesDocumentTypeWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #9
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #12
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #9
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef zeroext i1 %8(ptr noundef nonnull align 8 dereferenceable(432) %5)
  ret i1 %9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !51
  ret i64 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getEntitiesEv(ptr noundef nonnull readnone align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper12getNotationsEv(ptr noundef nonnull readnone align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 3
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getPublicIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 43
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper11getSystemIdEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 44
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1025XercesDocumentTypeWrapper17getInternalSubsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesDocumentTypeWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 45
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #9
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind }
attributes #10 = { noreturn nounwind }
attributes #11 = { builtin nounwind }
attributes #12 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !42, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1025XercesDocumentTypeWrapperE", !40, i64 0, !42, i64 8, !44, i64 16, !44, i64 40, !42, i64 64}
!40 = !{!"_ZTSN11xalanc_1_1017XalanDocumentTypeE", !41, i64 0}
!41 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"_ZTSN11xalanc_1_1025XercesNamedNodeMapWrapperE", !45, i64 0, !42, i64 8, !42, i64 16}
!45 = !{!"_ZTSN11xalanc_1_1017XalanNamedNodeMapE"}
!46 = !{!42, !42, i64 0}
!47 = !{!39, !42, i64 64}
!48 = !{!49, !42, i64 8}
!49 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !50, i64 56}
!50 = !{!"long", !43, i64 0}
!51 = !{!49, !50, i64 56}
