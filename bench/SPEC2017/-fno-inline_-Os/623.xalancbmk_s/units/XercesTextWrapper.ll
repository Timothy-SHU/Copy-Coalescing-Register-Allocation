; ModuleID = 'XercesTextWrapper.cpp'
source_filename = "XercesTextWrapper.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XercesTextWrapper" = type { %"class.xalanc_1_10::XalanText", ptr, ptr }
%"class.xalanc_1_10::XalanText" = type { %"class.xalanc_1_10::XalanCharacterData" }
%"class.xalanc_1_10::XalanCharacterData" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XercesWrapperNavigator" = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }

$_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv = comdat any

$_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv = comdat any

@_ZTVN11xalanc_1_1017XercesTextWrapperE = dso_local unnamed_addr constant { [39 x ptr] } { [39 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1017XercesTextWrapperE, ptr @_ZN11xalanc_1_1017XercesTextWrapperD2Ev, ptr @_ZN11xalanc_1_1017XercesTextWrapperD0Ev, ptr @_ZNK11xalanc_1_1017XercesTextWrapper11getNodeNameEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper12getNodeValueEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper11getNodeTypeEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getParentNodeEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getChildNodesEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getFirstChildEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper12getLastChildEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper14getNextSiblingEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getAttributesEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper9cloneNodeEb, ptr @_ZN11xalanc_1_1017XercesTextWrapper12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1017XercesTextWrapper12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1017XercesTextWrapper11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1017XercesTextWrapper11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1017XercesTextWrapper13hasChildNodesEv, ptr @_ZN11xalanc_1_1017XercesTextWrapper12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XercesTextWrapper9normalizeEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1017XercesTextWrapper15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper9getPrefixEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper12getLocalNameEv, ptr @_ZN11xalanc_1_1017XercesTextWrapper9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1017XercesTextWrapper9isIndexedEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper8getIndexEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper7getDataEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper9getLengthEv, ptr @_ZNK11xalanc_1_1017XercesTextWrapper13substringDataEjjRNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XercesTextWrapper10appendDataERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XercesTextWrapper10insertDataEjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XercesTextWrapper10deleteDataEjj, ptr @_ZN11xalanc_1_1017XercesTextWrapper11replaceDataEjjRKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1017XercesTextWrapper9splitTextEj, ptr @_ZNK11xalanc_1_1017XercesTextWrapper21isIgnorableWhitespaceEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1017XercesTextWrapperE = dso_local constant [35 x i8] c"N11xalanc_1_1017XercesTextWrapperE\00", align 1
@_ZTIN11xalanc_1_109XalanTextE = external constant ptr
@_ZTIN11xalanc_1_1017XercesTextWrapperE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1017XercesTextWrapperE, ptr @_ZTIN11xalanc_1_109XalanTextE }, align 8
@_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE = external constant ptr
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr

@_ZN11xalanc_1_1017XercesTextWrapperC1EPKN11xercesc_2_77DOMTextERKNS_22XercesWrapperNavigatorE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xalanc_1_1017XercesTextWrapperC2EPKN11xercesc_2_77DOMTextERKNS_22XercesWrapperNavigatorE
@_ZN11xalanc_1_1017XercesTextWrapperD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1017XercesTextWrapperD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapperD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xalanc_1_1017XercesTextWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) #7
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesTextWrapper11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesTextWrapper12getNodeValueEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017XercesTextWrapper11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i32 3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getParentNodeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getFirstChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper12getLastChildEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper18getPreviousSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper14getNextSiblingEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %5) #9
  ret ptr %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper13getAttributesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1017XercesTextWrapper16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  ret ptr %4
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1017XercesTextWrapper9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesTextWrapper12insertBeforeEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #11
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesTextWrapper12replaceChildEPNS_9XalanNodeES2_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, ptr nocapture readnone %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 3) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #11
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesTextWrapper11removeChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesTextWrapper11appendChildEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 3) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1025XercesDOMWrapperExceptionE, ptr nonnull @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesTextWrapper13hasChildNodesEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #2 align 2 !prof !35 {
  ret i1 false
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapper12setNodeValueERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapper9normalizeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %2, i32 noundef 7) #9
          to label %3 unwind label %4

3:                                                ; preds = %1
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #10
  resume { ptr, i32 } %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesTextWrapper11isSupportedERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #1 align 2 !prof !35 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) #9
  ret i1 %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesTextWrapper15getNamespaceURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 22
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesTextWrapper9getPrefixEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 23
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesTextWrapper12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 24
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapper9setPrefixERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesTextWrapper9isIndexedEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = tail call noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  %5 = load ptr, ptr %4, align 8, !tbaa !45
  %6 = getelementptr inbounds ptr, ptr %5, i64 26
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef zeroext i1 %7(ptr noundef nonnull align 8 dereferenceable(432) %4) #9
  ret i1 %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i64 @_ZNK11xalanc_1_1017XercesTextWrapper8getIndexEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = tail call noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %3) #9
  ret i64 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesTextWrapper7getDataEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !36
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !44
  %6 = load ptr, ptr %5, align 8, !tbaa !45
  %7 = getelementptr inbounds ptr, ptr %6, i64 40
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(8) %5) #9
  %10 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64) %3, ptr noundef %9) #9
  ret ptr %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1017XercesTextWrapper9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  %4 = load ptr, ptr %3, align 8, !tbaa !45
  %5 = getelementptr inbounds ptr, ptr %4, i64 41
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef i64 %6(ptr noundef nonnull align 8 dereferenceable(8) %3) #9
  %8 = trunc i64 %7 to i32
  ret i32 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1017XercesTextWrapper13substringDataEjjRNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull returned align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 !prof !35 {
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !44
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XercesWrapperHelper13substringDataEPKN11xercesc_2_716DOMCharacterDataEjjRNS_14XalanDOMStringE(ptr noundef %6, i32 noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(36) %3) #9
  ret ptr %3
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapper10appendDataERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapper10insertDataEjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapper10deleteDataEjj(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7) #9
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapper11replaceDataEjjRKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, i32 %1, i32 %2, ptr nocapture nonnull readnone align 8 %3) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %5 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %5, i32 noundef 7) #9
          to label %6 unwind label %7

6:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

7:                                                ; preds = %4
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #10
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1017XercesTextWrapper9splitTextEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #10
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7) #9
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #11
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #10
  resume { ptr, i32 } %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xalanc_1_1017XercesTextWrapper21isIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #1 align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !45
  %3 = getelementptr inbounds ptr, ptr %2, i64 28
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef nonnull align 8 dereferenceable(36) ptr %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #9
  %6 = tail call noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36) %5) #9
  ret i1 %6
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapperC2EPKN11xercesc_2_77DOMTextERKNS_22XercesWrapperNavigatorE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(64) %2) unnamed_addr #1 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_109XalanTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  store ptr getelementptr inbounds ({ [39 x ptr] }, ptr @_ZTVN11xalanc_1_1017XercesTextWrapperE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !45
  %4 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 1
  store ptr %1, ptr %4, align 8, !tbaa !44
  %5 = getelementptr inbounds %"class.xalanc_1_10::XercesTextWrapper", ptr %0, i64 0, i32 2
  store ptr %2, ptr %5, align 8, !tbaa !47
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xalanc_1_109XalanTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xalanc_1_1017XercesTextWrapperD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 align 2 !prof !35 {
  tail call void @_ZN11xalanc_1_109XalanTextD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_109XalanTextD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #6

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator13getParentNodeEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator18getPreviousSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator14getNextSiblingEPKN11xercesc_2_77DOMNodeE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1022XercesWrapperNavigator16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  ret ptr %3
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionC1ENS_17XalanDOMException13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #5

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1025XercesDOMWrapperExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #6

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #5

; Function Attrs: nounwind optsize
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1019XercesWrapperHelper11isSupportedEPKN11xercesc_2_77DOMNodeERKNS_14XalanDOMStringES7_(ptr noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xalanc_1_1022XercesWrapperNavigator8getIndexEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XercesWrapperNavigator", ptr %0, i64 0, i32 7
  %3 = load i64, ptr %2, align 8, !tbaa !51
  ret i64 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1019XercesWrapperHelper13substringDataEPKN11xercesc_2_716DOMCharacterDataEjjRNS_14XalanDOMStringE(ptr noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xalanc_1_1015isXMLWhitespaceERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #5

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize }
attributes #8 = { builtin nounwind optsize }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{i32 1, !"ProfileSummary", !1}
!1 = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11}
!2 = !{!"ProfileFormat", !"InstrProf"}
!3 = !{!"TotalCount", i64 545138346841}
!4 = !{!"MaxCount", i64 89343718472}
!5 = !{!"MaxInternalCount", i64 30012997642}
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
!16 = !{i32 300000, i64 30137156670, i32 4}
!17 = !{i32 400000, i64 28792558693, i32 6}
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
!30 = !{i32 7, !"openmp", i32 51}
!31 = !{i32 8, !"PIC Level", i32 2}
!32 = !{i32 7, !"PIE Level", i32 2}
!33 = !{i32 7, !"uwtable", i32 2}
!34 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!35 = !{!"function_entry_count", i64 0}
!36 = !{!37, !41, i64 16}
!37 = !{!"_ZTSN11xalanc_1_1017XercesTextWrapperE", !38, i64 0, !41, i64 8, !41, i64 16}
!38 = !{!"_ZTSN11xalanc_1_109XalanTextE", !39, i64 0}
!39 = !{!"_ZTSN11xalanc_1_1018XalanCharacterDataE", !40, i64 0}
!40 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!41 = !{!"any pointer", !42, i64 0}
!42 = !{!"omnipotent char", !43, i64 0}
!43 = !{!"Simple C++ TBAA"}
!44 = !{!37, !41, i64 8}
!45 = !{!46, !46, i64 0}
!46 = !{!"vtable pointer", !43, i64 0}
!47 = !{!41, !41, i64 0}
!48 = !{!49, !41, i64 8}
!49 = !{!"_ZTSN11xalanc_1_1022XercesWrapperNavigatorE", !41, i64 8, !41, i64 16, !41, i64 24, !41, i64 32, !41, i64 40, !41, i64 48, !50, i64 56}
!50 = !{!"long", !42, i64 0}
!51 = !{!49, !50, i64 56}
