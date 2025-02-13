; ModuleID = 'DOMCDATASectionImpl.cpp'
source_filename = "DOMCDATASectionImpl.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::DOMCDATASectionImpl" = type { %"class.xercesc_2_7::DOMCDATASection", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMCDATASection" = type { %"class.xercesc_2_7::DOMText" }
%"class.xercesc_2_7::DOMText" = type { %"class.xercesc_2_7::DOMCharacterData" }
%"class.xercesc_2_7::DOMCharacterData" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMNode" = type { ptr }
%"class.xercesc_2_7::DOMNodeImpl" = type <{ ptr, i16, [6 x i8] }>
%"class.xercesc_2_7::DOMParentNode" = type { ptr, ptr, %"class.xercesc_2_7::DOMNodeListImpl" }
%"class.xercesc_2_7::DOMNodeListImpl" = type { %"class.xercesc_2_7::DOMNodeList", ptr }
%"class.xercesc_2_7::DOMNodeList" = type { ptr }
%"class.xercesc_2_7::DOMChildNode" = type { ptr, ptr }
%"class.xercesc_2_7::DOMCharacterDataImpl" = type { ptr, ptr }
%"class.xercesc_2_7::DOMElementImpl" = type { %"class.xercesc_2_7::DOMElement", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", %"class.xercesc_2_7::DOMChildNode", ptr, ptr, ptr }
%"class.xercesc_2_7::DOMElement" = type { %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMTextImpl" = type { %"class.xercesc_2_7::DOMText", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMChildNode", %"class.xercesc_2_7::DOMCharacterDataImpl" }
%"class.xercesc_2_7::DOMDocumentImpl" = type <{ %"class.xercesc_2_7::DOMDocument", %"class.xercesc_2_7::DOMNodeImpl", %"class.xercesc_2_7::DOMParentNode", ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, ptr, %"class.xercesc_2_7::XMLStringPool", ptr, ptr, ptr, i64, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8, [3 x i8] }>
%"class.xercesc_2_7::DOMDocument" = type { %"class.xercesc_2_7::DOMDocumentRange", %"class.xercesc_2_7::DOMXPathEvaluator", %"class.xercesc_2_7::DOMDocumentTraversal", %"class.xercesc_2_7::DOMNode" }
%"class.xercesc_2_7::DOMDocumentRange" = type { ptr }
%"class.xercesc_2_7::DOMXPathEvaluator" = type { ptr }
%"class.xercesc_2_7::DOMDocumentTraversal" = type { ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::DOMBuffer" = type { ptr, i32, i32, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_715DOMCDATASectionC2Ev = comdat any

$_ZN11xercesc_2_713DOMParentNodeD2Ev = comdat any

$_ZN11xercesc_2_77DOMTextC2Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD2Ev = comdat any

$_ZN11xercesc_2_715DOMCDATASectionD0Ev = comdat any

$_ZN11xercesc_2_716DOMCharacterDataC2Ev = comdat any

$_ZN11xercesc_2_77DOMTextD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeC2Ev = comdat any

$_ZN11xercesc_2_716DOMCharacterDataD0Ev = comdat any

$_ZN11xercesc_2_77DOMNodeD0Ev = comdat any

$_ZN11xercesc_2_715DOMCDATASectionC2ERKS0_ = comdat any

$_ZN11xercesc_2_77DOMTextC2ERKS0_ = comdat any

$_ZN11xercesc_2_716DOMCharacterDataC2ERKS0_ = comdat any

$_ZN11xercesc_2_77DOMNodeC2ERKS0_ = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv = comdat any

$_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl19ignorableWhitespaceEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv = comdat any

$_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_79DOMBuffer6getLenEv = comdat any

$_ZN11xercesc_2_79DOMBuffer4chopEj = comdat any

$_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv = comdat any

$_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv = comdat any

$_ZTSN11xercesc_2_715DOMCDATASectionE = comdat any

$_ZTSN11xercesc_2_77DOMTextE = comdat any

$_ZTSN11xercesc_2_716DOMCharacterDataE = comdat any

$_ZTSN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_77DOMNodeE = comdat any

$_ZTIN11xercesc_2_716DOMCharacterDataE = comdat any

$_ZTIN11xercesc_2_77DOMTextE = comdat any

$_ZTIN11xercesc_2_715DOMCDATASectionE = comdat any

$_ZTVN11xercesc_2_715DOMCDATASectionE = comdat any

$_ZTVN11xercesc_2_77DOMTextE = comdat any

$_ZTVN11xercesc_2_716DOMCharacterDataE = comdat any

$_ZTVN11xercesc_2_77DOMNodeE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_719DOMCDATASectionImplE = dso_local unnamed_addr constant { [55 x ptr] } { [55 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719DOMCDATASectionImplE, ptr @_ZN11xercesc_2_719DOMCDATASectionImplD2Ev, ptr @_ZN11xercesc_2_719DOMCDATASectionImplD0Ev, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl11getNodeNameEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl12getNodeValueEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl11getNodeTypeEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getParentNodeEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getChildNodesEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getFirstChildEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl12getLastChildEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl18getPreviousSiblingEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl14getNextSiblingEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getAttributesEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl16getOwnerDocumentEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl9cloneNodeEb, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12insertBeforeEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12replaceChildEPNS_7DOMNodeES2_, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl11removeChildEPNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl11appendChildEPNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13hasChildNodesEv, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12setNodeValueEPKt, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl9normalizeEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl11isSupportedEPKtS2_, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl15getNamespaceURIEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl9getPrefixEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl12getLocalNameEv, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl9setPrefixEPKt, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13hasAttributesEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl10isSameNodeEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl11isEqualNodeEPKNS_7DOMNodeE, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl11getUserDataEPKt, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl10getBaseURIEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl19compareTreePositionEPKNS_7DOMNodeE, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl14getTextContentEv, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl14setTextContentEPKt, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl21lookupNamespacePrefixEPKtb, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl18isDefaultNamespaceEPKt, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl18lookupNamespaceURIEPKt, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12getInterfaceEPKt, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl7releaseEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl7getDataEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl9getLengthEv, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13substringDataEmm, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl10appendDataEPKt, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl10insertDataEmPKt, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl10deleteDataEmm, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl11replaceDataEmmPKt, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl7setDataEPKt, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl9splitTextEm, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl31getIsWhitespaceInElementContentEv, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12getWholeTextEv, ptr @_ZN11xercesc_2_719DOMCDATASectionImpl16replaceWholeTextEPKt, ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl21isIgnorableWhitespaceEv] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_719DOMCDATASectionImplE = dso_local constant [37 x i8] c"N11xercesc_2_719DOMCDATASectionImplE\00", align 1
@_ZTSN11xercesc_2_715DOMCDATASectionE = linkonce_odr dso_local constant [33 x i8] c"N11xercesc_2_715DOMCDATASectionE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMTextE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMTextE\00", comdat, align 1
@_ZTSN11xercesc_2_716DOMCharacterDataE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716DOMCharacterDataE\00", comdat, align 1
@_ZTSN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77DOMNodeE\00", comdat, align 1
@_ZTIN11xercesc_2_77DOMNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_716DOMCharacterDataE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716DOMCharacterDataE, ptr @_ZTIN11xercesc_2_77DOMNodeE }, comdat, align 8
@_ZTIN11xercesc_2_77DOMTextE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77DOMTextE, ptr @_ZTIN11xercesc_2_716DOMCharacterDataE }, comdat, align 8
@_ZTIN11xercesc_2_715DOMCDATASectionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715DOMCDATASectionE, ptr @_ZTIN11xercesc_2_77DOMTextE }, comdat, align 8
@_ZTIN11xercesc_2_719DOMCDATASectionImplE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719DOMCDATASectionImplE, ptr @_ZTIN11xercesc_2_715DOMCDATASectionE }, align 8
@_ZTVN11xercesc_2_715DOMCDATASectionE = linkonce_odr dso_local unnamed_addr constant { [55 x ptr] } { [55 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715DOMCDATASectionE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_715DOMCDATASectionD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMTextE = linkonce_odr dso_local unnamed_addr constant { [55 x ptr] } { [55 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMTextE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMTextD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_716DOMCharacterDataE = linkonce_odr dso_local unnamed_addr constant { [50 x ptr] } { [50 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716DOMCharacterDataE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_716DOMCharacterDataD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_77DOMNodeE = linkonce_odr dso_local unnamed_addr constant { [42 x ptr] } { [42 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_77DOMNodeE, ptr @_ZN11xercesc_2_77DOMNodeD2Ev, ptr @_ZN11xercesc_2_77DOMNodeD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE = external local_unnamed_addr constant i16, align 2
@_ZZNK11xercesc_2_719DOMCDATASectionImpl11getNodeNameEvE14gcdata_section = internal constant [15 x i16] [i16 35, i16 99, i16 100, i16 97, i16 116, i16 97, i16 45, i16 115, i16 101, i16 99, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZN11xercesc_2_711DOMNodeImpl11IGNORABLEWSE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZTIN11xercesc_2_712DOMExceptionE = external constant ptr
@_ZN11xercesc_2_711DOMNodeImpl8READONLYE = external local_unnamed_addr constant i16, align 2
@.str = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_711DOMNodeImpl5OWNEDE = external local_unnamed_addr constant i16, align 2
@_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE = external local_unnamed_addr constant i16, align 2

@_ZN11xercesc_2_719DOMCDATASectionImplC1EPNS_11DOMDocumentEPKt = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_719DOMCDATASectionImplC2EPNS_11DOMDocumentEPKt
@_ZN11xercesc_2_719DOMCDATASectionImplC1ERKS0_b = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN11xercesc_2_719DOMCDATASectionImplC2ERKS0_b
@_ZN11xercesc_2_719DOMCDATASectionImplD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_719DOMCDATASectionImplD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImplD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_719DOMCDATASectionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl11getNodeNameEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !40 {
  ret ptr @_ZZNK11xercesc_2_719DOMCDATASectionImpl11getNodeNameEvE14gcdata_section
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_719DOMCDATASectionImpl11getNodeTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !40 {
  ret i16 4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getParentNodeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl18getPreviousSiblingEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull %0) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 3
  %3 = tail call noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl16getOwnerDocumentEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %0) unnamed_addr #3 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl9cloneNodeEb(ptr noundef nonnull align 8 dereferenceable(88) %0, i1 noundef zeroext %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  %7 = tail call noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef 88, ptr noundef %6, i32 noundef 2) #11
  tail call void @_ZN11xercesc_2_719DOMCDATASectionImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(88) %7, ptr noundef nonnull align 8 dereferenceable(88) %0, i1 zeroext poison) #11
  %8 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %8, i32 noundef 1, ptr noundef nonnull %0, ptr noundef nonnull %7) #11
  ret ptr %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %5 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %1, ptr noundef %2) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #11
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl12setNodeValueEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, ptr noundef %2) #11
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %1) #11
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !40 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %6 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef signext i16 @_ZNK11xercesc_2_719DOMCDATASectionImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret i16 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %5 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %1, i1 noundef zeroext %2) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10) %3, ptr noundef %1) #11
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl7releaseEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  br i1 %3, label %4, label %28

4:                                                ; preds = %1
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  br i1 %5, label %28, label %6

6:                                                ; preds = %4
  %7 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %8 = load ptr, ptr %0, align 8, !tbaa !57
  %9 = getelementptr inbounds ptr, ptr %8, i64 12
  %10 = load ptr, ptr %9, align 8
  %11 = invoke noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %12 unwind label %26

12:                                               ; preds = %6
  %13 = icmp eq ptr %11, null
  br i1 %13, label %21, label %14

14:                                               ; preds = %12
  %15 = load ptr, ptr %0, align 8, !tbaa !57
  %16 = getelementptr inbounds ptr, ptr %15, i64 12
  %17 = load ptr, ptr %16, align 8
  %18 = invoke noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %19 unwind label %26

19:                                               ; preds = %14
  %20 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %18) #11
  br label %23

21:                                               ; preds = %12
  %22 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi ptr [ %20, %19 ], [ %22, %21 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %7, i16 noundef signext 15, ptr noundef null, ptr noundef %24) #11
          to label %25 unwind label %26

25:                                               ; preds = %23
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

26:                                               ; preds = %23, %14, %6
  %27 = landingpad { ptr, i32 }
          cleanup
  br label %59

28:                                               ; preds = %4, %1
  %29 = load ptr, ptr %0, align 8, !tbaa !57
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  %33 = icmp eq ptr %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  tail call void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10) %2, i32 noundef 3, ptr noundef null, ptr noundef null) #11
  %35 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32) %35) #11
  %36 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl13releaseBufferEv(ptr noundef nonnull align 8 dereferenceable(16) %36) #11
  tail call void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %32, ptr noundef nonnull %0, i32 noundef 2) #11
  ret void

37:                                               ; preds = %28
  %38 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %39 = load ptr, ptr %0, align 8, !tbaa !57
  %40 = getelementptr inbounds ptr, ptr %39, i64 12
  %41 = load ptr, ptr %40, align 8
  %42 = invoke noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %43 unwind label %57

43:                                               ; preds = %37
  %44 = icmp eq ptr %42, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %0, align 8, !tbaa !57
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %50 unwind label %57

50:                                               ; preds = %45
  %51 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %49) #11
  br label %54

52:                                               ; preds = %43
  %53 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %54

54:                                               ; preds = %52, %50
  %55 = phi ptr [ %51, %50 ], [ %53, %52 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %38, i16 noundef signext 15, ptr noundef null, ptr noundef %55) #11
          to label %56 unwind label %57

56:                                               ; preds = %54
  tail call void @__cxa_throw(ptr nonnull %38, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

57:                                               ; preds = %54, %45, %37
  %58 = landingpad { ptr, i32 }
          cleanup
  br label %59

59:                                               ; preds = %57, %26
  %60 = phi ptr [ %38, %57 ], [ %7, %26 ]
  %61 = phi { ptr, i32 } [ %58, %57 ], [ %27, %26 ]
  tail call void @__cxa_free_exception(ptr %60) #12
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl7getDataEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  %3 = tail call noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl7getDataEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i64 @_ZNK11xercesc_2_719DOMCDATASectionImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  %3 = tail call noundef i64 @_ZNK11xercesc_2_720DOMCharacterDataImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(16) %2) #11
  ret i64 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_719DOMCDATASectionImpl13substringDataEmm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  %5 = tail call noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl13substringDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #11
  ret ptr %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl10appendDataEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10appendDataEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl10insertDataEmPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, ptr noundef %2) unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10insertDataEPKNS_7DOMNodeEmPKt(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl10deleteDataEmm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl11replaceDataEmmPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !40 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl11replaceDataEPKNS_7DOMNodeEmmPKt(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImpl7setDataEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImpl7setDataEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %0, ptr noundef %1) #11
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl9splitTextEm(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %4 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %3) #11
  br i1 %4, label %5, label %27

5:                                                ; preds = %2
  %6 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %7 = load ptr, ptr %0, align 8, !tbaa !57
  %8 = getelementptr inbounds ptr, ptr %7, i64 12
  %9 = load ptr, ptr %8, align 8
  %10 = invoke noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %11 unwind label %25

11:                                               ; preds = %5
  %12 = icmp eq ptr %10, null
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = load ptr, ptr %0, align 8, !tbaa !57
  %15 = getelementptr inbounds ptr, ptr %14, i64 12
  %16 = load ptr, ptr %15, align 8
  %17 = invoke noundef ptr %16(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %18 unwind label %25

18:                                               ; preds = %13
  %19 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %17) #11
  br label %22

20:                                               ; preds = %11
  %21 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %22

22:                                               ; preds = %20, %18
  %23 = phi ptr [ %19, %18 ], [ %21, %20 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %6, i16 noundef signext 7, ptr noundef null, ptr noundef %23) #11
          to label %24 unwind label %25

24:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

25:                                               ; preds = %22, %13, %5
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %112

27:                                               ; preds = %2
  %28 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !60
  %30 = tail call noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %29) #11
  %31 = zext i32 %30 to i64
  %32 = icmp ult i64 %31, %1
  br i1 %32, label %33, label %55

33:                                               ; preds = %27
  %34 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %35 = load ptr, ptr %0, align 8, !tbaa !57
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  %38 = invoke noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %39 unwind label %53

39:                                               ; preds = %33
  %40 = icmp eq ptr %38, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %0, align 8, !tbaa !57
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  %45 = invoke noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %46 unwind label %53

46:                                               ; preds = %41
  %47 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %45) #11
  br label %50

48:                                               ; preds = %39
  %49 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %50

50:                                               ; preds = %48, %46
  %51 = phi ptr [ %47, %46 ], [ %49, %48 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %34, i16 noundef signext 1, ptr noundef null, ptr noundef %51) #11
          to label %52 unwind label %53

52:                                               ; preds = %50
  tail call void @__cxa_throw(ptr nonnull %34, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

53:                                               ; preds = %50, %41, %33
  %54 = landingpad { ptr, i32 }
          cleanup
  br label %112

55:                                               ; preds = %27
  %56 = load ptr, ptr %0, align 8, !tbaa !57
  %57 = getelementptr inbounds ptr, ptr %56, i64 12
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef ptr %58(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  %60 = sub nsw i64 %31, %1
  %61 = load ptr, ptr %0, align 8, !tbaa !57
  %62 = getelementptr inbounds ptr, ptr %61, i64 42
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(88) %0, i64 noundef %1, i64 noundef %60) #11
  %65 = load ptr, ptr %59, align 8, !tbaa !57
  %66 = getelementptr inbounds ptr, ptr %65, i64 7
  %67 = load ptr, ptr %66, align 8
  %68 = tail call noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(32) %59, ptr noundef %64) #11
  %69 = load ptr, ptr %0, align 8, !tbaa !57
  %70 = getelementptr inbounds ptr, ptr %69, i64 5
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %55
  %75 = load ptr, ptr %0, align 8, !tbaa !57
  %76 = getelementptr inbounds ptr, ptr %75, i64 10
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  %79 = load ptr, ptr %72, align 8, !tbaa !57
  %80 = getelementptr inbounds ptr, ptr %79, i64 14
  %81 = load ptr, ptr %80, align 8
  %82 = tail call noundef ptr %81(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %68, ptr noundef %78) #11
  br label %83

83:                                               ; preds = %74, %55
  %84 = load ptr, ptr %28, align 8, !tbaa !60
  %85 = trunc i64 %1 to i32
  tail call void @_ZN11xercesc_2_79DOMBuffer4chopEj(ptr noundef nonnull align 8 dereferenceable(24) %84, i32 noundef %85) #11
  %86 = load ptr, ptr %0, align 8, !tbaa !57
  %87 = getelementptr inbounds ptr, ptr %86, i64 12
  %88 = load ptr, ptr %87, align 8
  %89 = tail call noundef ptr %88(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  %90 = icmp eq ptr %89, null
  br i1 %90, label %111, label %91

91:                                               ; preds = %83
  %92 = load ptr, ptr %0, align 8, !tbaa !57
  %93 = getelementptr inbounds ptr, ptr %92, i64 12
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  %96 = load ptr, ptr %95, align 8, !tbaa !57
  %97 = getelementptr inbounds ptr, ptr %96, i64 82
  %98 = load ptr, ptr %97, align 8
  %99 = tail call noundef ptr %98(ptr noundef nonnull align 8 dereferenceable(293) %95) #11
  %100 = icmp eq ptr %99, null
  br i1 %100, label %111, label %101

101:                                              ; preds = %91
  %102 = tail call noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %99) #11
  %103 = zext i32 %102 to i64
  %104 = icmp eq i32 %102, 0
  br i1 %104, label %111, label %105

105:                                              ; preds = %101, %105
  %106 = phi i64 [ %109, %105 ], [ 0, %101 ]
  %107 = trunc i64 %106 to i32
  %108 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %99, i32 noundef %107) #11
  tail call void @_ZN11xercesc_2_712DOMRangeImpl15updateSplitInfoEPNS_7DOMNodeES2_m(ptr noundef nonnull align 8 dereferenceable(80) %108, ptr noundef nonnull %0, ptr noundef %68, i64 noundef %1) #11
  %109 = add nuw nsw i64 %106, 1
  %110 = icmp eq i64 %109, %103
  br i1 %110, label %111, label %105, !llvm.loop !61

111:                                              ; preds = %105, %91, %101, %83
  ret ptr %68

112:                                              ; preds = %53, %25
  %113 = phi ptr [ %34, %53 ], [ %6, %25 ]
  %114 = phi { ptr, i32 } [ %54, %53 ], [ %26, %25 ]
  tail call void @__cxa_free_exception(ptr %113) #12
  resume { ptr, i32 } %114
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl31getIsWhitespaceInElementContentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #2 align 2 !prof !40 {
  %2 = load ptr, ptr %0, align 8, !tbaa !57
  %3 = getelementptr inbounds ptr, ptr %2, i64 52
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef zeroext i1 %4(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
  ret i1 %5
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl12getWholeTextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %3 = load ptr, ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds ptr, ptr %3, i64 12
  %5 = load ptr, ptr %4, align 8
  %6 = invoke noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %7 unwind label %21

7:                                                ; preds = %1
  %8 = icmp eq ptr %6, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %0, align 8, !tbaa !57
  %11 = getelementptr inbounds ptr, ptr %10, i64 12
  %12 = load ptr, ptr %11, align 8
  %13 = invoke noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %14 unwind label %21

14:                                               ; preds = %9
  %15 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %13) #11
  br label %18

16:                                               ; preds = %7
  %17 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %2, i16 noundef signext 9, ptr noundef null, ptr noundef %19) #11
          to label %20 unwind label %21

20:                                               ; preds = %18
  tail call void @__cxa_throw(ptr nonnull %2, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

21:                                               ; preds = %18, %9, %1
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %2) #12
  resume { ptr, i32 } %22
}

; Function Attrs: mustprogress noinline noreturn optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_719DOMCDATASectionImpl16replaceWholeTextEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture readnone %1) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = tail call ptr @__cxa_allocate_exception(i64 40) #12
  %4 = load ptr, ptr %0, align 8, !tbaa !57
  %5 = getelementptr inbounds ptr, ptr %4, i64 12
  %6 = load ptr, ptr %5, align 8
  %7 = invoke noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %8 unwind label %22

8:                                                ; preds = %2
  %9 = icmp eq ptr %7, null
  br i1 %9, label %17, label %10

10:                                               ; preds = %8
  %11 = load ptr, ptr %0, align 8, !tbaa !57
  %12 = getelementptr inbounds ptr, ptr %11, i64 12
  %13 = load ptr, ptr %12, align 8
  %14 = invoke noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(88) %0) #11
          to label %15 unwind label %22

15:                                               ; preds = %10
  %16 = tail call noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %14) #11
  br label %19

17:                                               ; preds = %8
  %18 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !59
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi ptr [ %16, %15 ], [ %18, %17 ]
  invoke void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %3, i16 noundef signext 9, ptr noundef null, ptr noundef %20) #11
          to label %21 unwind label %22

21:                                               ; preds = %19
  tail call void @__cxa_throw(ptr nonnull %3, ptr nonnull @_ZTIN11xercesc_2_712DOMExceptionE, ptr nonnull @_ZN11xercesc_2_712DOMExceptionD1Ev) #13
  unreachable

22:                                               ; preds = %19, %10, %2
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %3) #12
  resume { ptr, i32 } %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_719DOMCDATASectionImpl21isIgnorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl19ignorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  ret i1 %3
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImplC2EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_715DOMCDATASectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMCDATASectionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %5 = icmp eq ptr %1, null
  %6 = getelementptr inbounds i8, ptr %1, i64 24
  %7 = select i1 %5, ptr null, ptr %6
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef %7) #11
          to label %8 unwind label %15

8:                                                ; preds = %3
  %9 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef %1) #11
          to label %10 unwind label %17

10:                                               ; preds = %8
  %11 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 3
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #11
          to label %12 unwind label %19

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  invoke void @_ZN11xercesc_2_720DOMCharacterDataImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %1, ptr noundef %2) #11
          to label %14 unwind label %21

14:                                               ; preds = %12
  ret void

15:                                               ; preds = %3
  %16 = landingpad { ptr, i32 }
          cleanup
  br label %27

17:                                               ; preds = %8
  %18 = landingpad { ptr, i32 }
          cleanup
  br label %25

19:                                               ; preds = %10
  %20 = landingpad { ptr, i32 }
          cleanup
  br label %23

21:                                               ; preds = %12
  %22 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %11) #9
  br label %23

23:                                               ; preds = %21, %19
  %24 = phi { ptr, i32 } [ %22, %21 ], [ %20, %19 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %9) #9
  br label %25

25:                                               ; preds = %23, %17
  %26 = phi { ptr, i32 } [ %24, %23 ], [ %18, %17 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  br label %27

27:                                               ; preds = %25, %15
  %28 = phi { ptr, i32 } [ %26, %25 ], [ %16, %15 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %28
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMCDATASectionC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77DOMTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMCDATASectionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1EPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) unnamed_addr #6

declare i32 @__gxx_personality_v0(...)

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1EPNS_11DOMDocumentE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImplC1EPNS_11DOMDocumentEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) unnamed_addr #6

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 comdat align 2 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMParentNode", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMTextC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_716DOMCharacterDataC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !64 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMCDATASectionD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMCharacterDataC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #2 comdat align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #11
  store ptr getelementptr inbounds ({ [50 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMCharacterDataE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMTextD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !65 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMCharacterDataD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #8

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_715DOMNodeListImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImplC2ERKS0_b(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1, i1 zeroext %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_715DOMCDATASectionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMCDATASectionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  %5 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #11
  invoke void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10) %4, ptr noundef nonnull align 8 dereferenceable(10) %5) #11
          to label %6 unwind label %16

6:                                                ; preds = %3
  %7 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  %8 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #11
  invoke void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8) #11
          to label %9 unwind label %18

9:                                                ; preds = %6
  %10 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 3
  %11 = tail call fastcc noundef ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef nonnull %1) #11
  invoke void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef nonnull align 8 dereferenceable(16) %11) #11
          to label %12 unwind label %20

12:                                               ; preds = %9
  %13 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %1, i64 0, i32 4
  invoke void @_ZN11xercesc_2_720DOMCharacterDataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef nonnull align 8 dereferenceable(16) %14) #11
          to label %15 unwind label %22

15:                                               ; preds = %12
  ret void

16:                                               ; preds = %3
  %17 = landingpad { ptr, i32 }
          cleanup
  br label %28

18:                                               ; preds = %6
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %26

20:                                               ; preds = %9
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %24

22:                                               ; preds = %12
  %23 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #9
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #9
  br label %26

26:                                               ; preds = %24, %18
  %27 = phi { ptr, i32 } [ %25, %24 ], [ %19, %18 ]
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %4) #9
  br label %28

28:                                               ; preds = %26, %16
  %29 = phi { ptr, i32 } [ %27, %26 ], [ %17, %16 ]
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  resume { ptr, i32 } %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715DOMCDATASectionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77DOMTextC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_715DOMCDATASectionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #1 !prof !40 !PGOFuncName !66 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef nonnull align 8 dereferenceable(10)) unnamed_addr #6

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE(ptr noundef readnone %0) unnamed_addr #1 !prof !40 !PGOFuncName !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 2
  ret ptr %2
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define internal fastcc noundef nonnull ptr @_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE(ptr noundef %0) unnamed_addr #0 !prof !40 !PGOFuncName !68 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 1
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %2) #11
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMTextImpl", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMElementImpl", ptr %0, i64 0, i32 3
  %6 = select i1 %3, ptr %4, ptr %5
  ret ptr %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMChildNodeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImplC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMTextC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_716DOMCharacterDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMTextE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716DOMCharacterDataC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #11
  store ptr getelementptr inbounds ({ [50 x ptr] }, ptr @_ZTVN11xercesc_2_716DOMCharacterDataE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77DOMNodeC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [42 x ptr] }, ptr @_ZTVN11xercesc_2_77DOMNodeE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isLeafNodeEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !69 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !70
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12LEAFNODETYPEE, align 2, !tbaa !71
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_719DOMCDATASectionImplD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 !prof !40 {
  store ptr getelementptr inbounds ({ [55 x ptr] }, ptr @_ZTVN11xercesc_2_719DOMCDATASectionImplE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_720DOMCharacterDataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #9
  %3 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_712DOMChildNodeD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #9
  %4 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_713DOMParentNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #9
  %5 = getelementptr inbounds %"class.xercesc_2_7::DOMCDATASectionImpl", ptr %0, i64 0, i32 1
  tail call void @_ZN11xercesc_2_711DOMNodeImplD1Ev(ptr noundef nonnull align 8 dereferenceable(10) %5) #9
  tail call void @_ZN11xercesc_2_77DOMNodeD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #9
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImplD1Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE(i64 noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat !prof !72 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293) %1, i64 noundef %0, i32 noundef %2) #11
  ret ptr %4
}

; Function Attrs: optsize
declare void @_ZNK11xercesc_2_711DOMNodeImpl20callUserDataHandlersENS_18DOMUserDataHandler16DOMOperationTypeEPKNS_7DOMNodeES5_(ptr noundef nonnull align 8 dereferenceable(10), i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl19ignorableWhitespaceEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !70
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl11IGNORABLEWSE, align 2, !tbaa !71
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isReadOnlyEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !73 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !70
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl8READONLYE, align 2, !tbaa !71
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_715DOMDocumentImpl16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(293) %0) local_unnamed_addr #0 comdat align 2 !prof !74 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMDocumentImpl", ptr %0, i64 0, i32 25
  %3 = load ptr, ptr %2, align 8, !tbaa !75
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMExceptionC1EsPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), i16 noundef signext, ptr noundef, ptr noundef) unnamed_addr #6

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712DOMExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(33)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79DOMBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !86
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79DOMBuffer4chopEj(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %3 = load ptr, ptr %0, align 8, !tbaa !88
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds i16, ptr %3, i64 %4
  store i16 0, ptr %5, align 2, !tbaa !71
  %6 = getelementptr inbounds %"class.xercesc_2_7::DOMBuffer", ptr %0, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !86
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE4sizeEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !89
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !89
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #12
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 249, i32 noundef 116, ptr noundef %9) #11
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #12
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !59
  ret ptr %18
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712DOMRangeImpl15updateSplitInfoEPNS_7DOMNodeES2_m(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #11
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
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #9
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #11
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #11
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
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #11
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !57
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl7isOwnedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !96 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !70
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl5OWNEDE, align 2, !tbaa !71
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl14isToBeReleasedEv(ptr noundef nonnull align 8 dereferenceable(10) %0) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::DOMNodeImpl", ptr %0, i64 0, i32 1
  %3 = load i16, ptr %2, align 8, !tbaa !70
  %4 = load i16, ptr @_ZN11xercesc_2_711DOMNodeImpl12TOBERELEASEDE, align 2, !tbaa !71
  %5 = and i16 %4, %3
  %6 = icmp ne i16 %5, 0
  ret i1 %6
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713DOMParentNode7releaseEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl13releaseBufferEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715DOMDocumentImpl7releaseEPNS_7DOMNodeENS0_14NodeObjectTypeE(ptr noundef nonnull align 8 dereferenceable(293), ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11appendChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl13getAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode13getFirstChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_713DOMParentNode12getLastChildEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl12getLocalNameEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl15getNamespaceURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode14getNextSiblingEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl12getNodeValueEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl9getPrefixEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode13getParentNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_712DOMChildNode18getPreviousSiblingEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode13hasChildNodesEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12insertBeforeEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9normalizeEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode11removeChildEPNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713DOMParentNode12replaceChildEPNS_7DOMNodeES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl11isSupportedEPKtS2_(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl9setPrefixEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl13hasAttributesEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl10isSameNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_713DOMParentNode11isEqualNodeEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl11setUserDataEPKtPvPNS_18DOMUserDataHandlerE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl11getUserDataEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl10getBaseURIEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef signext i16 @_ZNK11xercesc_2_711DOMNodeImpl19compareTreePositionEPKNS_7DOMNodeE(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl14getTextContentEv(ptr noundef nonnull align 8 dereferenceable(10)) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_711DOMNodeImpl14setTextContentEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl21lookupNamespacePrefixEPKtb(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef zeroext i1 @_ZNK11xercesc_2_711DOMNodeImpl18isDefaultNamespaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_711DOMNodeImpl18lookupNamespaceURIEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_711DOMNodeImpl12getInterfaceEPKt(ptr noundef nonnull align 8 dereferenceable(10), ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl7getDataEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef i64 @_ZNK11xercesc_2_720DOMCharacterDataImpl9getLengthEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_720DOMCharacterDataImpl13substringDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl10appendDataEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl10insertDataEPKNS_7DOMNodeEmPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl10deleteDataEPKNS_7DOMNodeEmm(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl11replaceDataEPKNS_7DOMNodeEmmPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl7setDataEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_720DOMCharacterDataImpl12setNodeValueEPKNS_7DOMNodeEPKt(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline noreturn optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #9 = { nounwind optsize }
attributes #10 = { builtin nounwind optsize }
attributes #11 = { optsize }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

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
!34 = !{i32 5, !"CG Profile", !35}
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_ZN11xercesc_2_77DOMTextC2Ev, ptr @_ZN11xercesc_2_716DOMCharacterDataC2Ev, i64 650}
!37 = !{ptr @_ZN11xercesc_2_716DOMCharacterDataC2Ev, ptr @_ZN11xercesc_2_77DOMNodeC2Ev, i64 650}
!38 = !{ptr @_ZnwmPN11xercesc_2_711DOMDocumentENS_15DOMDocumentImpl14NodeObjectTypeE, ptr @_ZN11xercesc_2_715DOMDocumentImpl8allocateEmNS0_14NodeObjectTypeE, i64 1300}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !48, i64 24}
!42 = !{!"_ZTSN11xercesc_2_719DOMCDATASectionImplE", !43, i64 0, !47, i64 8, !52, i64 24, !55, i64 56, !56, i64 72}
!43 = !{!"_ZTSN11xercesc_2_715DOMCDATASectionE", !44, i64 0}
!44 = !{!"_ZTSN11xercesc_2_77DOMTextE", !45, i64 0}
!45 = !{!"_ZTSN11xercesc_2_716DOMCharacterDataE", !46, i64 0}
!46 = !{!"_ZTSN11xercesc_2_77DOMNodeE"}
!47 = !{!"_ZTSN11xercesc_2_711DOMNodeImplE", !48, i64 0, !51, i64 8}
!48 = !{!"any pointer", !49, i64 0}
!49 = !{!"omnipotent char", !50, i64 0}
!50 = !{!"Simple C++ TBAA"}
!51 = !{!"short", !49, i64 0}
!52 = !{!"_ZTSN11xercesc_2_713DOMParentNodeE", !48, i64 0, !48, i64 8, !53, i64 16}
!53 = !{!"_ZTSN11xercesc_2_715DOMNodeListImplE", !54, i64 0, !48, i64 8}
!54 = !{!"_ZTSN11xercesc_2_711DOMNodeListE"}
!55 = !{!"_ZTSN11xercesc_2_712DOMChildNodeE", !48, i64 0, !48, i64 8}
!56 = !{!"_ZTSN11xercesc_2_720DOMCharacterDataImplE", !48, i64 0, !48, i64 8}
!57 = !{!58, !58, i64 0}
!58 = !{!"vtable pointer", !50, i64 0}
!59 = !{!48, !48, i64 0}
!60 = !{!42, !48, i64 72}
!61 = distinct !{!61, !62}
!62 = !{!"llvm.loop.mustprogress"}
!63 = !{!"function_entry_count", i64 650}
!64 = !{!"function_entry_count", i64 1}
!65 = !{!"function_entry_count", i64 1851}
!66 = !{!"DOMCDATASectionImpl.cpp:_ZN11xercesc_2_7L14castToNodeImplEPKNS_7DOMNodeE"}
!67 = !{!"DOMCDATASectionImpl.cpp:_ZN11xercesc_2_7L16castToParentImplEPKNS_7DOMNodeE"}
!68 = !{!"DOMCDATASectionImpl.cpp:_ZN11xercesc_2_7L15castToChildImplEPKNS_7DOMNodeE"}
!69 = !{!"function_entry_count", i64 8433}
!70 = !{!47, !51, i64 8}
!71 = !{!51, !51, i64 0}
!72 = !{!"function_entry_count", i64 1300}
!73 = !{!"function_entry_count", i64 3150}
!74 = !{!"function_entry_count", i64 2954}
!75 = !{!76, !48, i64 280}
!76 = !{!"_ZTSN11xercesc_2_715DOMDocumentImplE", !77, i64 0, !47, i64 32, !52, i64 48, !48, i64 80, !48, i64 88, !48, i64 96, !81, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !82, i64 136, !48, i64 176, !48, i64 184, !48, i64 192, !85, i64 200, !48, i64 208, !48, i64 216, !48, i64 224, !48, i64 232, !48, i64 240, !48, i64 248, !48, i64 256, !48, i64 264, !48, i64 272, !48, i64 280, !84, i64 288, !81, i64 292}
!77 = !{!"_ZTSN11xercesc_2_711DOMDocumentE", !78, i64 0, !79, i64 8, !80, i64 16, !46, i64 24}
!78 = !{!"_ZTSN11xercesc_2_716DOMDocumentRangeE"}
!79 = !{!"_ZTSN11xercesc_2_717DOMXPathEvaluatorE"}
!80 = !{!"_ZTSN11xercesc_2_720DOMDocumentTraversalE"}
!81 = !{!"bool", !49, i64 0}
!82 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !83, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !84, i64 32, !84, i64 36}
!83 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!84 = !{!"int", !49, i64 0}
!85 = !{!"long", !49, i64 0}
!86 = !{!87, !84, i64 8}
!87 = !{!"_ZTSN11xercesc_2_79DOMBufferE", !48, i64 0, !84, i64 8, !84, i64 12, !48, i64 16}
!88 = !{!87, !48, i64 0}
!89 = !{!90, !84, i64 12}
!90 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12DOMRangeImplEEE", !81, i64 8, !84, i64 12, !84, i64 16, !48, i64 24, !48, i64 32}
!91 = !{!90, !48, i64 32}
!92 = !{!90, !48, i64 24}
!93 = !{!94, !48, i64 40}
!94 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !95, i64 8, !48, i64 16, !84, i64 24, !48, i64 32, !48, i64 40}
!95 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !49, i64 0}
!96 = !{!"function_entry_count", i64 2562}
