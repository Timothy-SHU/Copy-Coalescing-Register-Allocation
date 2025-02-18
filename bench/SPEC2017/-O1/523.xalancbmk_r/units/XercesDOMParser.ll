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
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv = comdat any

$_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE = comdat any

$_ZN11xercesc_2_711IOExceptionD0Ev = comdat any

$_ZNK11xercesc_2_711IOException7getTypeEv = comdat any

$_ZNK11xercesc_2_711IOException9duplicateEv = comdat any

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

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #0 comdat !prof !38 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #16
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3)
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

declare void @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_715XercesDOMParserD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParserD0Ev(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #4 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N11xercesc_2_715XercesDOMParserD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !38 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_717AbstractDOMParserD2Ev(ptr noundef nonnull align 8 dereferenceable(200) %2) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %2) #16
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715XercesDOMParser25isCachingGrammarFromParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 15
  %5 = load i8, ptr %4, align 1, !tbaa !55, !range !67, !noundef !68
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715XercesDOMParser27isUsingCachedGrammarInParseEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 16
  %5 = load i8, ptr %4, align 2, !tbaa !69, !range !67, !noundef !68
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser10getGrammarEPKt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %4 = load ptr, ptr %3, align 8, !tbaa !70
  %5 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %4, ptr noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser14getRootGrammarEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 55
  %5 = load ptr, ptr %4, align 8, !tbaa !71
  ret ptr %5
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZNK11xercesc_2_715XercesDOMParser10getURITextEj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = tail call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %4, i32 noundef %1)
  ret ptr %5
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_715XercesDOMParser12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 49, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !72
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = tail call noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992) %5)
  br label %9

9:                                                ; preds = %1, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %1 ]
  ret i32 %10
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_715XercesDOMParser18getIgnoreCachedDTDEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #6 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 21
  %5 = load i8, ptr %4, align 1, !tbaa !73, !range !67, !noundef !68
  %6 = icmp ne i8 %5, 0
  ret i1 %6
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser15setErrorHandlerEPNS_12ErrorHandlerE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 3
  store ptr %1, ptr %3, align 8, !tbaa !74
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = icmp eq ptr %1, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 44
  store ptr %8, ptr %9, align 8, !tbaa !76
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 45
  store ptr %1, ptr %10, align 8, !tbaa !77
  br label %13

11:                                               ; preds = %2
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, i8 0, i64 16, i1 false)
  br label %13

13:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser17setEntityResolverEPNS_14EntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !78
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !80
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 2
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !79
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser20setXMLEntityResolverEPNS_17XMLEntityResolverE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1) local_unnamed_addr #7 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 2
  store ptr %1, ptr %3, align 8, !tbaa !82
  %4 = icmp eq ptr %1, null
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %6 = load ptr, ptr %5, align 8, !tbaa !43
  br i1 %4, label %12, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds i8, ptr %0, i64 16
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr %8, ptr %9, align 8, !tbaa !79
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  store ptr %8, ptr %10, align 8, !tbaa !80
  %11 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  br label %15

12:                                               ; preds = %2
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 43
  store ptr null, ptr %13, align 8, !tbaa !79
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %6, i64 0, i32 49, i32 3
  br label %15

15:                                               ; preds = %12, %7
  %16 = phi ptr [ %14, %12 ], [ %11, %7 ]
  store ptr null, ptr %16, align 8, !tbaa !81
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser21cacheGrammarFromParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 15
  store i8 %5, ptr %6, align 1, !tbaa !55
  br i1 %1, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 16
  store i8 1, ptr %8, align 2, !tbaa !69
  br label %9

9:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser23useCachedGrammarInParseEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #9 align 2 !prof !38 {
  br i1 %1, label %9, label %3

3:                                                ; preds = %2
  %4 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %5 = load ptr, ptr %4, align 8, !tbaa !43
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %5, i64 0, i32 15
  %7 = load i8, ptr %6, align 1, !tbaa !55, !range !67, !noundef !68
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %3, %2
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %11 = load ptr, ptr %10, align 8, !tbaa !43
  %12 = zext i1 %1 to i8
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %11, i64 0, i32 16
  store i8 %12, ptr %13, align 2, !tbaa !69
  br label %14

14:                                               ; preds = %9, %3
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser18setIgnoreCachedDTDEb(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i1 noundef zeroext %1) local_unnamed_addr #7 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = zext i1 %1 to i8
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %4, i64 0, i32 21
  store i8 %5, ptr %6, align 1, !tbaa !73
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser17resetDocumentPoolEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200) %0)
  ret void
}

declare void @_ZN11xercesc_2_717AbstractDOMParser9resetPoolEv(ptr noundef nonnull align 8 dereferenceable(200)) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %10 = alloca %"class.xercesc_2_7::SAXParseException", align 8
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %10) #16
  %11 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  call void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %10, ptr noundef %4, ptr noundef %6, ptr noundef %5, i64 noundef %7, i64 noundef %8, ptr noundef %12)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !74
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = icmp eq i32 %3, 2
  br i1 %17, label %18, label %40

18:                                               ; preds = %16
  %19 = call ptr @__cxa_allocate_exception(i64 56) #16
  invoke void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %20 unwind label %21

20:                                               ; preds = %18
  invoke void @__cxa_throw(ptr nonnull %19, ptr nonnull @_ZTIN11xercesc_2_717SAXParseExceptionE, ptr nonnull @_ZN11xercesc_2_717SAXParseExceptionD1Ev) #18
          to label %43 unwind label %23

21:                                               ; preds = %18
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %19) #16
  br label %41

23:                                               ; preds = %37, %20
  %24 = landingpad { ptr, i32 }
          cleanup
  br label %41

25:                                               ; preds = %9
  %26 = icmp eq i32 %3, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %25
  %28 = load ptr, ptr %14, align 8, !tbaa !40
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  br label %37

30:                                               ; preds = %25
  %31 = icmp sgt i32 %3, 1
  %32 = load ptr, ptr %14, align 8, !tbaa !40
  br i1 %31, label %33, label %35

33:                                               ; preds = %30
  %34 = getelementptr inbounds ptr, ptr %32, i64 4
  br label %37

35:                                               ; preds = %30
  %36 = getelementptr inbounds ptr, ptr %32, i64 3
  br label %37

37:                                               ; preds = %27, %33, %35
  %38 = phi ptr [ %29, %27 ], [ %34, %33 ], [ %36, %35 ]
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef nonnull align 8 dereferenceable(56) %10)
          to label %40 unwind label %23

40:                                               ; preds = %37, %16
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  ret void

41:                                               ; preds = %23, %21
  %42 = phi { ptr, i32 } [ %24, %23 ], [ %22, %21 ]
  call void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %10) #16
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %10) #16
  resume { ptr, i32 } %42

43:                                               ; preds = %20
  unreachable
}

declare void @_ZN11xercesc_2_717SAXParseExceptionC1EPKtS2_S2_llPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, ptr noundef) unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

declare void @_ZN11xercesc_2_717SAXParseExceptionC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_717SAXParseExceptionD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr nocapture noundef readonly %0, i32 %1, ptr nocapture readnone %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8) unnamed_addr #10 align 2 !prof !38 {
  %10 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_715XercesDOMParser5errorEjPKtNS_16XMLErrorReporter8ErrTypesES2_S2_S2_ll(ptr noundef nonnull align 8 dereferenceable(224) %10, i32 poison, ptr poison, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, i64 noundef %7, i64 noundef %8)
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #11 align 2 !prof !38 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZThn8_N11xercesc_2_715XercesDOMParser11resetErrorsEv(ptr nocapture readnone %0) unnamed_addr #11 align 2 !prof !39 {
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #2 align 2 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !40
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resolveEntityEPKtS2_S2_(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #10 align 2 !prof !38 {
  %5 = getelementptr inbounds i8, ptr %0, i64 184
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !40
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef %1, ptr noundef %2)
  br label %13

13:                                               ; preds = %4, %8
  %14 = phi ptr [ %12, %8 ], [ null, %4 ]
  ret ptr %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0, ptr noundef %1) unnamed_addr #2 align 2 !prof !38 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds %"class.xercesc_2_7::XercesDOMParser", ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %15, %19, %6
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold uwtable
define dso_local noundef ptr @_ZThn16_N11xercesc_2_715XercesDOMParser13resolveEntityEPNS_21XMLResourceIdentifierE(ptr nocapture noundef readonly %0, ptr noundef %1) unnamed_addr #10 align 2 !prof !38 {
  %3 = getelementptr inbounds i8, ptr %0, i64 184
  %4 = load ptr, ptr %3, align 8, !tbaa !78
  %5 = icmp eq ptr %4, null
  br i1 %5, label %15, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !84
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLResourceIdentifier", ptr %1, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !87
  %11 = load ptr, ptr %4, align 8, !tbaa !40
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %8, ptr noundef %10)
  br label %24

15:                                               ; preds = %2
  %16 = getelementptr inbounds i8, ptr %0, i64 192
  %17 = load ptr, ptr %16, align 8, !tbaa !82
  %18 = icmp eq ptr %17, null
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !40
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %1)
  br label %24

24:                                               ; preds = %6, %15, %19
  %25 = phi ptr [ %14, %6 ], [ %23, %19 ], [ null, %15 ]
  ret ptr %25
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !88, !range !67, !noundef !68
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 265, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #16
  br label %59

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !88
  %18 = icmp eq i16 %2, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %21, i64 0, i32 42
  store ptr null, ptr %22, align 8, !tbaa !89
  br label %31

23:                                               ; preds = %31
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = tail call ptr @__cxa_begin_catch(ptr %25) #16
  invoke void @__cxa_rethrow() #18
          to label %67 unwind label %43

31:                                               ; preds = %19, %17
  %32 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776) %33, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %35 unwind label %23

35:                                               ; preds = %31
  %36 = load ptr, ptr %32, align 8, !tbaa !43
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %36, i64 0, i32 42
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %41, ptr %37, align 8, !tbaa !89
  br label %42

42:                                               ; preds = %35, %40
  store i8 0, ptr %5, align 1, !tbaa !88
  ret ptr %34

43:                                               ; preds = %29
  %44 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %45 unwind label %64

45:                                               ; preds = %43
  %46 = extractvalue { ptr, i32 } %44, 1
  %47 = extractvalue { ptr, i32 } %44, 0
  br label %48

48:                                               ; preds = %45, %23
  %49 = phi ptr [ null, %45 ], [ @_ZN11xercesc_2_715XercesDOMParser10resetParseEv, %23 ]
  %50 = phi ptr [ null, %45 ], [ %0, %23 ]
  %51 = phi i32 [ %46, %45 ], [ %26, %23 ]
  %52 = phi ptr [ %47, %45 ], [ %25, %23 ]
  %53 = icmp eq ptr %50, null
  %54 = or i1 %28, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(224) %50)
          to label %59 unwind label %56

56:                                               ; preds = %55
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %55, %48, %13
  %60 = phi i32 [ %16, %13 ], [ %51, %48 ], [ %51, %55 ]
  %61 = phi ptr [ %15, %13 ], [ %52, %48 ], [ %52, %55 ]
  %62 = insertvalue { ptr, i32 } poison, ptr %61, 0
  %63 = insertvalue { ptr, i32 } %62, i32 %60, 1
  resume { ptr, i32 } %63

64:                                               ; preds = %43
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %29
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser10resetParseEv(ptr noundef nonnull align 8 dereferenceable(224) %0) local_unnamed_addr #9 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %3 = load ptr, ptr %2, align 8, !tbaa !43
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %3, i64 0, i32 42
  %5 = load ptr, ptr %4, align 8, !tbaa !89
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %8, ptr %4, align 8, !tbaa !89
  br label %9

9:                                                ; preds = %7, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  store i8 0, ptr %10, align 1, !tbaa !88
  ret void
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKcsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #12

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !88, !range !67, !noundef !68
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 294, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #16
  br label %59

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !88
  %18 = icmp eq i16 %2, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %21, i64 0, i32 42
  store ptr null, ptr %22, align 8, !tbaa !89
  br label %31

23:                                               ; preds = %31
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %23
  %30 = tail call ptr @__cxa_begin_catch(ptr %25) #16
  invoke void @__cxa_rethrow() #18
          to label %67 unwind label %43

31:                                               ; preds = %19, %17
  %32 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = invoke noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776) %33, ptr noundef %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %35 unwind label %23

35:                                               ; preds = %31
  %36 = load ptr, ptr %32, align 8, !tbaa !43
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %36, i64 0, i32 42
  %38 = load ptr, ptr %37, align 8, !tbaa !89
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %41, ptr %37, align 8, !tbaa !89
  br label %42

42:                                               ; preds = %35, %40
  store i8 0, ptr %5, align 1, !tbaa !88
  ret ptr %34

43:                                               ; preds = %29
  %44 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %45 unwind label %64

45:                                               ; preds = %43
  %46 = extractvalue { ptr, i32 } %44, 1
  %47 = extractvalue { ptr, i32 } %44, 0
  br label %48

48:                                               ; preds = %45, %23
  %49 = phi ptr [ null, %45 ], [ @_ZN11xercesc_2_715XercesDOMParser10resetParseEv, %23 ]
  %50 = phi ptr [ null, %45 ], [ %0, %23 ]
  %51 = phi i32 [ %46, %45 ], [ %26, %23 ]
  %52 = phi ptr [ %47, %45 ], [ %25, %23 ]
  %53 = icmp eq ptr %50, null
  %54 = or i1 %28, %53
  br i1 %54, label %59, label %55

55:                                               ; preds = %48
  invoke void %49(ptr noundef nonnull align 8 dereferenceable(224) %50)
          to label %59 unwind label %56

56:                                               ; preds = %55
  %57 = landingpad { ptr, i32 }
          catch ptr null
  %58 = extractvalue { ptr, i32 } %57, 0
  tail call void @__clang_call_terminate(ptr %58) #17
  unreachable

59:                                               ; preds = %55, %48, %13
  %60 = phi i32 [ %16, %13 ], [ %51, %48 ], [ %51, %55 ]
  %61 = phi ptr [ %15, %13 ], [ %52, %48 ], [ %52, %55 ]
  %62 = insertvalue { ptr, i32 } poison, ptr %61, 0
  %63 = insertvalue { ptr, i32 } %62, i32 %60, 1
  resume { ptr, i32 } %63

64:                                               ; preds = %43
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %29
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_710XMLScanner11loadGrammarEPKtsb(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef, i16 noundef signext, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XercesDOMParser11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %5 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 8
  %6 = load i8, ptr %5, align 1, !tbaa !88, !range !67, !noundef !68
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %17, label %8

8:                                                ; preds = %4
  %9 = tail call ptr @__cxa_allocate_exception(i64 48) #16
  %10 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 24
  %11 = load ptr, ptr %10, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_711IOExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull @.str, i32 noundef 323, i32 noundef 43, ptr noundef %11)
          to label %12 unwind label %13

12:                                               ; preds = %8
  tail call void @__cxa_throw(ptr nonnull %9, ptr nonnull @_ZTIN11xercesc_2_711IOExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #18
  unreachable

13:                                               ; preds = %8
  %14 = landingpad { ptr, i32 }
          cleanup
  %15 = extractvalue { ptr, i32 } %14, 0
  %16 = extractvalue { ptr, i32 } %14, 1
  tail call void @__cxa_free_exception(ptr %9) #16
  br label %67

17:                                               ; preds = %4
  store i8 1, ptr %5, align 1, !tbaa !88
  %18 = icmp eq i16 %2, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %17
  %20 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %21 = load ptr, ptr %20, align 8, !tbaa !43
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %21, i64 0, i32 42
  store ptr null, ptr %22, align 8, !tbaa !89
  br label %31

23:                                               ; preds = %31
  %24 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %25 = extractvalue { ptr, i32 } %24, 0
  %26 = extractvalue { ptr, i32 } %24, 1
  %27 = tail call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #16
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = tail call ptr @__cxa_begin_catch(ptr %25) #16
  invoke void @__cxa_rethrow() #18
          to label %75 unwind label %51

31:                                               ; preds = %19, %17
  %32 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 12
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  %34 = load ptr, ptr %33, align 8, !tbaa !40
  %35 = getelementptr inbounds ptr, ptr %34, i64 10
  %36 = load ptr, ptr %35, align 8
  %37 = invoke noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(776) %33, ptr noundef nonnull align 1 %1, i16 noundef signext %2, i1 noundef zeroext %3)
          to label %38 unwind label %23

38:                                               ; preds = %31
  br i1 %18, label %39, label %43

39:                                               ; preds = %38
  %40 = load ptr, ptr %32, align 8, !tbaa !43
  %41 = getelementptr inbounds i8, ptr %0, i64 24
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %40, i64 0, i32 42
  store ptr %41, ptr %42, align 8, !tbaa !89
  br label %43

43:                                               ; preds = %39, %38
  store i8 0, ptr %5, align 1, !tbaa !88
  %44 = load ptr, ptr %32, align 8, !tbaa !43
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %44, i64 0, i32 42
  %46 = load ptr, ptr %45, align 8, !tbaa !89
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr %49, ptr %45, align 8, !tbaa !89
  br label %50

50:                                               ; preds = %43, %48
  store i8 0, ptr %5, align 1, !tbaa !88
  ret ptr %37

51:                                               ; preds = %29
  %52 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %53 unwind label %72

53:                                               ; preds = %51
  %54 = extractvalue { ptr, i32 } %52, 1
  %55 = extractvalue { ptr, i32 } %52, 0
  br label %56

56:                                               ; preds = %53, %23
  %57 = phi ptr [ null, %53 ], [ @_ZN11xercesc_2_715XercesDOMParser10resetParseEv, %23 ]
  %58 = phi ptr [ null, %53 ], [ %0, %23 ]
  %59 = phi i32 [ %54, %53 ], [ %26, %23 ]
  %60 = phi ptr [ %55, %53 ], [ %25, %23 ]
  %61 = icmp eq ptr %58, null
  %62 = or i1 %28, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %56
  invoke void %57(ptr noundef nonnull align 8 dereferenceable(224) %58)
          to label %67 unwind label %64

64:                                               ; preds = %63
  %65 = landingpad { ptr, i32 }
          catch ptr null
  %66 = extractvalue { ptr, i32 } %65, 0
  tail call void @__clang_call_terminate(ptr %66) #17
  unreachable

67:                                               ; preds = %63, %56, %13
  %68 = phi i32 [ %16, %13 ], [ %59, %56 ], [ %59, %63 ]
  %69 = phi ptr [ %15, %13 ], [ %60, %56 ], [ %60, %63 ]
  %70 = insertvalue { ptr, i32 } poison, ptr %69, 0
  %71 = insertvalue { ptr, i32 } %70, i32 %68, 1
  resume { ptr, i32 } %71

72:                                               ; preds = %51
  %73 = landingpad { ptr, i32 }
          catch ptr null
  %74 = extractvalue { ptr, i32 } %73, 0
  tail call void @__clang_call_terminate(ptr %74) #17
  unreachable

75:                                               ; preds = %29
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XercesDOMParser22resetCachedGrammarPoolEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(224) %0) local_unnamed_addr #2 align 2 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::AbstractDOMParser", ptr %0, i64 0, i32 21
  %3 = load ptr, ptr %2, align 8, !tbaa !70
  tail call void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80) %3)
  ret void
}

declare void @_ZN11xercesc_2_715GrammarResolver18resetCachedGrammarEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser13docCharactersEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser10docCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser5docPIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser10endElementERKNS_14XMLElementDeclEjbPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser18endEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser19ignorableWhitespaceEPKtjb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12startElementERKNS_14XMLElementDeclEjPKtRKNS_11RefVectorOfINS_7XMLAttrEEEjbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(33), i32 noundef, ptr noundef, ptr noundef nonnull align 1, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser20startEntityReferenceERKNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(72)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser7XMLDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser15elementTypeInfoEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14setPSVIHandlerEPNS_11PSVIHandlerE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, i32 noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef nonnull align 8 dereferenceable(200)) unnamed_addr #3

declare void @_ZN11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_717AbstractDOMParser19createElementNSNodeEPKtS2_(ptr noundef nonnull align 8 dereferenceable(200), ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #13 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #13 comdat align 2 !prof !38 {
  ret i1 false
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef nonnull align 8 dereferenceable(224) %0) unnamed_addr #13 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(224) %0, ptr noundef nonnull align 1 %1) unnamed_addr #13 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser14endInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #14 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZThn16_N11xercesc_2_715XercesDOMParser14expandSystemIdEPKtRNS_9XMLBufferE(ptr noundef %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) unnamed_addr #14 comdat align 2 !prof !38 {
  ret i1 false
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser13resetEntitiesEv(ptr noundef %0) unnamed_addr #14 comdat align 2 !prof !39 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_715XercesDOMParser16startInputSourceERKNS_11InputSourceE(ptr noundef %0, ptr noundef nonnull align 1 %1) unnamed_addr #14 comdat align 2 !prof !38 {
  ret void
}

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser6attDefERKNS_14DTDElementDeclERKNS_9DTDAttDefEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(72), i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14doctypeCommentEPKt(ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11doctypeDeclERKNS_14DTDElementDeclEPKtS5_bb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser9doctypePIEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser17doctypeWhitespaceEPKtj(ptr noundef, ptr noundef, i32 noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser11elementDeclERKNS_14DTDElementDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10endAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endIntSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12endExtSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser10entityDeclERKNS_13DTDEntityDeclEbb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(75), i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12resetDocTypeEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12notationDeclERKNS_15XMLNotationDeclEb(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56), i1 noundef zeroext) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser12startAttListERKNS_14DTDElementDeclE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(80)) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startIntSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser14startExtSubsetEv(ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11xercesc_2_717AbstractDOMParser8TextDeclEPKtS2_(ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser17handleElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser24handlePartialElementPSVIEPKtS2_PNS_11PSVIElementE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

; Function Attrs: cold uwtable
declare void @_ZThn32_N11xercesc_2_717AbstractDOMParser20handleAttributesPSVIEPKtS2_PNS_17PSVIAttributeListE(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #10 align 2

declare noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr noundef nonnull align 8 dereferenceable(163992)) local_unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711IOExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !38 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #16
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #16
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !38 {
  ret ptr @_ZN11xercesc_2_76XMLUni18fgIOException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711IOException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !38 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_711IOExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !40
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #16
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

attributes #0 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(none) }
attributes #13 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nounwind }
attributes #17 = { noreturn nounwind }
attributes #18 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!37}

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
!34 = distinct !{!35, !36}
!35 = !{ptr @_ZN11xercesc_2_715XercesDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, ptr @_ZN11xercesc_2_717AbstractDOMParserC2EPNS_12XMLValidatorEPNS_13MemoryManagerEPNS_14XMLGrammarPoolE, i64 1}
!36 = !{ptr @_ZN11xercesc_2_715XercesDOMParserD2Ev, ptr @_ZN11xercesc_2_717AbstractDOMParserD2Ev, i64 1}
!37 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!38 = !{!"function_entry_count", i64 0}
!39 = !{!"function_entry_count", i64 1}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !52, i64 48}
!44 = !{!"_ZTSN11xercesc_2_717AbstractDOMParserE", !45, i64 0, !46, i64 8, !47, i64 16, !48, i64 24, !49, i64 32, !50, i64 40, !50, i64 41, !50, i64 42, !50, i64 43, !50, i64 44, !50, i64 45, !50, i64 46, !52, i64 48, !52, i64 56, !52, i64 64, !52, i64 72, !52, i64 80, !52, i64 88, !52, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !53, i64 160, !52, i64 184, !52, i64 192}
!45 = !{!"_ZTSN11xercesc_2_718XMLDocumentHandlerE"}
!46 = !{!"_ZTSN11xercesc_2_716XMLErrorReporterE"}
!47 = !{!"_ZTSN11xercesc_2_716XMLEntityHandlerE"}
!48 = !{!"_ZTSN11xercesc_2_714DocTypeHandlerE"}
!49 = !{!"_ZTSN11xercesc_2_711PSVIHandlerE"}
!50 = !{!"bool", !51, i64 0}
!51 = !{!"omnipotent char", !42, i64 0}
!52 = !{!"any pointer", !51, i64 0}
!53 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !54, i64 0, !52, i64 8, !52, i64 16}
!54 = !{!"int", !51, i64 0}
!55 = !{!56, !50, i64 29}
!56 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !57, i64 0, !58, i64 8, !50, i64 16, !50, i64 17, !50, i64 18, !50, i64 19, !50, i64 20, !50, i64 21, !50, i64 22, !50, i64 23, !50, i64 24, !50, i64 25, !50, i64 26, !50, i64 27, !50, i64 28, !50, i64 29, !50, i64 30, !50, i64 31, !50, i64 32, !50, i64 33, !50, i64 34, !50, i64 35, !50, i64 36, !50, i64 37, !50, i64 38, !54, i64 40, !54, i64 44, !54, i64 48, !54, i64 52, !54, i64 56, !54, i64 60, !54, i64 64, !54, i64 68, !52, i64 72, !54, i64 80, !54, i64 84, !54, i64 88, !54, i64 92, !54, i64 96, !52, i64 104, !52, i64 112, !52, i64 120, !52, i64 128, !52, i64 136, !52, i64 144, !52, i64 152, !52, i64 160, !52, i64 168, !50, i64 176, !59, i64 184, !52, i64 264, !62, i64 272, !52, i64 280, !52, i64 288, !52, i64 296, !52, i64 304, !52, i64 312, !52, i64 320, !52, i64 328, !52, i64 336, !52, i64 344, !61, i64 352, !52, i64 360, !53, i64 368, !63, i64 392, !63, i64 432, !63, i64 472, !63, i64 512, !63, i64 552, !63, i64 592, !63, i64 632, !64, i64 672}
!57 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!58 = !{!"long", !51, i64 0}
!59 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !60, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !54, i64 40, !52, i64 48, !50, i64 56, !61, i64 60, !50, i64 64, !52, i64 72}
!60 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!61 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !51, i64 0}
!62 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !51, i64 0}
!63 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !54, i64 0, !54, i64 4, !54, i64 8, !50, i64 12, !52, i64 16, !52, i64 24, !52, i64 32}
!64 = !{!"_ZTSN11xercesc_2_79ElemStackE", !54, i64 0, !54, i64 4, !65, i64 8, !52, i64 48, !54, i64 56, !54, i64 60, !54, i64 64, !54, i64 68, !54, i64 72, !54, i64 76, !54, i64 80, !52, i64 88, !52, i64 96}
!65 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !66, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !54, i64 32, !54, i64 36}
!66 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!67 = !{i8 0, i8 2}
!68 = !{}
!69 = !{!56, !50, i64 30}
!70 = !{!44, !52, i64 120}
!71 = !{!56, !52, i64 304}
!72 = !{!59, !52, i64 16}
!73 = !{!56, !50, i64 35}
!74 = !{!75, !52, i64 216}
!75 = !{!"_ZTSN11xercesc_2_715XercesDOMParserE", !44, i64 0, !52, i64 200, !52, i64 208, !52, i64 216}
!76 = !{!56, !52, i64 144}
!77 = !{!56, !52, i64 152}
!78 = !{!75, !52, i64 200}
!79 = !{!56, !52, i64 136}
!80 = !{!59, !52, i64 24}
!81 = !{!52, !52, i64 0}
!82 = !{!75, !52, i64 208}
!83 = !{!44, !52, i64 144}
!84 = !{!85, !52, i64 8}
!85 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifierE", !86, i64 0, !52, i64 8, !52, i64 16, !52, i64 24, !52, i64 32, !52, i64 40}
!86 = !{!"_ZTSN11xercesc_2_721XMLResourceIdentifier22ResourceIdentifierTypeE", !51, i64 0}
!87 = !{!85, !52, i64 16}
!88 = !{!44, !50, i64 43}
!89 = !{!56, !52, i64 128}
!90 = !{!91, !52, i64 40}
!91 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !92, i64 8, !52, i64 16, !54, i64 24, !52, i64 32, !52, i64 40}
!92 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !51, i64 0}
