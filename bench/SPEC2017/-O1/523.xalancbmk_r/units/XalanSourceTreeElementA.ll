; ModuleID = 'XalanSourceTreeElementA.cpp'
source_filename = "XalanSourceTreeElementA.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>
%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanSourceTreeElementA" = type { %"class.xalanc_1_10::XalanSourceTreeElement", %"class.xalanc_1_10::XalanNamedNodeMap", ptr, i64 }
%"class.xalanc_1_10::XalanSourceTreeElement" = type { %"class.xalanc_1_10::XalanElement", ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%"class.xalanc_1_10::XalanElement" = type { %"class.xalanc_1_10::XalanNode" }
%"class.xalanc_1_10::XalanNode" = type { ptr }
%"class.xalanc_1_10::XalanNamedNodeMap" = type { ptr }

$_ZN11xalanc_1_1014XalanDOMStringD2Ev = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_10L13s_emptyStringE = internal global %"class.xalanc_1_10::XalanDOMString" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@_ZTVN11xalanc_1_1023XalanSourceTreeElementAE = dso_local unnamed_addr constant { [52 x ptr], [12 x ptr] } { [52 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1023XalanSourceTreeElementAE, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD0Ev, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeNameEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getNodeValueEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeTypeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getParentNodeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getChildNodesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getFirstChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getLastChildEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement18getPreviousSiblingEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement14getNextSiblingEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA13getAttributesEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9cloneNodeEb, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12insertBeforeEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12replaceChildEPNS_9XalanNodeES2_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11removeChildEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11appendChildEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13hasChildNodesEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setNodeValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9normalizeEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11isSupportedERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA15getNamespaceURIEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getPrefixEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getLocalNameEv, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA16getAttributeNodeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement20getElementsByTagNameERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12setAttributeERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement16setAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement19removeAttributeNodeEPNS_9XalanAttrE, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement15removeAttributeERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA18getAttributeNodeNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE, ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA4itemEj, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE, ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE, ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_], [12 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN11xalanc_1_1023XalanSourceTreeElementAE, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD1Ev, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD0Ev, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA4itemEj, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE, ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE, ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_] }, align 8
@_ZTIN11xalanc_1_1017XalanDOMExceptionE = external constant ptr
@_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE = external global %"class.xalanc_1_10::XalanDOMString", align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1023XalanSourceTreeElementAE = dso_local constant [41 x i8] c"N11xalanc_1_1023XalanSourceTreeElementAE\00", align 1
@_ZTIN11xalanc_1_1022XalanSourceTreeElementE = external constant ptr
@_ZTIN11xalanc_1_1017XalanNamedNodeMapE = external constant ptr
@_ZTIN11xalanc_1_1023XalanSourceTreeElementAE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1023XalanSourceTreeElementAE, i32 0, i32 2, ptr @_ZTIN11xalanc_1_1022XalanSourceTreeElementE, i64 2, ptr @_ZTIN11xalanc_1_1017XalanNamedNodeMapE, i64 18432 }, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_XalanSourceTreeElementA.cpp, ptr null }]

@_ZN11xalanc_1_1023XalanSourceTreeElementAC1ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i64, ptr, ptr, ptr, i64), ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m
@_ZN11xalanc_1_1023XalanSourceTreeElementAD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev
@_ZN11xalanc_1_1023XalanSourceTreeElementAC1ERN11xercesc_2_713MemoryManagerERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, ptr, i1), ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKS0_b

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv() local_unnamed_addr #0

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1014XalanDOMStringD2Ev(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #1 comdat align 2 !prof !44 {
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #20
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !45 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef %3, ptr noundef %6, ptr noundef %7, ptr noundef %8, i64 noundef %9)
  %11 = getelementptr inbounds i8, ptr %0, i64 72
  invoke void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %15, !prof !46

12:                                               ; preds = %10
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 1, i64 2), ptr %11, align 8, !tbaa !47
  %13 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  store ptr %4, ptr %13, align 8, !tbaa !50
  %14 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  store i64 %5, ptr %14, align 8, !tbaa !59
  ret void

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  resume { ptr, i32 } %16
}

declare void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #5 align 2 !prof !45 {
  %2 = getelementptr inbounds i8, ptr %0, i64 72
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD1Ev(ptr noundef nonnull %0) unnamed_addr #6 align 2 !prof !44 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -72
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #20
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #1 align 2 !prof !44 {
  %2 = getelementptr inbounds i8, ptr %0, i64 72
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #20
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  tail call void @_ZdlPv(ptr noundef %0) #21
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementAD0Ev(ptr noundef nonnull %0) unnamed_addr #6 align 2 !prof !44 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -72
  tail call void @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #20
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %2) #20
  tail call void @_ZdlPv(ptr noundef %2) #21
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(96) %2, i1 noundef zeroext %3) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3)
  %5 = getelementptr inbounds i8, ptr %0, i64 72
  invoke void @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %6 unwind label %13

6:                                                ; preds = %4
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !47
  store ptr getelementptr inbounds ({ [52 x ptr], [12 x ptr] }, ptr @_ZTVN11xalanc_1_1023XalanSourceTreeElementAE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  store ptr %9, ptr %7, align 8, !tbaa !50
  %10 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %2, i64 0, i32 3
  %12 = load i64, ptr %11, align 8, !tbaa !59
  store i64 %12, ptr %10, align 8, !tbaa !59
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #20
  resume { ptr, i32 } %14
}

declare void @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA6createERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 2
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(8) %0, i64 noundef 96)
  invoke void @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKS0_b(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, i1 noundef zeroext %2)
          to label %8 unwind label %9

8:                                                ; preds = %3
  ret ptr %7

9:                                                ; preds = %3
  %10 = landingpad { ptr, i32 }
          cleanup
  %11 = icmp eq ptr %7, null
  br i1 %11, label %19, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr %0, align 8, !tbaa !47
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %7)
          to label %19 unwind label %16

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          catch ptr null
  %18 = extractvalue { ptr, i32 } %17, 0
  tail call void @__clang_call_terminate(ptr %18) #22
  unreachable

19:                                               ; preds = %9, %12
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA13getAttributesEv(ptr noundef nonnull readnone align 8 dereferenceable(96) %0) unnamed_addr #9 align 2 !prof !60 {
  %2 = getelementptr inbounds i8, ptr %0, i64 72
  ret ptr %2
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9cloneNodeEb(ptr nocapture nonnull readnone align 8 %0, i1 zeroext %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #20
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 9)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12), i32 noundef) unnamed_addr #0

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(12)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA15getNamespaceURIEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !44 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getPrefixEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !44 {
  ret ptr @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getLocalNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #12 align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElement", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getAttributeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #8 align 2 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %6, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 30
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef nonnull align 8 dereferenceable(36) ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6)
  br label %13

13:                                               ; preds = %2, %8
  %14 = phi ptr [ %12, %8 ], [ @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE, %2 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA16getAttributeNodeERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #8 align 2 !prof !44 {
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !59
  %5 = icmp eq i64 %4, 0
  br i1 %5, label %29, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  br label %13

8:                                                ; preds = %13
  %9 = add i32 %15, 1
  %10 = zext i32 %9 to i64
  %11 = load i64, ptr %3, align 8, !tbaa !59
  %12 = icmp ugt i64 %11, %10
  br i1 %12, label %13, label %29, !llvm.loop !62

13:                                               ; preds = %6, %8
  %14 = phi i64 [ 0, %6 ], [ %10, %8 ]
  %15 = phi i32 [ 0, %6 ], [ %9, %8 ]
  %16 = load ptr, ptr %7, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 %14
  %18 = load ptr, ptr %17, align 8, !tbaa !65
  %19 = load ptr, ptr %18, align 8, !tbaa !47
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef nonnull align 8 dereferenceable(36) ptr %21(ptr noundef nonnull align 8 dereferenceable(40) %18)
  %23 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %22, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %23, label %24, label %8

24:                                               ; preds = %13
  %25 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !50
  %27 = getelementptr inbounds ptr, ptr %26, i64 %14
  %28 = load ptr, ptr %27, align 8, !tbaa !65
  br label %29

29:                                               ; preds = %8, %2, %24
  %30 = phi ptr [ %28, %24 ], [ null, %2 ], [ null, %8 ]
  ret ptr %30
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getAttributeNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #8 align 2 !prof !44 {
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 39
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %7, align 8, !tbaa !47
  %11 = getelementptr inbounds ptr, ptr %10, i64 30
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef nonnull align 8 dereferenceable(36) ptr %12(ptr noundef nonnull align 8 dereferenceable(8) %7)
  br label %14

14:                                               ; preds = %3, %9
  %15 = phi ptr [ %13, %9 ], [ @_ZN11xalanc_1_1022XalanSourceTreeElement13s_emptyStringE, %3 ]
  ret ptr %15
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA18getAttributeNodeNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #8 align 2 !prof !44 {
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !59
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %38, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  br label %9

9:                                                ; preds = %7, %33
  %10 = phi i64 [ 0, %7 ], [ %35, %33 ]
  %11 = phi i32 [ 0, %7 ], [ %34, %33 ]
  %12 = load ptr, ptr %8, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 %10
  %14 = load ptr, ptr %13, align 8, !tbaa !65
  %15 = load ptr, ptr %14, align 8, !tbaa !47
  %16 = getelementptr inbounds ptr, ptr %15, i64 24
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef nonnull align 8 dereferenceable(36) ptr %17(ptr noundef nonnull align 8 dereferenceable(40) %14)
  %19 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %18, ptr noundef nonnull align 8 dereferenceable(36) %2)
  br i1 %19, label %20, label %33

20:                                               ; preds = %9
  %21 = load ptr, ptr %8, align 8, !tbaa !50
  %22 = getelementptr inbounds ptr, ptr %21, i64 %10
  %23 = load ptr, ptr %22, align 8, !tbaa !65
  %24 = load ptr, ptr %23, align 8, !tbaa !47
  %25 = getelementptr inbounds ptr, ptr %24, i64 22
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef nonnull align 8 dereferenceable(36) ptr %26(ptr noundef nonnull align 8 dereferenceable(40) %23)
  %28 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36) %27, ptr noundef nonnull align 8 dereferenceable(36) %1)
  br i1 %28, label %29, label %33

29:                                               ; preds = %20
  %30 = load ptr, ptr %8, align 8, !tbaa !50
  %31 = getelementptr inbounds ptr, ptr %30, i64 %10
  %32 = load ptr, ptr %31, align 8, !tbaa !65
  br label %38

33:                                               ; preds = %9, %20
  %34 = add i32 %11, 1
  %35 = zext i32 %34 to i64
  %36 = load i64, ptr %4, align 8, !tbaa !59
  %37 = icmp ugt i64 %36, %35
  br i1 %37, label %9, label %38, !llvm.loop !66

38:                                               ; preds = %33, %3, %29
  %39 = phi ptr [ %32, %29 ], [ null, %3 ], [ null, %33 ]
  ret ptr %39
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #20
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: cold noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE(ptr nocapture noundef readnone %0, ptr nocapture readnone %1) unnamed_addr #13 align 2 !prof !44 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA12setNamedItemEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr poison)
  unreachable
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA4itemEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0, i32 noundef %1) unnamed_addr #14 align 2 !prof !44 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %5 = load i64, ptr %4, align 8, !tbaa !59
  %6 = icmp ugt i64 %5, %3
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %11, %7 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA4itemEj(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #15 align 2 !prof !67 {
  %3 = zext i32 %1 to i64
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  %5 = load i64, ptr %4, align 8, !tbaa !59
  %6 = icmp ugt i64 %5, %3
  br i1 %6, label %7, label %12, !prof !68

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  %10 = getelementptr inbounds ptr, ptr %9, i64 %3
  %11 = load ptr, ptr %10, align 8, !tbaa !65
  br label %12

12:                                               ; preds = %2, %7
  %13 = phi ptr [ %11, %7 ], [ null, %2 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #8 align 2 !prof !44 {
  %3 = load ptr, ptr %0, align 8, !tbaa !47
  %4 = getelementptr inbounds ptr, ptr %3, i64 30
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %6
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA12getNamedItemERKNS_14XalanDOMStringE(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1) unnamed_addr #16 align 2 !prof !44 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -72
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 30
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(36) %1)
  ret ptr %7
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZNK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(96) %0) unnamed_addr #12 align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanSourceTreeElementA", ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !59
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA9getLengthEv(ptr nocapture noundef readonly %0) unnamed_addr #17 align 2 !prof !60 {
  %2 = getelementptr inbounds i8, ptr %0, i64 16
  %3 = load i64, ptr %2, align 8, !tbaa !59
  %4 = trunc i64 %3 to i32
  ret i32 %4
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #20
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: cold noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE(ptr nocapture noundef readnone %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #13 align 2 !prof !44 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA15removeNamedItemERKNS_14XalanDOMStringE(ptr nonnull align 8 poison, ptr nonnull align 8 poison)
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #8 align 2 !prof !44 {
  %4 = load ptr, ptr %0, align 8, !tbaa !47
  %5 = getelementptr inbounds ptr, ptr %4, i64 39
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %7
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn72_NK11xalanc_1_1023XalanSourceTreeElementA14getNamedItemNSERKNS_14XalanDOMStringES3_(ptr noundef %0, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2) unnamed_addr #16 align 2 !prof !44 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -72
  %5 = load ptr, ptr %4, align 8, !tbaa !47
  %6 = getelementptr inbounds ptr, ptr %5, i64 39
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(96) %4, ptr noundef nonnull align 8 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(36) %2)
  ret ptr %8
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 16) #20
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %3, i32 noundef 7)
          to label %4 unwind label %5

4:                                                ; preds = %2
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

5:                                                ; preds = %2
  %6 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #20
  resume { ptr, i32 } %6
}

; Function Attrs: cold noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE(ptr nocapture noundef readnone %0, ptr nocapture readnone %1) unnamed_addr #13 align 2 !prof !44 {
  %3 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA14setNamedItemNSEPNS_9XalanNodeE(ptr nonnull align 8 poison, ptr poison)
  unreachable
}

; Function Attrs: cold mustprogress noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_(ptr nocapture nonnull readnone align 8 %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #10 align 2 personality ptr @__gxx_personality_v0 !prof !44 {
  %4 = tail call ptr @__cxa_allocate_exception(i64 16) #20
  invoke void @_ZN11xalanc_1_1017XalanDOMExceptionC1ENS0_13ExceptionCodeE(ptr noundef nonnull align 8 dereferenceable(12) %4, i32 noundef 7)
          to label %5 unwind label %6

5:                                                ; preds = %3
  tail call void @__cxa_throw(ptr nonnull %4, ptr nonnull @_ZTIN11xalanc_1_1017XalanDOMExceptionE, ptr nonnull @_ZN11xalanc_1_1017XalanDOMExceptionD1Ev) #23
  unreachable

6:                                                ; preds = %3
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %4) #20
  resume { ptr, i32 } %7
}

; Function Attrs: cold noreturn uwtable
define dso_local noalias noundef nonnull ptr @_ZThn72_N11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_(ptr nocapture noundef readnone %0, ptr nocapture nonnull readnone align 8 %1, ptr nocapture nonnull readnone align 8 %2) unnamed_addr #13 align 2 !prof !44 {
  %4 = tail call noundef ptr @_ZN11xalanc_1_1023XalanSourceTreeElementA17removeNamedItemNSERKNS_14XalanDOMStringES3_(ptr nonnull align 8 poison, ptr nonnull align 8 poison, ptr nonnull align 8 poison)
  unreachable
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef i32 @_ZNK11xalanc_1_1022XalanSourceTreeElement11getNodeTypeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12insertBeforeEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement12replaceChildEPNS_9XalanNodeES2_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11removeChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement11appendChildEPNS_9XalanNodeE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement12setNodeValueERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9normalizeEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement11isSupportedERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement9setPrefixERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare noundef zeroext i1 @_ZNK11xalanc_1_1022XalanSourceTreeElement9isIndexedEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef i64 @_ZNK11xalanc_1_1022XalanSourceTreeElement8getIndexEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement10getTagNameEv(ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement20getElementsByTagNameERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement12setAttributeERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement16setAttributeNodeEPNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement19removeAttributeNodeEPNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #0

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement15removeAttributeERKNS_14XalanDOMStringE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement14setAttributeNSERKNS_14XalanDOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare void @_ZN11xalanc_1_1022XalanSourceTreeElement17removeAttributeNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

declare noundef ptr @_ZN11xalanc_1_1022XalanSourceTreeElement18setAttributeNodeNSEPNS_9XalanAttrE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #0

declare noundef ptr @_ZNK11xalanc_1_1022XalanSourceTreeElement22getElementsByTagNameNSERKNS_14XalanDOMStringES3_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) unnamed_addr #0

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #18 comdat align 2 personality ptr @__gxx_personality_v0 !prof !69 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !70
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !72

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !73
  %8 = load ptr, ptr %0, align 8, !tbaa !74
  %9 = load ptr, ptr %8, align 8, !tbaa !47
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !75

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #22
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #19 comdat !prof !44 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #20
  tail call void @_ZSt9terminatev() #22
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsERKS0_S2_(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_XalanSourceTreeElementA.cpp() #16 section ".text.startup" !prof !76 !PGOFuncName !77 {
  %1 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv()
  tail call void @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(36) @_ZN11xalanc_1_10L13s_emptyStringE, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %2 = tail call i32 @__cxa_atexit(ptr nonnull @_ZN11xalanc_1_1014XalanDOMStringD2Ev, ptr nonnull @_ZN11xalanc_1_10L13s_emptyStringE, ptr nonnull @__dso_handle) #20
  ret void
}

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nounwind }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn nounwind }
attributes #23 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPNS_9XalanNodeESA_SA_m, i64 189536}
!36 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAC2ERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringEPNS_23XalanSourceTreeDocumentEPPNS_19XalanSourceTreeAttrEmPNS_9XalanNodeESD_SD_m, ptr @_ZN11xalanc_1_1017XalanNamedNodeMapC2Ev, i64 189536}
!37 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev, ptr @_ZN11xalanc_1_1017XalanNamedNodeMapD2Ev, i64 189536}
!38 = !{ptr @_ZN11xalanc_1_1023XalanSourceTreeElementAD2Ev, ptr @_ZN11xalanc_1_1022XalanSourceTreeElementD2Ev, i64 189536}
!39 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!40 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeElementA.cpp, ptr @_ZN11xalanc_1_1012XalanMemMgrs14getDummyMemMgrEv, i64 1}
!41 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeElementA.cpp, ptr @_ZN11xalanc_1_1014XalanDOMStringC1ERN11xercesc_2_713MemoryManagerE, i64 1}
!42 = !{ptr @_GLOBAL__sub_I_XalanSourceTreeElementA.cpp, ptr @__cxa_atexit, i64 1}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 0}
!45 = !{!"function_entry_count", i64 189536}
!46 = !{!"branch_weights", i32 189536, i32 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"vtable pointer", !49, i64 0}
!49 = !{!"Simple C++ TBAA"}
!50 = !{!51, !55, i64 80}
!51 = !{!"_ZTSN11xalanc_1_1023XalanSourceTreeElementAE", !52, i64 0, !58, i64 72, !55, i64 80, !57, i64 88}
!52 = !{!"_ZTSN11xalanc_1_1022XalanSourceTreeElementE", !53, i64 0, !55, i64 8, !55, i64 16, !55, i64 24, !55, i64 32, !55, i64 40, !55, i64 48, !55, i64 56, !57, i64 64}
!53 = !{!"_ZTSN11xalanc_1_1012XalanElementE", !54, i64 0}
!54 = !{!"_ZTSN11xalanc_1_109XalanNodeE"}
!55 = !{!"any pointer", !56, i64 0}
!56 = !{!"omnipotent char", !49, i64 0}
!57 = !{!"long", !56, i64 0}
!58 = !{!"_ZTSN11xalanc_1_1017XalanNamedNodeMapE"}
!59 = !{!51, !57, i64 88}
!60 = !{!"function_entry_count", i64 217913}
!61 = !{!52, !55, i64 8}
!62 = distinct !{!62, !63, !64}
!63 = !{!"llvm.loop.mustprogress"}
!64 = !{!"llvm.loop.unroll.disable"}
!65 = !{!55, !55, i64 0}
!66 = distinct !{!66, !63, !64}
!67 = !{!"function_entry_count", i64 228788}
!68 = !{!"branch_weights", i32 228788, i32 0}
!69 = !{!"function_entry_count", i64 42470003}
!70 = !{!71, !57, i64 16}
!71 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !55, i64 0, !57, i64 8, !57, i64 16, !55, i64 24}
!72 = !{!"branch_weights", i32 52000, i32 42418003}
!73 = !{!71, !55, i64 24}
!74 = !{!71, !55, i64 0}
!75 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
!76 = !{!"function_entry_count", i64 1}
!77 = !{!"XalanSourceTreeElementA.cpp;_GLOBAL__sub_I_XalanSourceTreeElementA.cpp"}
