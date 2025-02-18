; ModuleID = 'DocumentImpl.cpp'
source_filename = "DocumentImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::DocumentImpl" = type { %"class.xercesc_2_7::ParentNode.base", ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ParentNode.base" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32 }>
%"class.xercesc_2_7::ChildNode" = type { %"class.xercesc_2_7::NodeImpl.base", ptr, ptr }
%"class.xercesc_2_7::NodeImpl.base" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16 }>
%"class.xercesc_2_7::NodeListImpl.base" = type { %"class.xercesc_2_7::RefCountedImpl.base" }
%"class.xercesc_2_7::RefCountedImpl.base" = type <{ ptr, i32 }>
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::NamedNodeMapImpl" = type { ptr, ptr, ptr, i8, i32 }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::ParentNode" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE9removeKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE3putEPvS2_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE3getEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE9removeAllEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZN11xercesc_2_7L10namCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN11xercesc_2_712DocumentImplE = dso_local unnamed_addr constant { [76 x ptr] } { [76 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DocumentImplE, ptr @_ZN11xercesc_2_712DocumentImplD2Ev, ptr @_ZN11xercesc_2_712DocumentImplD0Ev, ptr @_ZN11xercesc_2_712DocumentImpl10referencedEv, ptr @_ZN11xercesc_2_712DocumentImpl12unreferencedEv, ptr @_ZN11xercesc_2_710ParentNode4itemEj, ptr @_ZN11xercesc_2_710ParentNode9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_712DocumentImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_712DocumentImpl7changedEv, ptr @_ZN11xercesc_2_712DocumentImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_712DocumentImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv, ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @_ZN11xercesc_2_712DocumentImpl11getNodeNameEv, ptr @_ZN11xercesc_2_712DocumentImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_712DocumentImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEv, ptr @_ZN11xercesc_2_710ParentNode13hasChildNodesEv, ptr @_ZN11xercesc_2_712DocumentImpl12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_712DocumentImpl11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb, ptr @_ZN11xercesc_2_712DocumentImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_710ParentNode9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv, ptr @_ZN11xercesc_2_712DocumentImpl15createAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl18createCDATASectionERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl13createCommentERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl22createDocumentFragmentEv, ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringES3_S3_, ptr @_ZN11xercesc_2_712DocumentImpl13createElementERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl13createElementEPKt, ptr @_ZN11xercesc_2_712DocumentImpl12createEntityERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl21createEntityReferenceERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl14createNotationERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl27createProcessingInstructionERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl14createTextNodeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl10getDoctypeEv, ptr @_ZN11xercesc_2_712DocumentImpl18getDocumentElementEv, ptr @_ZN11xercesc_2_712DocumentImpl20getElementsByTagNameERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl13createXMLDeclERKNS_9DOMStringES3_S3_, ptr @_ZN11xercesc_2_712DocumentImpl11createRangeEv, ptr @_ZN11xercesc_2_712DocumentImpl9getRangesEv, ptr @_ZN11xercesc_2_712DocumentImpl11removeRangeEPNS_9RangeImplE, ptr @_ZN11xercesc_2_712DocumentImpl11setUserDataEPNS_8NodeImplEPv, ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEPNS_8NodeImplE, ptr @_ZN11xercesc_2_712DocumentImpl10importNodeEPNS_8NodeImplEb, ptr @_ZN11xercesc_2_712DocumentImpl15createElementNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl17createAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl22getElementsByTagNameNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl14getElementByIdERKNS_9DOMStringE] }, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@.str = private unnamed_addr constant [10 x i8] c"#document\00", align 1
@_ZN11xercesc_2_7L3namE = internal global ptr null, align 8
@_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK = internal unnamed_addr global [14 x i32] zeroinitializer, align 16
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DocumentImplE = dso_local constant [30 x i8] c"N11xercesc_2_712DocumentImplE\00", align 1
@_ZTIN11xercesc_2_710ParentNodeE = external constant ptr
@_ZTIN11xercesc_2_712DocumentImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DocumentImplE, ptr @_ZTIN11xercesc_2_710ParentNodeE }, align 8
@_ZN11xercesc_2_78NodeImpl8USERDATAE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_78NodeImpl9HASSTRINGE = external local_unnamed_addr constant i16, align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE = linkonce_odr dso_local constant [53 x i8] c"N11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE = linkonce_odr dso_local constant [57 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE7cleanupEv] }, comdat, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE = linkonce_odr dso_local constant [51 x i8] c"N11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE = linkonce_odr dso_local constant [55 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE7cleanupEv] }, comdat, align 8
@_ZTVN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_711RefVectorOfINS_9RangeImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE7cleanupEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DocumentImpl.cpp, ptr null }]

@_ZN11xercesc_2_712DocumentImplC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DocumentImplC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712DocumentImplC1ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DocumentImplC2ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE
@_ZN11xercesc_2_712DocumentImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DocumentImplD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull %0)
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %3, i8 0, i64 68, i1 false)
  store i8 1, ptr %4, align 4, !tbaa !41
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  store ptr %1, ptr %5, align 8, !tbaa !53
  %6 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %1)
          to label %7 unwind label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 257, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  store ptr %6, ptr %10, align 8, !tbaa !54
  ret void

11:                                               ; preds = %2
  %12 = landingpad { ptr, i32 }
          cleanup
  br label %15

13:                                               ; preds = %7
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %1) #13
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi { ptr, i32 } [ %14, %13 ], [ %12, %11 ]
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  resume { ptr, i32 } %16
}

declare void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplC2ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull %0)
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %6 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %6, i8 0, i64 68, i1 false)
  store i8 1, ptr %8, align 4, !tbaa !41
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  store ptr %4, ptr %9, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %3)
          to label %10 unwind label %26

10:                                               ; preds = %5
  %11 = load ptr, ptr %9, align 8, !tbaa !53
  %12 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %11)
          to label %13 unwind label %26

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 257, ptr noundef %14)
          to label %15 unwind label %28

15:                                               ; preds = %13
  store ptr %12, ptr %7, align 8, !tbaa !54
  %16 = load ptr, ptr %0, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 70
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %20 unwind label %26

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %19)
          to label %25 unwind label %26

25:                                               ; preds = %20
  ret void

26:                                               ; preds = %20, %15, %10, %5
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %30

28:                                               ; preds = %13
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #13
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi { ptr, i32 } [ %27, %26 ], [ %29, %28 ]
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  resume { ptr, i32 } %31
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %53, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %55 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %14, %13
  %18 = phi i1 [ false, %14 ], [ true, %13 ]
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %19, %17 ], [ %16, %15 ]
  %22 = phi i1 [ %18, %17 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %22, label %23, label %54

23:                                               ; preds = %20
  call void @__cxa_free_exception(ptr %12) #13
  br label %54

24:                                               ; preds = %5
  %25 = load ptr, ptr %1, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 45
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull %0)
  %28 = load ptr, ptr %1, align 8, !tbaa !38
  %29 = getelementptr inbounds ptr, ptr %28, i64 50
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(145) %1)
  %32 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %31, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !55
  %34 = load ptr, ptr %33, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 45
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(26) %33, ptr noundef nonnull %0)
  %37 = load ptr, ptr %1, align 8, !tbaa !38
  %38 = getelementptr inbounds ptr, ptr %37, i64 52
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(145) %1)
  %41 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %40, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !55
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  %44 = getelementptr inbounds ptr, ptr %43, i64 45
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(26) %42, ptr noundef nonnull %0)
  %46 = load ptr, ptr %1, align 8, !tbaa !38
  %47 = getelementptr inbounds ptr, ptr %46, i64 2
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %49 = load ptr, ptr %0, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 16
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull %1)
  br label %53

53:                                               ; preds = %2, %24
  ret void

54:                                               ; preds = %20, %23
  resume { ptr, i32 } %21

55:                                               ; preds = %14
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !57
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !38
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !58
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !38
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !59
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #13
  store ptr null, ptr %18, align 8, !tbaa !59
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !60
  %28 = icmp eq ptr %27, null
  br i1 %28, label %39, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %31 = load i16, ptr %30, align 8, !tbaa !61
  %32 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8USERDATAE, align 2, !tbaa !62
  %33 = xor i16 %32, -1
  %34 = and i16 %31, %33
  store i16 %34, ptr %30, align 8, !tbaa !61
  invoke void @_ZN11xercesc_2_714RefHashTableOfIvE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %27)
          to label %38 unwind label %35

35:                                               ; preds = %29
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #15
  unreachable

38:                                               ; preds = %29
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %27) #13
  br label %39

39:                                               ; preds = %38, %25
  %40 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !54
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %39
  tail call void @_ZN11xercesc_2_711DStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %41) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %41) #13
  br label %44

44:                                               ; preds = %43, %39
  %45 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !63
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !38
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(40) %46) #13
  br label %52

52:                                               ; preds = %48, %44
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  ret void
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !37 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_711DStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712DocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl9cloneNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %4)
  %6 = load ptr, ptr %3, align 8, !tbaa !53
  invoke void @_ZN11xercesc_2_712DocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef %6)
          to label %7 unwind label %12

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::ParentNode", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8
  %10 = icmp ne ptr %9, null
  %11 = select i1 %1, i1 %10, i1 false
  br i1 %11, label %14, label %27

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %7, %14
  %15 = phi ptr [ %25, %14 ], [ %9, %7 ]
  %16 = load ptr, ptr %5, align 8, !tbaa !38
  %17 = getelementptr inbounds ptr, ptr %16, i64 69
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull %15, i1 noundef zeroext true)
  %20 = load ptr, ptr %5, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(26) %5, ptr noundef %19)
  %24 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %15, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !64
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %14, !llvm.loop !65

27:                                               ; preds = %14, %7
  %28 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %29 = load i8, ptr %28, align 4, !tbaa !41, !range !68, !noundef !69
  %30 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %5, i64 0, i32 10
  store i8 %29, ptr %30, align 4, !tbaa !41
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11getNodeNameEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L3namE, ptr noundef nonnull @_ZN11xercesc_2_712DocumentImpl18reinitDocumentImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L10namCleanupE)
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
  ret void
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl18reinitDocumentImplEv() #5 align 2 !prof !37 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L3namE, align 8, !tbaa !64
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L3namE, align 8, !tbaa !64
  ret void
}

declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_712DocumentImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i16 9
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712DocumentImpl16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret ptr null
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl14isDocumentImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret i1 true
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl15createAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !41, !range !68, !noundef !69
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %8, i32 noundef %9)
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %33 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %14, %13
  %18 = phi i1 [ false, %14 ], [ true, %13 ]
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %19, %17 ], [ %16, %15 ]
  %22 = phi i1 [ %18, %17 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  call void @__cxa_free_exception(ptr %12) #13
  br label %31

24:                                               ; preds = %7, %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %26)
  invoke void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %27, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %29

28:                                               ; preds = %24
  ret ptr %27

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #13
  br label %31

31:                                               ; preds = %20, %23, %29
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %21, %23 ], [ %21, %20 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %14
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !37 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %3, i32 noundef %4)
  ret i1 %5
}

declare void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createCDATASectionERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4)
  invoke void @_ZN11xercesc_2_716CDATASectionImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_716CDATASectionImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createCommentERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4)
  invoke void @_ZN11xercesc_2_711CommentImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_711CommentImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl22createDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !53
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %3)
  invoke void @_ZN11xercesc_2_720DocumentFragmentImplC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef nonnull %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_720DocumentFragmentImplC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !41, !range !68, !noundef !69
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %8, i32 noundef %9)
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %33 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %14, %13
  %18 = phi i1 [ false, %14 ], [ true, %13 ]
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %19, %17 ], [ %16, %15 ]
  %22 = phi i1 [ %18, %17 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  call void @__cxa_free_exception(ptr %12) #13
  br label %31

24:                                               ; preds = %7, %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %26)
  invoke void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145) %27, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %29

28:                                               ; preds = %24
  ret ptr %27

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #13
  br label %31

31:                                               ; preds = %20, %23, %29
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %21, %23 ], [ %21, %20 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %14
  unreachable
}

declare void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 4, !tbaa !41, !range !68, !noundef !69
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %4
  %10 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %11 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %10, i32 noundef %11)
  br i1 %12, label %26, label %13

13:                                               ; preds = %9
  %14 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0)
          to label %15 unwind label %17

15:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %14, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %16 unwind label %19

16:                                               ; preds = %15
  invoke void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %35 unwind label %19

17:                                               ; preds = %13
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %22

19:                                               ; preds = %16, %15
  %20 = phi i1 [ false, %16 ], [ true, %15 ]
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  br label %22

22:                                               ; preds = %19, %17
  %23 = phi { ptr, i32 } [ %21, %19 ], [ %18, %17 ]
  %24 = phi i1 [ %20, %19 ], [ true, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br i1 %24, label %25, label %33

25:                                               ; preds = %22
  call void @__cxa_free_exception(ptr %14) #13
  br label %33

26:                                               ; preds = %9, %4
  %27 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %28 = load ptr, ptr %27, align 8, !tbaa !53
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %28)
  invoke void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145) %29, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %30 unwind label %31

30:                                               ; preds = %26
  ret ptr %29

31:                                               ; preds = %26
  %32 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %28) #13
  br label %33

33:                                               ; preds = %22, %25, %31
  %34 = phi { ptr, i32 } [ %32, %31 ], [ %23, %25 ], [ %23, %22 ]
  resume { ptr, i32 } %34

35:                                               ; preds = %16
  unreachable
}

declare void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createElementERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !41, !range !68, !noundef !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %2
  %9 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %9, i32 noundef %10)
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %14 unwind label %16

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %15 unwind label %18

15:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %42 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %21

18:                                               ; preds = %15, %14
  %19 = phi i1 [ false, %15 ], [ true, %14 ]
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %20, %18 ], [ %17, %16 ]
  %23 = phi i1 [ %19, %18 ], [ true, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %23, label %24, label %40

24:                                               ; preds = %21
  call void @__cxa_free_exception(ptr %13) #13
  br label %40

25:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %26 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %27 = load ptr, ptr %26, align 8, !tbaa !54
  %28 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %27, ptr noundef nonnull align 8 dereferenceable(8) %1)
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %28)
  %29 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %30 = load ptr, ptr %29, align 8, !tbaa !53
  %31 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %30)
          to label %32 unwind label %34

32:                                               ; preds = %25
  invoke void @_ZN11xercesc_2_711ElementImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %31, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %33 unwind label %36

33:                                               ; preds = %32
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  ret ptr %31

34:                                               ; preds = %25
  %35 = landingpad { ptr, i32 }
          cleanup
  br label %38

36:                                               ; preds = %32
  %37 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %31, ptr noundef %30) #13
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi { ptr, i32 } [ %37, %36 ], [ %35, %34 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %40

40:                                               ; preds = %21, %24, %38
  %41 = phi { ptr, i32 } [ %39, %38 ], [ %22, %24 ], [ %22, %21 ]
  resume { ptr, i32 } %41

42:                                               ; preds = %15
  unreachable
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN11xercesc_2_711ElementImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createElementEPKt(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1)
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6)
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !53
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %8)
          to label %10 unwind label %12

10:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_711ElementImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %11 unwind label %14

11:                                               ; preds = %10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  ret ptr %9

12:                                               ; preds = %2
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %16

14:                                               ; preds = %10
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %9, ptr noundef %8) #13
  br label %16

16:                                               ; preds = %14, %12
  %17 = phi { ptr, i32 } [ %15, %14 ], [ %13, %12 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  resume { ptr, i32 } %17
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl12createEntityERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !41, !range !68, !noundef !69
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %8, i32 noundef %9)
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %33 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %14, %13
  %18 = phi i1 [ false, %14 ], [ true, %13 ]
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %19, %17 ], [ %16, %15 ]
  %22 = phi i1 [ %18, %17 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  call void @__cxa_free_exception(ptr %12) #13
  br label %31

24:                                               ; preds = %7, %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %26)
  invoke void @_ZN11xercesc_2_710EntityImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %27, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %29

28:                                               ; preds = %24
  ret ptr %27

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #13
  br label %31

31:                                               ; preds = %20, %23, %29
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %21, %23 ], [ %21, %20 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %14
  unreachable
}

declare void @_ZN11xercesc_2_710EntityImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl21createEntityReferenceERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !41, !range !68, !noundef !69
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %8, i32 noundef %9)
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %33 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %14, %13
  %18 = phi i1 [ false, %14 ], [ true, %13 ]
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %19, %17 ], [ %16, %15 ]
  %22 = phi i1 [ %18, %17 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  call void @__cxa_free_exception(ptr %12) #13
  br label %31

24:                                               ; preds = %7, %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %26)
  invoke void @_ZN11xercesc_2_719EntityReferenceImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %27, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %29

28:                                               ; preds = %24
  ret ptr %27

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #13
  br label %31

31:                                               ; preds = %20, %23, %29
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %21, %23 ], [ %21, %20 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %14
  unreachable
}

declare void @_ZN11xercesc_2_719EntityReferenceImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl14createNotationERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !41, !range !68, !noundef !69
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %24, label %7

7:                                                ; preds = %2
  %8 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %9 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %8, i32 noundef %9)
  br i1 %10, label %24, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0)
          to label %13 unwind label %15

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %14 unwind label %17

14:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %33 unwind label %17

15:                                               ; preds = %11
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %20

17:                                               ; preds = %14, %13
  %18 = phi i1 [ false, %14 ], [ true, %13 ]
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  br label %20

20:                                               ; preds = %17, %15
  %21 = phi { ptr, i32 } [ %19, %17 ], [ %16, %15 ]
  %22 = phi i1 [ %18, %17 ], [ true, %15 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  br i1 %22, label %23, label %31

23:                                               ; preds = %20
  call void @__cxa_free_exception(ptr %12) #13
  br label %31

24:                                               ; preds = %7, %2
  %25 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %26 = load ptr, ptr %25, align 8, !tbaa !53
  %27 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %26)
  invoke void @_ZN11xercesc_2_712NotationImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %27, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %28 unwind label %29

28:                                               ; preds = %24
  ret ptr %27

29:                                               ; preds = %24
  %30 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %26) #13
  br label %31

31:                                               ; preds = %20, %23, %29
  %32 = phi { ptr, i32 } [ %30, %29 ], [ %21, %23 ], [ %21, %20 ]
  resume { ptr, i32 } %32

33:                                               ; preds = %14
  unreachable
}

declare void @_ZN11xercesc_2_712NotationImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl27createProcessingInstructionERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !41, !range !68, !noundef !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %9, i32 noundef %10)
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %14 unwind label %16

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %15 unwind label %18

15:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %34 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %21

18:                                               ; preds = %15, %14
  %19 = phi i1 [ false, %15 ], [ true, %14 ]
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %20, %18 ], [ %17, %16 ]
  %23 = phi i1 [ %19, %18 ], [ true, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  call void @__cxa_free_exception(ptr %13) #13
  br label %32

25:                                               ; preds = %8, %3
  %26 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %27)
  invoke void @_ZN11xercesc_2_725ProcessingInstructionImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %28, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %29 unwind label %30

29:                                               ; preds = %25
  ret ptr %28

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %27) #13
  br label %32

32:                                               ; preds = %21, %24, %30
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %22, %24 ], [ %22, %21 ]
  resume { ptr, i32 } %33

34:                                               ; preds = %15
  unreachable
}

declare void @_ZN11xercesc_2_725ProcessingInstructionImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl14createTextNodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4)
  invoke void @_ZN11xercesc_2_78TextImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_78TextImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createNodeIteratorENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4)
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %9 unwind label %18

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_716NodeIteratorImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57) %8, ptr noundef nonnull %6, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3)
          to label %10 unwind label %20

10:                                               ; preds = %9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %12 unwind label %24

12:                                               ; preds = %10
  %13 = select i1 %11, ptr %0, ptr %7
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !57
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %47

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %4) #13
  br label %50

24:                                               ; preds = %38, %26, %10
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %48

26:                                               ; preds = %12
  %27 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
          to label %28 unwind label %24

28:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %27, i64 0, i32 1
  store i8 0, ptr %29, align 8, !tbaa !72
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %27, i64 0, i32 2
  store i32 0, ptr %30, align 4, !tbaa !74
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %27, i64 0, i32 3
  store i32 1, ptr %31, align 8, !tbaa !75
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %27, i64 0, i32 4
  store ptr null, ptr %32, align 8, !tbaa !76
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %27, i64 0, i32 5
  store ptr %4, ptr %33, align 8, !tbaa !77
  %34 = load ptr, ptr %4, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 8)
          to label %38 unwind label %45

38:                                               ; preds = %28
  store ptr %37, ptr %32, align 8, !tbaa !76
  store ptr null, ptr %37, align 8, !tbaa !64
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !38
  store ptr %27, ptr %15, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef 1)
          to label %39 unwind label %24

39:                                               ; preds = %38
  %40 = load ptr, ptr %32, align 8, !tbaa !76
  %41 = load i32, ptr %30, align 4, !tbaa !74
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  store ptr %8, ptr %43, align 8, !tbaa !64
  %44 = add i32 %41, 1
  store i32 %44, ptr %30, align 4, !tbaa !74
  br label %47

45:                                               ; preds = %28
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %27, ptr noundef nonnull %4) #13
  br label %48

47:                                               ; preds = %39, %12
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret ptr %8

48:                                               ; preds = %45, %24
  %49 = phi { ptr, i32 } [ %25, %24 ], [ %46, %45 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %50

50:                                               ; preds = %22, %48
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %23, %22 ]
  resume { ptr, i32 } %51
}

declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_716NodeIteratorImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl16createTreeWalkerENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4)
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %9 unwind label %18

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714TreeWalkerImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(49) %8, ptr noundef nonnull %6, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3)
          to label %10 unwind label %20

10:                                               ; preds = %9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0)
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %12 unwind label %24

12:                                               ; preds = %10
  %13 = select i1 %11, ptr %0, ptr %7
  %14 = load ptr, ptr %13, align 8, !tbaa !70
  %15 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !58
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %47

18:                                               ; preds = %5
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %22

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  br label %22

22:                                               ; preds = %18, %20
  %23 = phi { ptr, i32 } [ %21, %20 ], [ %19, %18 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %8, ptr noundef %4) #13
  br label %50

24:                                               ; preds = %38, %26, %10
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %48

26:                                               ; preds = %12
  %27 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4)
          to label %28 unwind label %24

28:                                               ; preds = %26
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !38
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %27, i64 0, i32 1
  store i8 0, ptr %29, align 8, !tbaa !78
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %27, i64 0, i32 2
  store i32 0, ptr %30, align 4, !tbaa !80
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %27, i64 0, i32 3
  store i32 1, ptr %31, align 8, !tbaa !81
  %32 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %27, i64 0, i32 4
  store ptr null, ptr %32, align 8, !tbaa !82
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %27, i64 0, i32 5
  store ptr %4, ptr %33, align 8, !tbaa !83
  %34 = load ptr, ptr %4, align 8, !tbaa !38
  %35 = getelementptr inbounds ptr, ptr %34, i64 2
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(8) %4, i64 noundef 8)
          to label %38 unwind label %45

38:                                               ; preds = %28
  store ptr %37, ptr %32, align 8, !tbaa !82
  store ptr null, ptr %37, align 8, !tbaa !64
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !38
  store ptr %27, ptr %15, align 8, !tbaa !58
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef 1)
          to label %39 unwind label %24

39:                                               ; preds = %38
  %40 = load ptr, ptr %32, align 8, !tbaa !82
  %41 = load i32, ptr %30, align 4, !tbaa !80
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %40, i64 %42
  store ptr %8, ptr %43, align 8, !tbaa !64
  %44 = add i32 %41, 1
  store i32 %44, ptr %30, align 4, !tbaa !80
  br label %47

45:                                               ; preds = %28
  %46 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %27, ptr noundef nonnull %4) #13
  br label %48

47:                                               ; preds = %39, %12
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret ptr %8

48:                                               ; preds = %45, %24
  %49 = phi { ptr, i32 } [ %25, %24 ], [ %46, %45 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  br label %50

50:                                               ; preds = %22, %48
  %51 = phi { ptr, i32 } [ %49, %48 ], [ %23, %22 ]
  resume { ptr, i32 } %51
}

declare void @_ZN11xercesc_2_714TreeWalkerImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl10getDoctypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18getDocumentElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !85
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl20getElementsByTagNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4)
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !41, !range !68, !noundef !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %39, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 11
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %13 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr %1, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 10
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %39

26:                                               ; preds = %17, %8
  %27 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %28 unwind label %30

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %27, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %29 unwind label %32

29:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %58 unwind label %32

30:                                               ; preds = %26
  %31 = landingpad { ptr, i32 }
          cleanup
  br label %35

32:                                               ; preds = %29, %28
  %33 = phi i1 [ false, %29 ], [ true, %28 ]
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %35

35:                                               ; preds = %32, %30
  %36 = phi { ptr, i32 } [ %34, %32 ], [ %31, %30 ]
  %37 = phi i1 [ %33, %32 ], [ true, %30 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %37, label %38, label %57

38:                                               ; preds = %35
  call void @__cxa_free_exception(ptr %27) #13
  br label %57

39:                                               ; preds = %17, %3
  %40 = tail call noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef %2)
  %41 = load ptr, ptr %1, align 8, !tbaa !38
  %42 = getelementptr inbounds ptr, ptr %41, i64 11
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef zeroext i1 %43(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  br label %54

47:                                               ; preds = %39
  %48 = load ptr, ptr %1, align 8, !tbaa !38
  %49 = getelementptr inbounds ptr, ptr %48, i64 10
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef zeroext i1 %50(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  br label %54

54:                                               ; preds = %45, %52
  %55 = phi ptr [ %53, %52 ], [ %46, %45 ]
  store ptr %1, ptr %55, align 8, !tbaa !64
  br label %56

56:                                               ; preds = %54, %47
  ret ptr %1

57:                                               ; preds = %35, %38
  resume { ptr, i32 } %36

58:                                               ; preds = %29
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #1

declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl10referencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #7 align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef returned %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1)
  %4 = load ptr, ptr %1, align 8, !tbaa !38
  %5 = getelementptr inbounds ptr, ptr %4, i64 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  br label %17

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(26) %1)
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  br label %17

17:                                               ; preds = %8, %15
  %18 = phi ptr [ %16, %15 ], [ %9, %8 ]
  store ptr null, ptr %18, align 8, !tbaa !64
  br label %19

19:                                               ; preds = %17, %10
  ret ptr %1
}

declare noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %0)
  ret void
}

declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl10importNodeEPNS_8NodeImplEb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = alloca %"class.xercesc_2_7::DOMString", align 8
  %7 = alloca %"class.xercesc_2_7::DOMString", align 8
  %8 = alloca %"class.xercesc_2_7::DOMString", align 8
  %9 = alloca %"class.xercesc_2_7::DOMString", align 8
  %10 = alloca %"class.xercesc_2_7::DOMString", align 8
  %11 = alloca %"class.xercesc_2_7::DOMString", align 8
  %12 = alloca %"class.xercesc_2_7::DOMString", align 8
  %13 = alloca %"class.xercesc_2_7::DOMString", align 8
  %14 = alloca %"class.xercesc_2_7::DOMString", align 8
  %15 = alloca %"class.xercesc_2_7::DOMString", align 8
  %16 = alloca %"class.xercesc_2_7::DOMString", align 8
  %17 = alloca %"class.xercesc_2_7::DOMString", align 8
  %18 = alloca %"class.xercesc_2_7::DOMString", align 8
  %19 = alloca %"class.xercesc_2_7::DOMString", align 8
  %20 = alloca %"class.xercesc_2_7::DOMString", align 8
  %21 = alloca %"class.xercesc_2_7::DOMString", align 8
  %22 = alloca %"class.xercesc_2_7::DOMString", align 8
  %23 = alloca %"class.xercesc_2_7::DOMString", align 8
  %24 = alloca %"class.xercesc_2_7::DOMString", align 8
  %25 = alloca %"class.xercesc_2_7::DOMString", align 8
  %26 = alloca %"class.xercesc_2_7::DOMString", align 8
  %27 = alloca %"class.xercesc_2_7::DOMString", align 8
  %28 = alloca %"class.xercesc_2_7::DOMString", align 8
  %29 = alloca %"class.xercesc_2_7::DOMString", align 8
  %30 = alloca %"class.xercesc_2_7::DOMString", align 8
  %31 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %32 = load i8, ptr %31, align 4, !tbaa !41, !range !68, !noundef !69
  %33 = load ptr, ptr %1, align 8, !tbaa !38
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef signext i16 %35(ptr noundef nonnull align 8 dereferenceable(26) %1)
  switch i16 %36, label %422 [
    i16 1, label %37
    i16 2, label %128
    i16 3, label %183
    i16 4, label %194
    i16 5, label %205
    i16 6, label %219
    i16 7, label %260
    i16 8, label %279
    i16 10, label %290
    i16 11, label %388
    i16 12, label %393
  ]

37:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  %38 = load ptr, ptr %1, align 8, !tbaa !38
  %39 = getelementptr inbounds ptr, ptr %38, i64 42
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %41 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null)
          to label %42 unwind label %52

42:                                               ; preds = %37
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %41, label %43, label %56

43:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #13
  %44 = load ptr, ptr %1, align 8, !tbaa !38
  %45 = getelementptr inbounds ptr, ptr %44, i64 23
  %46 = load ptr, ptr %45, align 8
  call void %46(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %47 = load ptr, ptr %0, align 8, !tbaa !38
  %48 = getelementptr inbounds ptr, ptr %47, i64 53
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %51 unwind label %54

51:                                               ; preds = %43
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %75

52:                                               ; preds = %37
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br label %476

54:                                               ; preds = %43
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #13
  br label %476

56:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #13
  %57 = load ptr, ptr %1, align 8, !tbaa !38
  %58 = getelementptr inbounds ptr, ptr %57, i64 40
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %60 = load ptr, ptr %1, align 8, !tbaa !38
  %61 = getelementptr inbounds ptr, ptr %60, i64 23
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %63 unwind label %69

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !38
  %65 = getelementptr inbounds ptr, ptr %64, i64 70
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %68 unwind label %71

68:                                               ; preds = %63
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %75

69:                                               ; preds = %56
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %73

71:                                               ; preds = %63
  %72 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  br label %73

73:                                               ; preds = %71, %69
  %74 = phi { ptr, i32 } [ %72, %71 ], [ %70, %69 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #13
  br label %476

75:                                               ; preds = %68, %51
  %76 = phi ptr [ %50, %51 ], [ %67, %68 ]
  %77 = load ptr, ptr %1, align 8, !tbaa !38
  %78 = getelementptr inbounds ptr, ptr %77, i64 18
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %81 = icmp eq ptr %80, null
  br i1 %81, label %435, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %80, align 8, !tbaa !38
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8
  %86 = call noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(32) %80)
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %435, label %88

88:                                               ; preds = %82, %121
  %89 = phi i32 [ %122, %121 ], [ 0, %82 ]
  %90 = load ptr, ptr %80, align 8, !tbaa !38
  %91 = getelementptr inbounds ptr, ptr %90, i64 7
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(32) %80, i32 noundef %89)
  %94 = load ptr, ptr %93, align 8, !tbaa !38
  %95 = getelementptr inbounds ptr, ptr %94, i64 48
  %96 = load ptr, ptr %95, align 8
  %97 = call noundef zeroext i1 %96(ptr noundef nonnull align 8 dereferenceable(48) %93)
  br i1 %97, label %98, label %121

98:                                               ; preds = %88
  %99 = load ptr, ptr %0, align 8, !tbaa !38
  %100 = getelementptr inbounds ptr, ptr %99, i64 69
  %101 = load ptr, ptr %100, align 8
  %102 = call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %93, i1 noundef zeroext true)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #13
  %103 = load ptr, ptr %93, align 8, !tbaa !38
  %104 = getelementptr inbounds ptr, ptr %103, i64 42
  %105 = load ptr, ptr %104, align 8
  call void %105(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(26) %93)
  %106 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null)
          to label %107 unwind label %114

107:                                              ; preds = %98
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  %108 = load ptr, ptr %76, align 8, !tbaa !38
  %109 = select i1 %106, i64 54, i64 59
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  %111 = load ptr, ptr %110, align 8
  %112 = call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(104) %76, ptr noundef %102)
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %116

114:                                              ; preds = %98
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #13
  br label %476

116:                                              ; preds = %107
  %117 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %112, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !86
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %112)
  br label %121

121:                                              ; preds = %107, %120, %116, %88
  %122 = add nuw i32 %89, 1
  %123 = load ptr, ptr %80, align 8, !tbaa !38
  %124 = getelementptr inbounds ptr, ptr %123, i64 5
  %125 = load ptr, ptr %124, align 8
  %126 = call noundef i32 %125(ptr noundef nonnull align 8 dereferenceable(32) %80)
  %127 = icmp ult i32 %122, %126
  br i1 %127, label %88, label %435, !llvm.loop !87

128:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #13
  %129 = load ptr, ptr %1, align 8, !tbaa !38
  %130 = getelementptr inbounds ptr, ptr %129, i64 42
  %131 = load ptr, ptr %130, align 8
  call void %131(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %132 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null)
          to label %133 unwind label %143

133:                                              ; preds = %128
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br i1 %132, label %134, label %147

134:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #13
  %135 = load ptr, ptr %1, align 8, !tbaa !38
  %136 = getelementptr inbounds ptr, ptr %135, i64 23
  %137 = load ptr, ptr %136, align 8
  call void %137(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %138 = load ptr, ptr %0, align 8, !tbaa !38
  %139 = getelementptr inbounds ptr, ptr %138, i64 47
  %140 = load ptr, ptr %139, align 8
  %141 = invoke noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %10)
          to label %142 unwind label %145

142:                                              ; preds = %134
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %166

143:                                              ; preds = %128
  %144 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #13
  br label %476

145:                                              ; preds = %134
  %146 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #13
  br label %476

147:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #13
  %148 = load ptr, ptr %1, align 8, !tbaa !38
  %149 = getelementptr inbounds ptr, ptr %148, i64 40
  %150 = load ptr, ptr %149, align 8
  call void %150(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(26) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #13
  %151 = load ptr, ptr %1, align 8, !tbaa !38
  %152 = getelementptr inbounds ptr, ptr %151, i64 23
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %154 unwind label %160

154:                                              ; preds = %147
  %155 = load ptr, ptr %0, align 8, !tbaa !38
  %156 = getelementptr inbounds ptr, ptr %155, i64 71
  %157 = load ptr, ptr %156, align 8
  %158 = invoke noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12)
          to label %159 unwind label %162

159:                                              ; preds = %154
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  br label %166

160:                                              ; preds = %147
  %161 = landingpad { ptr, i32 }
          cleanup
  br label %164

162:                                              ; preds = %154
  %163 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  br label %164

164:                                              ; preds = %162, %160
  %165 = phi { ptr, i32 } [ %163, %162 ], [ %161, %160 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #13
  br label %476

166:                                              ; preds = %159, %142
  %167 = phi ptr [ %141, %142 ], [ %158, %159 ]
  %168 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %1, i64 0, i32 3
  %169 = load i16, ptr %168, align 8, !tbaa !61
  %170 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !62
  %171 = and i16 %170, %169
  %172 = icmp eq i16 %171, 0
  br i1 %172, label %435, label %173

173:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #13
  %174 = load ptr, ptr %1, align 8, !tbaa !38
  %175 = getelementptr inbounds ptr, ptr %174, i64 49
  %176 = load ptr, ptr %175, align 8
  call void %176(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %1)
  %177 = load ptr, ptr %167, align 8, !tbaa !38
  %178 = getelementptr inbounds ptr, ptr %177, i64 51
  %179 = load ptr, ptr %178, align 8
  invoke void %179(ptr noundef nonnull align 8 dereferenceable(48) %167, ptr noundef nonnull align 8 dereferenceable(8) %13)
          to label %180 unwind label %181

180:                                              ; preds = %173
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  br label %435

181:                                              ; preds = %173
  %182 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #13
  br label %476

183:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #13
  %184 = load ptr, ptr %1, align 8, !tbaa !38
  %185 = getelementptr inbounds ptr, ptr %184, i64 25
  %186 = load ptr, ptr %185, align 8
  call void %186(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %14, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %187 = load ptr, ptr %0, align 8, !tbaa !38
  %188 = getelementptr inbounds ptr, ptr %187, i64 59
  %189 = load ptr, ptr %188, align 8
  %190 = invoke noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %191 unwind label %192

191:                                              ; preds = %183
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %435

192:                                              ; preds = %183
  %193 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #13
  br label %476

194:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #13
  %195 = load ptr, ptr %1, align 8, !tbaa !38
  %196 = getelementptr inbounds ptr, ptr %195, i64 25
  %197 = load ptr, ptr %196, align 8
  call void %197(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %15, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %198 = load ptr, ptr %0, align 8, !tbaa !38
  %199 = getelementptr inbounds ptr, ptr %198, i64 48
  %200 = load ptr, ptr %199, align 8
  %201 = invoke noundef ptr %200(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %202 unwind label %203

202:                                              ; preds = %194
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %435

203:                                              ; preds = %194
  %204 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #13
  br label %476

205:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #13
  %206 = load ptr, ptr %1, align 8, !tbaa !38
  %207 = getelementptr inbounds ptr, ptr %206, i64 23
  %208 = load ptr, ptr %207, align 8
  call void %208(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %16, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %209 = load ptr, ptr %0, align 8, !tbaa !38
  %210 = getelementptr inbounds ptr, ptr %209, i64 56
  %211 = load ptr, ptr %210, align 8
  %212 = invoke noundef ptr %211(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %16)
          to label %213 unwind label %217

213:                                              ; preds = %205
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  store i8 0, ptr %31, align 4, !tbaa !41
  %214 = load ptr, ptr %212, align 8, !tbaa !38
  %215 = getelementptr inbounds ptr, ptr %214, i64 35
  %216 = load ptr, ptr %215, align 8
  call void %216(ptr noundef nonnull align 8 dereferenceable(96) %212, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %435

217:                                              ; preds = %205
  %218 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #13
  br label %476

219:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #13
  %220 = load ptr, ptr %1, align 8, !tbaa !38
  %221 = getelementptr inbounds ptr, ptr %220, i64 23
  %222 = load ptr, ptr %221, align 8
  call void %222(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %17, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %223 = load ptr, ptr %0, align 8, !tbaa !38
  %224 = getelementptr inbounds ptr, ptr %223, i64 55
  %225 = load ptr, ptr %224, align 8
  %226 = invoke noundef ptr %225(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %17)
          to label %227 unwind label %252

227:                                              ; preds = %219
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #13
  %228 = load ptr, ptr %1, align 8, !tbaa !38
  %229 = getelementptr inbounds ptr, ptr %228, i64 47
  %230 = load ptr, ptr %229, align 8
  call void %230(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %18, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %231 = load ptr, ptr %226, align 8, !tbaa !38
  %232 = getelementptr inbounds ptr, ptr %231, i64 51
  %233 = load ptr, ptr %232, align 8
  invoke void %233(ptr noundef nonnull align 8 dereferenceable(120) %226, ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %234 unwind label %254

234:                                              ; preds = %227
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #13
  %235 = load ptr, ptr %1, align 8, !tbaa !38
  %236 = getelementptr inbounds ptr, ptr %235, i64 48
  %237 = load ptr, ptr %236, align 8
  call void %237(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %19, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %238 = load ptr, ptr %226, align 8, !tbaa !38
  %239 = getelementptr inbounds ptr, ptr %238, i64 52
  %240 = load ptr, ptr %239, align 8
  invoke void %240(ptr noundef nonnull align 8 dereferenceable(120) %226, ptr noundef nonnull align 8 dereferenceable(8) %19)
          to label %241 unwind label %256

241:                                              ; preds = %234
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #13
  %242 = load ptr, ptr %1, align 8, !tbaa !38
  %243 = getelementptr inbounds ptr, ptr %242, i64 49
  %244 = load ptr, ptr %243, align 8
  call void %244(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %20, ptr noundef nonnull align 8 dereferenceable(120) %1)
  %245 = load ptr, ptr %226, align 8, !tbaa !38
  %246 = getelementptr inbounds ptr, ptr %245, i64 50
  %247 = load ptr, ptr %246, align 8
  invoke void %247(ptr noundef nonnull align 8 dereferenceable(120) %226, ptr noundef nonnull align 8 dereferenceable(8) %20)
          to label %248 unwind label %258

248:                                              ; preds = %241
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #13
  %249 = load ptr, ptr %226, align 8, !tbaa !38
  %250 = getelementptr inbounds ptr, ptr %249, i64 35
  %251 = load ptr, ptr %250, align 8
  call void %251(ptr noundef nonnull align 8 dereferenceable(84) %226, i1 noundef zeroext false, i1 noundef zeroext true)
  br label %435

252:                                              ; preds = %219
  %253 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #13
  br label %476

254:                                              ; preds = %227
  %255 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #13
  br label %476

256:                                              ; preds = %234
  %257 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #13
  br label %476

258:                                              ; preds = %241
  %259 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #13
  br label %476

260:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #13
  %261 = load ptr, ptr %1, align 8, !tbaa !38
  %262 = getelementptr inbounds ptr, ptr %261, i64 23
  %263 = load ptr, ptr %262, align 8
  call void %263(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %21, ptr noundef nonnull align 8 dereferenceable(26) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #13
  %264 = load ptr, ptr %1, align 8, !tbaa !38
  %265 = getelementptr inbounds ptr, ptr %264, i64 25
  %266 = load ptr, ptr %265, align 8
  invoke void %266(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %22, ptr noundef nonnull align 8 dereferenceable(26) %1)
          to label %267 unwind label %273

267:                                              ; preds = %260
  %268 = load ptr, ptr %0, align 8, !tbaa !38
  %269 = getelementptr inbounds ptr, ptr %268, i64 58
  %270 = load ptr, ptr %269, align 8
  %271 = invoke noundef ptr %270(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %22)
          to label %272 unwind label %275

272:                                              ; preds = %267
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #13
  br label %435

273:                                              ; preds = %260
  %274 = landingpad { ptr, i32 }
          cleanup
  br label %277

275:                                              ; preds = %267
  %276 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #13
  br label %277

277:                                              ; preds = %275, %273
  %278 = phi { ptr, i32 } [ %276, %275 ], [ %274, %273 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #13
  br label %476

279:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #13
  %280 = load ptr, ptr %1, align 8, !tbaa !38
  %281 = getelementptr inbounds ptr, ptr %280, i64 25
  %282 = load ptr, ptr %281, align 8
  call void %282(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %23, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %283 = load ptr, ptr %0, align 8, !tbaa !38
  %284 = getelementptr inbounds ptr, ptr %283, i64 49
  %285 = load ptr, ptr %284, align 8
  %286 = invoke noundef ptr %285(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %23)
          to label %287 unwind label %288

287:                                              ; preds = %279
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  br label %435

288:                                              ; preds = %279
  %289 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #13
  br label %476

290:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #13
  %291 = load ptr, ptr %1, align 8, !tbaa !38
  %292 = getelementptr inbounds ptr, ptr %291, i64 23
  %293 = load ptr, ptr %292, align 8
  call void %293(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %24, ptr noundef nonnull align 8 dereferenceable(145) %1)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #13
  %294 = load ptr, ptr %1, align 8, !tbaa !38
  %295 = getelementptr inbounds ptr, ptr %294, i64 54
  %296 = load ptr, ptr %295, align 8
  invoke void %296(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %25, ptr noundef nonnull align 8 dereferenceable(145) %1)
          to label %297 unwind label %322

297:                                              ; preds = %290
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #13
  %298 = load ptr, ptr %1, align 8, !tbaa !38
  %299 = getelementptr inbounds ptr, ptr %298, i64 55
  %300 = load ptr, ptr %299, align 8
  invoke void %300(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %26, ptr noundef nonnull align 8 dereferenceable(145) %1)
          to label %301 unwind label %324

301:                                              ; preds = %297
  %302 = load ptr, ptr %0, align 8, !tbaa !38
  %303 = getelementptr inbounds ptr, ptr %302, i64 52
  %304 = load ptr, ptr %303, align 8
  %305 = invoke noundef ptr %304(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26)
          to label %306 unwind label %326

306:                                              ; preds = %301
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  %307 = load ptr, ptr %1, align 8, !tbaa !38
  %308 = getelementptr inbounds ptr, ptr %307, i64 50
  %309 = load ptr, ptr %308, align 8
  %310 = call noundef ptr %309(ptr noundef nonnull align 8 dereferenceable(145) %1)
  %311 = load ptr, ptr %305, align 8, !tbaa !38
  %312 = getelementptr inbounds ptr, ptr %311, i64 50
  %313 = load ptr, ptr %312, align 8
  %314 = call noundef ptr %313(ptr noundef nonnull align 8 dereferenceable(145) %305)
  %315 = icmp eq ptr %310, null
  br i1 %315, label %352, label %316

316:                                              ; preds = %306
  %317 = load ptr, ptr %310, align 8, !tbaa !38
  %318 = getelementptr inbounds ptr, ptr %317, i64 5
  %319 = load ptr, ptr %318, align 8
  %320 = call noundef i32 %319(ptr noundef nonnull align 8 dereferenceable(32) %310)
  %321 = icmp eq i32 %320, 0
  br i1 %321, label %352, label %332

322:                                              ; preds = %290
  %323 = landingpad { ptr, i32 }
          cleanup
  br label %330

324:                                              ; preds = %297
  %325 = landingpad { ptr, i32 }
          cleanup
  br label %328

326:                                              ; preds = %301
  %327 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26) #13
  br label %328

328:                                              ; preds = %326, %324
  %329 = phi { ptr, i32 } [ %327, %326 ], [ %325, %324 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #13
  br label %330

330:                                              ; preds = %328, %322
  %331 = phi { ptr, i32 } [ %329, %328 ], [ %323, %322 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #13
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #13
  br label %476

332:                                              ; preds = %316, %332
  %333 = phi i32 [ %346, %332 ], [ 0, %316 ]
  %334 = load ptr, ptr %310, align 8, !tbaa !38
  %335 = getelementptr inbounds ptr, ptr %334, i64 7
  %336 = load ptr, ptr %335, align 8
  %337 = call noundef ptr %336(ptr noundef nonnull align 8 dereferenceable(32) %310, i32 noundef %333)
  %338 = load ptr, ptr %0, align 8, !tbaa !38
  %339 = getelementptr inbounds ptr, ptr %338, i64 69
  %340 = load ptr, ptr %339, align 8
  %341 = call noundef ptr %340(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %337, i1 noundef zeroext true)
  %342 = load ptr, ptr %314, align 8, !tbaa !38
  %343 = getelementptr inbounds ptr, ptr %342, i64 10
  %344 = load ptr, ptr %343, align 8
  %345 = call noundef ptr %344(ptr noundef nonnull align 8 dereferenceable(32) %314, ptr noundef %341)
  %346 = add nuw i32 %333, 1
  %347 = load ptr, ptr %310, align 8, !tbaa !38
  %348 = getelementptr inbounds ptr, ptr %347, i64 5
  %349 = load ptr, ptr %348, align 8
  %350 = call noundef i32 %349(ptr noundef nonnull align 8 dereferenceable(32) %310)
  %351 = icmp ult i32 %346, %350
  br i1 %351, label %332, label %352, !llvm.loop !88

352:                                              ; preds = %332, %316, %306
  %353 = load ptr, ptr %1, align 8, !tbaa !38
  %354 = getelementptr inbounds ptr, ptr %353, i64 52
  %355 = load ptr, ptr %354, align 8
  %356 = call noundef ptr %355(ptr noundef nonnull align 8 dereferenceable(145) %1)
  %357 = load ptr, ptr %305, align 8, !tbaa !38
  %358 = getelementptr inbounds ptr, ptr %357, i64 52
  %359 = load ptr, ptr %358, align 8
  %360 = call noundef ptr %359(ptr noundef nonnull align 8 dereferenceable(145) %305)
  %361 = icmp eq ptr %356, null
  br i1 %361, label %435, label %362

362:                                              ; preds = %352
  %363 = load ptr, ptr %356, align 8, !tbaa !38
  %364 = getelementptr inbounds ptr, ptr %363, i64 5
  %365 = load ptr, ptr %364, align 8
  %366 = call noundef i32 %365(ptr noundef nonnull align 8 dereferenceable(32) %356)
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %435, label %368

368:                                              ; preds = %362, %368
  %369 = phi i32 [ %382, %368 ], [ 0, %362 ]
  %370 = load ptr, ptr %356, align 8, !tbaa !38
  %371 = getelementptr inbounds ptr, ptr %370, i64 7
  %372 = load ptr, ptr %371, align 8
  %373 = call noundef ptr %372(ptr noundef nonnull align 8 dereferenceable(32) %356, i32 noundef %369)
  %374 = load ptr, ptr %0, align 8, !tbaa !38
  %375 = getelementptr inbounds ptr, ptr %374, i64 69
  %376 = load ptr, ptr %375, align 8
  %377 = call noundef ptr %376(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %373, i1 noundef zeroext true)
  %378 = load ptr, ptr %360, align 8, !tbaa !38
  %379 = getelementptr inbounds ptr, ptr %378, i64 10
  %380 = load ptr, ptr %379, align 8
  %381 = call noundef ptr %380(ptr noundef nonnull align 8 dereferenceable(32) %360, ptr noundef %377)
  %382 = add nuw i32 %369, 1
  %383 = load ptr, ptr %356, align 8, !tbaa !38
  %384 = getelementptr inbounds ptr, ptr %383, i64 5
  %385 = load ptr, ptr %384, align 8
  %386 = call noundef i32 %385(ptr noundef nonnull align 8 dereferenceable(32) %356)
  %387 = icmp ult i32 %382, %386
  br i1 %387, label %368, label %435, !llvm.loop !89

388:                                              ; preds = %3
  %389 = load ptr, ptr %0, align 8, !tbaa !38
  %390 = getelementptr inbounds ptr, ptr %389, i64 50
  %391 = load ptr, ptr %390, align 8
  %392 = tail call noundef ptr %391(ptr noundef nonnull align 8 dereferenceable(168) %0)
  br label %435

393:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #13
  %394 = load ptr, ptr %1, align 8, !tbaa !38
  %395 = getelementptr inbounds ptr, ptr %394, i64 23
  %396 = load ptr, ptr %395, align 8
  call void %396(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %27, ptr noundef nonnull align 8 dereferenceable(26) %1)
  %397 = load ptr, ptr %0, align 8, !tbaa !38
  %398 = getelementptr inbounds ptr, ptr %397, i64 57
  %399 = load ptr, ptr %398, align 8
  %400 = invoke noundef ptr %399(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %401 unwind label %416

401:                                              ; preds = %393
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #13
  %402 = load ptr, ptr %1, align 8, !tbaa !38
  %403 = getelementptr inbounds ptr, ptr %402, i64 47
  %404 = load ptr, ptr %403, align 8
  call void %404(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %28, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %405 = load ptr, ptr %400, align 8, !tbaa !38
  %406 = getelementptr inbounds ptr, ptr %405, i64 49
  %407 = load ptr, ptr %406, align 8
  invoke void %407(ptr noundef nonnull align 8 dereferenceable(56) %400, ptr noundef nonnull align 8 dereferenceable(8) %28)
          to label %408 unwind label %418

408:                                              ; preds = %401
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #13
  %409 = load ptr, ptr %1, align 8, !tbaa !38
  %410 = getelementptr inbounds ptr, ptr %409, i64 48
  %411 = load ptr, ptr %410, align 8
  call void %411(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %29, ptr noundef nonnull align 8 dereferenceable(56) %1)
  %412 = load ptr, ptr %400, align 8, !tbaa !38
  %413 = getelementptr inbounds ptr, ptr %412, i64 50
  %414 = load ptr, ptr %413, align 8
  invoke void %414(ptr noundef nonnull align 8 dereferenceable(56) %400, ptr noundef nonnull align 8 dereferenceable(8) %29)
          to label %415 unwind label %420

415:                                              ; preds = %408
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #13
  br label %435

416:                                              ; preds = %393
  %417 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #13
  br label %476

418:                                              ; preds = %401
  %419 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #13
  br label %476

420:                                              ; preds = %408
  %421 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #13
  br label %476

422:                                              ; preds = %3
  %423 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 0)
          to label %424 unwind label %426

424:                                              ; preds = %422
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %423, i16 noundef signext 9, ptr noundef nonnull align 8 dereferenceable(8) %30)
          to label %425 unwind label %428

425:                                              ; preds = %424
  invoke void @__cxa_throw(ptr nonnull %423, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %478 unwind label %428

426:                                              ; preds = %422
  %427 = landingpad { ptr, i32 }
          cleanup
  br label %431

428:                                              ; preds = %425, %424
  %429 = phi i1 [ false, %425 ], [ true, %424 ]
  %430 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30) #13
  br label %431

431:                                              ; preds = %428, %426
  %432 = phi { ptr, i32 } [ %430, %428 ], [ %427, %426 ]
  %433 = phi i1 [ %429, %428 ], [ true, %426 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #13
  br i1 %433, label %434, label %476

434:                                              ; preds = %431
  call void @__cxa_free_exception(ptr %423) #13
  br label %476

435:                                              ; preds = %368, %121, %362, %82, %352, %180, %166, %75, %415, %388, %287, %272, %248, %213, %202, %191
  %436 = phi ptr [ %400, %415 ], [ %392, %388 ], [ %286, %287 ], [ %271, %272 ], [ %226, %248 ], [ %212, %213 ], [ %201, %202 ], [ %190, %191 ], [ %76, %75 ], [ %167, %166 ], [ %167, %180 ], [ %305, %352 ], [ %76, %82 ], [ %305, %362 ], [ %76, %121 ], [ %305, %368 ]
  %437 = phi i1 [ %2, %415 ], [ %2, %388 ], [ %2, %287 ], [ %2, %272 ], [ %2, %248 ], [ %2, %213 ], [ %2, %202 ], [ %2, %191 ], [ %2, %75 ], [ %172, %166 ], [ %172, %180 ], [ %2, %352 ], [ %2, %82 ], [ %2, %362 ], [ %2, %121 ], [ %2, %368 ]
  br i1 %437, label %438, label %459

438:                                              ; preds = %435
  %439 = load ptr, ptr %1, align 8, !tbaa !38
  %440 = getelementptr inbounds ptr, ptr %439, i64 20
  %441 = load ptr, ptr %440, align 8
  %442 = call noundef ptr %441(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %443 = icmp eq ptr %442, null
  br i1 %443, label %459, label %444

444:                                              ; preds = %438, %444
  %445 = phi ptr [ %457, %444 ], [ %442, %438 ]
  %446 = load ptr, ptr %0, align 8, !tbaa !38
  %447 = getelementptr inbounds ptr, ptr %446, i64 69
  %448 = load ptr, ptr %447, align 8
  %449 = call noundef ptr %448(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %445, i1 noundef zeroext true)
  %450 = load ptr, ptr %436, align 8, !tbaa !38
  %451 = getelementptr inbounds ptr, ptr %450, i64 16
  %452 = load ptr, ptr %451, align 8
  %453 = call noundef ptr %452(ptr noundef nonnull align 8 dereferenceable(26) %436, ptr noundef %449)
  %454 = load ptr, ptr %445, align 8, !tbaa !38
  %455 = getelementptr inbounds ptr, ptr %454, i64 22
  %456 = load ptr, ptr %455, align 8
  %457 = call noundef ptr %456(ptr noundef nonnull align 8 dereferenceable(26) %445)
  %458 = icmp eq ptr %457, null
  br i1 %458, label %459, label %444, !llvm.loop !90

459:                                              ; preds = %444, %438, %435
  %460 = load ptr, ptr %436, align 8, !tbaa !38
  %461 = getelementptr inbounds ptr, ptr %460, i64 24
  %462 = load ptr, ptr %461, align 8
  %463 = call noundef signext i16 %462(ptr noundef nonnull align 8 dereferenceable(26) %436)
  %464 = icmp eq i16 %463, 5
  br i1 %464, label %471, label %465

465:                                              ; preds = %459
  %466 = load ptr, ptr %436, align 8, !tbaa !38
  %467 = getelementptr inbounds ptr, ptr %466, i64 24
  %468 = load ptr, ptr %467, align 8
  %469 = call noundef signext i16 %468(ptr noundef nonnull align 8 dereferenceable(26) %436)
  %470 = icmp eq i16 %469, 6
  br i1 %470, label %471, label %475

471:                                              ; preds = %465, %459
  %472 = load ptr, ptr %436, align 8, !tbaa !38
  %473 = getelementptr inbounds ptr, ptr %472, i64 35
  %474 = load ptr, ptr %473, align 8
  call void %474(ptr noundef nonnull align 8 dereferenceable(96) %436, i1 noundef zeroext true, i1 noundef zeroext true)
  store i8 %32, ptr %31, align 4, !tbaa !41
  br label %475

475:                                              ; preds = %471, %465
  ret ptr %436

476:                                              ; preds = %416, %418, %420, %252, %254, %256, %258, %52, %54, %73, %114, %431, %434, %330, %288, %277, %217, %203, %192, %181, %164, %145, %143
  %477 = phi { ptr, i32 } [ %432, %434 ], [ %432, %431 ], [ %331, %330 ], [ %289, %288 ], [ %278, %277 ], [ %218, %217 ], [ %204, %203 ], [ %193, %192 ], [ %182, %181 ], [ %146, %145 ], [ %165, %164 ], [ %144, %143 ], [ %115, %114 ], [ %55, %54 ], [ %74, %73 ], [ %53, %52 ], [ %259, %258 ], [ %257, %256 ], [ %255, %254 ], [ %253, %252 ], [ %421, %420 ], [ %419, %418 ], [ %417, %416 ]
  resume { ptr, i32 } %477

478:                                              ; preds = %425
  unreachable
}

declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl15createElementNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !41, !range !68, !noundef !69
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %25, label %8

8:                                                ; preds = %3
  %9 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %10 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %9, i32 noundef %10)
  br i1 %11, label %25, label %12

12:                                               ; preds = %8
  %13 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %14 unwind label %16

14:                                               ; preds = %12
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %13, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %15 unwind label %18

15:                                               ; preds = %14
  invoke void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %34 unwind label %18

16:                                               ; preds = %12
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %21

18:                                               ; preds = %15, %14
  %19 = phi i1 [ false, %15 ], [ true, %14 ]
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %21

21:                                               ; preds = %18, %16
  %22 = phi { ptr, i32 } [ %20, %18 ], [ %17, %16 ]
  %23 = phi i1 [ %19, %18 ], [ true, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  call void @__cxa_free_exception(ptr %13) #13
  br label %32

25:                                               ; preds = %8, %3
  %26 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !53
  %28 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %27)
  invoke void @_ZN11xercesc_2_713ElementNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(120) %28, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %29 unwind label %30

29:                                               ; preds = %25
  ret ptr %28

30:                                               ; preds = %25
  %31 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %27) #13
  br label %32

32:                                               ; preds = %21, %24, %30
  %33 = phi { ptr, i32 } [ %31, %30 ], [ %22, %24 ], [ %22, %21 ]
  resume { ptr, i32 } %33

34:                                               ; preds = %15
  unreachable
}

declare void @_ZN11xercesc_2_713ElementNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl17createAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %5, i32 noundef %6)
  br i1 %7, label %21, label %8

8:                                                ; preds = %3
  %9 = tail call ptr @__cxa_allocate_exception(i64 24) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #13
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0)
          to label %10 unwind label %12

10:                                               ; preds = %8
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %9, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %11 unwind label %14

11:                                               ; preds = %10
  invoke void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #14
          to label %30 unwind label %14

12:                                               ; preds = %8
  %13 = landingpad { ptr, i32 }
          cleanup
  br label %17

14:                                               ; preds = %11, %10
  %15 = phi i1 [ false, %11 ], [ true, %10 ]
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  br label %17

17:                                               ; preds = %14, %12
  %18 = phi { ptr, i32 } [ %16, %14 ], [ %13, %12 ]
  %19 = phi i1 [ %15, %14 ], [ true, %12 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #13
  br i1 %19, label %20, label %28

20:                                               ; preds = %17
  call void @__cxa_free_exception(ptr %9) #13
  br label %28

21:                                               ; preds = %3
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !53
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %23)
  invoke void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %24, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %25 unwind label %26

25:                                               ; preds = %21
  ret ptr %24

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #13
  br label %28

28:                                               ; preds = %17, %20, %26
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %18, %20 ], [ %18, %17 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %11
  unreachable
}

declare void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl22getElementsByTagNameNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !53
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %5)
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58) %6, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %6

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #13
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl14getElementByIdERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_79NodeIDMap4findERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZN11xercesc_2_78AttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(48) %7)
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi ptr [ null, %2 ], [ %10, %9 ], [ null, %6 ]
  ret ptr %12
}

declare noundef ptr @_ZN11xercesc_2_79NodeIDMap4findERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78AttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !37 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %19, %1
  %6 = phi i32 [ -1, %1 ], [ %27, %19 ]
  %7 = phi i32 [ 0, %1 ], [ %29, %19 ]
  %8 = icmp eq i32 %3, 0
  %9 = icmp ugt i32 %7, 1
  %10 = select i1 %8, i1 true, i1 %9
  %11 = icmp eq i32 %6, 0
  %12 = select i1 %10, i1 true, i1 %11
  %13 = add nsw i32 %3, -1
  %14 = icmp eq i32 %6, %13
  %15 = select i1 %12, i1 true, i1 %14
  %16 = icmp eq i32 %7, 0
  %17 = select i1 %16, i32 0, i32 %6
  %18 = select i1 %15, i32 -1, i32 %17
  ret i32 %18

19:                                               ; preds = %1, %19
  %20 = phi i32 [ %30, %19 ], [ 0, %1 ]
  %21 = phi i32 [ %29, %19 ], [ 0, %1 ]
  %22 = phi i32 [ %27, %19 ], [ -1, %1 ]
  %23 = phi ptr [ %24, %19 ], [ %2, %1 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %23, align 2, !tbaa !62
  %26 = icmp eq i16 %25, 58
  %27 = select i1 %26, i32 %20, i32 %22
  %28 = zext i1 %26 to i32
  %29 = add nuw nsw i32 %21, %28
  %30 = add nuw nsw i32 %20, 1
  %31 = icmp eq i32 %30, %3
  br i1 %31, label %5, label %19, !llvm.loop !91
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createXMLDeclERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !53
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %6)
  invoke void @_ZN11xercesc_2_711XMLDeclImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %7

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #13
  resume { ptr, i32 } %10
}

declare void @_ZN11xercesc_2_711XMLDeclImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11createRangeEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !53
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %4)
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0)
          to label %6 unwind label %25

6:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_79RangeImplC1ENS_12DOM_DocumentE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull %2)
          to label %7 unwind label %27

7:                                                ; preds = %6
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !59
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %33

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !53
  %13 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12)
  %14 = load ptr, ptr %3, align 8, !tbaa !53
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !38
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %13, i64 0, i32 1
  store i8 0, ptr %15, align 8, !tbaa !92
  %16 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %13, i64 0, i32 2
  store i32 0, ptr %16, align 4, !tbaa !94
  %17 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %13, i64 0, i32 3
  store i32 1, ptr %17, align 8, !tbaa !95
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %13, i64 0, i32 4
  store ptr null, ptr %18, align 8, !tbaa !96
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %13, i64 0, i32 5
  store ptr %14, ptr %19, align 8, !tbaa !97
  %20 = load ptr, ptr %14, align 8, !tbaa !38
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = invoke noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef 8)
          to label %24 unwind label %31

24:                                               ; preds = %11
  store ptr %23, ptr %18, align 8, !tbaa !96
  store ptr null, ptr %23, align 8, !tbaa !64
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %13, align 8, !tbaa !38
  store ptr %13, ptr %8, align 8, !tbaa !59
  br label %33

25:                                               ; preds = %1
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %29

27:                                               ; preds = %6
  %28 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br label %29

29:                                               ; preds = %25, %27
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  br label %42

31:                                               ; preds = %11
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef nonnull %13, ptr noundef %12) #13
  br label %42

33:                                               ; preds = %24, %7
  %34 = load ptr, ptr %8, align 8, !tbaa !59
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %34, i32 noundef 1)
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !96
  %37 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %34, i64 0, i32 2
  %38 = load i32, ptr %37, align 4, !tbaa !94
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds ptr, ptr %36, i64 %39
  store ptr %5, ptr %40, align 8, !tbaa !64
  %41 = add i32 %38, 1
  store i32 %41, ptr %37, align 4, !tbaa !94
  ret ptr %5

42:                                               ; preds = %29, %31
  %43 = phi { ptr, i32 } [ %32, %31 ], [ %30, %29 ]
  resume { ptr, i32 } %43
}

declare void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_79RangeImplC1ENS_12DOM_DocumentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl9getRangesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11removeRangeEPNS_9RangeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !59
  %5 = icmp eq ptr %4, null
  br i1 %5, label %28, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %4, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !94
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %6, %25
  %11 = phi i32 [ %26, %25 ], [ 0, %6 ]
  %12 = load ptr, ptr %3, align 8, !tbaa !59
  %13 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %12, i32 noundef %11)
  %14 = icmp eq ptr %13, %1
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load ptr, ptr %3, align 8, !tbaa !59
  %17 = load ptr, ptr %16, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(40) %16, i32 noundef %11)
  %20 = icmp eq ptr %1, null
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = load ptr, ptr %1, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  br label %28

25:                                               ; preds = %10
  %26 = add nuw i32 %11, 1
  %27 = icmp eq i32 %26, %8
  br i1 %27, label %28, label %10, !llvm.loop !98

28:                                               ; preds = %25, %6, %15, %21, %2
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !96
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  ret ptr %18
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !37 {
  %3 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 9), align 4, !tbaa !99
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 9602, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 9), align 4, !tbaa !99
  store i32 8634, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 1), align 4, !tbaa !99
  store i32 8634, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 5), align 4, !tbaa !99
  store i32 8634, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 6), align 8, !tbaa !99
  store i32 8634, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 11), align 4, !tbaa !99
  store i32 40, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 2), align 8, !tbaa !99
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 12), align 16, !tbaa !99
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 4), align 16, !tbaa !99
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 3), align 4, !tbaa !99
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 8), align 16, !tbaa !99
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 7), align 4, !tbaa !99
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr %0, align 8, !tbaa !38
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(26) %0)
  %11 = load ptr, ptr %1, align 8, !tbaa !38
  %12 = getelementptr inbounds ptr, ptr %11, i64 24
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(26) %1)
  %15 = sext i16 %10 to i64
  %16 = getelementptr inbounds [14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !99
  %18 = zext nneg i16 %14 to i32
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp ne i32 %20, 0
  ret i1 %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11setUserDataEPNS_8NodeImplEPv(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !60
  %6 = icmp eq ptr %5, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %46

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !53
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %11)
  %13 = load ptr, ptr %10, align 8, !tbaa !53
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13)
          to label %15 unwind label %40

15:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %16 unwind label %42

16:                                               ; preds = %15
  %17 = load ptr, ptr %10, align 8, !tbaa !53
  store ptr %17, ptr %12, align 8, !tbaa !100
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %12, i64 0, i32 1
  store i8 0, ptr %18, align 8, !tbaa !102
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %12, i64 0, i32 2
  store ptr null, ptr %19, align 8, !tbaa !103
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %12, i64 0, i32 3
  store i32 29, ptr %20, align 8, !tbaa !104
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %12, i64 0, i32 4
  store i32 29, ptr %21, align 4, !tbaa !105
  %22 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %12, i64 0, i32 5
  store i32 0, ptr %22, align 8, !tbaa !106
  %23 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %12, i64 0, i32 6
  store ptr null, ptr %23, align 8, !tbaa !107
  %24 = load ptr, ptr %17, align 8, !tbaa !38
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  %27 = invoke noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(8) %17, i64 noundef 232)
          to label %28 unwind label %40

28:                                               ; preds = %16
  store ptr %27, ptr %19, align 8, !tbaa !103
  %29 = load i32, ptr %20, align 8, !tbaa !104
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  br label %33

33:                                               ; preds = %31, %33
  %34 = phi i64 [ 0, %31 ], [ %37, %33 ]
  %35 = load ptr, ptr %19, align 8, !tbaa !103
  %36 = getelementptr inbounds ptr, ptr %35, i64 %34
  store ptr null, ptr %36, align 8, !tbaa !64
  %37 = add nuw nsw i64 %34, 1
  %38 = icmp eq i64 %37, %32
  br i1 %38, label %39, label %33, !llvm.loop !108

39:                                               ; preds = %33, %28
  store ptr %14, ptr %23, align 8, !tbaa !107
  store ptr %12, ptr %4, align 8, !tbaa !60
  br label %46

40:                                               ; preds = %16, %9
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %15
  %43 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #13
  br label %44

44:                                               ; preds = %42, %40
  %45 = phi { ptr, i32 } [ %41, %40 ], [ %43, %42 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #13
  resume { ptr, i32 } %45

46:                                               ; preds = %39, %3
  %47 = load ptr, ptr %4, align 8, !tbaa !60
  %48 = icmp eq ptr %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  br i1 %7, label %51, label %50

50:                                               ; preds = %49
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef %1)
  br label %52

51:                                               ; preds = %49
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE3putEPvS2_(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef %1, ptr noundef nonnull %2)
  br label %52

52:                                               ; preds = %50, %51, %46
  ret void
}

declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = load ptr, ptr %0, align 8, !tbaa !100
  %8 = load ptr, ptr %4, align 8, !tbaa !38
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !107
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !109
  %21 = load ptr, ptr %18, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20)
  br i1 %24, label %33, label %58

25:                                               ; preds = %58
  %26 = load ptr, ptr %3, align 8, !tbaa !107
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %61, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !109
  %29 = load ptr, ptr %26, align 8, !tbaa !38
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28)
  br i1 %32, label %33, label %58, !llvm.loop !111

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %61, %25 ]
  %35 = phi ptr [ null, %17 ], [ %59, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !112
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = select i1 %36, ptr %41, ptr %39
  store ptr %38, ptr %42, align 8, !tbaa !64
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !102, !range !68, !noundef !69
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %34, align 8, !tbaa !113
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #16
  br label %50

50:                                               ; preds = %46, %49, %33
  %51 = load ptr, ptr %0, align 8, !tbaa !100
  %52 = load ptr, ptr %51, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull %34)
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !106
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 8, !tbaa !106
  ret void

58:                                               ; preds = %17, %25
  %59 = phi ptr [ %61, %25 ], [ %15, %17 ]
  %60 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !64
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %25, !llvm.loop !111

63:                                               ; preds = %58, %2
  %64 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %65 = load ptr, ptr %0, align 8, !tbaa !100
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str.2, i32 noundef 185, i32 noundef 50, ptr noundef %65)
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

67:                                               ; preds = %63
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %64) #13
  resume { ptr, i32 } %68
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE3putEPvS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !104
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !106
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !107
  %15 = load i32, ptr %4, align 8, !tbaa !104
  %16 = load ptr, ptr %0, align 8, !tbaa !100
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16)
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !103
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !64
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !107
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !109
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30)
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !64
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !llvm.loop !114

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %52, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !102, !range !68, !noundef !69
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !113
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef %47) #16
  br label %50

50:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !113
  %51 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %51, align 8, !tbaa !109
  br label %65

52:                                               ; preds = %39
  %53 = load ptr, ptr %0, align 8, !tbaa !100
  %54 = load ptr, ptr %53, align 8, !tbaa !38
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %53, i64 noundef 24)
  %58 = load ptr, ptr %20, align 8, !tbaa !103
  %59 = getelementptr inbounds ptr, ptr %58, i64 %22
  %60 = load ptr, ptr %59, align 8, !tbaa !64
  store ptr %2, ptr %57, align 8, !tbaa !113
  %61 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 1
  store ptr %60, ptr %61, align 8, !tbaa !112
  %62 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %57, i64 0, i32 2
  store ptr %1, ptr %62, align 8, !tbaa !109
  store ptr %57, ptr %59, align 8, !tbaa !64
  %63 = load i32, ptr %8, align 8, !tbaa !106
  %64 = add i32 %63, 1
  store i32 %64, ptr %8, align 8, !tbaa !106
  br label %65

65:                                               ; preds = %52, %50
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEPNS_8NodeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !60
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIvE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1)
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIvE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !107
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !104
  %7 = load ptr, ptr %0, align 8, !tbaa !100
  %8 = load ptr, ptr %4, align 8, !tbaa !38
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7)
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !103
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !107
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !109
  %22 = load ptr, ptr %19, align 8, !tbaa !38
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21)
  br i1 %25, label %30, label %26

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !64
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !llvm.loop !114

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !113
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !61
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8USERDATAE, align 2, !tbaa !62
  %5 = and i16 %4, %3
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !38
  %9 = getelementptr inbounds ptr, ptr %8, i64 68
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %0)
  br label %12

12:                                               ; preds = %1, %7
  %13 = phi ptr [ %11, %7 ], [ null, %1 ]
  ret ptr %13
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !37 {
  %3 = load ptr, ptr %0, align 8, !tbaa !38
  %4 = getelementptr inbounds ptr, ptr %3, i64 67
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %0, ptr noundef %1)
  %6 = icmp eq ptr %1, null
  %7 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %8 = load i16, ptr %7, align 8, !tbaa !61
  %9 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8USERDATAE, align 2, !tbaa !62
  %10 = xor i16 %9, -1
  %11 = and i16 %8, %10
  %12 = or i16 %9, %8
  %13 = select i1 %6, i16 %11, i16 %12
  store i16 %13, ptr %7, align 8, !tbaa !61
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl7changedEv(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #9 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !115
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !115
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DocumentImpl7changesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #8 align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !115
  ret i32 %3
}

declare noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) unnamed_addr #1

declare noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_710ParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #1

declare void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !103
  %5 = load ptr, ptr %2, align 8, !tbaa !38
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
  store ptr null, ptr %3, align 8, !tbaa !103
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !107
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !38
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !106
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !104
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !106
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !103
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !64
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !112
  %23 = load i8, ptr %11, align 8, !tbaa !102, !range !68, !noundef !69
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !113
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #16
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !100
  %31 = load ptr, ptr %30, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !116

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !103
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !64
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !104
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !117

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !72, !range !68, !noundef !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !118

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !74
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !72, !range !68, !noundef !69
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !76
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(57) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !76
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !74
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !72, !range !68, !noundef !69
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !76
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(57) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !76
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !64
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !74
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !119
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !72, !range !68, !noundef !69
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !76
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(57) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !74
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !76
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !64
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !120

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !64
  store i32 %30, ptr %3, align 4, !tbaa !74
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !74
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !74
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !72, !range !68, !noundef !69
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !76
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !72, !range !68, !noundef !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !76
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !74
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !121

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !76
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !74
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !75
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !77
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !74
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !64
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !76
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !64
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !125

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !77
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !76
  %52 = load ptr, ptr %49, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !76
  store i32 %12, ptr %6, align 8, !tbaa !75
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !78, !range !68, !noundef !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !82
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(49) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !80
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !126

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !80
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !78, !range !68, !noundef !69
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !82
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(49) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !80
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !78, !range !68, !noundef !69
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !82
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(49) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !82
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !64
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !80
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !127
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !78, !range !68, !noundef !69
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !82
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(49) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !80
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !82
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !64
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !128

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !82
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !64
  store i32 %30, ptr %3, align 4, !tbaa !80
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !80
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !80
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !78, !range !68, !noundef !69
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !82
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(49) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !78, !range !68, !noundef !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !80
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !82
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(49) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !80
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !129

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !83
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !82
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !80
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !81
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !83
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !80
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !64
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !82
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !64
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !130

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !83
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !82
  %52 = load ptr, ptr %49, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !82
  store i32 %12, ptr %6, align 8, !tbaa !81
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !92, !range !68, !noundef !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !94
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !96
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !94
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !131

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #15
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !94
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #13
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !92, !range !68, !noundef !69
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !96
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !64
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !38
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(72) %23) #13
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !96
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !64
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !94
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !92, !range !68, !noundef !69
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !96
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !64
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !38
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %18) #13
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !96
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !64
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !94
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !132
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #13
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !92, !range !68, !noundef !69
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !96
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !64
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %22) #13
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !94
  %30 = add i32 %29, -1
  %31 = icmp eq i32 %30, %1
  br i1 %31, label %46, label %32

32:                                               ; preds = %28
  %33 = icmp ugt i32 %30, %1
  br i1 %33, label %34, label %46

34:                                               ; preds = %32
  %35 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %36 = zext i32 %1 to i64
  %37 = zext i32 %30 to i64
  br label %38

38:                                               ; preds = %34, %38
  %39 = phi i64 [ %36, %34 ], [ %41, %38 ]
  %40 = load ptr, ptr %35, align 8, !tbaa !96
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !64
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !64
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !133

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !96
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !64
  store i32 %30, ptr %3, align 4, !tbaa !94
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !94
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !94
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !92, !range !68, !noundef !69
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !96
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !92, !range !68, !noundef !69
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !94
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !96
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !64
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !38
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !94
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !134

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !96
  %31 = load ptr, ptr %28, align 8, !tbaa !38
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !37 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !94
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !95
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !38
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !94
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %40

26:                                               ; preds = %40
  %27 = trunc i64 %46 to i32
  br label %28

28:                                               ; preds = %26, %9
  %29 = phi i32 [ 0, %9 ], [ %27, %26 ]
  %30 = icmp ult i32 %29, %12
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = zext i32 %29 to i64
  %33 = shl nuw nsw i64 %32, 3
  %34 = getelementptr i8, ptr %20, i64 %33
  %35 = xor i32 %29, -1
  %36 = add i32 %12, %35
  %37 = zext i32 %36 to i64
  %38 = shl nuw nsw i64 %37, 3
  %39 = add nuw nsw i64 %38, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !64
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !96
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !64
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !64
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !135

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !97
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !96
  %52 = load ptr, ptr %49, align 8, !tbaa !38
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !96
  store i32 %12, ptr %6, align 8, !tbaa !95
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !38
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !37 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !122
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !38
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !104
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !100
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %13 = load ptr, ptr %0, align 8, !tbaa !100
  store ptr %12, ptr %2, align 8, !tbaa !136
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !138
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !104
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !103
  %23 = load ptr, ptr %2, align 8, !tbaa !136
  store ptr null, ptr %2, align 8, !tbaa !136
  store ptr %23, ptr %21, align 8, !tbaa !103
  store i32 %5, ptr %3, align 8, !tbaa !104
  %24 = load ptr, ptr %0, align 8, !tbaa !100
  %25 = load ptr, ptr %24, align 8, !tbaa !38
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !103
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !64
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !112
  %38 = load ptr, ptr %19, align 8, !tbaa !107
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = load ptr, ptr %0, align 8, !tbaa !100
  %42 = load ptr, ptr %38, align 8, !tbaa !38
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !64
  store ptr %48, ptr %36, align 8, !tbaa !112
  store ptr %35, ptr %47, align 8, !tbaa !64
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !139

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !104
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !140

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !37 {
  %2 = load ptr, ptr %0, align 8, !tbaa !136
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !38
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #16
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_DocumentImpl.cpp() #11 section ".text.startup" !prof !141 !PGOFuncName !142 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L10namCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

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
!35 = !{ptr @_GLOBAL__sub_I_DocumentImpl.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 1}
!36 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!37 = !{!"function_entry_count", i64 0}
!38 = !{!39, !39, i64 0}
!39 = !{!"vtable pointer", !40, i64 0}
!40 = !{!"Simple C++ TBAA"}
!41 = !{!42, !52, i64 156}
!42 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !43, i64 0, !50, i64 88, !50, i64 96, !50, i64 104, !50, i64 112, !50, i64 120, !50, i64 128, !50, i64 136, !50, i64 144, !48, i64 152, !52, i64 156, !50, i64 160}
!43 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !44, i64 0, !50, i64 48, !50, i64 56, !48, i64 64, !50, i64 72, !48, i64 80}
!44 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !45, i64 0, !50, i64 32, !50, i64 40}
!45 = !{!"_ZTSN11xercesc_2_78NodeImplE", !46, i64 0, !50, i64 16, !51, i64 24}
!46 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !47, i64 0}
!47 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !48, i64 8}
!48 = !{!"int", !49, i64 0}
!49 = !{!"omnipotent char", !40, i64 0}
!50 = !{!"any pointer", !49, i64 0}
!51 = !{!"short", !49, i64 0}
!52 = !{!"bool", !49, i64 0}
!53 = !{!42, !50, i64 160}
!54 = !{!42, !50, i64 104}
!55 = !{!56, !50, i64 16}
!56 = !{!"_ZTSN11xercesc_2_716NamedNodeMapImplE", !50, i64 8, !50, i64 16, !52, i64 24, !48, i64 28}
!57 = !{!42, !50, i64 120}
!58 = !{!42, !50, i64 128}
!59 = !{!42, !50, i64 144}
!60 = !{!42, !50, i64 136}
!61 = !{!45, !51, i64 24}
!62 = !{!51, !51, i64 0}
!63 = !{!42, !50, i64 112}
!64 = !{!50, !50, i64 0}
!65 = distinct !{!65, !66, !67}
!66 = !{!"llvm.loop.mustprogress"}
!67 = !{!"llvm.loop.unroll.disable"}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!71, !50, i64 0}
!71 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !50, i64 0}
!72 = !{!73, !52, i64 8}
!73 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE", !52, i64 8, !48, i64 12, !48, i64 16, !50, i64 24, !50, i64 32}
!74 = !{!73, !48, i64 12}
!75 = !{!73, !48, i64 16}
!76 = !{!73, !50, i64 24}
!77 = !{!73, !50, i64 32}
!78 = !{!79, !52, i64 8}
!79 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE", !52, i64 8, !48, i64 12, !48, i64 16, !50, i64 24, !50, i64 32}
!80 = !{!79, !48, i64 12}
!81 = !{!79, !48, i64 16}
!82 = !{!79, !50, i64 24}
!83 = !{!79, !50, i64 32}
!84 = !{!42, !50, i64 88}
!85 = !{!42, !50, i64 96}
!86 = !{!47, !48, i64 8}
!87 = distinct !{!87, !66, !67}
!88 = distinct !{!88, !66, !67}
!89 = distinct !{!89, !66, !67}
!90 = distinct !{!90, !66, !67}
!91 = distinct !{!91, !66, !67}
!92 = !{!93, !52, i64 8}
!93 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !52, i64 8, !48, i64 12, !48, i64 16, !50, i64 24, !50, i64 32}
!94 = !{!93, !48, i64 12}
!95 = !{!93, !48, i64 16}
!96 = !{!93, !50, i64 24}
!97 = !{!93, !50, i64 32}
!98 = distinct !{!98, !66, !67}
!99 = !{!48, !48, i64 0}
!100 = !{!101, !50, i64 0}
!101 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIvEE", !50, i64 0, !52, i64 8, !50, i64 16, !48, i64 24, !48, i64 28, !48, i64 32, !50, i64 40}
!102 = !{!101, !52, i64 8}
!103 = !{!101, !50, i64 16}
!104 = !{!101, !48, i64 24}
!105 = !{!101, !48, i64 28}
!106 = !{!101, !48, i64 32}
!107 = !{!101, !50, i64 40}
!108 = distinct !{!108, !66, !67}
!109 = !{!110, !50, i64 16}
!110 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIvEE", !50, i64 0, !50, i64 8, !50, i64 16}
!111 = distinct !{!111, !66, !67}
!112 = !{!110, !50, i64 8}
!113 = !{!110, !50, i64 0}
!114 = distinct !{!114, !66, !67}
!115 = !{!42, !48, i64 152}
!116 = distinct !{!116, !66, !67}
!117 = distinct !{!117, !66, !67}
!118 = distinct !{!118, !66, !67}
!119 = distinct !{!119, !66, !67}
!120 = distinct !{!120, !66, !67}
!121 = distinct !{!121, !66, !67}
!122 = !{!123, !50, i64 40}
!123 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !124, i64 8, !50, i64 16, !48, i64 24, !50, i64 32, !50, i64 40}
!124 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !49, i64 0}
!125 = distinct !{!125, !66, !67}
!126 = distinct !{!126, !66, !67}
!127 = distinct !{!127, !66, !67}
!128 = distinct !{!128, !66, !67}
!129 = distinct !{!129, !66, !67}
!130 = distinct !{!130, !66, !67}
!131 = distinct !{!131, !66, !67}
!132 = distinct !{!132, !66, !67}
!133 = distinct !{!133, !66, !67}
!134 = distinct !{!134, !66, !67}
!135 = distinct !{!135, !66, !67}
!136 = !{!137, !50, i64 0}
!137 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEEE", !50, i64 0, !50, i64 8}
!138 = !{!137, !50, i64 8}
!139 = distinct !{!139, !66, !67}
!140 = distinct !{!140, !66, !67}
!141 = !{!"function_entry_count", i64 1}
!142 = !{!"DocumentImpl.cpp;_GLOBAL__sub_I_DocumentImpl.cpp"}
