; ModuleID = 'XercesCommentWrapper.cpp'
source_filename = "XercesCommentWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesCommentWrapper" = type { %"class.xalanc_1_10::XalanComment", ptr, ptr }
%"class.xalanc_1_10::XalanComment" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanMemMgrAutoPtr" = type { %"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesCommentWrapper, false>::MemMgrAutoPtrData" }
%"class.xalanc_1_10::XalanMemMgrAutoPtr<xalanc_1_10::XercesCommentWrapper, false>::MemMgrAutoPtrData" = type { %"struct.std::pair" }
%"struct.std::pair" = type { ptr, ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE3getEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE7releaseEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EED2Ev = comdat any

$_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv = comdat any

$_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

$_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020XercesCommentWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_ = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10deallocateEv = comdat any

$__clang_call_terminate = comdat any

$_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv = comdat any

$_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_ = comdat any

@_ZTVN11xalanc_1_1020XercesCommentWrapperE = dso_local unnamed_addr constant { [37 x ptr] } { [37 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1020XercesCommentWrapperE, ptr @_ZN11xalanc_1_1020XercesCommentWrapperD2Ev, ptr @_ZN11xalanc_1_1020XercesCommentWrapperD0Ev, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper11getNodeNameEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper12getNodeValueEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper11getNodeTypeEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getParentNodeEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getChildNodesEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getFirstChildEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper12getLastChildEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper14getNextSiblingEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getAttributesEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper9cloneNodeEb, ptr @_ZN11xalanc_1_1020XercesCommentWrapper12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1020XercesCommentWrapper12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1020XercesCommentWrapper11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1020XercesCommentWrapper11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13hasChildNodesEv, ptr @_ZN11xalanc_1_1020XercesCommentWrapper12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1020XercesCommentWrapper9normalizeEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper9getPrefixEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper12getLocalNameEv, ptr @_ZN11xalanc_1_1020XercesCommentWrapper9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper9isIndexedEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper8getIndexEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper7getDataEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper9getLengthEv, ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13substringDataEjjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1020XercesCommentWrapper10appendDataERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1020XercesCommentWrapper10insertDataEjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1020XercesCommentWrapper10deleteDataEjj, ptr @_ZN11xalanc_1_1020XercesCommentWrapper11replaceDataEjjRKNS_14XalanDOMStringE] }, align 8
@_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1020XercesCommentWrapperE = dso_local constant [38 x i8] c"N11xalanc_1_1020XercesCommentWrapperE\00", align 1
@_ZTIN11xalanc_1_1012XalanCommentE = external constant ptr
@_ZTIN11xalanc_1_1020XercesCommentWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1020XercesCommentWrapperE, ptr @_ZTIN11xalanc_1_1012XalanCommentE }, align 8

@_ZN11xalanc_1_1020XercesCommentWrapperC1EPKN11xercesc_2_710DOMCommentERKNS_22XercesWrapperNavigatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1020XercesCommentWrapperC2EPKN11xercesc_2_710DOMCommentERKNS_22XercesWrapperNavigatorE
@_ZN11xalanc_1_1020XercesCommentWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1020XercesCommentWrapperD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapperC2EPKN11xercesc_2_710DOMCommentERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #1 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1012XalanCommentC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [37 x ptr] }, ptr @_ZTVN11xalanc_1_1020XercesCommentWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1012XalanCommentC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1020XercesCommentWrapper6createERN11xercesc_2_713MemoryManagerEPKNS1_10DOMCommentERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = alloca %"class.xalanc_1_10::XalanMemMgrAutoPtr", align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #10
  %5 = load ptr, ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 2
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 24) #9
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %8) #9
  %9 = call noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
  invoke void @_ZN11xalanc_1_1020XercesCommentWrapperC2EPKN11xercesc_2_710DOMCommentERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) #9
          to label %10 unwind label %13

10:                                               ; preds = %3
  %11 = invoke { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %4) #9
          to label %12 unwind label %13

12:                                               ; preds = %10
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  ret ptr %9

13:                                               ; preds = %10, %3
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #10
  resume { ptr, i32 } %14
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EEC2ERN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef %2) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE3getEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !46
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local { ptr, ptr } @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  %4 = load ptr, ptr %3, align 8
  tail call void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #9
  %5 = insertvalue { ptr, ptr } poison, ptr %2, 0
  %6 = insertvalue { ptr, ptr } %5, ptr %4, 1
  ret { ptr, ptr } %6
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  invoke void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #12
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1012XalanCommentD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !34 {
  tail call void @_ZN11xalanc_1_1012XalanCommentD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xalanc_1_1020XercesCommentWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #11
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesCommentWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesCommentWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1020XercesCommentWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i32 8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1020XercesCommentWrapper16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1020XercesCommentWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #14
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesCommentWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #14
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesCommentWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #14
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesCommentWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #14
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1020XercesCommentWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #14
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesCommentWrapper13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !34 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #14
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #5

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #14
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesCommentWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  ret i1 %6
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesCommentWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesCommentWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesCommentWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #14
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1020XercesCommentWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  %5 = load ptr, ptr %4, align 8, !tbaa !35
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(432) %4) #9
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1020XercesCommentWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 7
  %3 = load i64, ptr %2, align 8, !tbaa !52
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesCommentWrapper7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = load ptr, ptr %5, align 8, !tbaa !35
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1020XercesCommentWrapper9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  %4 = load ptr, ptr %3, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 41
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1020XercesCommentWrapper13substringDataEjjRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesCommentWrapper", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !38
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XercesWrapperHelper13substringDataEPKN11xercesc_2_716DOMCharacterDataEjjRNS_14XalanDOMStringE(ptr noundef %6, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #9
  ret ptr %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XercesWrapperHelper13substringDataEPKN11xercesc_2_716DOMCharacterDataEjjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapper10appendDataERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #14
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapper10insertDataEjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #14
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapper10deleteDataEjj(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #14
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1020XercesCommentWrapper11replaceDataEjjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #7 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7) #9
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #14
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrDataC2EPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 !prof !34 {
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  store ptr %1, ptr %4, align 8, !tbaa !45
  store ptr %2, ptr %5, align 8, !tbaa !45
  call void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020XercesCommentWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020XercesCommentWrapperEEC2IRS2_RS5_TnNSt9enable_ifIXaaclsr5_PCCPE22_MoveConstructiblePairIT_T0_EEclsr5_PCCPE30_ImplicitlyMoveConvertiblePairISB_SC_EEEbE4typeELb1EEEOSB_OSC_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #4 comdat align 2 !prof !34 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  store ptr %4, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %2, align 8, !tbaa !45
  store ptr %6, ptr %5, align 8, !tbaa !46
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10deallocateEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #1 comdat align 2 !prof !34 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  %2 = tail call noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  br i1 %2, label %3, label %10

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !53
  %5 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !46
  %7 = load ptr, ptr %4, align 8, !tbaa !35
  %8 = getelementptr inbounds ptr, ptr %7, i64 3
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %6) #9
  br label %10

10:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData12isInitilizedEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #4 comdat align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !53
  %3 = icmp ne ptr %2, null
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8
  %6 = icmp ne ptr %5, null
  %7 = select i1 %3, i1 %6, i1 false
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData5resetEPN11xercesc_2_713MemoryManagerEPS1_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #4 comdat align 2 !prof !34 {
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !53
  %4 = getelementptr inbounds %"struct.std::pair", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !46
  tail call void @_ZNK11xalanc_1_1018XalanMemMgrAutoPtrINS_20XercesCommentWrapperELb0EE17MemMgrAutoPtrData10invariantsEv(ptr noundef nonnull align 8 dereferenceable(16) %0) #9
  ret void
}

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { noreturn nounwind }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138344258}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997636}
!6 = !{!"MaxFunctionCount", i64 89343718472}
!7 = !{!"NumCounts", i64 49244}
!8 = !{!"NumFunctions", i64 27305}
!9 = !{!"IsPartialProfile", i64 0}
!10 = !{!"PartialProfileRatio", double 0.000000e+00}
!11 = !{!"DetailedSummary", !12}
!12 = !{!13, !14, !15, !16, !17, !18, !19, !20, !21, !22, !23, !24, !25, !26, !27, !28}
!13 = !{i32 10000, i64 89343718472, i32 1}
!14 = !{i32 100000, i64 89343718472, i32 1}
!15 = !{i32 200000, i64 33857387535, i32 2}
!16 = !{i32 300000, i64 30137156660, i32 4}
!17 = !{i32 400000, i64 28792558684, i32 6}
!18 = !{i32 500000, i64 16886835304, i32 8}
!19 = !{i32 600000, i64 16826917200, i32 11}
!20 = !{i32 700000, i64 13167999625, i32 15}
!21 = !{i32 800000, i64 2443628737, i32 28}
!22 = !{i32 900000, i64 555646850, i32 77}
!23 = !{i32 950000, i64 134227650, i32 195}
!24 = !{i32 990000, i64 30109074, i32 515}
!25 = !{i32 999000, i64 1000482, i32 1252}
!26 = !{i32 999900, i64 150186, i32 2316}
!27 = !{i32 999990, i64 20523, i32 3051}
!28 = !{i32 999999, i64 1160, i32 3778}
!29 = !{i32 1, !"wchar_size", i32 4}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !43, i64 8}
!39 = !{!"_ZTSN11xalanc_1_1020XercesCommentWrapperE", !40, i64 0, !43, i64 8, !43, i64 16}
!40 = !{!"_ZTSN11xalanc_1_1012XalanCommentE", !41, i64 0}
!41 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !42, i64 0}
!42 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!43 = !{!"any pointer", !44, i64 0}
!44 = !{!"omnipotent char", !37, i64 0}
!45 = !{!43, !43, i64 0}
!46 = !{!47, !43, i64 8}
!47 = !{!"_ZTSSt4pairIPN11xercesc_2_713MemoryManagerEPN11xalanc_1_1020XercesCommentWrapperEE", !43, i64 0, !43, i64 8}
!48 = !{!39, !43, i64 16}
!49 = !{!50, !43, i64 8}
!50 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !43, i64 8, !43, i64 16, !43, i64 24, !43, i64 32, !43, i64 40, !43, i64 48, !51, i64 56}
!51 = !{!"long", !44, i64 0}
!52 = !{!50, !51, i64 56}
!53 = !{!47, !43, i64 0}
