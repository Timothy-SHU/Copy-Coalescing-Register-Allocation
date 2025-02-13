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
%"class.xercesc_2_7::ParentNode" = type <{ %"class.xercesc_2_7::ChildNode", ptr, ptr, i32, [4 x i8], ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::DOMString" = type { ptr }
%"class.xercesc_2_7::DOM_Document" = type { %"class.xercesc_2_7::DOM_Node" }
%"class.xercesc_2_7::DOM_Node" = type { ptr }
%"class.xercesc_2_7::RefCountedImpl" = type <{ ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::NamedNodeMapImpl" = type { ptr, ptr, ptr, i8, i32 }
%"class.xercesc_2_7::NodeImpl" = type <{ %"class.xercesc_2_7::NodeListImpl.base", [4 x i8], ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.1" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf.3" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }

$_ZN11xercesc_2_78NodeImpl11hasUserDataEb = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE9removeAllEv = comdat any

$_ZNK11xercesc_2_714RefHashTableOfIvE7isEmptyEv = comdat any

$_ZN11xercesc_2_712DocumentImpl16setErrorCheckingEb = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE7cleanupEv = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZNK11xercesc_2_78NodeImpl14hasStringValueEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEEC2EjbPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE10addElementEPS1_ = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEC2EjbPNS_13MemoryManagerE = comdat any

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

$_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE9removeKeyEPKv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE3putEPvS2_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722NoSuchElementException7getTypeEv = comdat any

$_ZNK11xercesc_2_722NoSuchElementException9duplicateEv = comdat any

$_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE6rehashEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE14findBucketElemEPKvRj = comdat any

$_ZN11xercesc_2_722RefHashTableBucketElemIvEC2EPvS2_PS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEEC2EPS3_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEE7releaseEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEE5resetEPS3_ = comdat any

$_ZN11xercesc_2_714RefHashTableOfIvE3getEPKv = comdat any

$_ZNK11xercesc_2_78NodeImpl11hasUserDataEv = comdat any

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

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTSN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTIN11xercesc_2_722NoSuchElementExceptionE = comdat any

$_ZTVN11xercesc_2_722NoSuchElementExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_712DocumentImplE = dso_local unnamed_addr constant { [76 x ptr] } { [76 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_712DocumentImplE, ptr @_ZN11xercesc_2_712DocumentImplD2Ev, ptr @_ZN11xercesc_2_712DocumentImplD0Ev, ptr @_ZN11xercesc_2_712DocumentImpl10referencedEv, ptr @_ZN11xercesc_2_712DocumentImpl12unreferencedEv, ptr @_ZN11xercesc_2_710ParentNode4itemEj, ptr @_ZN11xercesc_2_710ParentNode9getLengthEv, ptr @_ZN11xercesc_2_78NodeImpl10isAttrImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv, ptr @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv, ptr @_ZN11xercesc_2_712DocumentImpl14isDocumentImplEv, ptr @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv, ptr @_ZN11xercesc_2_78NodeImpl13isElementImplEv, ptr @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv, ptr @_ZN11xercesc_2_78NodeImpl10isTextImplEv, ptr @_ZN11xercesc_2_712DocumentImpl7changedEv, ptr @_ZN11xercesc_2_712DocumentImpl7changesEv, ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_, ptr @_ZN11xercesc_2_712DocumentImpl9cloneNodeEb, ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv, ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv, ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv, ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv, ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv, ptr @_ZN11xercesc_2_712DocumentImpl11getNodeNameEv, ptr @_ZN11xercesc_2_712DocumentImpl11getNodeTypeEv, ptr @_ZN11xercesc_2_78NodeImpl12getNodeValueEv, ptr @_ZN11xercesc_2_712DocumentImpl16getOwnerDocumentEv, ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv, ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv, ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEv, ptr @_ZN11xercesc_2_710ParentNode13hasChildNodesEv, ptr @_ZN11xercesc_2_712DocumentImpl12insertBeforeEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_712DocumentImpl11removeChildEPNS_8NodeImplE, ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_, ptr @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE, ptr @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb, ptr @_ZN11xercesc_2_712DocumentImpl11setUserDataEPv, ptr @_ZN11xercesc_2_78NodeImpl8toStringEv, ptr @_ZN11xercesc_2_710ParentNode9normalizeEv, ptr @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv, ptr @_ZN11xercesc_2_78NodeImpl9getPrefixEv, ptr @_ZN11xercesc_2_78NodeImpl12getLocalNameEv, ptr @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE, ptr @_ZN11xercesc_2_78NodeImpl13hasAttributesEv, ptr @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE, ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv, ptr @_ZN11xercesc_2_712DocumentImpl15createAttributeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl18createCDATASectionERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl13createCommentERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl22createDocumentFragmentEv, ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringES3_S3_, ptr @_ZN11xercesc_2_712DocumentImpl13createElementERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl13createElementEPKt, ptr @_ZN11xercesc_2_712DocumentImpl12createEntityERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl21createEntityReferenceERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl14createNotationERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl27createProcessingInstructionERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl14createTextNodeERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl10getDoctypeEv, ptr @_ZN11xercesc_2_712DocumentImpl18getDocumentElementEv, ptr @_ZN11xercesc_2_712DocumentImpl20getElementsByTagNameERKNS_9DOMStringE, ptr @_ZN11xercesc_2_712DocumentImpl13createXMLDeclERKNS_9DOMStringES3_S3_, ptr @_ZN11xercesc_2_712DocumentImpl11createRangeEv, ptr @_ZN11xercesc_2_712DocumentImpl9getRangesEv, ptr @_ZN11xercesc_2_712DocumentImpl11removeRangeEPNS_9RangeImplE, ptr @_ZN11xercesc_2_712DocumentImpl11setUserDataEPNS_8NodeImplEPv, ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEPNS_8NodeImplE, ptr @_ZN11xercesc_2_712DocumentImpl10importNodeEPNS_8NodeImplEb, ptr @_ZN11xercesc_2_712DocumentImpl15createElementNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl17createAttributeNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl22getElementsByTagNameNSERKNS_9DOMStringES3_, ptr @_ZN11xercesc_2_712DocumentImpl14getElementByIdERKNS_9DOMStringE] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_712DocumentImplE = dso_local constant [30 x i8] c"N11xercesc_2_712DocumentImplE\00", align 1
@_ZTIN11xercesc_2_710ParentNodeE = external constant ptr
@_ZTIN11xercesc_2_712DocumentImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_712DocumentImplE, ptr @_ZTIN11xercesc_2_710ParentNodeE }, align 8
@_ZN11xercesc_2_7L10namCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTIN11xercesc_2_716DOM_DOMExceptionE = external constant ptr
@_ZN11xercesc_2_78NodeImpl8USERDATAE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [10 x i8] c"#document\00", align 1
@_ZN11xercesc_2_7L3namE = internal global ptr null, align 8
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
@_ZN11xercesc_2_78NodeImpl9HASSTRINGE = external local_unnamed_addr constant i16, align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant [45 x i8] c"N11xercesc_2_711RefVectorOfINS_9RangeImplEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant [49 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE7cleanupEv] }, comdat, align 8
@_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK = internal unnamed_addr global [14 x i32] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTSN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722NoSuchElementExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722NoSuchElementExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev, ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv, ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE = external constant [0 x i16], align 2
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_DocumentImpl.cpp, ptr null }]

@_ZN11xercesc_2_712DocumentImplC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_712DocumentImplC2EPNS_13MemoryManagerE
@_ZN11xercesc_2_712DocumentImplC1ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_712DocumentImplC2ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE
@_ZN11xercesc_2_712DocumentImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712DocumentImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplD0Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_712DocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl10referencedEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl12unreferencedEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode4itemEj(ptr noundef nonnull align 8 dereferenceable(84), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_710ParentNode9getLengthEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isAttrImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isCDATASectionImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl22isDocumentFragmentImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl14isDocumentImplEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret i1 true
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl18isDocumentTypeImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13isElementImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl17isEntityReferenceEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl10isTextImplEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl7changedEv(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #4 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !36
  %4 = add nsw i32 %3, 1
  store i32 %4, ptr %2, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DocumentImpl7changesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 8, !tbaa !36
  ret i32 %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl11appendChildEPS0_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl9cloneNodeEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 168, ptr noundef %4) #14
  %6 = load ptr, ptr %3, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712DocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef %6) #14
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
  %16 = load ptr, ptr %5, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 69
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(168) %5, ptr noundef nonnull %15, i1 noundef zeroext true) #14
  %20 = load ptr, ptr %5, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(26) %5, ptr noundef %19) #14
  %24 = getelementptr inbounds %"class.xercesc_2_7::ChildNode", ptr %15, i64 0, i32 2
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %14, !llvm.loop !53

27:                                               ; preds = %14, %7
  %28 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %29 = load i8, ptr %28, align 4, !tbaa !55, !range !56, !noundef !57
  %30 = icmp ne i8 %29, 0
  tail call void @_ZN11xercesc_2_712DocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(168) %5, i1 noundef zeroext %30) #14
  ret ptr %5
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78NodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11getNodeNameEv(ptr dead_on_unwind noalias writable sret(%"class.xercesc_2_7::DOMString") align 8 %0, ptr nocapture nonnull readnone align 8 %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef nonnull @.str, ptr noundef nonnull @_ZN11xercesc_2_7L3namE, ptr noundef nonnull @_ZN11xercesc_2_712DocumentImpl18reinitDocumentImplEv, ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L10namCleanupE) #14
  tail call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZN11xercesc_2_712DocumentImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret i16 9
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getNodeValueEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noalias noundef ptr @_ZN11xercesc_2_712DocumentImpl16getOwnerDocumentEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79ChildNode18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 !prof !35 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(26) %0) #14
  br i1 %2, label %3, label %8

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !50
  %5 = getelementptr inbounds ptr, ptr %4, i64 68
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %0) #14
  br label %8

8:                                                ; preds = %1, %3
  %9 = phi ptr [ %7, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710ParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef returned %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !55, !range !56, !noundef !57
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %38, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr %1, align 8, !tbaa !50
  %10 = getelementptr inbounds ptr, ptr %9, i64 11
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef zeroext i1 %11(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %13 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8
  %15 = icmp ne ptr %14, null
  %16 = select i1 %12, i1 %15, i1 false
  br i1 %16, label %26, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr %1, align 8, !tbaa !50
  %19 = getelementptr inbounds ptr, ptr %18, i64 10
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8
  %24 = icmp ne ptr %23, null
  %25 = select i1 %21, i1 %24, i1 false
  br i1 %25, label %26, label %38

26:                                               ; preds = %17, %8
  %27 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #14
          to label %28 unwind label %32

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %27, i16 noundef signext 3, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
          to label %31 unwind label %29

29:                                               ; preds = %28
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %36

31:                                               ; preds = %28
  invoke void @__cxa_throw(ptr nonnull %27, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %58 unwind label %34

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %36

34:                                               ; preds = %31
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %56

36:                                               ; preds = %29, %32
  %37 = phi { ptr, i32 } [ %33, %32 ], [ %30, %29 ]
  call void @__cxa_free_exception(ptr %27) #15
  br label %56

38:                                               ; preds = %17, %3
  %39 = tail call noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1, ptr noundef %2) #14
  %40 = load ptr, ptr %1, align 8, !tbaa !50
  %41 = getelementptr inbounds ptr, ptr %40, i64 11
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  br label %53

46:                                               ; preds = %38
  %47 = load ptr, ptr %1, align 8, !tbaa !50
  %48 = getelementptr inbounds ptr, ptr %47, i64 10
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef zeroext i1 %49(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  br i1 %50, label %51, label %55

51:                                               ; preds = %46
  %52 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  br label %53

53:                                               ; preds = %44, %51
  %54 = phi ptr [ %52, %51 ], [ %45, %44 ]
  store ptr %1, ptr %54, align 8, !tbaa !52
  br label %55

55:                                               ; preds = %53, %46
  ret ptr %1

56:                                               ; preds = %34, %36
  %57 = phi { ptr, i32 } [ %35, %34 ], [ %37, %36 ]
  resume { ptr, i32 } %57

58:                                               ; preds = %31
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef returned %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef %1) #14
  %4 = load ptr, ptr %1, align 8, !tbaa !50
  %5 = getelementptr inbounds ptr, ptr %4, i64 11
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef zeroext i1 %6(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  br label %17

10:                                               ; preds = %2
  %11 = load ptr, ptr %1, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 10
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef zeroext i1 %13(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  br label %17

17:                                               ; preds = %8, %15
  %18 = phi ptr [ %16, %15 ], [ %9, %8 ]
  store ptr null, ptr %18, align 8, !tbaa !52
  br label %19

19:                                               ; preds = %17, %10
  ret ptr %1
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode12replaceChildEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12setNodeValueERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode11setReadOnlyEbb(ptr noundef nonnull align 8 dereferenceable(84), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11setUserDataEPv(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !50
  %4 = getelementptr inbounds ptr, ptr %3, i64 67
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %0, ptr noundef %1) #14
  %6 = icmp ne ptr %1, null
  tail call void @_ZN11xercesc_2_78NodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %6) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8toStringEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode9normalizeEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl11isSupportedERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl15getNamespaceURIEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9getPrefixEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl12getLocalNameEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOMString") align 8, ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl9setPrefixERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(26), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_78NodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(26)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNode16setOwnerDocumentEPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode11getDocumentEv(ptr noundef nonnull align 8 dereferenceable(84)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl15createAttributeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !55, !range !56, !noundef !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #14
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %30 unwind label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %28

19:                                               ; preds = %12, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %10) #15
  br label %28

21:                                               ; preds = %7, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %23) #14
  invoke void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48) %24, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %25 unwind label %26

25:                                               ; preds = %21
  ret ptr %24

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #13
  br label %28

28:                                               ; preds = %17, %19, %26
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %20, %19 ], [ %18, %17 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createCDATASectionERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #14
  invoke void @_ZN11xercesc_2_716CDATASectionImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createCommentERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #14
  invoke void @_ZN11xercesc_2_711CommentImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl22createDocumentFragmentEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_720DocumentFragmentImplC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %4, ptr noundef nonnull %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !55, !range !56, !noundef !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #14
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %30 unwind label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %28

19:                                               ; preds = %12, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %10) #15
  br label %28

21:                                               ; preds = %7, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %23) #14
  invoke void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145) %24, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %25 unwind label %26

25:                                               ; preds = %21
  ret ptr %24

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #13
  br label %28

28:                                               ; preds = %17, %19, %26
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %20, %19 ], [ %18, %17 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createDocumentTypeERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %5 = alloca %"class.xercesc_2_7::DOMString", align 8
  %6 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %7 = load i8, ptr %6, align 4, !tbaa !55, !range !56, !noundef !57
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %23, label %9

9:                                                ; preds = %4
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %10, label %23, label %11

11:                                               ; preds = %9
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %5, i32 noundef 0) #14
          to label %13 unwind label %17

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
          to label %16 unwind label %14

14:                                               ; preds = %13
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %21

16:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %32 unwind label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %30

21:                                               ; preds = %14, %17
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %15, %14 ]
  call void @__cxa_free_exception(ptr %12) #15
  br label %30

23:                                               ; preds = %9, %4
  %24 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %25 = load ptr, ptr %24, align 8, !tbaa !49
  %26 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %25) #14
  invoke void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145) %26, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %27 unwind label %28

27:                                               ; preds = %23
  ret ptr %26

28:                                               ; preds = %23
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %26, ptr noundef %25) #13
  br label %30

30:                                               ; preds = %19, %21, %28
  %31 = phi { ptr, i32 } [ %29, %28 ], [ %22, %21 ], [ %20, %19 ]
  resume { ptr, i32 } %31

32:                                               ; preds = %16
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createElementERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !55, !range !56, !noundef !57
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %2
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #14
          to label %12 unwind label %16

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %15 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %20

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %39 unwind label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %37

20:                                               ; preds = %13, %16
  %21 = phi { ptr, i32 } [ %17, %16 ], [ %14, %13 ]
  call void @__cxa_free_exception(ptr %11) #15
  br label %37

22:                                               ; preds = %8, %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !58
  %25 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 8 dereferenceable(8) %25) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %27 = load ptr, ptr %26, align 8, !tbaa !49
  %28 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %27) #14
          to label %29 unwind label %31

29:                                               ; preds = %22
  invoke void @_ZN11xercesc_2_711ElementImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %28, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
          to label %30 unwind label %33

30:                                               ; preds = %29
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  ret ptr %28

31:                                               ; preds = %22
  %32 = landingpad { ptr, i32 }
          cleanup
  br label %35

33:                                               ; preds = %29
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %28, ptr noundef %27) #13
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %32, %31 ]
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %37

37:                                               ; preds = %18, %20, %35
  %38 = phi { ptr, i32 } [ %36, %35 ], [ %21, %20 ], [ %19, %18 ]
  resume { ptr, i32 } %38

39:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createElementEPKt(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !58
  %6 = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef %1) #14
  call void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %6) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !49
  %9 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 104, ptr noundef %8) #14
          to label %10 unwind label %12

10:                                               ; preds = %2
  invoke void @_ZN11xercesc_2_711ElementImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104) %9, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %11 unwind label %14

11:                                               ; preds = %10
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  resume { ptr, i32 } %17
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl12createEntityERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !55, !range !56, !noundef !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #14
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %30 unwind label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %28

19:                                               ; preds = %12, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %10) #15
  br label %28

21:                                               ; preds = %7, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %23) #14
  invoke void @_ZN11xercesc_2_710EntityImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(120) %24, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %25 unwind label %26

25:                                               ; preds = %21
  ret ptr %24

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #13
  br label %28

28:                                               ; preds = %17, %19, %26
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %20, %19 ], [ %18, %17 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl21createEntityReferenceERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !55, !range !56, !noundef !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #14
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %30 unwind label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %28

19:                                               ; preds = %12, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %10) #15
  br label %28

21:                                               ; preds = %7, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 96, ptr noundef %23) #14
  invoke void @_ZN11xercesc_2_719EntityReferenceImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(96) %24, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %25 unwind label %26

25:                                               ; preds = %21
  ret ptr %24

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #13
  br label %28

28:                                               ; preds = %17, %19, %26
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %20, %19 ], [ %18, %17 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl14createNotationERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 4, !tbaa !55, !range !56, !noundef !57
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %21, label %7

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %8, label %21, label %9

9:                                                ; preds = %7
  %10 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #14
          to label %11 unwind label %15

11:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %10, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %14 unwind label %12

12:                                               ; preds = %11
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

14:                                               ; preds = %11
  invoke void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %30 unwind label %17

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %19

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %28

19:                                               ; preds = %12, %15
  %20 = phi { ptr, i32 } [ %16, %15 ], [ %13, %12 ]
  call void @__cxa_free_exception(ptr %10) #15
  br label %28

21:                                               ; preds = %7, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %23 = load ptr, ptr %22, align 8, !tbaa !49
  %24 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %23) #14
  invoke void @_ZN11xercesc_2_712NotationImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %24, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %25 unwind label %26

25:                                               ; preds = %21
  ret ptr %24

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %23) #13
  br label %28

28:                                               ; preds = %17, %19, %26
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %20, %19 ], [ %18, %17 ]
  resume { ptr, i32 } %29

30:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl27createProcessingInstructionERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !55, !range !56, !noundef !57
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #14
          to label %12 unwind label %16

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
          to label %15 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %20

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %31 unwind label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %29

20:                                               ; preds = %13, %16
  %21 = phi { ptr, i32 } [ %17, %16 ], [ %14, %13 ]
  call void @__cxa_free_exception(ptr %11) #15
  br label %29

22:                                               ; preds = %8, %3
  %23 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %24) #14
  invoke void @_ZN11xercesc_2_725ProcessingInstructionImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %25, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
          to label %26 unwind label %27

26:                                               ; preds = %22
  ret ptr %25

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #13
  br label %29

29:                                               ; preds = %18, %20, %27
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %21, %20 ], [ %19, %18 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl14createTextNodeERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #14
  invoke void @_ZN11xercesc_2_78TextImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl10getDoctypeEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !59
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18getDocumentElementEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !60
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl20getElementsByTagNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #14
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58) %5, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
          to label %6 unwind label %7

6:                                                ; preds = %2
  ret ptr %5

7:                                                ; preds = %2
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl13createXMLDeclERKNS_9DOMStringES3_S3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %6 = load ptr, ptr %5, align 8, !tbaa !49
  %7 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %6) #14
  invoke void @_ZN11xercesc_2_711XMLDeclImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(72) %7, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %8 unwind label %9

8:                                                ; preds = %4
  ret ptr %7

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %6) #13
  resume { ptr, i32 } %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11createRangeEv(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %4 = load ptr, ptr %3, align 8, !tbaa !49
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 72, ptr noundef %4) #14
  invoke void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull %0) #14
          to label %6 unwind label %16

6:                                                ; preds = %1
  invoke void @_ZN11xercesc_2_79RangeImplC1ENS_12DOM_DocumentE(ptr noundef nonnull align 8 dereferenceable(72) %5, ptr noundef nonnull %2) #14
          to label %7 unwind label %18

7:                                                ; preds = %6
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !61
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %7
  %12 = load ptr, ptr %3, align 8, !tbaa !49
  %13 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %12) #14
  %14 = load ptr, ptr %3, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef 1, i1 noundef zeroext false, ptr noundef %14) #14
          to label %15 unwind label %22

15:                                               ; preds = %11
  store ptr %13, ptr %8, align 8, !tbaa !61
  br label %24

16:                                               ; preds = %1
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %20

18:                                               ; preds = %6
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %2) #13
  br label %20

20:                                               ; preds = %16, %18
  %21 = phi { ptr, i32 } [ %19, %18 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %5, ptr noundef %4) #13
  br label %26

22:                                               ; preds = %11
  %23 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %13, ptr noundef %12) #13
  br label %26

24:                                               ; preds = %15, %7
  %25 = phi ptr [ %13, %15 ], [ %9, %7 ]
  call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %25, ptr noundef nonnull %5) #14
  ret ptr %5

26:                                               ; preds = %20, %22
  %27 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  resume { ptr, i32 } %27
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl9getRangesEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0) unnamed_addr #5 align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !61
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11removeRangeEPNS_9RangeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %4 = load ptr, ptr %3, align 8, !tbaa !61
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %4) #14
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %6, %24
  %10 = phi i32 [ %25, %24 ], [ 0, %6 ]
  %11 = load ptr, ptr %3, align 8, !tbaa !61
  %12 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %11, i32 noundef %10) #14
  %13 = icmp eq ptr %12, %1
  br i1 %13, label %14, label %24

14:                                               ; preds = %9
  %15 = load ptr, ptr %3, align 8, !tbaa !61
  %16 = load ptr, ptr %15, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(40) %15, i32 noundef %10) #14
  %19 = icmp eq ptr %1, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %1, align 8, !tbaa !50
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(72) %1) #13
  br label %27

24:                                               ; preds = %9
  %25 = add nuw i32 %10, 1
  %26 = icmp eq i32 %25, %7
  br i1 %26, label %27, label %9, !llvm.loop !62

27:                                               ; preds = %24, %6, %14, %20, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl11setUserDataEPNS_8NodeImplEPv(ptr nocapture noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 7
  %5 = load ptr, ptr %4, align 8, !tbaa !63
  %6 = icmp eq ptr %5, null
  %7 = icmp ne ptr %2, null
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %25

9:                                                ; preds = %3
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !49
  %12 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %11) #14
  %13 = load ptr, ptr %10, align 8, !tbaa !49
  %14 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %13) #14
          to label %15 unwind label %19

15:                                               ; preds = %9
  invoke void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #14
          to label %16 unwind label %21

16:                                               ; preds = %15
  %17 = load ptr, ptr %10, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_714RefHashTableOfIvEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, i32 noundef 29, i1 noundef zeroext false, ptr noundef nonnull %14, ptr noundef %17) #14
          to label %18 unwind label %19

18:                                               ; preds = %16
  store ptr %12, ptr %4, align 8, !tbaa !63
  br label %25

19:                                               ; preds = %16, %9
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %15
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %14, ptr noundef %13) #13
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %20, %19 ], [ %22, %21 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %12, ptr noundef %11) #13
  resume { ptr, i32 } %24

25:                                               ; preds = %18, %3
  %26 = phi ptr [ %12, %18 ], [ %5, %3 ]
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %25
  br i1 %7, label %30, label %29

29:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %1) #14
  br label %31

30:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE3putEPvS2_(ptr noundef nonnull align 8 dereferenceable(48) %26, ptr noundef %1, ptr noundef nonnull %2) #14
  br label %31

31:                                               ; preds = %29, %30, %25
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl11getUserDataEPNS_8NodeImplE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 7
  %4 = load ptr, ptr %3, align 8, !tbaa !63
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIvE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1) #14
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  ret ptr %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl10importNodeEPNS_8NodeImplEb(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
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
  %32 = load i8, ptr %31, align 4, !tbaa !55, !range !56, !noundef !57
  %33 = load ptr, ptr %1, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 24
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef signext i16 %35(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  switch i16 %36, label %418 [
    i16 1, label %37
    i16 2, label %128
    i16 3, label %179
    i16 4, label %190
    i16 5, label %201
    i16 6, label %215
    i16 7, label %256
    i16 8, label %275
    i16 10, label %286
    i16 11, label %384
    i16 12, label %389
  ]

37:                                               ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  %38 = load ptr, ptr %1, align 8, !tbaa !50
  %39 = getelementptr inbounds ptr, ptr %38, i64 42
  %40 = load ptr, ptr %39, align 8
  call void %40(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %4, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %41 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef null) #14
          to label %42 unwind label %52

42:                                               ; preds = %37
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br i1 %41, label %43, label %56

43:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #15
  %44 = load ptr, ptr %1, align 8, !tbaa !50
  %45 = getelementptr inbounds ptr, ptr %44, i64 23
  %46 = load ptr, ptr %45, align 8
  call void %46(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %5, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %47 = load ptr, ptr %0, align 8, !tbaa !50
  %48 = getelementptr inbounds ptr, ptr %47, i64 53
  %49 = load ptr, ptr %48, align 8
  %50 = invoke noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %5) #14
          to label %51 unwind label %54

51:                                               ; preds = %43
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %75

52:                                               ; preds = %37
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %472

54:                                               ; preds = %43
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %5) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #15
  br label %472

56:                                               ; preds = %42
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #15
  %57 = load ptr, ptr %1, align 8, !tbaa !50
  %58 = getelementptr inbounds ptr, ptr %57, i64 40
  %59 = load ptr, ptr %58, align 8
  call void %59(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %6, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  %60 = load ptr, ptr %1, align 8, !tbaa !50
  %61 = getelementptr inbounds ptr, ptr %60, i64 23
  %62 = load ptr, ptr %61, align 8
  invoke void %62(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %7, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
          to label %63 unwind label %69

63:                                               ; preds = %56
  %64 = load ptr, ptr %0, align 8, !tbaa !50
  %65 = getelementptr inbounds ptr, ptr %64, i64 70
  %66 = load ptr, ptr %65, align 8
  %67 = invoke noundef ptr %66(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) #14
          to label %68 unwind label %71

68:                                               ; preds = %63
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #15
  br label %472

75:                                               ; preds = %68, %51
  %76 = phi ptr [ %50, %51 ], [ %67, %68 ]
  %77 = load ptr, ptr %1, align 8, !tbaa !50
  %78 = getelementptr inbounds ptr, ptr %77, i64 18
  %79 = load ptr, ptr %78, align 8
  %80 = call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %81 = icmp eq ptr %80, null
  br i1 %81, label %430, label %82

82:                                               ; preds = %75
  %83 = load ptr, ptr %80, align 8, !tbaa !50
  %84 = getelementptr inbounds ptr, ptr %83, i64 5
  %85 = load ptr, ptr %84, align 8
  %86 = call noundef i32 %85(ptr noundef nonnull align 8 dereferenceable(32) %80) #14
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %430, label %88

88:                                               ; preds = %82, %121
  %89 = phi i32 [ %122, %121 ], [ 0, %82 ]
  %90 = load ptr, ptr %80, align 8, !tbaa !50
  %91 = getelementptr inbounds ptr, ptr %90, i64 7
  %92 = load ptr, ptr %91, align 8
  %93 = call noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(32) %80, i32 noundef %89) #14
  %94 = load ptr, ptr %93, align 8, !tbaa !50
  %95 = getelementptr inbounds ptr, ptr %94, i64 48
  %96 = load ptr, ptr %95, align 8
  %97 = call noundef zeroext i1 %96(ptr noundef nonnull align 8 dereferenceable(48) %93) #14
  br i1 %97, label %98, label %121

98:                                               ; preds = %88
  %99 = load ptr, ptr %0, align 8, !tbaa !50
  %100 = getelementptr inbounds ptr, ptr %99, i64 69
  %101 = load ptr, ptr %100, align 8
  %102 = call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %93, i1 noundef zeroext true) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #15
  %103 = load ptr, ptr %93, align 8, !tbaa !50
  %104 = getelementptr inbounds ptr, ptr %103, i64 42
  %105 = load ptr, ptr %104, align 8
  call void %105(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %8, ptr noundef nonnull align 8 dereferenceable(26) %93) #14
  %106 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef null) #14
          to label %107 unwind label %114

107:                                              ; preds = %98
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  %108 = load ptr, ptr %76, align 8, !tbaa !50
  %109 = select i1 %106, i64 54, i64 59
  %110 = getelementptr inbounds ptr, ptr %108, i64 %109
  %111 = load ptr, ptr %110, align 8
  %112 = call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(104) %76, ptr noundef %102) #14
  %113 = icmp eq ptr %112, null
  br i1 %113, label %121, label %116

114:                                              ; preds = %98
  %115 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #15
  br label %472

116:                                              ; preds = %107
  %117 = getelementptr inbounds %"class.xercesc_2_7::RefCountedImpl", ptr %112, i64 0, i32 1
  %118 = load i32, ptr %117, align 8, !tbaa !64
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %116
  call void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef nonnull %112) #14
  br label %121

121:                                              ; preds = %107, %120, %116, %88
  %122 = add nuw i32 %89, 1
  %123 = load ptr, ptr %80, align 8, !tbaa !50
  %124 = getelementptr inbounds ptr, ptr %123, i64 5
  %125 = load ptr, ptr %124, align 8
  %126 = call noundef i32 %125(ptr noundef nonnull align 8 dereferenceable(32) %80) #14
  %127 = icmp ult i32 %122, %126
  br i1 %127, label %88, label %430, !llvm.loop !65

128:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #15
  %129 = load ptr, ptr %1, align 8, !tbaa !50
  %130 = getelementptr inbounds ptr, ptr %129, i64 42
  %131 = load ptr, ptr %130, align 8
  call void %131(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %9, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %132 = invoke noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef null) #14
          to label %133 unwind label %143

133:                                              ; preds = %128
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br i1 %132, label %134, label %147

134:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #15
  %135 = load ptr, ptr %1, align 8, !tbaa !50
  %136 = getelementptr inbounds ptr, ptr %135, i64 23
  %137 = load ptr, ptr %136, align 8
  call void %137(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %10, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %138 = load ptr, ptr %0, align 8, !tbaa !50
  %139 = getelementptr inbounds ptr, ptr %138, i64 47
  %140 = load ptr, ptr %139, align 8
  %141 = invoke noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %10) #14
          to label %142 unwind label %145

142:                                              ; preds = %134
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %166

143:                                              ; preds = %128
  %144 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #15
  br label %472

145:                                              ; preds = %134
  %146 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %10) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #15
  br label %472

147:                                              ; preds = %133
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #15
  %148 = load ptr, ptr %1, align 8, !tbaa !50
  %149 = getelementptr inbounds ptr, ptr %148, i64 40
  %150 = load ptr, ptr %149, align 8
  call void %150(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %11, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #15
  %151 = load ptr, ptr %1, align 8, !tbaa !50
  %152 = getelementptr inbounds ptr, ptr %151, i64 23
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %12, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
          to label %154 unwind label %160

154:                                              ; preds = %147
  %155 = load ptr, ptr %0, align 8, !tbaa !50
  %156 = getelementptr inbounds ptr, ptr %155, i64 71
  %157 = load ptr, ptr %156, align 8
  %158 = invoke noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull align 8 dereferenceable(8) %12) #14
          to label %159 unwind label %162

159:                                              ; preds = %154
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %12) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
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
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #15
  br label %472

166:                                              ; preds = %159, %142
  %167 = phi ptr [ %141, %142 ], [ %158, %159 ]
  %168 = call noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  br i1 %168, label %169, label %432

169:                                              ; preds = %166
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #15
  %170 = load ptr, ptr %1, align 8, !tbaa !50
  %171 = getelementptr inbounds ptr, ptr %170, i64 49
  %172 = load ptr, ptr %171, align 8
  call void %172(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %13, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  %173 = load ptr, ptr %167, align 8, !tbaa !50
  %174 = getelementptr inbounds ptr, ptr %173, i64 51
  %175 = load ptr, ptr %174, align 8
  invoke void %175(ptr noundef nonnull align 8 dereferenceable(48) %167, ptr noundef nonnull align 8 dereferenceable(8) %13) #14
          to label %178 unwind label %176

176:                                              ; preds = %169
  %177 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  br label %472

178:                                              ; preds = %169
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %13) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #15
  br label %454

179:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #15
  %180 = load ptr, ptr %1, align 8, !tbaa !50
  %181 = getelementptr inbounds ptr, ptr %180, i64 25
  %182 = load ptr, ptr %181, align 8
  call void %182(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %14, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %183 = load ptr, ptr %0, align 8, !tbaa !50
  %184 = getelementptr inbounds ptr, ptr %183, i64 59
  %185 = load ptr, ptr %184, align 8
  %186 = invoke noundef ptr %185(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %14) #14
          to label %187 unwind label %188

187:                                              ; preds = %179
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  br i1 %2, label %432, label %454

188:                                              ; preds = %179
  %189 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %14) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #15
  br label %472

190:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #15
  %191 = load ptr, ptr %1, align 8, !tbaa !50
  %192 = getelementptr inbounds ptr, ptr %191, i64 25
  %193 = load ptr, ptr %192, align 8
  call void %193(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %15, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %194 = load ptr, ptr %0, align 8, !tbaa !50
  %195 = getelementptr inbounds ptr, ptr %194, i64 48
  %196 = load ptr, ptr %195, align 8
  %197 = invoke noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %15) #14
          to label %198 unwind label %199

198:                                              ; preds = %190
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  br i1 %2, label %432, label %454

199:                                              ; preds = %190
  %200 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %15) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #15
  br label %472

201:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %16) #15
  %202 = load ptr, ptr %1, align 8, !tbaa !50
  %203 = getelementptr inbounds ptr, ptr %202, i64 23
  %204 = load ptr, ptr %203, align 8
  call void %204(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %16, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %205 = load ptr, ptr %0, align 8, !tbaa !50
  %206 = getelementptr inbounds ptr, ptr %205, i64 56
  %207 = load ptr, ptr %206, align 8
  %208 = invoke noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %16) #14
          to label %209 unwind label %213

209:                                              ; preds = %201
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #15
  store i8 0, ptr %31, align 4, !tbaa !55
  %210 = load ptr, ptr %208, align 8, !tbaa !50
  %211 = getelementptr inbounds ptr, ptr %210, i64 35
  %212 = load ptr, ptr %211, align 8
  call void %212(ptr noundef nonnull align 8 dereferenceable(96) %208, i1 noundef zeroext false, i1 noundef zeroext true) #14
  br i1 %2, label %432, label %454

213:                                              ; preds = %201
  %214 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %16) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %16) #15
  br label %472

215:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %17) #15
  %216 = load ptr, ptr %1, align 8, !tbaa !50
  %217 = getelementptr inbounds ptr, ptr %216, i64 23
  %218 = load ptr, ptr %217, align 8
  call void %218(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %17, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %219 = load ptr, ptr %0, align 8, !tbaa !50
  %220 = getelementptr inbounds ptr, ptr %219, i64 55
  %221 = load ptr, ptr %220, align 8
  %222 = invoke noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %17) #14
          to label %223 unwind label %248

223:                                              ; preds = %215
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #15
  %224 = load ptr, ptr %1, align 8, !tbaa !50
  %225 = getelementptr inbounds ptr, ptr %224, i64 47
  %226 = load ptr, ptr %225, align 8
  call void %226(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %18, ptr noundef nonnull align 8 dereferenceable(120) %1) #14
  %227 = load ptr, ptr %222, align 8, !tbaa !50
  %228 = getelementptr inbounds ptr, ptr %227, i64 51
  %229 = load ptr, ptr %228, align 8
  invoke void %229(ptr noundef nonnull align 8 dereferenceable(120) %222, ptr noundef nonnull align 8 dereferenceable(8) %18) #14
          to label %230 unwind label %250

230:                                              ; preds = %223
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %19) #15
  %231 = load ptr, ptr %1, align 8, !tbaa !50
  %232 = getelementptr inbounds ptr, ptr %231, i64 48
  %233 = load ptr, ptr %232, align 8
  call void %233(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %19, ptr noundef nonnull align 8 dereferenceable(120) %1) #14
  %234 = load ptr, ptr %222, align 8, !tbaa !50
  %235 = getelementptr inbounds ptr, ptr %234, i64 52
  %236 = load ptr, ptr %235, align 8
  invoke void %236(ptr noundef nonnull align 8 dereferenceable(120) %222, ptr noundef nonnull align 8 dereferenceable(8) %19) #14
          to label %237 unwind label %252

237:                                              ; preds = %230
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #15
  %238 = load ptr, ptr %1, align 8, !tbaa !50
  %239 = getelementptr inbounds ptr, ptr %238, i64 49
  %240 = load ptr, ptr %239, align 8
  call void %240(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %20, ptr noundef nonnull align 8 dereferenceable(120) %1) #14
  %241 = load ptr, ptr %222, align 8, !tbaa !50
  %242 = getelementptr inbounds ptr, ptr %241, i64 50
  %243 = load ptr, ptr %242, align 8
  invoke void %243(ptr noundef nonnull align 8 dereferenceable(120) %222, ptr noundef nonnull align 8 dereferenceable(8) %20) #14
          to label %244 unwind label %254

244:                                              ; preds = %237
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #15
  %245 = load ptr, ptr %222, align 8, !tbaa !50
  %246 = getelementptr inbounds ptr, ptr %245, i64 35
  %247 = load ptr, ptr %246, align 8
  call void %247(ptr noundef nonnull align 8 dereferenceable(84) %222, i1 noundef zeroext false, i1 noundef zeroext true) #14
  br i1 %2, label %432, label %454

248:                                              ; preds = %215
  %249 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %17) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %17) #15
  br label %472

250:                                              ; preds = %223
  %251 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %18) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #15
  br label %472

252:                                              ; preds = %230
  %253 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %19) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %19) #15
  br label %472

254:                                              ; preds = %237
  %255 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %20) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #15
  br label %472

256:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #15
  %257 = load ptr, ptr %1, align 8, !tbaa !50
  %258 = getelementptr inbounds ptr, ptr %257, i64 23
  %259 = load ptr, ptr %258, align 8
  call void %259(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %21, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #15
  %260 = load ptr, ptr %1, align 8, !tbaa !50
  %261 = getelementptr inbounds ptr, ptr %260, i64 25
  %262 = load ptr, ptr %261, align 8
  invoke void %262(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %22, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
          to label %263 unwind label %269

263:                                              ; preds = %256
  %264 = load ptr, ptr %0, align 8, !tbaa !50
  %265 = getelementptr inbounds ptr, ptr %264, i64 58
  %266 = load ptr, ptr %265, align 8
  %267 = invoke noundef ptr %266(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %21, ptr noundef nonnull align 8 dereferenceable(8) %22) #14
          to label %268 unwind label %271

268:                                              ; preds = %263
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #15
  br i1 %2, label %432, label %454

269:                                              ; preds = %256
  %270 = landingpad { ptr, i32 }
          cleanup
  br label %273

271:                                              ; preds = %263
  %272 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %22) #13
  br label %273

273:                                              ; preds = %271, %269
  %274 = phi { ptr, i32 } [ %272, %271 ], [ %270, %269 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %21) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #15
  br label %472

275:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %23) #15
  %276 = load ptr, ptr %1, align 8, !tbaa !50
  %277 = getelementptr inbounds ptr, ptr %276, i64 25
  %278 = load ptr, ptr %277, align 8
  call void %278(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %23, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %279 = load ptr, ptr %0, align 8, !tbaa !50
  %280 = getelementptr inbounds ptr, ptr %279, i64 49
  %281 = load ptr, ptr %280, align 8
  %282 = invoke noundef ptr %281(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %23) #14
          to label %283 unwind label %284

283:                                              ; preds = %275
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #15
  br i1 %2, label %432, label %454

284:                                              ; preds = %275
  %285 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %23) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %23) #15
  br label %472

286:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #15
  %287 = load ptr, ptr %1, align 8, !tbaa !50
  %288 = getelementptr inbounds ptr, ptr %287, i64 23
  %289 = load ptr, ptr %288, align 8
  call void %289(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %24, ptr noundef nonnull align 8 dereferenceable(145) %1) #14
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #15
  %290 = load ptr, ptr %1, align 8, !tbaa !50
  %291 = getelementptr inbounds ptr, ptr %290, i64 54
  %292 = load ptr, ptr %291, align 8
  invoke void %292(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %25, ptr noundef nonnull align 8 dereferenceable(145) %1) #14
          to label %293 unwind label %318

293:                                              ; preds = %286
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #15
  %294 = load ptr, ptr %1, align 8, !tbaa !50
  %295 = getelementptr inbounds ptr, ptr %294, i64 55
  %296 = load ptr, ptr %295, align 8
  invoke void %296(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %26, ptr noundef nonnull align 8 dereferenceable(145) %1) #14
          to label %297 unwind label %320

297:                                              ; preds = %293
  %298 = load ptr, ptr %0, align 8, !tbaa !50
  %299 = getelementptr inbounds ptr, ptr %298, i64 52
  %300 = load ptr, ptr %299, align 8
  %301 = invoke noundef ptr %300(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef nonnull align 8 dereferenceable(8) %26) #14
          to label %302 unwind label %322

302:                                              ; preds = %297
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #15
  %303 = load ptr, ptr %1, align 8, !tbaa !50
  %304 = getelementptr inbounds ptr, ptr %303, i64 50
  %305 = load ptr, ptr %304, align 8
  %306 = call noundef ptr %305(ptr noundef nonnull align 8 dereferenceable(145) %1) #14
  %307 = load ptr, ptr %301, align 8, !tbaa !50
  %308 = getelementptr inbounds ptr, ptr %307, i64 50
  %309 = load ptr, ptr %308, align 8
  %310 = call noundef ptr %309(ptr noundef nonnull align 8 dereferenceable(145) %301) #14
  %311 = icmp eq ptr %306, null
  br i1 %311, label %348, label %312

312:                                              ; preds = %302
  %313 = load ptr, ptr %306, align 8, !tbaa !50
  %314 = getelementptr inbounds ptr, ptr %313, i64 5
  %315 = load ptr, ptr %314, align 8
  %316 = call noundef i32 %315(ptr noundef nonnull align 8 dereferenceable(32) %306) #14
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %348, label %328

318:                                              ; preds = %286
  %319 = landingpad { ptr, i32 }
          cleanup
  br label %326

320:                                              ; preds = %293
  %321 = landingpad { ptr, i32 }
          cleanup
  br label %324

322:                                              ; preds = %297
  %323 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %26) #13
  br label %324

324:                                              ; preds = %322, %320
  %325 = phi { ptr, i32 } [ %323, %322 ], [ %321, %320 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %25) #13
  br label %326

326:                                              ; preds = %324, %318
  %327 = phi { ptr, i32 } [ %325, %324 ], [ %319, %318 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #15
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %24) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #15
  br label %472

328:                                              ; preds = %312, %328
  %329 = phi i32 [ %342, %328 ], [ 0, %312 ]
  %330 = load ptr, ptr %306, align 8, !tbaa !50
  %331 = getelementptr inbounds ptr, ptr %330, i64 7
  %332 = load ptr, ptr %331, align 8
  %333 = call noundef ptr %332(ptr noundef nonnull align 8 dereferenceable(32) %306, i32 noundef %329) #14
  %334 = load ptr, ptr %0, align 8, !tbaa !50
  %335 = getelementptr inbounds ptr, ptr %334, i64 69
  %336 = load ptr, ptr %335, align 8
  %337 = call noundef ptr %336(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %333, i1 noundef zeroext true) #14
  %338 = load ptr, ptr %310, align 8, !tbaa !50
  %339 = getelementptr inbounds ptr, ptr %338, i64 10
  %340 = load ptr, ptr %339, align 8
  %341 = call noundef ptr %340(ptr noundef nonnull align 8 dereferenceable(32) %310, ptr noundef %337) #14
  %342 = add nuw i32 %329, 1
  %343 = load ptr, ptr %306, align 8, !tbaa !50
  %344 = getelementptr inbounds ptr, ptr %343, i64 5
  %345 = load ptr, ptr %344, align 8
  %346 = call noundef i32 %345(ptr noundef nonnull align 8 dereferenceable(32) %306) #14
  %347 = icmp ult i32 %342, %346
  br i1 %347, label %328, label %348, !llvm.loop !66

348:                                              ; preds = %328, %312, %302
  %349 = load ptr, ptr %1, align 8, !tbaa !50
  %350 = getelementptr inbounds ptr, ptr %349, i64 52
  %351 = load ptr, ptr %350, align 8
  %352 = call noundef ptr %351(ptr noundef nonnull align 8 dereferenceable(145) %1) #14
  %353 = load ptr, ptr %301, align 8, !tbaa !50
  %354 = getelementptr inbounds ptr, ptr %353, i64 52
  %355 = load ptr, ptr %354, align 8
  %356 = call noundef ptr %355(ptr noundef nonnull align 8 dereferenceable(145) %301) #14
  %357 = icmp eq ptr %352, null
  br i1 %357, label %430, label %358

358:                                              ; preds = %348
  %359 = load ptr, ptr %352, align 8, !tbaa !50
  %360 = getelementptr inbounds ptr, ptr %359, i64 5
  %361 = load ptr, ptr %360, align 8
  %362 = call noundef i32 %361(ptr noundef nonnull align 8 dereferenceable(32) %352) #14
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %430, label %364

364:                                              ; preds = %358, %364
  %365 = phi i32 [ %378, %364 ], [ 0, %358 ]
  %366 = load ptr, ptr %352, align 8, !tbaa !50
  %367 = getelementptr inbounds ptr, ptr %366, i64 7
  %368 = load ptr, ptr %367, align 8
  %369 = call noundef ptr %368(ptr noundef nonnull align 8 dereferenceable(32) %352, i32 noundef %365) #14
  %370 = load ptr, ptr %0, align 8, !tbaa !50
  %371 = getelementptr inbounds ptr, ptr %370, i64 69
  %372 = load ptr, ptr %371, align 8
  %373 = call noundef ptr %372(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %369, i1 noundef zeroext true) #14
  %374 = load ptr, ptr %356, align 8, !tbaa !50
  %375 = getelementptr inbounds ptr, ptr %374, i64 10
  %376 = load ptr, ptr %375, align 8
  %377 = call noundef ptr %376(ptr noundef nonnull align 8 dereferenceable(32) %356, ptr noundef %373) #14
  %378 = add nuw i32 %365, 1
  %379 = load ptr, ptr %352, align 8, !tbaa !50
  %380 = getelementptr inbounds ptr, ptr %379, i64 5
  %381 = load ptr, ptr %380, align 8
  %382 = call noundef i32 %381(ptr noundef nonnull align 8 dereferenceable(32) %352) #14
  %383 = icmp ult i32 %378, %382
  br i1 %383, label %364, label %430, !llvm.loop !67

384:                                              ; preds = %3
  %385 = load ptr, ptr %0, align 8, !tbaa !50
  %386 = getelementptr inbounds ptr, ptr %385, i64 50
  %387 = load ptr, ptr %386, align 8
  %388 = tail call noundef ptr %387(ptr noundef nonnull align 8 dereferenceable(168) %0) #14
  br i1 %2, label %432, label %454

389:                                              ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %27) #15
  %390 = load ptr, ptr %1, align 8, !tbaa !50
  %391 = getelementptr inbounds ptr, ptr %390, i64 23
  %392 = load ptr, ptr %391, align 8
  call void %392(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %27, ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %393 = load ptr, ptr %0, align 8, !tbaa !50
  %394 = getelementptr inbounds ptr, ptr %393, i64 57
  %395 = load ptr, ptr %394, align 8
  %396 = invoke noundef ptr %395(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %27) #14
          to label %397 unwind label %412

397:                                              ; preds = %389
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %28) #15
  %398 = load ptr, ptr %1, align 8, !tbaa !50
  %399 = getelementptr inbounds ptr, ptr %398, i64 47
  %400 = load ptr, ptr %399, align 8
  call void %400(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %28, ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %401 = load ptr, ptr %396, align 8, !tbaa !50
  %402 = getelementptr inbounds ptr, ptr %401, i64 49
  %403 = load ptr, ptr %402, align 8
  invoke void %403(ptr noundef nonnull align 8 dereferenceable(56) %396, ptr noundef nonnull align 8 dereferenceable(8) %28) #14
          to label %404 unwind label %414

404:                                              ; preds = %397
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %29) #15
  %405 = load ptr, ptr %1, align 8, !tbaa !50
  %406 = getelementptr inbounds ptr, ptr %405, i64 48
  %407 = load ptr, ptr %406, align 8
  call void %407(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOMString") align 8 %29, ptr noundef nonnull align 8 dereferenceable(56) %1) #14
  %408 = load ptr, ptr %396, align 8, !tbaa !50
  %409 = getelementptr inbounds ptr, ptr %408, i64 50
  %410 = load ptr, ptr %409, align 8
  invoke void %410(ptr noundef nonnull align 8 dereferenceable(56) %396, ptr noundef nonnull align 8 dereferenceable(8) %29) #14
          to label %411 unwind label %416

411:                                              ; preds = %404
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #15
  br i1 %2, label %432, label %454

412:                                              ; preds = %389
  %413 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %27) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %27) #15
  br label %472

414:                                              ; preds = %397
  %415 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %28) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %28) #15
  br label %472

416:                                              ; preds = %404
  %417 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %29) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %29) #15
  br label %472

418:                                              ; preds = %3
  %419 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %30) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %30, i32 noundef 0) #14
          to label %420 unwind label %424

420:                                              ; preds = %418
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %419, i16 noundef signext 9, ptr noundef nonnull align 8 dereferenceable(8) %30) #14
          to label %423 unwind label %421

421:                                              ; preds = %420
  %422 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #15
  br label %428

423:                                              ; preds = %420
  invoke void @__cxa_throw(ptr nonnull %419, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %474 unwind label %426

424:                                              ; preds = %418
  %425 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #15
  br label %428

426:                                              ; preds = %423
  %427 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %30) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %30) #15
  br label %472

428:                                              ; preds = %421, %424
  %429 = phi { ptr, i32 } [ %425, %424 ], [ %422, %421 ]
  call void @__cxa_free_exception(ptr %419) #15
  br label %472

430:                                              ; preds = %364, %121, %358, %82, %348, %75
  %431 = phi ptr [ %76, %75 ], [ %301, %348 ], [ %76, %82 ], [ %301, %358 ], [ %76, %121 ], [ %301, %364 ]
  br i1 %2, label %432, label %454

432:                                              ; preds = %166, %187, %198, %209, %244, %268, %283, %384, %411, %430
  %433 = phi ptr [ %396, %411 ], [ %431, %430 ], [ %388, %384 ], [ %282, %283 ], [ %267, %268 ], [ %222, %244 ], [ %208, %209 ], [ %197, %198 ], [ %186, %187 ], [ %167, %166 ]
  %434 = load ptr, ptr %1, align 8, !tbaa !50
  %435 = getelementptr inbounds ptr, ptr %434, i64 20
  %436 = load ptr, ptr %435, align 8
  %437 = call noundef ptr %436(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %438 = icmp eq ptr %437, null
  br i1 %438, label %454, label %439

439:                                              ; preds = %432, %439
  %440 = phi ptr [ %452, %439 ], [ %437, %432 ]
  %441 = load ptr, ptr %0, align 8, !tbaa !50
  %442 = getelementptr inbounds ptr, ptr %441, i64 69
  %443 = load ptr, ptr %442, align 8
  %444 = call noundef ptr %443(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull %440, i1 noundef zeroext true) #14
  %445 = load ptr, ptr %433, align 8, !tbaa !50
  %446 = getelementptr inbounds ptr, ptr %445, i64 16
  %447 = load ptr, ptr %446, align 8
  %448 = call noundef ptr %447(ptr noundef nonnull align 8 dereferenceable(26) %433, ptr noundef %444) #14
  %449 = load ptr, ptr %440, align 8, !tbaa !50
  %450 = getelementptr inbounds ptr, ptr %449, i64 22
  %451 = load ptr, ptr %450, align 8
  %452 = call noundef ptr %451(ptr noundef nonnull align 8 dereferenceable(26) %440) #14
  %453 = icmp eq ptr %452, null
  br i1 %453, label %454, label %439, !llvm.loop !68

454:                                              ; preds = %439, %432, %178, %187, %198, %209, %244, %268, %283, %384, %411, %430
  %455 = phi ptr [ %396, %411 ], [ %431, %430 ], [ %388, %384 ], [ %282, %283 ], [ %267, %268 ], [ %222, %244 ], [ %208, %209 ], [ %197, %198 ], [ %186, %187 ], [ %167, %178 ], [ %433, %432 ], [ %433, %439 ]
  %456 = load ptr, ptr %455, align 8, !tbaa !50
  %457 = getelementptr inbounds ptr, ptr %456, i64 24
  %458 = load ptr, ptr %457, align 8
  %459 = call noundef signext i16 %458(ptr noundef nonnull align 8 dereferenceable(26) %455) #14
  %460 = icmp eq i16 %459, 5
  br i1 %460, label %467, label %461

461:                                              ; preds = %454
  %462 = load ptr, ptr %455, align 8, !tbaa !50
  %463 = getelementptr inbounds ptr, ptr %462, i64 24
  %464 = load ptr, ptr %463, align 8
  %465 = call noundef signext i16 %464(ptr noundef nonnull align 8 dereferenceable(26) %455) #14
  %466 = icmp eq i16 %465, 6
  br i1 %466, label %467, label %471

467:                                              ; preds = %461, %454
  %468 = load ptr, ptr %455, align 8, !tbaa !50
  %469 = getelementptr inbounds ptr, ptr %468, i64 35
  %470 = load ptr, ptr %469, align 8
  call void %470(ptr noundef nonnull align 8 dereferenceable(96) %455, i1 noundef zeroext true, i1 noundef zeroext true) #14
  store i8 %32, ptr %31, align 4, !tbaa !55
  br label %471

471:                                              ; preds = %467, %461
  ret ptr %455

472:                                              ; preds = %426, %412, %414, %416, %248, %250, %252, %254, %52, %54, %73, %114, %428, %326, %284, %273, %213, %199, %188, %176, %164, %145, %143
  %473 = phi { ptr, i32 } [ %429, %428 ], [ %427, %426 ], [ %327, %326 ], [ %285, %284 ], [ %274, %273 ], [ %214, %213 ], [ %200, %199 ], [ %189, %188 ], [ %177, %176 ], [ %146, %145 ], [ %165, %164 ], [ %144, %143 ], [ %115, %114 ], [ %55, %54 ], [ %74, %73 ], [ %53, %52 ], [ %255, %254 ], [ %253, %252 ], [ %251, %250 ], [ %249, %248 ], [ %417, %416 ], [ %415, %414 ], [ %413, %412 ]
  resume { ptr, i32 } %473

474:                                              ; preds = %423
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl15createElementNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  %6 = load i8, ptr %5, align 4, !tbaa !55, !range !56, !noundef !57
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %3
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  br i1 %9, label %22, label %10

10:                                               ; preds = %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #14
          to label %12 unwind label %16

12:                                               ; preds = %10
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %11, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
          to label %15 unwind label %13

13:                                               ; preds = %12
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %20

15:                                               ; preds = %12
  invoke void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %31 unwind label %18

16:                                               ; preds = %10
  %17 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %20

18:                                               ; preds = %15
  %19 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %29

20:                                               ; preds = %13, %16
  %21 = phi { ptr, i32 } [ %17, %16 ], [ %14, %13 ]
  call void @__cxa_free_exception(ptr %11) #15
  br label %29

22:                                               ; preds = %8, %3
  %23 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !49
  %25 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 120, ptr noundef %24) #14
  invoke void @_ZN11xercesc_2_713ElementNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(120) %25, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
          to label %26 unwind label %27

26:                                               ; preds = %22
  ret ptr %25

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %25, ptr noundef %24) #13
  br label %29

29:                                               ; preds = %18, %20, %27
  %30 = phi { ptr, i32 } [ %28, %27 ], [ %21, %20 ], [ %19, %18 ]
  resume { ptr, i32 } %30

31:                                               ; preds = %15
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl17createAttributeNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = alloca %"class.xercesc_2_7::DOMString", align 8
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %4, i32 noundef 0) #14
          to label %8 unwind label %12

8:                                                ; preds = %6
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %7, i16 noundef signext 5, ptr noundef nonnull align 8 dereferenceable(8) %4) #14
          to label %11 unwind label %9

9:                                                ; preds = %8
  %10 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %16

11:                                               ; preds = %8
  invoke void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %27 unwind label %14

12:                                               ; preds = %6
  %13 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %16

14:                                               ; preds = %11
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #15
  br label %25

16:                                               ; preds = %9, %12
  %17 = phi { ptr, i32 } [ %13, %12 ], [ %10, %9 ]
  call void @__cxa_free_exception(ptr %7) #15
  br label %25

18:                                               ; preds = %3
  %19 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !49
  %21 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %20) #14
  invoke void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64) %21, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
          to label %22 unwind label %23

22:                                               ; preds = %18
  ret ptr %21

23:                                               ; preds = %18
  %24 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %21, ptr noundef %20) #13
  br label %25

25:                                               ; preds = %14, %16, %23
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %17, %16 ], [ %15, %14 ]
  resume { ptr, i32 } %26

27:                                               ; preds = %11
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl22getElementsByTagNameNSERKNS_9DOMStringES3_(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  %5 = load ptr, ptr %4, align 8, !tbaa !49
  %6 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %5) #14
  invoke void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58) %6, ptr noundef nonnull %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %6

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %6, ptr noundef %5) #13
  resume { ptr, i32 } %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl14getElementByIdERKNS_9DOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !69
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZN11xercesc_2_79NodeIDMap4findERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = tail call noundef ptr @_ZN11xercesc_2_78AttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(48) %7) #14
  br label %11

11:                                               ; preds = %9, %6, %2
  %12 = phi ptr [ null, %2 ], [ %10, %9 ], [ null, %6 ]
  ret ptr %12
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline optsize uwtable
define internal fastcc void @__cxx_global_var_init() unnamed_addr #7 section ".text.startup" {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L10namCleanupE) #14
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull %0) #14
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %3 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %3, i8 0, i64 68, i1 false)
  store i8 1, ptr %4, align 4, !tbaa !55
  %5 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  store ptr %1, ptr %5, align 8, !tbaa !49
  %6 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %1) #14
          to label %7 unwind label %11

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %6, i32 noundef 257, ptr noundef %8) #14
          to label %9 unwind label %13

9:                                                ; preds = %7
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  store ptr %6, ptr %10, align 8, !tbaa !58
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24), i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplC2ERKNS_9DOMStringES3_PNS_16DocumentTypeImplEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  tail call void @_ZN11xercesc_2_710ParentNodeC2EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84) %0, ptr noundef nonnull %0) #14
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %8 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(68) %6, i8 0, i64 68, i1 false)
  store i8 1, ptr %8, align 4, !tbaa !55
  %9 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 11
  store ptr %4, ptr %9, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %3) #14
          to label %10 unwind label %26

10:                                               ; preds = %5
  %11 = load ptr, ptr %9, align 8, !tbaa !49
  %12 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 24, ptr noundef %11) #14
          to label %13 unwind label %26

13:                                               ; preds = %10
  %14 = load ptr, ptr %9, align 8, !tbaa !49
  invoke void @_ZN11xercesc_2_711DStringPoolC1EiPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(24) %12, i32 noundef 257, ptr noundef %14) #14
          to label %15 unwind label %28

15:                                               ; preds = %13
  store ptr %12, ptr %7, align 8, !tbaa !58
  %16 = load ptr, ptr %0, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 70
  %18 = load ptr, ptr %17, align 8
  %19 = invoke noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) #14
          to label %20 unwind label %26

20:                                               ; preds = %15
  %21 = load ptr, ptr %0, align 8, !tbaa !50
  %22 = getelementptr inbounds ptr, ptr %21, i64 16
  %23 = load ptr, ptr %22, align 8
  %24 = invoke noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef %19) #14
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl15setDocumentTypeEPNS_16DocumentTypeImplE(ptr noundef nonnull align 8 dereferenceable(168) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = alloca %"class.xercesc_2_7::DOMString", align 8
  %4 = icmp eq ptr %1, null
  br i1 %4, label %52, label %5

5:                                                ; preds = %2
  %6 = load ptr, ptr %1, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 26
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(84) %1) #14
  %10 = icmp eq ptr %9, null
  br i1 %10, label %23, label %11

11:                                               ; preds = %5
  %12 = tail call ptr @__cxa_allocate_exception(i64 24) #15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #15
  invoke void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8) %3, i32 noundef 0) #14
          to label %13 unwind label %17

13:                                               ; preds = %11
  invoke void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24) %12, i16 noundef signext 4, ptr noundef nonnull align 8 dereferenceable(8) %3) #14
          to label %16 unwind label %14

14:                                               ; preds = %13
  %15 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %21

16:                                               ; preds = %13
  invoke void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_716DOM_DOMExceptionE, ptr nonnull @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev) #16
          to label %55 unwind label %19

17:                                               ; preds = %11
  %18 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %21

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %3) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #15
  br label %53

21:                                               ; preds = %14, %17
  %22 = phi { ptr, i32 } [ %18, %17 ], [ %15, %14 ]
  call void @__cxa_free_exception(ptr %12) #15
  br label %53

23:                                               ; preds = %5
  %24 = load ptr, ptr %1, align 8, !tbaa !50
  %25 = getelementptr inbounds ptr, ptr %24, i64 45
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(145) %1, ptr noundef nonnull %0) #14
  %27 = load ptr, ptr %1, align 8, !tbaa !50
  %28 = getelementptr inbounds ptr, ptr %27, i64 50
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(145) %1) #14
  %31 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %30, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !70
  %33 = load ptr, ptr %32, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 45
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(26) %32, ptr noundef nonnull %0) #14
  %36 = load ptr, ptr %1, align 8, !tbaa !50
  %37 = getelementptr inbounds ptr, ptr %36, i64 52
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(145) %1) #14
  %40 = getelementptr inbounds %"class.xercesc_2_7::NamedNodeMapImpl", ptr %39, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !70
  %42 = load ptr, ptr %41, align 8, !tbaa !50
  %43 = getelementptr inbounds ptr, ptr %42, i64 45
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(26) %41, ptr noundef nonnull %0) #14
  %45 = load ptr, ptr %1, align 8, !tbaa !50
  %46 = getelementptr inbounds ptr, ptr %45, i64 2
  %47 = load ptr, ptr %46, align 8
  tail call void %47(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %48 = load ptr, ptr %0, align 8, !tbaa !50
  %49 = getelementptr inbounds ptr, ptr %48, i64 16
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(26) %0, ptr noundef nonnull %1) #14
  br label %52

52:                                               ; preds = %2, %23
  ret void

53:                                               ; preds = %19, %21
  %54 = phi { ptr, i32 } [ %20, %19 ], [ %22, %21 ]
  resume { ptr, i32 } %54

55:                                               ; preds = %16
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1Ei(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionC1EsRKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), i16 noundef signext, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_716DOM_DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #9

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImplD2Ev(ptr noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [76 x ptr] }, ptr @_ZTVN11xercesc_2_712DocumentImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !50
  %7 = getelementptr inbounds ptr, ptr %6, i64 1
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(40) %3) #13
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !73
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !50
  %15 = getelementptr inbounds ptr, ptr %14, i64 1
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(40) %11) #13
  br label %17

17:                                               ; preds = %13, %9
  %18 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %19, align 8, !tbaa !50
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(40) %19) #13
  store ptr null, ptr %18, align 8, !tbaa !61
  br label %25

25:                                               ; preds = %21, %17
  %26 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !63
  %28 = icmp eq ptr %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  tail call void @_ZN11xercesc_2_78NodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext false) #14
  %30 = load ptr, ptr %26, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %30) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %30) #13
  br label %33

33:                                               ; preds = %29, %32, %25
  %34 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !58
  %36 = icmp eq ptr %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_711DStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %35) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %35) #13
  br label %38

38:                                               ; preds = %37, %33
  %39 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !69
  %41 = icmp eq ptr %40, null
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load ptr, ptr %40, align 8, !tbaa !50
  %44 = getelementptr inbounds ptr, ptr %43, i64 1
  %45 = load ptr, ptr %44, align 8
  tail call void %45(ptr noundef nonnull align 8 dereferenceable(40) %40) #13
  br label %46

46:                                               ; preds = %42, %38
  tail call void @_ZN11xercesc_2_79ChildNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(84) %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78NodeImpl11hasUserDataEb(ptr noundef nonnull align 8 dereferenceable(26) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %4 = load i16, ptr %3, align 8, !tbaa !74
  %5 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8USERDATAE, align 2, !tbaa !75
  %6 = or i16 %5, %4
  %7 = xor i16 %5, -1
  %8 = and i16 %4, %7
  %9 = select i1 %1, i16 %6, i16 %8
  %10 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  store i16 %9, ptr %10, align 8, !tbaa !74
  ret void
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #10 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvED2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  invoke void @_ZN11xercesc_2_714RefHashTableOfIvE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DStringPoolD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  %2 = load ptr, ptr %0, align 8, !tbaa !76
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = load ptr, ptr %2, align 8, !tbaa !50
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4) #14
  store ptr null, ptr %3, align 8, !tbaa !78
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !79
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !50
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #13
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = tail call noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIvE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br i1 %2, label %45, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !80
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %12

10:                                               ; preds = %38, %3
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !81
  br label %45

12:                                               ; preds = %7, %38
  %13 = phi i32 [ %5, %7 ], [ %39, %38 ]
  %14 = phi i64 [ 0, %7 ], [ %42, %38 ]
  %15 = load ptr, ptr %8, align 8, !tbaa !78
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19

19:                                               ; preds = %12, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %12 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !82
  %23 = load i8, ptr %9, align 8, !tbaa !84, !range !56, !noundef !57
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !85
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef nonnull %26) #18
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !76
  %31 = load ptr, ptr %30, align 8, !tbaa !50
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20) #14
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !86

35:                                               ; preds = %29
  %36 = load ptr, ptr %8, align 8, !tbaa !78
  %37 = load i32, ptr %4, align 8, !tbaa !80
  br label %38

38:                                               ; preds = %35, %12
  %39 = phi i32 [ %37, %35 ], [ %13, %12 ]
  %40 = phi ptr [ %36, %35 ], [ %15, %12 ]
  %41 = getelementptr inbounds ptr, ptr %40, i64 %14
  store ptr null, ptr %41, align 8, !tbaa !52
  %42 = add nuw nsw i64 %14, 1
  %43 = zext i32 %39 to i64
  %44 = icmp ult i64 %42, %43
  br i1 %44, label %12, label %10, !llvm.loop !87

45:                                               ; preds = %1, %10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_714RefHashTableOfIvE7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !81
  %4 = icmp eq i32 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712DocumentImpl16setErrorCheckingEb(ptr noundef nonnull align 8 dereferenceable(168) %0, i1 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %0, i64 0, i32 10
  store i8 %3, ptr %4, align 4, !tbaa !55
  ret void
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getStaticStringEPKcPPNS_9DOMStringEPFvvERNS_18XMLRegisterCleanupE(ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712DocumentImpl18reinitDocumentImplEv() #0 align 2 !prof !35 {
  %1 = load ptr, ptr @_ZN11xercesc_2_7L3namE, align 8, !tbaa !52
  %2 = icmp eq ptr %1, null
  br i1 %2, label %4, label %3

3:                                                ; preds = %0
  tail call void @_ZN11xercesc_2_79DOMStringD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %1) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #13
  br label %4

4:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_7L3namE, align 8, !tbaa !52
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79DOMStringC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl9isXMLNameERKNS_9DOMStringE(ptr nocapture nonnull readnone align 8 %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %4 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef %3, i32 noundef %4) #14
  ret i1 %5
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78AttrImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716CDATASectionImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711CommentImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DocumentFragmentImplC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DocumentTypeImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(145), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711ElementImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN11xercesc_2_711DStringPool15getPooledStringEPKt(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710EntityImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_719EntityReferenceImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712NotationImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_725ProcessingInstructionImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78TextImplC1EPNS_12DocumentImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl18createNodeIteratorENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 64, ptr noundef %4) #14
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
          to label %9 unwind label %18

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_716NodeIteratorImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57) %8, ptr noundef nonnull %6, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #14
          to label %10 unwind label %20

10:                                               ; preds = %9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
          to label %12 unwind label %24

12:                                               ; preds = %10
  %13 = select i1 %11, ptr %0, ptr %7
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %14, i64 0, i32 5
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %32

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
  br label %35

24:                                               ; preds = %29, %26, %10
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %33

26:                                               ; preds = %12
  %27 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4) #14
          to label %28 unwind label %24

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef 1, i1 noundef zeroext false, ptr noundef %4) #14
          to label %29 unwind label %30

29:                                               ; preds = %28
  store ptr %27, ptr %15, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull %8) #14
          to label %32 unwind label %24

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %4) #13
  br label %33

32:                                               ; preds = %29, %12
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  ret ptr %8

33:                                               ; preds = %30, %24
  %34 = phi { ptr, i32 } [ %25, %24 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %35

35:                                               ; preds = %22, %33
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %23, %22 ]
  resume { ptr, i32 } %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716NodeIteratorImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(57), ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind writable sret(%"class.xercesc_2_7::DOM_Document") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !90
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !92
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !52
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !92
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !35 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !93
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !92
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !94
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !90
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !95
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !50
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !90
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !90
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !52
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !96
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !93, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !90
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(57) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !92
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !97

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = load ptr, ptr %30, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !92
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !93, !range !56, !noundef !57
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !90
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !50
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(57) %25) #13
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !90
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !92
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !92
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !93, !range !56, !noundef !57
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !90
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(57) %17) #13
  %23 = load ptr, ptr %7, align 8, !tbaa !90
  %24 = load i32, ptr %2, align 4, !tbaa !92
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !52
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !98
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !92
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !93, !range !56, !noundef !57
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !90
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(57) %22) #13
  %28 = load i32, ptr %3, align 4, !tbaa !92
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !90
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !90
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !90
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !52
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !99

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !52
  store i32 %31, ptr %3, align 4, !tbaa !92
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !92
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !92
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !93, !range !56, !noundef !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !90
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !50
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(57) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !93, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !92
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !90
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(57) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !92
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !100

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !90
  %33 = load ptr, ptr %30, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !101 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !92
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !94
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !95
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !92
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !52
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !90
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !52
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !105

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !95
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !90
  %49 = load ptr, ptr %46, align 8, !tbaa !50
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !90
  store i32 %12, ptr %6, align 8, !tbaa !94
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712DocumentImpl16createTreeWalkerENS_8DOM_NodeEmPNS_14DOM_NodeFilterEbPNS_13MemoryManagerE(ptr noundef %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3, ptr noundef %4) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %6 = alloca %"class.xercesc_2_7::DOM_Node", align 8
  %7 = alloca %"class.xercesc_2_7::DOM_Document", align 8
  %8 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %4) #14
  invoke void @_ZN11xercesc_2_78DOM_NodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
          to label %9 unwind label %18

9:                                                ; preds = %5
  invoke void @_ZN11xercesc_2_714TreeWalkerImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(49) %8, ptr noundef nonnull %6, i64 noundef %1, ptr noundef %2, i1 noundef zeroext %3) #14
          to label %10 unwind label %20

10:                                               ; preds = %9
  call void @_ZN11xercesc_2_78DOM_NodeD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #15
  call void @_ZNK11xercesc_2_78DOM_Node16getOwnerDocumentEv(ptr dead_on_unwind nonnull writable sret(%"class.xercesc_2_7::DOM_Document") align 8 %7, ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %11 = invoke noundef zeroext i1 @_ZNK11xercesc_2_78DOM_Node6isNullEv(ptr noundef nonnull align 8 dereferenceable(8) %7) #14
          to label %12 unwind label %24

12:                                               ; preds = %10
  %13 = select i1 %11, ptr %0, ptr %7
  %14 = load ptr, ptr %13, align 8, !tbaa !88
  %15 = getelementptr inbounds %"class.xercesc_2_7::DocumentImpl", ptr %14, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !73
  %17 = icmp eq ptr %16, null
  br i1 %17, label %26, label %32

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
  br label %35

24:                                               ; preds = %29, %26, %10
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %33

26:                                               ; preds = %12
  %27 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %4) #14
          to label %28 unwind label %24

28:                                               ; preds = %26
  invoke void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %27, i32 noundef 1, i1 noundef zeroext false, ptr noundef %4) #14
          to label %29 unwind label %30

29:                                               ; preds = %28
  store ptr %27, ptr %15, align 8, !tbaa !73
  invoke void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %27, ptr noundef nonnull %8) #14
          to label %32 unwind label %24

30:                                               ; preds = %28
  %31 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %4) #13
  br label %33

32:                                               ; preds = %29, %12
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  ret ptr %8

33:                                               ; preds = %30, %24
  %34 = phi { ptr, i32 } [ %25, %24 ], [ %31, %30 ]
  call void @_ZN11xercesc_2_712DOM_DocumentD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %7) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #15
  br label %35

35:                                               ; preds = %22, %33
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %23, %22 ]
  resume { ptr, i32 } %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_714TreeWalkerImplC1ENS_8DOM_NodeEmPNS_14DOM_NodeFilterEb(ptr noundef nonnull align 8 dereferenceable(49), ptr noundef, i64 noundef, ptr noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !108
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !52
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !35 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !109
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !108
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !110
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !106
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !111
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !50
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !106
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !106
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !52
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !112
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !109, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !106
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(49) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !108
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !113

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = load ptr, ptr %30, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !108
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !109, !range !56, !noundef !57
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !106
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !50
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(49) %25) #13
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !106
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !108
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !109, !range !56, !noundef !57
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !106
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(49) %17) #13
  %23 = load ptr, ptr %7, align 8, !tbaa !106
  %24 = load i32, ptr %2, align 4, !tbaa !108
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !52
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !114
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !109, !range !56, !noundef !57
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !106
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(49) %22) #13
  %28 = load i32, ptr %3, align 4, !tbaa !108
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !106
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !106
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !106
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !52
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !115

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !52
  store i32 %31, ptr %3, align 4, !tbaa !108
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !108
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !108
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !109, !range !56, !noundef !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !50
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(49) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !109, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !108
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !106
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(49) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !108
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !116

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !111
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !106
  %33 = load ptr, ptr %30, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !108
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !110
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !111
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !108
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !52
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !106
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !52
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !117

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !111
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.1", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !106
  %49 = load ptr, ptr %46, align 8, !tbaa !50
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !106
  store i32 %12, ptr %6, align 8, !tbaa !110
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode12insertBeforeEPNS_8NodeImplES2_(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_011isValidNameEPKtj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710ParentNode11removeChildEPNS_8NodeImplE(ptr noundef nonnull align 8 dereferenceable(84), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_78NodeImpl8deleteIfEPS0_(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_79DOMStringeqEPKNS_11DOM_NullPtrE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl14hasStringValueEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !74
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl9HASSTRINGE, align 2, !tbaa !75
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713ElementNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_710AttrNSImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716DeepNodeListImplC1EPNS_8NodeImplERKNS_9DOMStringES5_(ptr noundef nonnull align 8 dereferenceable(58), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79NodeIDMap4findERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_78AttrImpl15getOwnerElementEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712DocumentImpl20indexofQualifiedNameERKNS_9DOMStringE(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #2 align 2 !prof !35 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_79DOMString9rawBufferEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79DOMString6lengthEv(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  %4 = icmp sgt i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %19, %1
  %6 = phi i32 [ -1, %1 ], [ %28, %19 ]
  %7 = phi i32 [ 0, %1 ], [ %30, %19 ]
  %8 = icmp eq i32 %3, 0
  %9 = icmp sgt i32 %7, 1
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
  %20 = phi i32 [ %31, %19 ], [ 0, %1 ]
  %21 = phi i32 [ %30, %19 ], [ 0, %1 ]
  %22 = phi i32 [ %28, %19 ], [ -1, %1 ]
  %23 = phi ptr [ %24, %19 ], [ %2, %1 ]
  %24 = getelementptr inbounds i16, ptr %23, i64 1
  %25 = load i16, ptr %23, align 2, !tbaa !75
  %26 = freeze i16 %25
  %27 = icmp eq i16 %26, 58
  %28 = select i1 %27, i32 %20, i32 %22
  %29 = zext i1 %27 to i32
  %30 = add i32 %21, %29
  %31 = add nuw nsw i32 %20, 1
  %32 = icmp eq i32 %31, %3
  br i1 %32, label %5, label %19, !llvm.loop !118
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711XMLDeclImplC1EPNS_12DocumentImplERKNS_9DOMStringES5_S5_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOM_DocumentC1EPNS_12DocumentImplE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79RangeImplC1ENS_12DOM_DocumentE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE10addElementEPS1_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !119
  %5 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !121
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds ptr, ptr %4, i64 %7
  store ptr %1, ptr %8, align 8, !tbaa !52
  %9 = add i32 %6, 1
  store i32 %9, ptr %5, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEC2EjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3) unnamed_addr #2 comdat align 2 !prof !35 {
  %5 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  store i8 %5, ptr %6, align 8, !tbaa !122
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  store i32 0, ptr %7, align 4, !tbaa !121
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  store i32 %1, ptr %8, align 8, !tbaa !123
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  store ptr null, ptr %9, align 8, !tbaa !119
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  store ptr %3, ptr %10, align 8, !tbaa !124
  %11 = zext i32 %1 to i64
  %12 = shl nuw nsw i64 %11, 3
  %13 = load ptr, ptr %3, align 8, !tbaa !50
  %14 = getelementptr inbounds ptr, ptr %13, i64 2
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %12) #14
  store ptr %16, ptr %9, align 8, !tbaa !119
  %17 = icmp eq i32 %1, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %19, %4
  ret void

19:                                               ; preds = %4, %19
  %20 = phi i64 [ %23, %19 ], [ 0, %4 ]
  %21 = load ptr, ptr %9, align 8, !tbaa !119
  %22 = getelementptr inbounds ptr, ptr %21, i64 %20
  store ptr null, ptr %22, align 8, !tbaa !52
  %23 = add nuw nsw i64 %20, 1
  %24 = icmp eq i64 %23, %11
  br i1 %24, label %18, label %19, !llvm.loop !125
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_9RangeImplEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !122, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !119
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !121
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !126

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !119
  %33 = load ptr, ptr %30, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  invoke void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
          to label %36 unwind label %37

36:                                               ; preds = %28
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  ret void

37:                                               ; preds = %28
  %38 = landingpad { ptr, i32 }
          catch ptr null
  %39 = extractvalue { ptr, i32 } %38, 0
  tail call void @__clang_call_terminate(ptr %39) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.1, i32 noundef 67, i32 noundef 116, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !122, !range !56, !noundef !57
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = zext i32 %2 to i64
  br label %31

20:                                               ; preds = %14
  %21 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !119
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds ptr, ptr %22, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !52
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load ptr, ptr %25, align 8, !tbaa !50
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(72) %25) #13
  br label %31

31:                                               ; preds = %18, %20, %27
  %32 = phi i64 [ %19, %18 ], [ %23, %20 ], [ %23, %27 ]
  %33 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !119
  %35 = getelementptr inbounds ptr, ptr %34, i64 %32
  store ptr %1, ptr %35, align 8, !tbaa !52
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !121
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %9

8:                                                ; preds = %25, %1
  store i32 0, ptr %2, align 4, !tbaa !121
  ret void

9:                                                ; preds = %5, %25
  %10 = phi i32 [ %3, %5 ], [ %26, %25 ]
  %11 = phi i64 [ 0, %5 ], [ %29, %25 ]
  %12 = load i8, ptr %6, align 8, !tbaa !122, !range !56, !noundef !57
  %13 = icmp eq i8 %12, 0
  %14 = load ptr, ptr %7, align 8, !tbaa !119
  br i1 %13, label %25, label %15

15:                                               ; preds = %9
  %16 = getelementptr inbounds ptr, ptr %14, i64 %11
  %17 = load ptr, ptr %16, align 8, !tbaa !52
  %18 = icmp eq ptr %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !50
  %21 = getelementptr inbounds ptr, ptr %20, i64 1
  %22 = load ptr, ptr %21, align 8
  tail call void %22(ptr noundef nonnull align 8 dereferenceable(72) %17) #13
  %23 = load ptr, ptr %7, align 8, !tbaa !119
  %24 = load i32, ptr %2, align 4, !tbaa !121
  br label %25

25:                                               ; preds = %15, %19, %9
  %26 = phi i32 [ %10, %15 ], [ %24, %19 ], [ %10, %9 ]
  %27 = phi ptr [ %14, %15 ], [ %23, %19 ], [ %14, %9 ]
  %28 = getelementptr inbounds ptr, ptr %27, i64 %11
  store ptr null, ptr %28, align 8, !tbaa !52
  %29 = add nuw nsw i64 %11, 1
  %30 = zext i32 %26 to i64
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %9, label %8, !llvm.loop !127
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 144, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !122, !range !56, !noundef !57
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %29, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !119
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !52
  %23 = icmp eq ptr %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !50
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(72) %22) #13
  %28 = load i32, ptr %3, align 4, !tbaa !121
  br label %29

29:                                               ; preds = %17, %24, %13
  %30 = phi i32 [ %4, %17 ], [ %28, %24 ], [ %4, %13 ]
  %31 = add i32 %30, -1
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %41, label %33

33:                                               ; preds = %29
  %34 = icmp ugt i32 %31, %1
  br i1 %34, label %37, label %35

35:                                               ; preds = %33
  %36 = zext i32 %31 to i64
  br label %46

37:                                               ; preds = %33
  %38 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %39 = zext i32 %1 to i64
  %40 = zext i32 %31 to i64
  br label %51

41:                                               ; preds = %29
  %42 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !119
  %44 = zext i32 %1 to i64
  %45 = getelementptr inbounds ptr, ptr %43, i64 %44
  br label %59

46:                                               ; preds = %51, %35
  %47 = phi i64 [ %36, %35 ], [ %40, %51 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !119
  %50 = getelementptr inbounds ptr, ptr %49, i64 %47
  br label %59

51:                                               ; preds = %37, %51
  %52 = phi i64 [ %39, %37 ], [ %54, %51 ]
  %53 = load ptr, ptr %38, align 8, !tbaa !119
  %54 = add nuw nsw i64 %52, 1
  %55 = getelementptr inbounds ptr, ptr %53, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !52
  %57 = getelementptr inbounds ptr, ptr %53, i64 %52
  store ptr %56, ptr %57, align 8, !tbaa !52
  %58 = icmp eq i64 %54, %40
  br i1 %58, label %46, label %51, !llvm.loop !128

59:                                               ; preds = %46, %41
  %60 = phi ptr [ %50, %46 ], [ %45, %41 ]
  store ptr null, ptr %60, align 8, !tbaa !52
  store i32 %31, ptr %3, align 4, !tbaa !121
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !121
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !121
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !122, !range !56, !noundef !57
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !119
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !50
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(72) %15) #13
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !122, !range !56, !noundef !57
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %28, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %23
  %12 = phi i32 [ %7, %9 ], [ %24, %23 ]
  %13 = phi i64 [ 0, %9 ], [ %25, %23 ]
  %14 = load ptr, ptr %10, align 8, !tbaa !119
  %15 = getelementptr inbounds ptr, ptr %14, i64 %13
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %23, label %18

18:                                               ; preds = %11
  %19 = load ptr, ptr %16, align 8, !tbaa !50
  %20 = getelementptr inbounds ptr, ptr %19, i64 1
  %21 = load ptr, ptr %20, align 8
  tail call void %21(ptr noundef nonnull align 8 dereferenceable(72) %16) #13
  %22 = load i32, ptr %6, align 4, !tbaa !121
  br label %23

23:                                               ; preds = %11, %18
  %24 = phi i32 [ %12, %11 ], [ %22, %18 ]
  %25 = add nuw nsw i64 %13, 1
  %26 = zext i32 %24 to i64
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %11, label %28, !llvm.loop !129

28:                                               ; preds = %23, %5, %1
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %30 = load ptr, ptr %29, align 8, !tbaa !124
  %31 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !119
  %33 = load ptr, ptr %30, align 8, !tbaa !50
  %34 = getelementptr inbounds ptr, ptr %33, i64 3
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %32) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !123
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %52

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !124
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !50
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16) #14
  %21 = load i32, ptr %3, align 4, !tbaa !121
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %25 = zext i32 %21 to i64
  br label %37

26:                                               ; preds = %37, %9
  %27 = icmp ult i32 %21, %12
  br i1 %27, label %28, label %45

28:                                               ; preds = %26
  %29 = zext i32 %21 to i64
  %30 = shl nuw nsw i64 %29, 3
  %31 = getelementptr i8, ptr %20, i64 %30
  %32 = xor i32 %21, -1
  %33 = add i32 %12, %32
  %34 = zext i32 %33 to i64
  %35 = shl nuw nsw i64 %34, 3
  %36 = add nuw nsw i64 %35, 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %31, i8 0, i64 %36, i1 false), !tbaa !52
  br label %45

37:                                               ; preds = %23, %37
  %38 = phi i64 [ 0, %23 ], [ %43, %37 ]
  %39 = load ptr, ptr %24, align 8, !tbaa !119
  %40 = getelementptr inbounds ptr, ptr %39, i64 %38
  %41 = load ptr, ptr %40, align 8, !tbaa !52
  %42 = getelementptr inbounds ptr, ptr %20, i64 %38
  store ptr %41, ptr %42, align 8, !tbaa !52
  %43 = add nuw nsw i64 %38, 1
  %44 = icmp eq i64 %43, %25
  br i1 %44, label %26, label %37, !llvm.loop !130

45:                                               ; preds = %28, %26
  %46 = load ptr, ptr %13, align 8, !tbaa !124
  %47 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !119
  %49 = load ptr, ptr %46, align 8, !tbaa !50
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #14
  store ptr %20, ptr %47, align 8, !tbaa !119
  store i32 %12, ptr %6, align 8, !tbaa !123
  br label %52

52:                                               ; preds = %2, %45
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !121
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !121
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !124
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.1, i32 noundef 249, i32 noundef 116, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf.3", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !119
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !52
  ret ptr %18
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !35 {
  %3 = load i32, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 9), align 4, !tbaa !131
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %2
  store i32 9602, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 9), align 4, !tbaa !131
  store i32 8634, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 11), align 4, !tbaa !131
  store i32 0, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 12), align 16, !tbaa !131
  store <4 x i32> <i32 8634, i32 40, i32 0, i32 0>, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 1), align 4, !tbaa !131
  store <4 x i32> <i32 8634, i32 8634, i32 0, i32 0>, ptr getelementptr inbounds ([14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 5), align 4, !tbaa !131
  br label %6

6:                                                ; preds = %5, %2
  %7 = load ptr, ptr %0, align 8, !tbaa !50
  %8 = getelementptr inbounds ptr, ptr %7, i64 24
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef signext i16 %9(ptr noundef nonnull align 8 dereferenceable(26) %0) #14
  %11 = load ptr, ptr %1, align 8, !tbaa !50
  %12 = getelementptr inbounds ptr, ptr %11, i64 24
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef signext i16 %13(ptr noundef nonnull align 8 dereferenceable(26) %1) #14
  %15 = sext i16 %10 to i64
  %16 = getelementptr inbounds [14 x i32], ptr @_ZZN11xercesc_2_712DocumentImpl7isKidOKEPNS_8NodeImplES2_E5kidOK, i64 0, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !131
  %18 = zext nneg i16 %14 to i32
  %19 = shl nuw i32 1, %18
  %20 = and i32 %19, %17
  %21 = icmp ne i32 %20, 0
  ret i1 %21
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_77HashPtrC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvEC2EjbPNS_8HashBaseEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, i1 noundef zeroext %2, ptr noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 !prof !35 {
  %6 = zext i1 %2 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %4, ptr %0, align 8, !tbaa !76
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !84
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !78
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %9, align 8, !tbaa !80
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %10, align 4, !tbaa !132
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %11, align 8, !tbaa !81
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !79
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) #14
  store ptr %3, ptr %12, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE9removeKeyEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !79
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = load ptr, ptr %0, align 8, !tbaa !76
  %8 = load ptr, ptr %4, align 8, !tbaa !50
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7) #14
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !78
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !52
  %16 = icmp eq ptr %15, null
  br i1 %16, label %63, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %3, align 8, !tbaa !79
  %19 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !133
  %21 = load ptr, ptr %18, align 8, !tbaa !50
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef zeroext i1 %23(ptr noundef nonnull align 8 dereferenceable(8) %18, ptr noundef %1, ptr noundef %20) #14
  br i1 %24, label %33, label %58

25:                                               ; preds = %58
  %26 = load ptr, ptr %3, align 8, !tbaa !79
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %61, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !133
  %29 = load ptr, ptr %26, align 8, !tbaa !50
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef zeroext i1 %31(ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef %1, ptr noundef %28) #14
  br i1 %32, label %33, label %58, !llvm.loop !134

33:                                               ; preds = %25, %17
  %34 = phi ptr [ %15, %17 ], [ %61, %25 ]
  %35 = phi ptr [ null, %17 ], [ %59, %25 ]
  %36 = icmp eq ptr %35, null
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %34, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !82
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %40 = load ptr, ptr %11, align 8
  %41 = getelementptr inbounds ptr, ptr %40, i64 %13
  %42 = select i1 %36, ptr %41, ptr %39
  store ptr %38, ptr %42, align 8, !tbaa !52
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !84, !range !56, !noundef !57
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %33
  %47 = load ptr, ptr %34, align 8, !tbaa !85
  %48 = icmp eq ptr %47, null
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void @_ZdlPv(ptr noundef nonnull %47) #18
  br label %50

50:                                               ; preds = %46, %49, %33
  %51 = load ptr, ptr %0, align 8, !tbaa !76
  %52 = load ptr, ptr %51, align 8, !tbaa !50
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %51, ptr noundef nonnull %34) #14
  %55 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !81
  %57 = add i32 %56, -1
  store i32 %57, ptr %55, align 8, !tbaa !81
  ret void

58:                                               ; preds = %17, %25
  %59 = phi ptr [ %61, %25 ], [ %15, %17 ]
  %60 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !52
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %25, !llvm.loop !134

63:                                               ; preds = %58, %2
  %64 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %65 = load ptr, ptr %0, align 8, !tbaa !76
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %64, ptr noundef nonnull @.str.2, i32 noundef 185, i32 noundef 50, ptr noundef %65) #14
          to label %66 unwind label %67

66:                                               ; preds = %63
  tail call void @__cxa_throw(ptr nonnull %64, ptr nonnull @_ZTIN11xercesc_2_722NoSuchElementExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

67:                                               ; preds = %63
  %68 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %64) #15
  resume { ptr, i32 } %68
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE3putEPvS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !80
  %7 = mul i32 %6, 3
  %8 = lshr i32 %7, 2
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %10 = load i32, ptr %9, align 8, !tbaa !81
  %11 = icmp ult i32 %10, %8
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfIvE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  br label %13

13:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %14 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIvE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %26, label %16

16:                                               ; preds = %13
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %18 = load i8, ptr %17, align 8, !tbaa !84, !range !56, !noundef !57
  %19 = icmp eq i8 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load ptr, ptr %14, align 8, !tbaa !85
  %22 = icmp eq ptr %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %20
  call void @_ZdlPv(ptr noundef nonnull %21) #18
  br label %24

24:                                               ; preds = %20, %23, %16
  store ptr %2, ptr %14, align 8, !tbaa !85
  %25 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %14, i64 0, i32 2
  store ptr %1, ptr %25, align 8, !tbaa !133
  br label %44

26:                                               ; preds = %13
  %27 = load ptr, ptr %0, align 8, !tbaa !76
  %28 = load ptr, ptr %27, align 8, !tbaa !50
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %27, i64 noundef 24) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !78
  %34 = load i32, ptr %4, align 4, !tbaa !131
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds ptr, ptr %33, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !52
  call void @_ZN11xercesc_2_722RefHashTableBucketElemIvEC2EPvS2_PS1_(ptr noundef nonnull align 8 dereferenceable(24) %31, ptr noundef %1, ptr noundef %2, ptr noundef %37) #14
  %38 = load ptr, ptr %32, align 8, !tbaa !78
  %39 = load i32, ptr %4, align 4, !tbaa !131
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds ptr, ptr %38, i64 %40
  store ptr %31, ptr %41, align 8, !tbaa !52
  %42 = load i32, ptr %9, align 8, !tbaa !81
  %43 = add i32 %42, 1
  store i32 %43, ptr %9, align 8, !tbaa !81
  br label %44

44:                                               ; preds = %26, %24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str.2, i32 noundef 99, i32 noundef 48, ptr noundef %6) #14
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #15
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !76
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !80
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !50
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !78
  %21 = load i32, ptr %12, align 8, !tbaa !80
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !78
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !52
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !llvm.loop !135
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #14
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgNoSuchElementException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722NoSuchElementException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !102
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722NoSuchElementExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722NoSuchElementExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !50
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIvE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !80
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !76
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !50
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %13 = load ptr, ptr %0, align 8, !tbaa !76
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %12, ptr noundef %13) #14
  call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %14 = load i32, ptr %3, align 8, !tbaa !80
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %27

19:                                               ; preds = %54, %1
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !78
  %22 = call noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #14
  store ptr %22, ptr %20, align 8, !tbaa !78
  store i32 %5, ptr %3, align 8, !tbaa !80
  %23 = load ptr, ptr %0, align 8, !tbaa !76
  %24 = load ptr, ptr %23, align 8, !tbaa !50
  %25 = getelementptr inbounds ptr, ptr %24, i64 3
  %26 = load ptr, ptr %25, align 8
  invoke void %26(ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef %21) #14
          to label %59 unwind label %60

27:                                               ; preds = %16, %54
  %28 = phi i32 [ %14, %16 ], [ %55, %54 ]
  %29 = phi i64 [ 0, %16 ], [ %56, %54 ]
  %30 = load ptr, ptr %17, align 8, !tbaa !78
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !52
  %33 = icmp eq ptr %32, null
  br i1 %33, label %54, label %34

34:                                               ; preds = %27, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %27 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !82
  %38 = load ptr, ptr %18, align 8, !tbaa !79
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !133
  %41 = load ptr, ptr %0, align 8, !tbaa !76
  %42 = load ptr, ptr %38, align 8, !tbaa !50
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41) #14
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !52
  store ptr %48, ptr %36, align 8, !tbaa !82
  store ptr %35, ptr %47, align 8, !tbaa !52
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !136

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %62

52:                                               ; preds = %45
  %53 = load i32, ptr %3, align 8, !tbaa !80
  br label %54

54:                                               ; preds = %52, %27
  %55 = phi i32 [ %53, %52 ], [ %28, %27 ]
  %56 = add nuw nsw i64 %29, 1
  %57 = zext i32 %55 to i64
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %27, label %19, !llvm.loop !137

59:                                               ; preds = %19
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  ret void

60:                                               ; preds = %19
  %61 = landingpad { ptr, i32 }
          cleanup
  br label %62

62:                                               ; preds = %60, %50
  %63 = phi { ptr, i32 } [ %51, %50 ], [ %61, %60 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIvE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !79
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !80
  %8 = load ptr, ptr %0, align 8, !tbaa !76
  %9 = load ptr, ptr %5, align 8, !tbaa !50
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef i32 %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %7, ptr noundef %8) #14
  store i32 %11, ptr %2, align 4, !tbaa !131
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !78
  %14 = zext i32 %11 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !52
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %3, %27
  %19 = phi ptr [ %29, %27 ], [ %16, %3 ]
  %20 = load ptr, ptr %4, align 8, !tbaa !79
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !133
  %23 = load ptr, ptr %20, align 8, !tbaa !50
  %24 = getelementptr inbounds ptr, ptr %23, i64 1
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef zeroext i1 %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %1, ptr noundef %22) #14
  br i1 %26, label %31, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %19, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !52
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !138

31:                                               ; preds = %18, %27, %3
  %32 = phi ptr [ null, %3 ], [ null, %27 ], [ %19, %18 ]
  ret ptr %32
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722RefHashTableBucketElemIvEC2EPvS2_PS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !35 {
  store ptr %2, ptr %0, align 8, !tbaa !85
  %5 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 1
  store ptr %3, ptr %5, align 8, !tbaa !82
  %6 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !133
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEEC2EPS3_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !139
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !141
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = load ptr, ptr %0, align 8, !tbaa !139
  store ptr null, ptr %0, align 8, !tbaa !139
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !35 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEE5resetEPS3_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %3 = load ptr, ptr %0, align 8, !tbaa !139
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !141
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !50
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !139
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !141
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfIvE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !35 {
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %4 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfIvE14findBucketElemEPKvRj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !85
  br label %8

8:                                                ; preds = %2, %6
  %9 = phi ptr [ %7, %6 ], [ null, %2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret ptr %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_78NodeImpl11hasUserDataEv(ptr noundef nonnull align 8 dereferenceable(26) %0) local_unnamed_addr #0 comdat align 2 !prof !35 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::NodeImpl", ptr %0, i64 0, i32 3
  %3 = load i16, ptr %2, align 8, !tbaa !74
  %4 = load i16, ptr @_ZN11xercesc_2_78NodeImpl8USERDATAE, align 2, !tbaa !75
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: noinline optsize uwtable
define internal void @_GLOBAL__sub_I_DocumentImpl.cpp() #7 section ".text.startup" {
  tail call fastcc void @__cxx_global_var_init()
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind optsize }

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
!36 = !{!37, !43, i64 152}
!37 = !{!"_ZTSN11xercesc_2_712DocumentImplE", !38, i64 0, !46, i64 88, !46, i64 96, !46, i64 104, !46, i64 112, !46, i64 120, !46, i64 128, !46, i64 136, !46, i64 144, !43, i64 152, !48, i64 156, !46, i64 160}
!38 = !{!"_ZTSN11xercesc_2_710ParentNodeE", !39, i64 0, !46, i64 48, !46, i64 56, !43, i64 64, !46, i64 72, !43, i64 80}
!39 = !{!"_ZTSN11xercesc_2_79ChildNodeE", !40, i64 0, !46, i64 32, !46, i64 40}
!40 = !{!"_ZTSN11xercesc_2_78NodeImplE", !41, i64 0, !46, i64 16, !47, i64 24}
!41 = !{!"_ZTSN11xercesc_2_712NodeListImplE", !42, i64 0}
!42 = !{!"_ZTSN11xercesc_2_714RefCountedImplE", !43, i64 8}
!43 = !{!"int", !44, i64 0}
!44 = !{!"omnipotent char", !45, i64 0}
!45 = !{!"Simple C++ TBAA"}
!46 = !{!"any pointer", !44, i64 0}
!47 = !{!"short", !44, i64 0}
!48 = !{!"bool", !44, i64 0}
!49 = !{!37, !46, i64 160}
!50 = !{!51, !51, i64 0}
!51 = !{!"vtable pointer", !45, i64 0}
!52 = !{!46, !46, i64 0}
!53 = distinct !{!53, !54}
!54 = !{!"llvm.loop.mustprogress"}
!55 = !{!37, !48, i64 156}
!56 = !{i8 0, i8 2}
!57 = !{}
!58 = !{!37, !46, i64 104}
!59 = !{!37, !46, i64 88}
!60 = !{!37, !46, i64 96}
!61 = !{!37, !46, i64 144}
!62 = distinct !{!62, !54}
!63 = !{!37, !46, i64 136}
!64 = !{!42, !43, i64 8}
!65 = distinct !{!65, !54}
!66 = distinct !{!66, !54}
!67 = distinct !{!67, !54}
!68 = distinct !{!68, !54}
!69 = !{!37, !46, i64 112}
!70 = !{!71, !46, i64 16}
!71 = !{!"_ZTSN11xercesc_2_716NamedNodeMapImplE", !46, i64 8, !46, i64 16, !48, i64 24, !43, i64 28}
!72 = !{!37, !46, i64 120}
!73 = !{!37, !46, i64 128}
!74 = !{!40, !47, i64 24}
!75 = !{!47, !47, i64 0}
!76 = !{!77, !46, i64 0}
!77 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIvEE", !46, i64 0, !48, i64 8, !46, i64 16, !43, i64 24, !43, i64 28, !43, i64 32, !46, i64 40}
!78 = !{!77, !46, i64 16}
!79 = !{!77, !46, i64 40}
!80 = !{!77, !43, i64 24}
!81 = !{!77, !43, i64 32}
!82 = !{!83, !46, i64 8}
!83 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIvEE", !46, i64 0, !46, i64 8, !46, i64 16}
!84 = !{!77, !48, i64 8}
!85 = !{!83, !46, i64 0}
!86 = distinct !{!86, !54}
!87 = distinct !{!87, !54}
!88 = !{!89, !46, i64 0}
!89 = !{!"_ZTSN11xercesc_2_78DOM_NodeE", !46, i64 0}
!90 = !{!91, !46, i64 24}
!91 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_16NodeIteratorImplEEE", !48, i64 8, !43, i64 12, !43, i64 16, !46, i64 24, !46, i64 32}
!92 = !{!91, !43, i64 12}
!93 = !{!91, !48, i64 8}
!94 = !{!91, !43, i64 16}
!95 = !{!91, !46, i64 32}
!96 = distinct !{!96, !54}
!97 = distinct !{!97, !54}
!98 = distinct !{!98, !54}
!99 = distinct !{!99, !54}
!100 = distinct !{!100, !54}
!101 = !{!"function_entry_count", i64 5836268}
!102 = !{!103, !46, i64 40}
!103 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !104, i64 8, !46, i64 16, !43, i64 24, !46, i64 32, !46, i64 40}
!104 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !44, i64 0}
!105 = distinct !{!105, !54}
!106 = !{!107, !46, i64 24}
!107 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_14TreeWalkerImplEEE", !48, i64 8, !43, i64 12, !43, i64 16, !46, i64 24, !46, i64 32}
!108 = !{!107, !43, i64 12}
!109 = !{!107, !48, i64 8}
!110 = !{!107, !43, i64 16}
!111 = !{!107, !46, i64 32}
!112 = distinct !{!112, !54}
!113 = distinct !{!113, !54}
!114 = distinct !{!114, !54}
!115 = distinct !{!115, !54}
!116 = distinct !{!116, !54}
!117 = distinct !{!117, !54}
!118 = distinct !{!118, !54}
!119 = !{!120, !46, i64 24}
!120 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_9RangeImplEEE", !48, i64 8, !43, i64 12, !43, i64 16, !46, i64 24, !46, i64 32}
!121 = !{!120, !43, i64 12}
!122 = !{!120, !48, i64 8}
!123 = !{!120, !43, i64 16}
!124 = !{!120, !46, i64 32}
!125 = distinct !{!125, !54}
!126 = distinct !{!126, !54}
!127 = distinct !{!127, !54}
!128 = distinct !{!128, !54}
!129 = distinct !{!129, !54}
!130 = distinct !{!130, !54}
!131 = !{!43, !43, i64 0}
!132 = !{!77, !43, i64 28}
!133 = !{!83, !46, i64 16}
!134 = distinct !{!134, !54}
!135 = distinct !{!135, !54}
!136 = distinct !{!136, !54}
!137 = distinct !{!137, !54}
!138 = distinct !{!138, !54}
!139 = !{!140, !46, i64 0}
!140 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemIvEEEE", !46, i64 0, !46, i64 8}
!141 = !{!140, !46, i64 8}
