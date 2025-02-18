; ModuleID = 'XercesAttrWrapper.cpp'
source_filename = "XercesAttrWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesAttrWrapper" = type { %"class.xalanc_1_10::XalanAttr", ptr, %"class.xalanc_1_10::XercesNodeListWrapper", ptr }
%"class.xalanc_1_10::XalanAttr" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XercesNodeListWrapper" = type { %"class.xalanc_1_10::XalanNodeList", ptr, ptr }
%"class.xalanc_1_10::XalanNodeList" = type { ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

@_ZTVN11xalanc_1_1017XercesAttrWrapperE = dso_local unnamed_addr constant { [35 x ptr] } { [35 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XercesAttrWrapperE, ptr @_ZN11xalanc_1_1017XercesAttrWrapperD2Ev, ptr @_ZN11xalanc_1_1017XercesAttrWrapperD0Ev, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper11getNodeNameEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper12getNodeValueEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper11getNodeTypeEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getParentNodeEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getChildNodesEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getFirstChildEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper12getLastChildEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper14getNextSiblingEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getAttributesEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper9cloneNodeEb, ptr @_ZN11xalanc_1_1017XercesAttrWrapper12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1017XercesAttrWrapper12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1017XercesAttrWrapper11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1017XercesAttrWrapper11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13hasChildNodesEv, ptr @_ZN11xalanc_1_1017XercesAttrWrapper12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XercesAttrWrapper9normalizeEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper9getPrefixEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper12getLocalNameEv, ptr @_ZN11xalanc_1_1017XercesAttrWrapper9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper9isIndexedEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper8getIndexEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper7getNameEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper12getSpecifiedEv, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper8getValueEv, ptr @_ZN11xalanc_1_1017XercesAttrWrapper8setValueERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1017XercesAttrWrapper15getOwnerElementEv] }, align 8
@_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XercesAttrWrapperE = dso_local constant [35 x i8] c"N11xalanc_1_1017XercesAttrWrapperE\00", align 1
@_ZTIN11xalanc_1_109XalanAttrE = external constant ptr
@_ZTIN11xalanc_1_1017XercesAttrWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XercesAttrWrapperE, ptr @_ZTIN11xalanc_1_109XalanAttrE }, align 8

@_ZN11xalanc_1_1017XercesAttrWrapperC1EPKN11xercesc_2_77DOMAttrERKNS_22XercesWrapperNavigatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XercesAttrWrapperC2EPKN11xercesc_2_77DOMAttrERKNS_22XercesWrapperNavigatorE
@_ZN11xalanc_1_1017XercesAttrWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XercesAttrWrapperD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1017XercesAttrWrapperC2EPKN11xercesc_2_77DOMAttrERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xalanc_1_109XalanAttrC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0)
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1017XercesAttrWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = load ptr, ptr %1, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = invoke noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %9 unwind label %13

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 2
  invoke void @_ZN11xalanc_1_1021XercesNodeListWrapperC1EPKN11xercesc_2_711DOMNodeListERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef %8, ptr noundef nonnull align 8 dereferenceable(64) %2)
          to label %11 unwind label %13

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  store ptr %2, ptr %12, align 8, !tbaa !46
  ret void

13:                                               ; preds = %9, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_109XalanAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  resume { ptr, i32 } %14
}

declare void @_ZN11xalanc_1_109XalanAttrC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1021XercesNodeListWrapperC1EPKN11xercesc_2_711DOMNodeListERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_109XalanAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XercesAttrWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1017XercesAttrWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  tail call void @_ZN11xalanc_1_109XalanAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1017XercesAttrWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [35 x ptr] }, ptr @_ZTVN11xalanc_1_1017XercesAttrWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 2
  tail call void @_ZN11xalanc_1_1021XercesNodeListWrapperD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %2) #8
  tail call void @_ZN11xalanc_1_109XalanAttrD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  tail call void @_ZdlPv(ptr noundef %0) #9
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesAttrWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
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
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesAttrWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017XercesAttrWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret i32 2
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getParentNodeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getChildNodesEv(ptr noundef nonnull readnone align 8 dereferenceable(48) %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getFirstChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getFirstChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper12getLastChildEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator12getLastChildEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper18getPreviousSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper14getNextSiblingEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  ret ptr %5
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1017XercesAttrWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesAttrWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #8
  resume { ptr, i32 } %7
}

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #3

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesAttrWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #8
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesAttrWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesAttrWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesAttrWrapper13hasChildNodesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 18
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %7
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1017XercesAttrWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1017XercesAttrWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7)
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #8
  resume { ptr, i32 } %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesAttrWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret i1 %6
}

declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesAttrWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesAttrWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesAttrWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1017XercesAttrWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesAttrWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
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
define dso_local noundef i64 @_ZNK11xalanc_1_1017XercesAttrWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %3, i64 0, i32 7
  %5 = load i64, ptr %4, align 8, !tbaa !51
  ret i64 %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesAttrWrapper7getNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesAttrWrapper12getSpecifiedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 41
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret i1 %7
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesAttrWrapper8getValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 42
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5)
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9)
  ret ptr %10
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local void @_ZN11xalanc_1_1017XercesAttrWrapper8setValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #8
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #10
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #8
  resume { ptr, i32 } %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesAttrWrapper15getOwnerElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(48) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !47
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesAttrWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getOwnerElementEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5)
  ret ptr %6
}

declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getOwnerElementEPKN11xercesc_2_77DOMAttrE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }
attributes #10 = { noreturn }

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
!39 = !{!"_ZTSN11xalanc_1_1017XercesAttrWrapperE", !40, i64 0, !42, i64 8, !44, i64 16, !42, i64 40}
!40 = !{!"_ZTSN11xalanc_1_109XalanAttrE", !41, i64 0}
!41 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!42 = !{!"any pointer", !43, i64 0}
!43 = !{!"omnipotent char", !37, i64 0}
!44 = !{!"_ZTSN11xalanc_1_1021XercesNodeListWrapperE", !45, i64 0, !42, i64 8, !42, i64 16}
!45 = !{!"_ZTSN11xalanc_1_1013XalanNodeListE"}
!46 = !{!42, !42, i64 0}
!47 = !{!39, !42, i64 40}
!48 = !{!49, !42, i64 8}
!49 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !42, i64 8, !42, i64 16, !42, i64 24, !42, i64 32, !42, i64 40, !42, i64 48, !50, i64 56}
!50 = !{!"long", !43, i64 0}
!51 = !{!49, !50, i64 56}
