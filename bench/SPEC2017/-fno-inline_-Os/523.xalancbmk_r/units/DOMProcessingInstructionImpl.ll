; ModuleID = 'DOMProcessingInstructionImpl.cpp'
source_filename = "DOMProcessingInstructionImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMProcessingInstructionImpl" = type { %"class.xercesc_2_7::DOMProcessingInstruction", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl", ptr, ptr }
%"class.xercesc_2_7::DOMProcessingInstruction" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMBuffer" = type { ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_724DOMProcessingInstructionC2Ev = comdat any

$_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb = comdat any

$_ZN11xercesc_2_724DOMProcessingInstructionC2ERKS0_ = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_79DOMBuffer6getLenEv = comdat any

$_ZN11xercesc_2_79DOMBuffer4chopEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_724DOMProcessingInstructionD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2ERKS0_ = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_724DOMProcessingInstructionE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_724DOMProcessingInstructionE = comdat any

$_ZTVN11xercesc_2_724DOMProcessingInstructionE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_728DOMProcessingInstructionImplE = dso_local unnamed_addr constant { [46 x ptr] } { [46 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_728DOMProcessingInstructionImplE, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImplD2Ev, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImplD0Ev, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl12getLastChildEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getAttributesEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl9cloneNodeEb, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl9normalizeEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl9getPrefixEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl12getLocalNameEv, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl14getTextContentEv, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl7releaseEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl9getTargetEv, ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl7getDataEv, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl7setDataEPKt, ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl10setBaseURIEPKt] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_728DOMProcessingInstructionImplE = dso_local constant [46 x i8] c"N11xercesc_2_728DOMProcessingInstructionImplE\00", align 1
@_ZTSN11xercesc_2_724DOMProcessingInstructionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724DOMProcessingInstructionE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_724DOMProcessingInstructionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724DOMProcessingInstructionE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_728DOMProcessingInstructionImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_728DOMProcessingInstructionImplE, ptr @_ZTIN11xercesc_2_724DOMProcessingInstructionE }, align 8
@_ZTVN11xercesc_2_724DOMProcessingInstructionE = linkonce_odr dso_local unnamed_addr constant { [45 x ptr] } { [45 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724DOMProcessingInstructionE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_724DOMProcessingInstructionD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_728DOMProcessingInstructionImplC1EPNS_11DOMDocumentEPKtS4_ = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_728DOMProcessingInstructionImplC2EPNS_11DOMDocumentEPKtS4_
@_ZN11xercesc_2_728DOMProcessingInstructionImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_728DOMProcessingInstructionImplC2ERKS0_b
@_ZN11xercesc_2_728DOMProcessingInstructionImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_728DOMProcessingInstructionImplD2Ev

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImplC2EPNS_11DOMDocumentEPKtS4_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_724DOMProcessingInstructionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [46 x ptr] }, ptr @_ZTVN11xercesc_2_728DOMProcessingInstructionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds i8, ptr %1, i64 24
  %8 = select i1 %6, ptr null, ptr %7
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %8) #8
          to label %9 unwind label %18

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #8
          to label %11 unwind label %20

11:                                               ; preds = %9
  %12 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_720DOMCharacterDataImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %1, ptr noundef %3) #8
          to label %13 unwind label %22

13:                                               ; preds = %11
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 5
  store ptr null, ptr %14, align 8, !tbaa !41
  tail call void @_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb(ptr noundef nonnull align 8 dereferenceable(10) %5, i1 noundef zeroext true) #8
  %15 = invoke noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %1, ptr noundef %2) #8
          to label %16 unwind label %24

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 4
  store ptr %15, ptr %17, align 8, !tbaa !51
  ret void

18:                                               ; preds = %4
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %30

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %28

22:                                               ; preds = %11
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %26

24:                                               ; preds = %13
  %25 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #9
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %23, %22 ]
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #9
  br label %28

28:                                               ; preds = %26, %20
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %21, %20 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %5) #9
  br label %30

30:                                               ; preds = %28, %18
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724DOMProcessingInstructionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #1 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #8
  store ptr getelementptr inbounds ({ [45 x ptr] }, ptr @_ZTVN11xercesc_2_724DOMProcessingInstructionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb(ptr noundef nonnull align 8 dereferenceable(10) %0, i1 noundef zeroext %1) local_unnamed_addr #3 comdat align 2 !prof !52 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %4 = load i16, ptr %3, align 8, !tbaa !53
  %5 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !54
  br i1 %1, label %6, label %8, !prof !55

6:                                                ; preds = %2
  %7 = or i16 %5, %4
  br label %11

8:                                                ; preds = %2
  %9 = xor i16 %5, -1
  %10 = and i16 %4, %9
  br label %11

11:                                               ; preds = %8, %6
  %12 = phi i16 [ %7, %6 ], [ %10, %8 ]
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  store i16 %12, ptr %13, align 8, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, i1 zeroext %2) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_724DOMProcessingInstructionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr getelementptr inbounds ({ [46 x ptr] }, ptr @_ZTVN11xercesc_2_728DOMProcessingInstructionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %1, i64 0, i32 1
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5) #8
          to label %6 unwind label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %1, i64 0, i32 2
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8) #8
          to label %9 unwind label %18

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %1, i64 0, i32 3
  invoke void @_ZN11xercesc_2_720DOMCharacterDataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11) #8
          to label %12 unwind label %20

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %1, i64 0, i32 4
  %15 = load <2 x ptr>, ptr %14, align 8, !tbaa !56
  store <2 x ptr> %15, ptr %13, align 8, !tbaa !56
  tail call void @_ZN11xercesc_2_711DOMNodeImpl13setIsLeafNodeEb(ptr noundef nonnull align 8 dereferenceable(10) %4, i1 noundef zeroext true) #8
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %24

18:                                               ; preds = %6
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #9
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  br label %24

24:                                               ; preds = %22, %16
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724DOMProcessingInstructionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #1 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #8
  store ptr getelementptr inbounds ({ [45 x ptr] }, ptr @_ZTVN11xercesc_2_724DOMProcessingInstructionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [46 x ptr] }, ptr @_ZTVN11xercesc_2_728DOMProcessingInstructionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImplD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_728DOMProcessingInstructionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 72, ptr noundef %6, i32 noundef 11) #8
  tail call void @_ZN11xercesc_2_728DOMProcessingInstructionImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull align 8 dereferenceable(72) %0, i1 zeroext poison) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #8
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #1 comdat !prof !57 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #8
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11getNodeNameEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !37 {
  ret i16 7
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl9getTargetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #5 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !38
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #8
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #8
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %58

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %33 = icmp eq ptr %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #8
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl13releaseBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %35) #8
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 11) #8
  ret void

36:                                               ; preds = %28
  %37 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %38 = load ptr, ptr %0, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 12
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %42 unwind label %56

42:                                               ; preds = %36
  %43 = icmp eq ptr %41, null
  br i1 %43, label %51, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !38
  %46 = getelementptr inbounds ptr, ptr %45, i64 12
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %48) #8
  br label %53

51:                                               ; preds = %42
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %52, %51 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %37, i16 noundef signext 15, ptr noundef null, ptr noundef %54) #8
          to label %55 unwind label %56

55:                                               ; preds = %53
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

56:                                               ; preds = %53, %44, %36
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %58

58:                                               ; preds = %56, %26
  %59 = phi ptr [ %37, %56 ], [ %7, %26 ]
  %60 = phi { ptr, i32 } [ %57, %56 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %59) #11
  resume { ptr, i32 } %60
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 comdat align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !53
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !53
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #3 comdat align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #2

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl13releaseBufferEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl10setBaseURIEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %7 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl11cloneStringEPKt(ptr noundef nonnull align 8 dereferenceable(293) %6, ptr noundef %1) #8
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 5
  store ptr %7, ptr %8, align 8, !tbaa !41
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl10getBaseURIEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !74
  %8 = load ptr, ptr %7, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 31
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(8) %7) #8
  br label %12

12:                                               ; preds = %1, %5
  %13 = phi ptr [ %11, %5 ], [ %3, %1 ]
  ret ptr %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #8
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !38
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #8
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #8
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %111

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !75
  %30 = tail call noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #8
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %31, %1
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = tail call ptr @__cxa_allocate_exception(i64 40) #11
  %35 = load ptr, ptr %0, align 8, !tbaa !38
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %39 unwind label %53

39:                                               ; preds = %33
  %40 = icmp eq ptr %38, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !38
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
          to label %46 unwind label %53

46:                                               ; preds = %41
  %47 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %45) #8
  br label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !56
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %34, i16 noundef signext 1, ptr noundef null, ptr noundef %51) #8
          to label %52 unwind label %53

52:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #12
  unreachable

53:                                               ; preds = %50, %41, %33
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %111

55:                                               ; preds = %27
  %56 = load ptr, ptr %0, align 8, !tbaa !38
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %60 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !51
  %62 = sub nsw i64 %31, %1
  %63 = tail call noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13substringDataEmm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %62) #8
  %64 = load ptr, ptr %59, align 8, !tbaa !38
  %65 = getelementptr inbounds ptr, ptr %64, i64 8
  %66 = load ptr, ptr %65, align 8
  %67 = tail call noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef %61, ptr noundef %63) #8
  %68 = load ptr, ptr %0, align 8, !tbaa !38
  %69 = getelementptr inbounds ptr, ptr %68, i64 5
  %70 = load ptr, ptr %69, align 8
  %71 = tail call noundef ptr %70(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %72 = icmp eq ptr %71, null
  br i1 %72, label %82, label %73

73:                                               ; preds = %55
  %74 = load ptr, ptr %0, align 8, !tbaa !38
  %75 = getelementptr inbounds ptr, ptr %74, i64 10
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %78 = load ptr, ptr %71, align 8, !tbaa !38
  %79 = getelementptr inbounds ptr, ptr %78, i64 14
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef %67, ptr noundef %77) #8
  br label %82

82:                                               ; preds = %73, %55
  %83 = load ptr, ptr %28, align 8, !tbaa !75
  %84 = trunc i64 %1 to i32
  tail call void @_ZN11xercesc_2_79DOMBuffer4chopEj(ptr noundef nonnull align 8 dereferenceable(24) %83, i32 noundef %84) #8
  %85 = load ptr, ptr %0, align 8, !tbaa !38
  %86 = getelementptr inbounds ptr, ptr %85, i64 12
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %89 = icmp eq ptr %88, null
  br i1 %89, label %110, label %90

90:                                               ; preds = %82
  %91 = load ptr, ptr %0, align 8, !tbaa !38
  %92 = getelementptr inbounds ptr, ptr %91, i64 12
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(72) %0) #8
  %95 = load ptr, ptr %94, align 8, !tbaa !38
  %96 = getelementptr inbounds ptr, ptr %95, i64 82
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(293) %94) #8
  %99 = icmp eq ptr %98, null
  br i1 %99, label %110, label %100

100:                                              ; preds = %90
  %101 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %98) #8
  %102 = zext i32 %101 to i64
  %103 = icmp eq i32 %101, 0
  br i1 %103, label %110, label %104

104:                                              ; preds = %100, %104
  %105 = phi i64 [ %108, %104 ], [ 0, %100 ]
  %106 = trunc i64 %105 to i32
  %107 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %98, i32 noundef %106) #8
  tail call void @_ZN11xercesc_2_712DOMRangeImpl15updateSplitInfoEPNS_7DOMNodeES2_m(ptr noundef nonnull align 8 dereferenceable(80) %107, ptr noundef nonnull %0, ptr noundef %67, i64 noundef %1) #8
  %108 = add nuw nsw i64 %105, 1
  %109 = icmp eq i64 %108, %102
  br i1 %109, label %110, label %104, !llvm.loop !76

110:                                              ; preds = %104, %90, %100, %82
  ret ptr %67

111:                                              ; preds = %53, %25
  %112 = phi ptr [ %34, %53 ], [ %6, %25 ]
  %113 = phi { ptr, i32 } [ %54, %53 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %112) #11
  resume { ptr, i32 } %113
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #3 comdat align 2 !prof !78 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !53
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !54
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #3 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !79
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13substringDataEmm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  %5 = tail call noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl13substringDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #8
  ret ptr %5
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMBuffer4chopEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !81
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  store i16 0, ptr %5, align 2, !tbaa !54
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #3 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !82
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !82
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !84
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #8
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #11
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !85
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !56
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImpl15updateSplitInfoEPNS_7DOMNodeES2_m(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl16getOwnerDocumentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #8
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #8
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #8
  ret i1 %5
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret i1 %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #8
  ret ptr %6
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret i16 %4
}

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #8
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_728DOMProcessingInstructionImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret i1 %4
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_728DOMProcessingInstructionImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #8
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_728DOMProcessingInstructionImpl7getDataEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #1 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl7getDataEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #8
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl7getDataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl10deleteDataEmm(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #1 align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl13substringDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl7setDataEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl7setDataEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl7setDataEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_728DOMProcessingInstructionImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef %1) unnamed_addr #1 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMProcessingInstructionImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, ptr noundef %1) #8
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !86 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 !prof !87 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724DOMProcessingInstructionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #3 comdat align 2 {
  tail call void @llvm.trap() #13
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #3 comdat align 2 !prof !37 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #8
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #8
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #8
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #9
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #8
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

attributes #0 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { optsize }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!36}

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
!33 = !{i32 5, !"CG Profile", !34}
!34 = distinct !{!35}
!35 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !46, i64 64}
!42 = !{!"_ZTSN11xercesc_2_728DOMProcessingInstructionImplE", !43, i64 0, !45, i64 8, !49, i64 24, !50, i64 40, !46, i64 56, !46, i64 64}
!43 = !{!"_ZTSN11xercesc_2_724DOMProcessingInstructionE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!45 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !46, i64 0, !48, i64 8}
!46 = !{!"any pointer", !47, i64 0}
!47 = !{!"omnipotent char", !40, i64 0}
!48 = !{!"short", !47, i64 0}
!49 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !46, i64 0, !46, i64 8}
!50 = !{!"_ZTSN11xercesc_2_720DOMCharacterDataImplE", !46, i64 0, !46, i64 8}
!51 = !{!42, !46, i64 56}
!52 = !{!"function_entry_count", i64 650}
!53 = !{!45, !48, i64 8}
!54 = !{!48, !48, i64 0}
!55 = !{!"branch_weights", i32 651, i32 1}
!56 = !{!46, !46, i64 0}
!57 = !{!"function_entry_count", i64 1300}
!58 = !{!"function_entry_count", i64 2562}
!59 = !{!"function_entry_count", i64 2954}
!60 = !{!61, !46, i64 280}
!61 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !62, i64 0, !45, i64 32, !66, i64 48, !46, i64 80, !46, i64 88, !46, i64 96, !69, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !70, i64 136, !46, i64 176, !46, i64 184, !46, i64 192, !73, i64 200, !46, i64 208, !46, i64 216, !46, i64 224, !46, i64 232, !46, i64 240, !46, i64 248, !46, i64 256, !46, i64 264, !46, i64 272, !46, i64 280, !72, i64 288, !69, i64 292}
!62 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !63, i64 0, !64, i64 8, !65, i64 16, !44, i64 24}
!63 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!64 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!65 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!66 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !46, i64 0, !46, i64 8, !67, i64 16}
!67 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !68, i64 0, !46, i64 8}
!68 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!69 = !{!"bool", !47, i64 0}
!70 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !71, i64 0, !46, i64 8, !46, i64 16, !46, i64 24, !72, i64 32, !72, i64 36}
!71 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!72 = !{!"int", !47, i64 0}
!73 = !{!"long", !47, i64 0}
!74 = !{!42, !46, i64 8}
!75 = !{!42, !46, i64 40}
!76 = distinct !{!76, !77}
!77 = !{!"llvm.loop.mustprogress"}
!78 = !{!"function_entry_count", i64 3150}
!79 = !{!80, !72, i64 8}
!80 = !{!"_ZTSN11xercesc_2_79DOMBufferE", !46, i64 0, !72, i64 8, !72, i64 12, !46, i64 16}
!81 = !{!80, !46, i64 0}
!82 = !{!83, !72, i64 12}
!83 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !69, i64 8, !72, i64 12, !72, i64 16, !46, i64 24, !46, i64 32}
!84 = !{!83, !46, i64 32}
!85 = !{!83, !46, i64 24}
!86 = !{!"function_entry_count", i64 1851}
!87 = !{!"function_entry_count", i64 1}
!88 = !{!89, !46, i64 40}
!89 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !90, i64 8, !46, i64 16, !72, i64 24, !46, i64 32, !46, i64 40}
!90 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !47, i64 0}
