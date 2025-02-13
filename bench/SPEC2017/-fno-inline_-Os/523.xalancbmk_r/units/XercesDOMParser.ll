; ModuleID = 'XercesDOMParser.cpp'
source_filename = "XercesDOMParser.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XercesDOMParser" = type { %"class.xercesc_2_7::AbstractDOMParser", ptr, ptr, ptr }
%"class.xercesc_2_7::AbstractDOMParser" = type { %"class.xercesc_2_7::XMLDocumentHandler", %"class.xercesc_2_7::XMLErrorReporter", %"class.xercesc_2_7::XMLEntityHandler", %"class.xercesc_2_7::DocTypeHandler", %"class.xercesc_2_7::PSVIHandler", i8, i8, i8, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %"class.xercesc_2_7::XMLBufferMgr", ptr, ptr }
%"class.xercesc_2_7::XMLDocumentHandler" = type { ptr }
%"class.xercesc_2_7::XMLErrorReporter" = type { ptr }
%"class.xercesc_2_7::XMLEntityHandler" = type { ptr }
%"class.xercesc_2_7::DocTypeHandler" = type { ptr }
%"class.xercesc_2_7::PSVIHandler" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::SAXParseException" = type { %"class.xercesc_2_7::SAXException", i64, i64, ptr, ptr }
%"class.xercesc_2_7::SAXException" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::XMLResourceIdentifier" = type { i32, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv = comdat any

$_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv = comdat any

$_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv = comdat any

$_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv = comdat any

$_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv = comdat any

$_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv = comdat any

$_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE = comdat any

$_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb = comdat any

$_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv = comdat any

$_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv = comdat any

$_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb = comdat any

$_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEE7releaseEv = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev = comdat any

$_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv = comdat any

$_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv = comdat any

$_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

$_ZN11xercesc_2_711IOExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_711IOExceptionE = comdat any

$_ZTIN11xercesc_2_711IOExceptionE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_711IOExceptionE = comdat any

@_ZTVN11xercesc_2_715XercesDOMParserE = dso_local unnamed_addr constant { [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] } { [46 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XercesDOMParserE, ptr @_ZN11xercesc_2_715XercesDOMParserD2Ev, ptr @_ZN11xercesc_2_715XercesDOMParserD0Ev, ptr @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb, ptr @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb, ptr @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE, ptr @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE, ptr @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_, ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_, ptr @_ZN11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZN11xercesc_2_715XercesDOMParser11resetErrorsEv, ptr @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE, ptr @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv, ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPKtS2_S2_, ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE], [6 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTIN11xercesc_2_715XercesDOMParserE, ptr @_ZThn8_N11xercesc_2_715XercesDOMParserD1Ev, ptr @_ZThn8_N11xercesc_2_715XercesDOMParserD0Ev, ptr @_ZThn8_N11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll, ptr @_ZThn8_N11xercesc_2_715XercesDOMParser11resetErrorsEv], [10 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTIN11xercesc_2_715XercesDOMParserE, ptr @_ZThn16_N11xercesc_2_715XercesDOMParserD1Ev, ptr @_ZThn16_N11xercesc_2_715XercesDOMParserD0Ev, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resolveEntityEPKtS2_S2_, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE, ptr @_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE], [20 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTIN11xercesc_2_715XercesDOMParserE, ptr @_ZThn24_N11xercesc_2_715XercesDOMParserD1Ev, ptr @_ZThn24_N11xercesc_2_715XercesDOMParserD0Ev, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv, ptr @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_], [7 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTIN11xercesc_2_715XercesDOMParserE, ptr @_ZThn32_N11xercesc_2_715XercesDOMParserD1Ev, ptr @_ZThn32_N11xercesc_2_715XercesDOMParserD0Ev, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE, ptr @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE] }, align 8
@_ZTIN11xercesc_2_717SAXParseExceptionE = external constant ptr
@.str = private unnamed_addr constant [20 x i8] c"XercesDOMParser.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant [29 x i8] c"N11xercesc_2_711IOExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_711IOExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711IOExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTSN11xercesc_2_715XercesDOMParserE = dso_local constant [33 x i8] c"N11xercesc_2_715XercesDOMParserE\00", align 1
@_ZTIN11xercesc_2_717AbstractDOMParserE = external constant ptr
@_ZTIN11xercesc_2_715XercesDOMParserE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XercesDOMParserE, ptr @_ZTIN11xercesc_2_717AbstractDOMParserE }, align 8
@_ZTVN11xercesc_2_711IOExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711IOExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_711IOExceptionD0Ev, ptr @_ZNK11xercesc_2_711IOException7getTypeEv, ptr @_ZNK11xercesc_2_711IOException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni18fgIOException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_715XercesDOMParserC1EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE
@_ZN11xercesc_2_715XercesDOMParserD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XercesDOMParserD2Ev

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #11
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #13
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_715XercesDOMParserE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_715XercesDOMParserE, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !40
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_715XercesDOMParserE, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !40
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_715XercesDOMParserE, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !40
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [46 x ptr], [6 x ptr], [10 x ptr], [20 x ptr], [7 x ptr] }, ptr @_ZTVN11xercesc_2_715XercesDOMParserE, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !40
  %9 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 align 2 {
  tail call void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715XercesDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn24_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_715XercesDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define dso_local void @_ZThn32_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_715XercesDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %2) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715XercesDOMParser25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #4 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !44
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  %3 = load i8, ptr %2, align 1, !tbaa !56, !range !68, !noundef !69
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715XercesDOMParser27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #4 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner27isUsingCachedGrammarInParseEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  %3 = load i8, ptr %2, align 2, !tbaa !70, !range !68, !noundef !69
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !43 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %4 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !71
  ret ptr %3
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #4 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %3 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #13
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_710XMLScanner14getRootGrammarEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715XercesDOMParser10getURITextEj(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !43 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %4 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %3, i32 noundef %1) #13
  ret ptr %4
}

; Function Attrs: optsize
declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715XercesDOMParser12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %3 = tail call noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_710XMLScanner12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %3 = tail call noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #13
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715XercesDOMParser18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #4 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #13
  ret i1 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner18getIgnoreCachedDTDEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  %3 = load i8, ptr %2, align 1, !tbaa !73, !range !68, !noundef !69
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #4 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !74
  %4 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %5 = load ptr, ptr %3, align 8, !tbaa !74
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef nonnull %8) #13
  %9 = load ptr, ptr %3, align 8, !tbaa !74
  br label %11

10:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef null) #13
  br label %11

11:                                               ; preds = %10, %7
  %12 = phi ptr [ null, %10 ], [ %9, %7 ]
  tail call void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %4, ptr noundef %12) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setErrorReporterEPNS_16XMLErrorReporterE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !76 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  store ptr %1, ptr %3, align 8, !tbaa !77
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 45
  store ptr %1, ptr %3, align 8, !tbaa !79
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !80
  %4 = icmp eq ptr %1, null
  %5 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  br i1 %4, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 2
  store ptr null, ptr %8, align 8, !tbaa !81
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef null) #13
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  store ptr %1, ptr %3, align 8, !tbaa !82
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  tail call void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !81
  %4 = icmp eq ptr %1, null
  %5 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  br i1 %4, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %0, i64 16
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef nonnull %7) #13
  %8 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !80
  br label %10

9:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %5, ptr noundef null) #13
  br label %10

10:                                               ; preds = %9, %6
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !43 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  tail call void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %3, i1 noundef zeroext %1) #13
  br i1 %1, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %5, i1 noundef zeroext true) #13
  br label %6

6:                                                ; preds = %4, %2
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner21cacheGrammarFromParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 15
  store i8 %3, ptr %4, align 1, !tbaa !56
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 16
  store i8 %3, ptr %4, align 2, !tbaa !70
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !43 {
  br i1 %1, label %6, label %3

3:                                                ; preds = %2
  %4 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %5 = tail call noundef zeroext i1 @_ZNK11xercesc_2_710XMLScanner25isCachingGrammarFromParseEv(ptr noundef nonnull align 8 dereferenceable(776) %4) #13
  br i1 %5, label %8, label %6

6:                                                ; preds = %3, %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  tail call void @_ZN11xercesc_2_710XMLScanner23useCachedGrammarInParseEb(ptr noundef nonnull align 8 dereferenceable(776) %7, i1 noundef zeroext %1) #13
  br label %8

8:                                                ; preds = %6, %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser18setIgnoreCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #4 align 2 !prof !43 {
  %3 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  tail call void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %3, i1 noundef zeroext %1) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner19setIgnoredCachedDTDEb(ptr noundef nonnull align 8 dereferenceable(776) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 21
  store i8 %3, ptr %4, align 1, !tbaa !73
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser17resetDocumentPoolEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(224) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #11
  %11 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %11) #13
  %12 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !74
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %24

15:                                               ; preds = %9
  %16 = icmp eq i32 %3, 2
  br i1 %16, label %17, label %39

17:                                               ; preds = %15
  %18 = call ptr @__cxa_allocate_exception(i64 56) #11
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %18, ptr noundef nonnull align 8 dereferenceable(56) %10) #13
          to label %19 unwind label %20

19:                                               ; preds = %17
  invoke void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #15
          to label %42 unwind label %22

20:                                               ; preds = %17
  %21 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %18) #11
  br label %40

22:                                               ; preds = %36, %19
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %40

24:                                               ; preds = %9
  %25 = icmp eq i32 %3, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %24
  %27 = load ptr, ptr %13, align 8, !tbaa !40
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  br label %36

29:                                               ; preds = %24
  %30 = icmp sgt i32 %3, 1
  %31 = load ptr, ptr %13, align 8, !tbaa !40
  br i1 %30, label %32, label %34

32:                                               ; preds = %29
  %33 = getelementptr inbounds ptr, ptr %31, i64 4
  br label %36

34:                                               ; preds = %29
  %35 = getelementptr inbounds ptr, ptr %31, i64 3
  br label %36

36:                                               ; preds = %26, %32, %34
  %37 = phi ptr [ %28, %26 ], [ %33, %32 ], [ %35, %34 ]
  %38 = load ptr, ptr %37, align 8
  invoke void %38(ptr noundef nonnull align 8 dereferenceable(8) %13, ptr noundef nonnull align 8 dereferenceable(56) %10) #13
          to label %39 unwind label %22

39:                                               ; preds = %36, %15
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  ret void

40:                                               ; preds = %22, %20
  %41 = phi { ptr, i32 } [ %23, %22 ], [ %21, %20 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #14
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #11
  resume { ptr, i32 } %41

42:                                               ; preds = %19
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %3 = load ptr, ptr %2, align 8, !tbaa !83
  ret ptr %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #7 align 2 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(224) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !39 {
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr nocapture readnone %0) unnamed_addr #8 align 2 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #2 align 2 !prof !43 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !80
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !40
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2) #13
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #7 align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = tail call noundef ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(224) %5, ptr noundef %1, ptr noundef %2, ptr poison) #13
  ret ptr %6
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !43 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !80
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %8 = tail call noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  %9 = load ptr, ptr %4, align 8, !tbaa !40
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %7, ptr noundef %8) #13
  br label %22

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !81
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 2
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(8) %15, ptr noundef %1) #13
  br label %22

22:                                               ; preds = %13, %17, %6
  %23 = phi ptr [ %12, %6 ], [ %21, %17 ], [ null, %13 ]
  ret ptr %23
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getPublicIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !84
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721XMLResourceIdentifier11getSystemIdEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: noinline optsize uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #7 align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  %4 = tail call noundef ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef %1) #13
  ret ptr %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 43, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #11
  br label %40

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_715XercesDOMParser10resetParseEv to i64), i64 0) #13
  call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true) #13
  %17 = icmp eq i16 %2, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef null) #13
  br label %28

20:                                               ; preds = %28
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
          to label %48 unwind label %32

28:                                               ; preds = %18, %16
  %29 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %30 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %29, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #13
          to label %31 unwind label %20

31:                                               ; preds = %28
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret ptr %30

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %34 unwind label %45

34:                                               ; preds = %32
  %35 = extractvalue { ptr, i32 } %33, 1
  %36 = extractvalue { ptr, i32 } %33, 0
  br label %37

37:                                               ; preds = %34, %20
  %38 = phi i32 [ %35, %34 ], [ %23, %20 ]
  %39 = phi ptr [ %36, %34 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %40

40:                                               ; preds = %37, %12
  %41 = phi i32 [ %15, %12 ], [ %38, %37 ]
  %42 = phi ptr [ %14, %12 ], [ %39, %37 ]
  %43 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %44 = insertvalue { ptr, i32 } %43, i32 %41, 1
  resume { ptr, i32 } %44

45:                                               ; preds = %32
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #12
  unreachable

48:                                               ; preds = %26
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %3 = load i8, ptr %2, align 1, !tbaa !88, !range !68, !noundef !69
  %4 = icmp ne i8 %3, 0
  ret i1 %4
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #13
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser10resetParseEv(ptr noundef nonnull align 8 dereferenceable(224) %0) #4 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %3 = tail call noundef ptr @_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %2) #13
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %8

5:                                                ; preds = %1
  %6 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  tail call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %6, ptr noundef nonnull %7) #13
  br label %8

8:                                                ; preds = %5, %1
  tail call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext false) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #4 comdat align 2 !prof !43 {
  store ptr %1, ptr %0, align 8, !tbaa !89
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !91
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %3 = zext i1 %1 to i8
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 %3, ptr %4, align 1, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !76 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  store ptr %1, ptr %3, align 8, !tbaa !92
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #9

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = load ptr, ptr %0, align 8, !tbaa !89
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !91
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !91
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !40
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !69
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(224) %11) #13
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #12
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 43, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #11
  br label %40

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_715XercesDOMParser10resetParseEv to i64), i64 0) #13
  call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true) #13
  %17 = icmp eq i16 %2, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef null) #13
  br label %28

20:                                               ; preds = %28
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
          to label %48 unwind label %32

28:                                               ; preds = %18, %16
  %29 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %30 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %29, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) #13
          to label %31 unwind label %20

31:                                               ; preds = %28
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret ptr %30

32:                                               ; preds = %26
  %33 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %34 unwind label %45

34:                                               ; preds = %32
  %35 = extractvalue { ptr, i32 } %33, 1
  %36 = extractvalue { ptr, i32 } %33, 0
  br label %37

37:                                               ; preds = %34, %20
  %38 = phi i32 [ %35, %34 ], [ %23, %20 ]
  %39 = phi ptr [ %36, %34 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %40

40:                                               ; preds = %37, %12
  %41 = phi i32 [ %15, %12 ], [ %38, %37 ]
  %42 = phi ptr [ %14, %12 ], [ %39, %37 ]
  %43 = insertvalue { ptr, i32 } poison, ptr %42, 0
  %44 = insertvalue { ptr, i32 } %43, i32 %41, 1
  resume { ptr, i32 } %44

45:                                               ; preds = %32
  %46 = landingpad { ptr, i32 }
          catch ptr null
  %47 = extractvalue { ptr, i32 } %46, 0
  call void @__clang_call_terminate(ptr %47) #12
  unreachable

48:                                               ; preds = %26
  unreachable
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  %6 = tail call noundef zeroext i1 @_ZNK11xercesc_2_717AbstractDOMParser18getParseInProgressEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  br i1 %6, label %7, label %16

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #11
  %9 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %10 = load ptr, ptr %9, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 43, ptr noundef %10) #13
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #15
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  %14 = extractvalue { ptr, i32 } %13, 0
  %15 = extractvalue { ptr, i32 } %13, 1
  tail call void @__cxa_free_exception(ptr %8) #11
  br label %47

16:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_715XercesDOMParser10resetParseEv to i64), i64 0) #13
  call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext true) #13
  %17 = icmp eq i16 %2, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %16
  %19 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %19, ptr noundef null) #13
  br label %28

20:                                               ; preds = %28
  %21 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %22 = extractvalue { ptr, i32 } %21, 0
  %23 = extractvalue { ptr, i32 } %21, 1
  %24 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #11
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = call ptr @__cxa_begin_catch(ptr %22) #11
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  invoke void @__cxa_rethrow() #15
          to label %55 unwind label %39

28:                                               ; preds = %18, %16
  %29 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %30 = load ptr, ptr %29, align 8, !tbaa !40
  %31 = getelementptr inbounds ptr, ptr %30, i64 10
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(776) %29, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) #13
          to label %34 unwind label %20

34:                                               ; preds = %28
  br i1 %17, label %35, label %38

35:                                               ; preds = %34
  %36 = call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser10getScannerEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  %37 = getelementptr inbounds i8, ptr %0, i64 24
  call void @_ZN11xercesc_2_710XMLScanner17setDocTypeHandlerEPNS_14DocTypeHandlerE(ptr noundef nonnull align 8 dereferenceable(776) %36, ptr noundef nonnull %37) #13
  br label %38

38:                                               ; preds = %35, %34
  call void @_ZN11xercesc_2_717AbstractDOMParser18setParseInProgressEb(ptr noundef nonnull align 8 dereferenceable(200) %0, i1 noundef zeroext false) #13
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  ret ptr %33

39:                                               ; preds = %26
  %40 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %41 unwind label %52

41:                                               ; preds = %39
  %42 = extractvalue { ptr, i32 } %40, 1
  %43 = extractvalue { ptr, i32 } %40, 0
  br label %44

44:                                               ; preds = %41, %20
  %45 = phi i32 [ %42, %41 ], [ %23, %20 ]
  %46 = phi ptr [ %43, %41 ], [ %22, %20 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #11
  br label %47

47:                                               ; preds = %44, %12
  %48 = phi i32 [ %15, %12 ], [ %45, %44 ]
  %49 = phi ptr [ %14, %12 ], [ %46, %44 ]
  %50 = insertvalue { ptr, i32 } poison, ptr %49, 0
  %51 = insertvalue { ptr, i32 } %50, i32 %48, 1
  resume { ptr, i32 } %51

52:                                               ; preds = %39
  %53 = landingpad { ptr, i32 }
          catch ptr null
  %54 = extractvalue { ptr, i32 } %53, 0
  call void @__clang_call_terminate(ptr %54) #12
  unreachable

55:                                               ; preds = %26
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_710XMLScanner17getDocTypeHandlerEv(ptr noundef nonnull align 8 dereferenceable(776) %0) local_unnamed_addr #4 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 42
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser22resetCachedGrammarPoolEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !43 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_717AbstractDOMParser18getGrammarResolverEv(ptr noundef nonnull align 8 dereferenceable(200) %0) #13
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %2) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 comdat align 2 !prof !43 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #4 comdat align 2 !prof !43 {
  ret i1 false
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 comdat align 2 !prof !39 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 comdat align 2 !prof !43 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #7 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 1 %1) #13
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #7 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(224) %4, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) #13
  ret i1 %5
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef %0) unnamed_addr #7 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(224) %2) #13
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #7 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %3, ptr noundef nonnull align 1 %1) #13
  ret void
}

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7 align 2

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79ReaderMgr12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(80) %0) local_unnamed_addr #2 comdat align 2 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %3) #13
  br label %7

7:                                                ; preds = %1, %5
  %8 = phi i32 [ %6, %5 ], [ 0, %1 ]
  ret i32 %8
}

; Function Attrs: optsize
declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef %1) local_unnamed_addr #4 comdat align 2 !prof !78 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::ReaderMgr", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !94
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #14
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !43 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !43 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !95
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #13
  invoke void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #13
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #14
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !43 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #13
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #10

attributes #0 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nosync nounwind memory(none) }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #11 = { nounwind }
attributes #12 = { noreturn nounwind }
attributes #13 = { optsize }
attributes #14 = { nounwind optsize }
attributes #15 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_715XercesDOMParserD2Ev, ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, i64 1}
!37 = !{ptr @_ZN11xercesc_2_710XMLScanner16setEntityHandlerEPNS_16XMLEntityHandlerE, ptr @_ZN11xercesc_2_79ReaderMgr16setEntityHandlerEPNS_16XMLEntityHandlerE, i64 2}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!"function_entry_count", i64 0}
!44 = !{!45, !53, i64 48}
!45 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !46, i64 0, !47, i64 8, !48, i64 16, !49, i64 24, !50, i64 32, !51, i64 40, !51, i64 41, !51, i64 42, !51, i64 43, !51, i64 44, !51, i64 45, !51, i64 46, !53, i64 48, !53, i64 56, !53, i64 64, !53, i64 72, !53, i64 80, !53, i64 88, !53, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !54, i64 160, !53, i64 184, !53, i64 192}
!46 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!47 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!48 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!49 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!50 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!51 = !{!"bool", !52, i64 0}
!52 = !{!"omnipotent char", !42, i64 0}
!53 = !{!"any pointer", !52, i64 0}
!54 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !55, i64 0, !53, i64 8, !53, i64 16}
!55 = !{!"int", !52, i64 0}
!56 = !{!57, !51, i64 29}
!57 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !58, i64 0, !59, i64 8, !51, i64 16, !51, i64 17, !51, i64 18, !51, i64 19, !51, i64 20, !51, i64 21, !51, i64 22, !51, i64 23, !51, i64 24, !51, i64 25, !51, i64 26, !51, i64 27, !51, i64 28, !51, i64 29, !51, i64 30, !51, i64 31, !51, i64 32, !51, i64 33, !51, i64 34, !51, i64 35, !51, i64 36, !51, i64 37, !51, i64 38, !55, i64 40, !55, i64 44, !55, i64 48, !55, i64 52, !55, i64 56, !55, i64 60, !55, i64 64, !55, i64 68, !53, i64 72, !55, i64 80, !55, i64 84, !55, i64 88, !55, i64 92, !55, i64 96, !53, i64 104, !53, i64 112, !53, i64 120, !53, i64 128, !53, i64 136, !53, i64 144, !53, i64 152, !53, i64 160, !53, i64 168, !51, i64 176, !60, i64 184, !53, i64 264, !63, i64 272, !53, i64 280, !53, i64 288, !53, i64 296, !53, i64 304, !53, i64 312, !53, i64 320, !53, i64 328, !53, i64 336, !53, i64 344, !62, i64 352, !53, i64 360, !54, i64 368, !64, i64 392, !64, i64 432, !64, i64 472, !64, i64 512, !64, i64 552, !64, i64 592, !64, i64 632, !65, i64 672}
!58 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!59 = !{!"long", !52, i64 0}
!60 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !61, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !55, i64 40, !53, i64 48, !51, i64 56, !62, i64 60, !51, i64 64, !53, i64 72}
!61 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!62 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !52, i64 0}
!63 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !52, i64 0}
!64 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !55, i64 0, !55, i64 4, !55, i64 8, !51, i64 12, !53, i64 16, !53, i64 24, !53, i64 32}
!65 = !{!"_ZTSN11xercesc_2_79ElemStackE", !55, i64 0, !55, i64 4, !66, i64 8, !53, i64 48, !55, i64 56, !55, i64 60, !55, i64 64, !55, i64 68, !55, i64 72, !55, i64 76, !55, i64 80, !53, i64 88, !53, i64 96}
!66 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !67, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !55, i64 32, !55, i64 36}
!67 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!68 = !{i8 0, i8 2}
!69 = !{}
!70 = !{!57, !51, i64 30}
!71 = !{!45, !53, i64 120}
!72 = !{!57, !53, i64 304}
!73 = !{!57, !51, i64 35}
!74 = !{!75, !53, i64 216}
!75 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !45, i64 0, !53, i64 200, !53, i64 208, !53, i64 216}
!76 = !{!"function_entry_count", i64 3}
!77 = !{!57, !53, i64 144}
!78 = !{!"function_entry_count", i64 2}
!79 = !{!57, !53, i64 152}
!80 = !{!75, !53, i64 200}
!81 = !{!75, !53, i64 208}
!82 = !{!57, !53, i64 136}
!83 = !{!45, !53, i64 144}
!84 = !{!85, !53, i64 8}
!85 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !86, i64 0, !53, i64 8, !53, i64 16, !53, i64 24, !53, i64 32, !53, i64 40}
!86 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !52, i64 0}
!87 = !{!85, !53, i64 16}
!88 = !{!45, !51, i64 43}
!89 = !{!90, !53, i64 0}
!90 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_15XercesDOMParserEEE", !53, i64 0, !52, i64 8}
!91 = !{!90, !52, i64 8}
!92 = !{!57, !53, i64 128}
!93 = !{!60, !53, i64 16}
!94 = !{!60, !53, i64 24}
!95 = !{!96, !53, i64 40}
!96 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !97, i64 8, !53, i64 16, !55, i64 24, !53, i64 32, !53, i64 40}
!97 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !52, i64 0}
