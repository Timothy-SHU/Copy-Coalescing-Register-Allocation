; ModuleID = 'XSAXMLScanner.cpp'
source_filename = "XSAXMLScanner.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::SGXMLScanner" = type { %"class.xercesc_2_7::XMLScanner", i8, i32, i32, ptr, %"class.xercesc_2_7::XMLBuffer", ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, %"struct.xercesc_2_7::PSVIElemContext" }
%"class.xercesc_2_7::XMLScanner" = type { %"class.xercesc_2_7::XMLBufferFullHandler", i64, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %"class.xercesc_2_7::ReaderMgr", ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, %"class.xercesc_2_7::XMLBufferMgr", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::XMLBuffer", %"class.xercesc_2_7::ElemStack" }
%"class.xercesc_2_7::XMLBufferFullHandler" = type { ptr }
%"class.xercesc_2_7::ReaderMgr" = type { %"class.xercesc_2_7::Locator", ptr, ptr, ptr, ptr, i32, ptr, i8, i32, i8, ptr }
%"class.xercesc_2_7::Locator" = type { ptr }
%"class.xercesc_2_7::XMLBufferMgr" = type { i32, ptr, ptr }
%"class.xercesc_2_7::ElemStack" = type { i32, i32, %"class.xercesc_2_7::XMLStringPool", ptr, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLStringPool" = type { %"class.xercesc_2_7::XSerializable", ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"struct.xercesc_2_7::PSVIElemContext" = type { i8, i8, i32, i32, i32, ptr, ptr, ptr }
%"struct.xercesc_2_7::ElemStack::StackElem" = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i8, i8, i8, i32, ptr, i32, ptr, i32, i32 }
%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::XMLElementDecl" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8, [7 x i8] }>
%"class.xercesc_2_7::SchemaValidator" = type <{ %"class.xercesc_2_7::XMLValidator", ptr, ptr, ptr, ptr, i8, [7 x i8], ptr, ptr, %"class.xercesc_2_7::XMLBuffer", i8, i8, [6 x i8], %"class.xercesc_2_7::XSDErrorReporter", ptr, ptr, i8, i8, [6 x i8] }>
%"class.xercesc_2_7::XMLValidator" = type { ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSDErrorReporter" = type { ptr, i8, ptr }
%"class.xercesc_2_7::QName" = type { %"class.xercesc_2_7::XSerializable", i32, i32, i32, i32, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::ValueStackOf" = type { [8 x i8], %"class.xercesc_2_7::ValueVectorOf" }
%"class.xercesc_2_7::ValueVectorOf" = type { i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::ComplexTypeInfo" = type { %"class.xercesc_2_7::XSerializable", i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::SchemaElementDecl" = type <{ %"class.xercesc_2_7::XMLElementDecl.base", [3 x i8], i32, i32, i32, i32, i32, i32, i32, i32, [4 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, [5 x i8] }>
%"class.xercesc_2_7::XMLElementDecl.base" = type <{ %"class.xercesc_2_7::XSerializable", ptr, ptr, i32, i32, i8 }>
%"class.xercesc_2_7::KVStringPair" = type { %"class.xercesc_2_7::XSerializable", i64, i64, ptr, ptr, ptr }
%"class.xercesc_2_7::RefHash3KeysIdPool" = type { ptr, i8, ptr, i32, ptr, ptr, i32, i32 }
%"struct.xercesc_2_7::RefHash3KeysTableBucketElem" = type { ptr, ptr, ptr, i32, i32 }
%"class.xercesc_2_7::RefHash2KeysTableOf" = type { ptr, i8, ptr, i32, i32, ptr }
%"struct.xercesc_2_7::RefHash2KeysTableBucketElem" = type <{ ptr, ptr, ptr, i32, [4 x i8] }>
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj = comdat any

$_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE = comdat any

$_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv = comdat any

$_ZNK11xercesc_2_713XSAXMLScanner7getNameEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_719EmptyStackExceptionD0Ev = comdat any

$_ZNK11xercesc_2_719EmptyStackException7getTypeEv = comdat any

$_ZNK11xercesc_2_719EmptyStackException9duplicateEv = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTSN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTIN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTVN11xercesc_2_719EmptyStackExceptionE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

@_ZTVN11xercesc_2_713XSAXMLScannerE = dso_local unnamed_addr constant { [22 x ptr] } { [22 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSAXMLScannerE, ptr @_ZN11xercesc_2_713XSAXMLScannerD2Ev, ptr @_ZN11xercesc_2_713XSAXMLScannerD0Ev, ptr @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv, ptr @_ZNK11xercesc_2_713XSAXMLScanner7getNameEv, ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv, ptr @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi, ptr @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE, ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb, ptr @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv, ptr @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb, ptr @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv, ptr @_ZN11xercesc_2_713XSAXMLScanner9scanResetERKNS_11InputSourceE, ptr @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE, ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_, ptr @_ZN11xercesc_2_713XSAXMLScanner12scanStartTagERb, ptr @_ZN11xercesc_2_713XSAXMLScanner10scanEndTagERb] }, align 8
@.str = private unnamed_addr constant [18 x i8] c"XSAXMLScanner.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni13fgXMLNSStringE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE = external local_unnamed_addr constant [0 x i16], align 2
@_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE = external local_unnamed_addr constant [0 x i16], align 2
@_ZTSN11xercesc_2_713XSAXMLScannerE = dso_local constant [31 x i8] c"N11xercesc_2_713XSAXMLScannerE\00", align 1
@_ZTIN11xercesc_2_712SGXMLScannerE = external constant ptr
@_ZTIN11xercesc_2_713XSAXMLScannerE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSAXMLScannerE, ptr @_ZTIN11xercesc_2_712SGXMLScannerE }, align 8
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [30 x i8] c"./xercesc/util/ValueStackOf.c\00", align 1
@_ZTSN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant [37 x i8] c"N11xercesc_2_719EmptyStackExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_719EmptyStackExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_719EmptyStackExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_719EmptyStackExceptionD0Ev, ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv, ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE = external constant [0 x i16], align 2
@.str.2 = private unnamed_addr constant [31 x i8] c"./xercesc/util/ValueVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni15fgXSAXMLScannerE = external constant [0 x i16], align 2
@.str.3 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1

@_ZN11xercesc_2_713XSAXMLScannerC1EPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_713XSAXMLScannerC2EPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_13MemoryManagerE
@_ZN11xercesc_2_713XSAXMLScannerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XSAXMLScannerD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat !prof !39 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #11
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScannerC2EPNS_15GrammarResolverEPNS_13XMLStringPoolEPNS_13SchemaGrammarEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  tail call void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef null, ptr noundef %1, ptr noundef %4)
  store ptr getelementptr inbounds ({ [22 x ptr] }, ptr @_ZTVN11xercesc_2_713XSAXMLScannerE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  store ptr %3, ptr %6, align 8, !tbaa !43
  invoke void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %5
  ret void

8:                                                ; preds = %5
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #10
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_712SGXMLScannerC2EPNS_12XMLValidatorEPNS_15GrammarResolverEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner16setURIStringPoolEPNS_13XMLStringPoolE(ptr noundef nonnull align 8 dereferenceable(776), ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #5 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScannerD0Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #5 align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_712SGXMLScannerD2Ev(ptr noundef nonnull align 8 dereferenceable(1000) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner10scanEndTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  store i8 1, ptr %1, align 1, !tbaa !63
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %4 = load i32, ptr %3, align 4, !tbaa !64
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 245)
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  br label %8

8:                                                ; preds = %8, %6
  %9 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %7)
  switch i16 %9, label %8 [
    i16 62, label %10
    i16 0, label %10
  ]

10:                                               ; preds = %8, %8
  %11 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %13 = load ptr, ptr %12, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %11, ptr noundef nonnull @.str, i32 noundef 70, i32 noundef 77, ptr noundef %13)
          to label %14 unwind label %15

14:                                               ; preds = %10
  tail call void @__cxa_throw(ptr nonnull %11, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

15:                                               ; preds = %10
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %11) #10
  resume { ptr, i32 } %16

17:                                               ; preds = %2
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !66
  %21 = add i32 %4, -1
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds ptr, ptr %20, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !67
  %25 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 13
  %26 = load i32, ptr %25, align 8, !tbaa !68
  %27 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %24, i64 0, i32 14
  %28 = load ptr, ptr %27, align 8, !tbaa !70
  %29 = tail call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %18)
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !71
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %32, ptr noundef %28)
  br i1 %33, label %37, label %34

34:                                               ; preds = %17
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 202, ptr noundef %28, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %35

35:                                               ; preds = %35, %34
  %36 = tail call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %30)
  switch i16 %36, label %35 [
    i16 62, label %163
    i16 0, label %163
  ]

37:                                               ; preds = %17
  %38 = load i32, ptr %3, align 4, !tbaa !64
  %39 = icmp eq i32 %38, 0
  %40 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 1
  %41 = load i32, ptr %40, align 8, !tbaa !72
  %42 = load ptr, ptr %31, align 8, !tbaa !71
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %42, i64 0, i32 15
  %44 = load i32, ptr %43, align 8, !tbaa !73
  %45 = icmp eq i32 %41, %44
  br i1 %45, label %47, label %46

46:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 278)
  br label %47

47:                                               ; preds = %46, %37
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %30, i1 noundef zeroext false)
  %49 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80) %30, i16 noundef zeroext 62)
  br i1 %49, label %55, label %50

50:                                               ; preds = %47
  %51 = load ptr, ptr %29, align 8, !tbaa !79
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %51, i64 0, i32 2
  %53 = load ptr, ptr %52, align 8, !tbaa !80
  %54 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %53)
  tail call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 200, ptr noundef %54, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %55

55:                                               ; preds = %50, %47
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %57 = load i8, ptr %56, align 8, !tbaa !83, !range !84, !noundef !85
  %58 = icmp eq i8 %57, 0
  br i1 %58, label %102, label %59

59:                                               ; preds = %55
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %61 = load ptr, ptr %60, align 8, !tbaa !86
  %62 = load ptr, ptr %29, align 8, !tbaa !79
  %63 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !87
  %65 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 3
  %66 = load i32, ptr %65, align 8, !tbaa !88
  %67 = load ptr, ptr %61, align 8, !tbaa !40
  %68 = getelementptr inbounds ptr, ptr %67, i64 2
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef i32 %69(ptr noundef nonnull align 8 dereferenceable(40) %61, ptr noundef %62, ptr noundef %64, i32 noundef %66)
  %71 = icmp sgt i32 %70, -1
  br i1 %71, label %72, label %102

72:                                               ; preds = %59
  %73 = load i32, ptr %65, align 8, !tbaa !88
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %72
  %76 = load ptr, ptr %60, align 8, !tbaa !86
  %77 = load ptr, ptr %29, align 8, !tbaa !79
  %78 = load ptr, ptr %77, align 8, !tbaa !40
  %79 = getelementptr inbounds ptr, ptr %78, i64 15
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(33) %77)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %76, i32 noundef 16, ptr noundef %81, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %102

82:                                               ; preds = %72
  %83 = icmp ult i32 %70, %73
  %84 = load ptr, ptr %60, align 8, !tbaa !86
  br i1 %83, label %91, label %85

85:                                               ; preds = %82
  %86 = load ptr, ptr %29, align 8, !tbaa !79
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = getelementptr inbounds ptr, ptr %87, i64 15
  %89 = load ptr, ptr %88, align 8
  %90 = tail call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(33) %86)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %84, i32 noundef 21, ptr noundef %90, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %102

91:                                               ; preds = %82
  %92 = load ptr, ptr %63, align 8, !tbaa !87
  %93 = zext nneg i32 %70 to i64
  %94 = getelementptr inbounds ptr, ptr %92, i64 %93
  %95 = load ptr, ptr %94, align 8, !tbaa !67
  %96 = tail call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %95)
  %97 = load ptr, ptr %29, align 8, !tbaa !79
  %98 = load ptr, ptr %97, align 8, !tbaa !40
  %99 = getelementptr inbounds ptr, ptr %98, i64 15
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(33) %97)
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %84, i32 noundef 7, ptr noundef %96, ptr noundef %101, ptr noundef null, ptr noundef null)
  br label %102

102:                                              ; preds = %59, %85, %91, %75, %55
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %104 = load ptr, ptr %103, align 8, !tbaa !86
  %105 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %104, i64 0, i32 9
  store i32 0, ptr %105, align 8, !tbaa !89
  %106 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %104, i64 0, i32 9, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !90
  store i16 0, ptr %107, align 2, !tbaa !91
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %109 = load ptr, ptr %108, align 8, !tbaa !93
  %110 = icmp eq ptr %109, null
  br i1 %110, label %132, label %111

111:                                              ; preds = %102
  %112 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %29, i64 0, i32 16
  %113 = load i32, ptr %112, align 4, !tbaa !94
  %114 = icmp eq i32 %113, -1
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  store i32 0, ptr %115, align 8, !tbaa !89
  br i1 %114, label %117, label %116

116:                                              ; preds = %111
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %115, ptr noundef %28, i32 noundef %113)
  br label %120

117:                                              ; preds = %111
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %119 = load ptr, ptr %118, align 8, !tbaa !90
  store i16 0, ptr %119, align 2, !tbaa !91
  br label %120

120:                                              ; preds = %117, %116
  %121 = load ptr, ptr %108, align 8, !tbaa !93
  %122 = load ptr, ptr %29, align 8, !tbaa !79
  %123 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %125 = load ptr, ptr %124, align 8, !tbaa !90
  %126 = load i32, ptr %123, align 8, !tbaa !89
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds i16, ptr %125, i64 %127
  store i16 0, ptr %128, align 2, !tbaa !91
  %129 = load ptr, ptr %121, align 8, !tbaa !40
  %130 = getelementptr inbounds ptr, ptr %129, i64 6
  %131 = load ptr, ptr %130, align 8
  tail call void %131(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef nonnull align 8 dereferenceable(33) %122, i32 noundef %26, i1 noundef zeroext %39, ptr noundef %125)
  br label %132

132:                                              ; preds = %120, %102
  %133 = xor i1 %39, true
  %134 = zext i1 %133 to i8
  store i8 %134, ptr %1, align 1, !tbaa !63
  br i1 %39, label %163, label %135

135:                                              ; preds = %132
  %136 = load ptr, ptr %19, align 8, !tbaa !66
  %137 = load i32, ptr %3, align 4, !tbaa !64
  %138 = add i32 %137, -1
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds ptr, ptr %136, i64 %139
  %141 = load ptr, ptr %140, align 8, !tbaa !67
  %142 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %141, i64 0, i32 12
  %143 = load ptr, ptr %142, align 8, !tbaa !95
  %144 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %143, ptr %144, align 8, !tbaa !96
  %145 = load ptr, ptr %143, align 8, !tbaa !40
  %146 = getelementptr inbounds ptr, ptr %145, i64 5
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef i32 %147(ptr noundef nonnull align 8 dereferenceable(8) %143)
  %149 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %148, ptr %149, align 4, !tbaa !97
  %150 = load ptr, ptr %103, align 8, !tbaa !86
  %151 = load ptr, ptr %144, align 8, !tbaa !96
  %152 = load ptr, ptr %150, align 8, !tbaa !40
  %153 = getelementptr inbounds ptr, ptr %152, i64 11
  %154 = load ptr, ptr %153, align 8
  tail call void %154(ptr noundef nonnull align 8 dereferenceable(40) %150, ptr noundef %151)
  %155 = load ptr, ptr %19, align 8, !tbaa !66
  %156 = load i32, ptr %3, align 4, !tbaa !64
  %157 = add i32 %156, -1
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %155, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !67
  %161 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %160, i64 0, i32 8
  %162 = load i8, ptr %161, align 8, !tbaa !98, !range !84, !noundef !85
  store i8 %162, ptr %56, align 8, !tbaa !83
  br label %163

163:                                              ; preds = %35, %35, %132, %135
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #6

declare noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80), i1 noundef zeroext) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(80), i16 noundef zeroext) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #6

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_713XSAXMLScanner12scanStartTagERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca %"class.xercesc_2_7::QName", align 8
  store i8 1, ptr %1, align 1, !tbaa !63
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5
  store i32 0, ptr %7, align 8, !tbaa !89
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 5, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !90
  store i16 0, ptr %9, align 2, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67
  store i32 0, ptr %11, align 8, !tbaa !89
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 67, i32 6
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  store i16 0, ptr %13, align 2, !tbaa !91
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !71
  %16 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %15, ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef nonnull %4)
  br i1 %16, label %28, label %17

17:                                               ; preds = %2
  %18 = load i32, ptr %11, align 8, !tbaa !89
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesE(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 183)
  br label %25

21:                                               ; preds = %17
  %22 = load ptr, ptr %12, align 8, !tbaa !90
  %23 = zext i32 %18 to i64
  %24 = getelementptr inbounds i16, ptr %22, i64 %23
  store i16 0, ptr %24, align 2, !tbaa !91
  call void @_ZN11xercesc_2_710XMLScanner9emitErrorENS_7XMLErrs5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef 308, ptr noundef %22, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %25

25:                                               ; preds = %21, %20
  br label %26

26:                                               ; preds = %25, %26
  %27 = call noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80) %10)
  switch i16 %27, label %26 [
    i16 60, label %514
    i16 0, label %514
  ]

28:                                               ; preds = %2
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !64
  %32 = icmp eq i32 %31, 0
  %33 = call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr14skipPastSpacesEb(ptr noundef nonnull align 8 dereferenceable(80) %10, i1 noundef zeroext false)
  %34 = load ptr, ptr %12, align 8, !tbaa !90
  %35 = load i32, ptr %11, align 8, !tbaa !89
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i16, ptr %34, i64 %36
  store i16 0, ptr %37, align 2, !tbaa !91
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %5) #10
  %38 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %39 = load ptr, ptr %38, align 8, !tbaa !99
  %40 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(40) %39, ptr noundef nonnull align 1 dereferenceable(1) %5)
  br i1 %32, label %101, label %41

41:                                               ; preds = %28
  %42 = call noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104) %29)
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %44 = load i8, ptr %43, align 8, !tbaa !83, !range !84, !noundef !85
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %63, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %48 = load ptr, ptr %47, align 8, !tbaa !86
  %49 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %48, i64 0, i32 14
  %50 = load ptr, ptr %49, align 8, !tbaa !100
  %51 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %50, i64 0, i32 1, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !104
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %50)
  %56 = load ptr, ptr %55, align 8, !tbaa !67
  br label %57

57:                                               ; preds = %46, %54
  %58 = phi ptr [ %56, %54 ], [ null, %46 ]
  %59 = icmp eq ptr %58, null
  br i1 %59, label %72, label %60

60:                                               ; preds = %57
  %61 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %58, i64 0, i32 10
  %62 = load i32, ptr %61, align 8, !tbaa !106
  br label %72

63:                                               ; preds = %41
  %64 = load ptr, ptr %42, align 8, !tbaa !79
  %65 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %64, i64 0, i32 12
  %66 = load ptr, ptr %65, align 8, !tbaa !108
  %67 = icmp eq ptr %66, null
  %68 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %64, i64 0, i32 2
  %69 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %66, i64 0, i32 10
  %70 = select i1 %67, ptr %68, ptr %69
  %71 = load i32, ptr %70, align 4, !tbaa !114
  br label %72

72:                                               ; preds = %57, %60, %63
  %73 = phi ptr [ %58, %60 ], [ %66, %63 ], [ null, %57 ]
  %74 = phi i32 [ %62, %60 ], [ %71, %63 ], [ 1, %57 ]
  switch i32 %74, label %101 [
    i32 4, label %75
    i32 3, label %75
    i32 2, label %75
    i32 1, label %100
  ]

75:                                               ; preds = %72, %72, %72
  %76 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %73, i64 0, i32 25
  %77 = load ptr, ptr %76, align 8, !tbaa !115
  %78 = icmp ne ptr %77, null
  %79 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %73, i64 0, i32 20
  %80 = load ptr, ptr %79, align 8
  %81 = icmp eq ptr %80, null
  %82 = select i1 %78, i1 true, i1 %81
  br i1 %82, label %85, label %83

83:                                               ; preds = %75
  %84 = call noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176) %73, i1 noundef zeroext false)
  store ptr %84, ptr %76, align 8, !tbaa !115
  br label %85

85:                                               ; preds = %75, %83
  %86 = load ptr, ptr %76, align 8, !tbaa !115
  %87 = load ptr, ptr %86, align 8, !tbaa !40
  %88 = getelementptr inbounds ptr, ptr %87, i64 5
  %89 = load ptr, ptr %88, align 8
  %90 = call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(8) %86)
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !66
  %93 = load i32, ptr %30, align 4, !tbaa !64
  %94 = add i32 %93, -1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %92, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !67
  %98 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %97, i64 0, i32 11
  %99 = load i32, ptr %98, align 4, !tbaa !116
  br label %101

100:                                              ; preds = %72
  br label %101

101:                                              ; preds = %85, %100, %72, %28
  %102 = phi i8 [ 0, %28 ], [ 0, %85 ], [ 1, %100 ], [ 0, %72 ]
  %103 = phi i32 [ -2, %28 ], [ %99, %85 ], [ -2, %100 ], [ -2, %72 ]
  %104 = phi ptr [ null, %28 ], [ %86, %85 ], [ null, %100 ], [ null, %72 ]
  %105 = phi ptr [ null, %28 ], [ %90, %85 ], [ null, %100 ], [ null, %72 ]
  %106 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104) %29)
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  %108 = load i8, ptr %107, align 8, !tbaa !83, !range !84, !noundef !85
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 3
  %110 = load ptr, ptr %109, align 8, !tbaa !66
  %111 = load i32, ptr %30, align 4, !tbaa !64
  %112 = add i32 %111, -1
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %110, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !67
  %116 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %115, i64 0, i32 8
  store i8 %108, ptr %116, align 8, !tbaa !98
  %117 = load i32, ptr %4, align 4, !tbaa !117
  %118 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %115, i64 0, i32 16
  store i32 %117, ptr %118, align 4, !tbaa !94
  %119 = icmp eq i32 %40, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %101
  call void @_ZN11xercesc_2_713XSAXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %40)
  br label %121

121:                                              ; preds = %120, %101
  %122 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %123 = load i32, ptr %4, align 4, !tbaa !117
  %124 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %34, ptr noundef nonnull align 8 dereferenceable(40) %122, i16 noundef signext 1, i32 noundef %123)
  %125 = load i8, ptr %107, align 8, !tbaa !83, !range !84, !noundef !85
  %126 = icmp eq i8 %125, 0
  %127 = icmp eq ptr %105, null
  br i1 %127, label %146, label %128

128:                                              ; preds = %121
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %6) #10
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %130 = load ptr, ptr %129, align 8, !tbaa !90
  %131 = load i32, ptr %122, align 8, !tbaa !89
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i16, ptr %130, i64 %132
  store i16 0, ptr %133, align 2, !tbaa !91
  %134 = load i32, ptr %4, align 4, !tbaa !117
  %135 = sext i32 %134 to i64
  %136 = getelementptr i16, ptr %34, i64 %135
  %137 = getelementptr i16, ptr %136, i64 1
  %138 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %139 = load ptr, ptr %138, align 8, !tbaa !65
  call void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef %130, ptr noundef %137, i32 noundef %124, ptr noundef %139)
  %140 = add i32 %106, -1
  %141 = invoke noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull %6, ptr noundef nonnull %105, ptr noundef %104, i32 noundef %140)
          to label %142 unwind label %144

142:                                              ; preds = %128
  %143 = zext i1 %141 to i8
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  br label %146

144:                                              ; preds = %128
  %145 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %6) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %6) #10
  br label %512

146:                                              ; preds = %142, %121
  %147 = phi i8 [ %143, %142 ], [ %102, %121 ]
  %148 = load i32, ptr %4, align 4, !tbaa !117
  %149 = sext i32 %148 to i64
  %150 = getelementptr i16, ptr %34, i64 %149
  %151 = getelementptr i16, ptr %150, i64 1
  %152 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  %153 = load ptr, ptr %152, align 8, !tbaa !96
  %154 = load ptr, ptr %153, align 8, !tbaa !40
  %155 = getelementptr inbounds ptr, ptr %154, i64 11
  %156 = load ptr, ptr %155, align 8
  %157 = call noundef ptr %156(ptr noundef nonnull align 8 dereferenceable(8) %153, i32 noundef %124, ptr noundef %151, ptr noundef %34, i32 noundef %103)
  %158 = icmp eq ptr %157, null
  br i1 %158, label %159, label %213

159:                                              ; preds = %146
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %161 = load ptr, ptr %160, align 8, !tbaa !118
  %162 = load ptr, ptr %152, align 8, !tbaa !96
  %163 = load ptr, ptr %162, align 8, !tbaa !40
  %164 = getelementptr inbounds ptr, ptr %163, i64 6
  %165 = load ptr, ptr %164, align 8
  %166 = call noundef ptr %165(ptr noundef nonnull align 8 dereferenceable(8) %162)
  %167 = load ptr, ptr %161, align 8, !tbaa !40
  %168 = getelementptr inbounds ptr, ptr %167, i64 9
  %169 = load ptr, ptr %168, align 8
  %170 = call noundef i32 %169(ptr noundef nonnull align 8 dereferenceable(40) %161, ptr noundef %166)
  %171 = icmp eq i32 %124, %170
  br i1 %171, label %176, label %172

172:                                              ; preds = %159
  %173 = call noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776) %0, i32 noundef %124)
  %174 = and i8 %147, 1
  %175 = icmp ne i8 %174, 0
  call void @_ZN11xercesc_2_713XSAXMLScanner13switchGrammarEPKtb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %173, i1 noundef zeroext %175)
  br label %176

176:                                              ; preds = %172, %159
  %177 = load ptr, ptr %152, align 8, !tbaa !96
  %178 = load ptr, ptr %177, align 8, !tbaa !40
  %179 = getelementptr inbounds ptr, ptr %178, i64 11
  %180 = load ptr, ptr %179, align 8
  %181 = call noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(8) %177, i32 noundef %124, ptr noundef %151, ptr noundef %34, i32 noundef -2)
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %213

183:                                              ; preds = %176
  %184 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 13
  %185 = load ptr, ptr %184, align 8, !tbaa !119
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  %186 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %185, ptr noundef %151, i32 noundef %124, i32 noundef -2, ptr noundef nonnull align 4 dereferenceable(4) %3)
  %187 = icmp eq ptr %186, null
  br i1 %187, label %190, label %188

188:                                              ; preds = %183
  %189 = load ptr, ptr %186, align 8, !tbaa !120
  br label %190

190:                                              ; preds = %183, %188
  %191 = phi ptr [ %189, %188 ], [ null, %183 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  %192 = icmp eq ptr %191, null
  br i1 %192, label %193, label %213

193:                                              ; preds = %190
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %195 = load ptr, ptr %194, align 8, !tbaa !65
  %196 = call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 152, ptr noundef %195)
  %197 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %198 = load ptr, ptr %197, align 8, !tbaa !90
  %199 = load i32, ptr %122, align 8, !tbaa !89
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds i16, ptr %198, i64 %200
  store i16 0, ptr %201, align 2, !tbaa !91
  %202 = load ptr, ptr %194, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147) %196, ptr noundef %198, ptr noundef %151, i32 noundef %124, i32 noundef 1, i32 noundef -2, ptr noundef %202)
          to label %203 unwind label %211

203:                                              ; preds = %193
  %204 = load ptr, ptr %184, align 8, !tbaa !119
  %205 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %196, i64 0, i32 2
  %206 = load ptr, ptr %205, align 8, !tbaa !80
  %207 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %206, i64 0, i32 6
  %208 = load ptr, ptr %207, align 8, !tbaa !122
  %209 = call noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %204, ptr noundef %208, i32 noundef %124, i32 noundef -2, ptr noundef nonnull %196)
  %210 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %196, i64 0, i32 4
  store i32 %209, ptr %210, align 4, !tbaa !124
  br label %213

211:                                              ; preds = %193
  %212 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %196, ptr noundef %195) #10
  br label %512

213:                                              ; preds = %176, %203, %190, %146
  %214 = phi i1 [ false, %146 ], [ false, %176 ], [ false, %190 ], [ true, %203 ]
  %215 = phi ptr [ %157, %146 ], [ %181, %176 ], [ %191, %190 ], [ %196, %203 ]
  br i1 %214, label %220, label %216

216:                                              ; preds = %213
  %217 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %215, i64 0, i32 3
  %218 = load i32, ptr %217, align 8, !tbaa !125
  %219 = icmp eq i32 %218, 1
  br i1 %219, label %241, label %220

220:                                              ; preds = %216, %213
  %221 = and i8 %147, 1
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %231, label %223

223:                                              ; preds = %220
  store i8 0, ptr %107, align 8, !tbaa !83
  %224 = load ptr, ptr %109, align 8, !tbaa !66
  %225 = load i32, ptr %30, align 4, !tbaa !64
  %226 = add i32 %225, -1
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds ptr, ptr %224, i64 %227
  %229 = load ptr, ptr %228, align 8, !tbaa !67
  %230 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %229, i64 0, i32 8
  store i8 0, ptr %230, align 8, !tbaa !98
  br label %231

231:                                              ; preds = %223, %220
  %232 = load i8, ptr %107, align 8, !tbaa !83, !range !84, !noundef !85
  %233 = icmp eq i8 %232, 0
  br i1 %233, label %241, label %234

234:                                              ; preds = %231
  %235 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %215, i64 0, i32 3
  store i32 5, ptr %235, align 8, !tbaa !125
  %236 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %237 = load ptr, ptr %236, align 8, !tbaa !86
  %238 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %215, i64 0, i32 2
  %239 = load ptr, ptr %238, align 8, !tbaa !80
  %240 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %239)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %237, i32 noundef 2, ptr noundef %240, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %241

241:                                              ; preds = %231, %234, %216
  %242 = load ptr, ptr %14, align 8, !tbaa !71
  %243 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %242, i64 0, i32 15
  %244 = load i32, ptr %243, align 8, !tbaa !73
  call void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104) %29, ptr noundef nonnull %215, i32 noundef %244)
  %245 = load ptr, ptr %109, align 8, !tbaa !66
  %246 = load i32, ptr %30, align 4, !tbaa !64
  %247 = add i32 %246, -1
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds ptr, ptr %245, i64 %248
  %250 = load ptr, ptr %249, align 8, !tbaa !67
  %251 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %250, i64 0, i32 13
  store i32 %124, ptr %251, align 8, !tbaa !68
  br i1 %32, label %252, label %279

252:                                              ; preds = %241
  %253 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %254 = load ptr, ptr %253, align 8, !tbaa !65
  %255 = icmp eq ptr %34, null
  br i1 %255, label %276, label %256

256:                                              ; preds = %252
  %257 = load i16, ptr %34, align 2, !tbaa !91
  %258 = icmp eq i16 %257, 0
  br i1 %258, label %270, label %259

259:                                              ; preds = %256, %259
  %260 = phi ptr [ %261, %259 ], [ %34, %256 ]
  %261 = getelementptr inbounds i16, ptr %260, i64 1
  %262 = load i16, ptr %261, align 2, !tbaa !91
  %263 = icmp eq i16 %262, 0
  br i1 %263, label %264, label %259, !llvm.loop !126

264:                                              ; preds = %259
  %265 = ptrtoint ptr %261 to i64
  %266 = ptrtoint ptr %34 to i64
  %267 = sub i64 %265, %266
  %268 = add i64 %267, 2
  %269 = and i64 %268, 8589934590
  br label %270

270:                                              ; preds = %264, %256
  %271 = phi i64 [ %269, %264 ], [ 2, %256 ]
  %272 = load ptr, ptr %254, align 8, !tbaa !40
  %273 = getelementptr inbounds ptr, ptr %272, i64 2
  %274 = load ptr, ptr %273, align 8
  %275 = call noundef ptr %274(ptr noundef nonnull align 8 dereferenceable(8) %254, i64 noundef %271)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %275, ptr nonnull align 2 %34, i64 %271, i1 false)
  br label %276

276:                                              ; preds = %252, %270
  %277 = phi ptr [ %275, %270 ], [ null, %252 ]
  %278 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  store ptr %277, ptr %278, align 8, !tbaa !129
  br label %279

279:                                              ; preds = %276, %241
  %280 = load i8, ptr %107, align 8, !tbaa !83, !range !84, !noundef !85
  %281 = icmp eq i8 %280, 0
  br i1 %281, label %288, label %282

282:                                              ; preds = %279
  %283 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %284 = load ptr, ptr %283, align 8, !tbaa !86
  %285 = load ptr, ptr %284, align 8, !tbaa !40
  %286 = getelementptr inbounds ptr, ptr %285, i64 9
  %287 = load ptr, ptr %286, align 8
  call void %287(ptr noundef nonnull align 8 dereferenceable(40) %284, ptr noundef nonnull %215)
  br label %288

288:                                              ; preds = %282, %279
  %289 = load ptr, ptr %12, align 8, !tbaa !90
  %290 = load i32, ptr %11, align 8, !tbaa !89
  %291 = zext i32 %290 to i64
  %292 = getelementptr inbounds i16, ptr %289, i64 %291
  store i16 0, ptr %292, align 2, !tbaa !91
  %293 = icmp eq ptr %289, null
  br i1 %293, label %308, label %294

294:                                              ; preds = %288
  %295 = load i16, ptr %289, align 2, !tbaa !91
  %296 = icmp eq i16 %295, 0
  br i1 %296, label %308, label %297

297:                                              ; preds = %294, %297
  %298 = phi ptr [ %299, %297 ], [ %289, %294 ]
  %299 = getelementptr inbounds i16, ptr %298, i64 1
  %300 = load i16, ptr %299, align 2, !tbaa !91
  %301 = icmp eq i16 %300, 0
  br i1 %301, label %302, label %297, !llvm.loop !126

302:                                              ; preds = %297
  %303 = ptrtoint ptr %299 to i64
  %304 = ptrtoint ptr %289 to i64
  %305 = sub i64 %303, %304
  %306 = lshr exact i64 %305, 1
  %307 = trunc i64 %306 to i32
  br label %308

308:                                              ; preds = %302, %294, %288
  %309 = phi i32 [ %307, %302 ], [ 0, %294 ], [ 0, %288 ]
  %310 = load i32, ptr %30, align 4, !tbaa !64
  %311 = add i32 %310, -1
  %312 = load ptr, ptr %109, align 8, !tbaa !66
  %313 = zext i32 %311 to i64
  %314 = getelementptr inbounds ptr, ptr %312, i64 %313
  %315 = load ptr, ptr %314, align 8, !tbaa !67
  %316 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %315, i64 0, i32 15
  %317 = load i32, ptr %316, align 8, !tbaa !130
  %318 = icmp ugt i32 %317, %309
  br i1 %318, label %339, label %319

319:                                              ; preds = %308
  %320 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %315, i64 0, i32 14
  %321 = load ptr, ptr %320, align 8, !tbaa !70
  %322 = shl i32 %309, 1
  store i32 %322, ptr %316, align 8, !tbaa !130
  %323 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71, i32 12
  %324 = load ptr, ptr %323, align 8, !tbaa !131
  %325 = zext i32 %322 to i64
  %326 = shl nuw nsw i64 %325, 1
  %327 = load ptr, ptr %324, align 8, !tbaa !40
  %328 = getelementptr inbounds ptr, ptr %327, i64 2
  %329 = load ptr, ptr %328, align 8
  %330 = call noundef ptr %329(ptr noundef nonnull align 8 dereferenceable(8) %324, i64 noundef %326)
  %331 = load ptr, ptr %109, align 8, !tbaa !66
  %332 = getelementptr inbounds ptr, ptr %331, i64 %313
  %333 = load ptr, ptr %332, align 8, !tbaa !67
  %334 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %333, i64 0, i32 14
  store ptr %330, ptr %334, align 8, !tbaa !70
  %335 = load ptr, ptr %323, align 8, !tbaa !131
  %336 = load ptr, ptr %335, align 8, !tbaa !40
  %337 = getelementptr inbounds ptr, ptr %336, i64 3
  %338 = load ptr, ptr %337, align 8
  call void %338(ptr noundef nonnull align 8 dereferenceable(8) %335, ptr noundef %321)
  br label %339

339:                                              ; preds = %308, %319
  %340 = load ptr, ptr %109, align 8, !tbaa !66
  %341 = getelementptr inbounds ptr, ptr %340, i64 %313
  %342 = load ptr, ptr %341, align 8, !tbaa !67
  %343 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %342, i64 0, i32 14
  %344 = load ptr, ptr %343, align 8, !tbaa !70
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef %344, ptr noundef %289)
  %345 = load i8, ptr %107, align 8, !tbaa !83, !range !84, !noundef !85
  %346 = icmp eq i8 %345, 0
  br i1 %346, label %358, label %347

347:                                              ; preds = %339
  %348 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %349 = load ptr, ptr %348, align 8, !tbaa !86
  %350 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %349, i64 0, i32 14
  %351 = load ptr, ptr %350, align 8, !tbaa !100
  %352 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %351, i64 0, i32 1, i32 1
  %353 = load i32, ptr %352, align 4, !tbaa !104
  %354 = icmp eq i32 %353, 0
  br i1 %354, label %361, label %355

355:                                              ; preds = %347
  %356 = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %351)
  %357 = load ptr, ptr %356, align 8, !tbaa !67
  br label %361

358:                                              ; preds = %339
  %359 = getelementptr inbounds %"class.xercesc_2_7::SchemaElementDecl", ptr %215, i64 0, i32 12
  %360 = load ptr, ptr %359, align 8, !tbaa !108
  br label %361

361:                                              ; preds = %355, %347, %358
  %362 = phi ptr [ %360, %358 ], [ %357, %355 ], [ null, %347 ]
  %363 = icmp eq ptr %362, null
  br i1 %363, label %391, label %364

364:                                              ; preds = %361
  %365 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %362, i64 0, i32 9
  %366 = load i32, ptr %365, align 4, !tbaa !132
  %367 = getelementptr inbounds %"class.xercesc_2_7::ComplexTypeInfo", ptr %362, i64 0, i32 14
  %368 = load ptr, ptr %367, align 8, !tbaa !133
  %369 = call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %368, i16 noundef zeroext 44)
  %370 = icmp sgt i32 %369, 0
  br i1 %370, label %371, label %391

371:                                              ; preds = %364
  %372 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %373 = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %372)
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %373, ptr noundef %368, i32 noundef %369)
          to label %374 unwind label %386

374:                                              ; preds = %371
  %375 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %373, i64 0, i32 6
  %376 = load ptr, ptr %375, align 8, !tbaa !90
  %377 = load i32, ptr %373, align 8, !tbaa !89
  %378 = zext i32 %377 to i64
  %379 = getelementptr inbounds i16, ptr %376, i64 %378
  store i16 0, ptr %379, align 2, !tbaa !91
  %380 = and i8 %147, 1
  %381 = icmp ne i8 %380, 0
  invoke void @_ZN11xercesc_2_713XSAXMLScanner13switchGrammarEPKtb(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %376, i1 noundef zeroext %381)
          to label %382 unwind label %386

382:                                              ; preds = %374
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %372, ptr noundef nonnull align 8 dereferenceable(40) %373)
          to label %391 unwind label %383

383:                                              ; preds = %382
  %384 = landingpad { ptr, i32 }
          catch ptr null
  %385 = extractvalue { ptr, i32 } %384, 0
  call void @__clang_call_terminate(ptr %385) #11
  unreachable

386:                                              ; preds = %374, %371
  %387 = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %372, ptr noundef nonnull align 8 dereferenceable(40) %373)
          to label %512 unwind label %388

388:                                              ; preds = %386
  %389 = landingpad { ptr, i32 }
          catch ptr null
  %390 = extractvalue { ptr, i32 } %389, 0
  call void @__clang_call_terminate(ptr %390) #11
  unreachable

391:                                              ; preds = %382, %364, %361
  %392 = phi i32 [ %103, %361 ], [ %366, %364 ], [ %366, %382 ]
  %393 = load ptr, ptr %109, align 8, !tbaa !66
  %394 = load i32, ptr %30, align 4, !tbaa !64
  %395 = add i32 %394, -1
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds ptr, ptr %393, i64 %396
  %398 = load ptr, ptr %397, align 8, !tbaa !67
  %399 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %398, i64 0, i32 11
  store i32 %392, ptr %399, align 4, !tbaa !116
  %400 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 3
  %401 = load i32, ptr %400, align 8, !tbaa !134
  %402 = icmp ult i32 %106, %401
  br i1 %402, label %404, label %403

403:                                              ; preds = %391
  call void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1000) %0)
  br label %404

404:                                              ; preds = %403, %391
  %405 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 4
  %406 = load ptr, ptr %405, align 8, !tbaa !135
  %407 = zext i32 %106 to i64
  %408 = getelementptr inbounds i32, ptr %406, i64 %407
  store i32 0, ptr %408, align 4, !tbaa !117
  %409 = load ptr, ptr %152, align 8, !tbaa !96
  %410 = load ptr, ptr %109, align 8, !tbaa !66
  %411 = load i32, ptr %30, align 4, !tbaa !64
  %412 = add i32 %411, -1
  %413 = zext i32 %412 to i64
  %414 = getelementptr inbounds ptr, ptr %410, i64 %413
  %415 = load ptr, ptr %414, align 8, !tbaa !67
  %416 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %415, i64 0, i32 12
  store ptr %409, ptr %416, align 8, !tbaa !95
  %417 = or i1 %32, %126
  br i1 %417, label %422, label %418

418:                                              ; preds = %404
  %419 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %215, i64 0, i32 2
  %420 = load ptr, ptr %419, align 8, !tbaa !80
  %421 = call noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104) %29, ptr noundef %420, i1 noundef zeroext true)
  br label %422

422:                                              ; preds = %404, %418
  %423 = load ptr, ptr %38, align 8, !tbaa !99
  %424 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 39
  %425 = load ptr, ptr %424, align 8, !tbaa !136
  %426 = call noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(40) %423, i32 noundef %40, ptr noundef nonnull %215, ptr noundef nonnull align 1 %425)
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %431, label %428

428:                                              ; preds = %422
  %429 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %430 = load ptr, ptr %429, align 8, !tbaa !137
  call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %430)
  br label %431

431:                                              ; preds = %428, %422
  %432 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %433 = load ptr, ptr %432, align 8, !tbaa !93
  %434 = icmp eq ptr %433, null
  br i1 %434, label %445, label %435

435:                                              ; preds = %431
  %436 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %437 = load ptr, ptr %436, align 8, !tbaa !90
  %438 = load i32, ptr %122, align 8, !tbaa !89
  %439 = zext i32 %438 to i64
  %440 = getelementptr inbounds i16, ptr %437, i64 %439
  store i16 0, ptr %440, align 2, !tbaa !91
  %441 = load ptr, ptr %424, align 8, !tbaa !136
  %442 = load ptr, ptr %433, align 8, !tbaa !40
  %443 = getelementptr inbounds ptr, ptr %442, i64 11
  %444 = load ptr, ptr %443, align 8
  call void %444(ptr noundef nonnull align 8 dereferenceable(8) %433, ptr noundef nonnull align 8 dereferenceable(33) %215, i32 noundef %124, ptr noundef %437, ptr noundef nonnull align 1 %441, i32 noundef %426, i1 noundef zeroext false, i1 noundef zeroext %32)
  br label %445

445:                                              ; preds = %435, %431
  %446 = load i8, ptr %5, align 1, !tbaa !63, !range !84, !noundef !85
  %447 = icmp eq i8 %446, 0
  br i1 %447, label %511, label %448

448:                                              ; preds = %445
  %449 = call noundef ptr @_ZN11xercesc_2_79ElemStack6popTopEv(ptr noundef nonnull align 8 dereferenceable(104) %29)
  %450 = load i8, ptr %107, align 8, !tbaa !83, !range !84, !noundef !85
  %451 = icmp eq i8 %450, 0
  br i1 %451, label %469, label %452

452:                                              ; preds = %448
  %453 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %454 = load ptr, ptr %453, align 8, !tbaa !86
  %455 = load ptr, ptr %454, align 8, !tbaa !40
  %456 = getelementptr inbounds ptr, ptr %455, i64 2
  %457 = load ptr, ptr %456, align 8
  %458 = call noundef i32 %457(ptr noundef nonnull align 8 dereferenceable(40) %454, ptr noundef nonnull %215, ptr noundef null, i32 noundef 0)
  %459 = icmp sgt i32 %458, -1
  br i1 %459, label %460, label %469

460:                                              ; preds = %452
  %461 = load ptr, ptr %453, align 8, !tbaa !86
  %462 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %215, i64 0, i32 2
  %463 = load ptr, ptr %462, align 8, !tbaa !80
  %464 = call noundef ptr @_ZN11xercesc_2_75QName10getRawNameEv(ptr noundef nonnull align 8 dereferenceable(56) %463)
  %465 = load ptr, ptr %215, align 8, !tbaa !40
  %466 = getelementptr inbounds ptr, ptr %465, i64 15
  %467 = load ptr, ptr %466, align 8
  %468 = call noundef ptr %467(ptr noundef nonnull align 8 dereferenceable(33) %215)
  call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %461, i32 noundef 7, ptr noundef %464, ptr noundef %468, ptr noundef null, ptr noundef null)
  br label %469

469:                                              ; preds = %452, %460, %448
  %470 = load ptr, ptr %432, align 8, !tbaa !93
  %471 = icmp eq ptr %470, null
  br i1 %471, label %481, label %472

472:                                              ; preds = %469
  %473 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %474 = load ptr, ptr %473, align 8, !tbaa !90
  %475 = load i32, ptr %122, align 8, !tbaa !89
  %476 = zext i32 %475 to i64
  %477 = getelementptr inbounds i16, ptr %474, i64 %476
  store i16 0, ptr %477, align 2, !tbaa !91
  %478 = load ptr, ptr %470, align 8, !tbaa !40
  %479 = getelementptr inbounds ptr, ptr %478, i64 6
  %480 = load ptr, ptr %479, align 8
  call void %480(ptr noundef nonnull align 8 dereferenceable(8) %470, ptr noundef nonnull align 8 dereferenceable(33) %215, i32 noundef %124, i1 noundef zeroext %32, ptr noundef %474)
  br label %481

481:                                              ; preds = %472, %469
  br i1 %32, label %482, label %483

482:                                              ; preds = %481
  store i8 0, ptr %1, align 1, !tbaa !63
  br label %511

483:                                              ; preds = %481
  %484 = load ptr, ptr %109, align 8, !tbaa !66
  %485 = load i32, ptr %30, align 4, !tbaa !64
  %486 = add i32 %485, -1
  %487 = zext i32 %486 to i64
  %488 = getelementptr inbounds ptr, ptr %484, i64 %487
  %489 = load ptr, ptr %488, align 8, !tbaa !67
  %490 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %489, i64 0, i32 12
  %491 = load ptr, ptr %490, align 8, !tbaa !95
  store ptr %491, ptr %152, align 8, !tbaa !96
  %492 = load ptr, ptr %491, align 8, !tbaa !40
  %493 = getelementptr inbounds ptr, ptr %492, i64 5
  %494 = load ptr, ptr %493, align 8
  %495 = call noundef i32 %494(ptr noundef nonnull align 8 dereferenceable(8) %491)
  %496 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 %495, ptr %496, align 4, !tbaa !97
  %497 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %498 = load ptr, ptr %497, align 8, !tbaa !86
  %499 = load ptr, ptr %152, align 8, !tbaa !96
  %500 = load ptr, ptr %498, align 8, !tbaa !40
  %501 = getelementptr inbounds ptr, ptr %500, i64 11
  %502 = load ptr, ptr %501, align 8
  call void %502(ptr noundef nonnull align 8 dereferenceable(40) %498, ptr noundef %499)
  %503 = load ptr, ptr %109, align 8, !tbaa !66
  %504 = load i32, ptr %30, align 4, !tbaa !64
  %505 = add i32 %504, -1
  %506 = zext i32 %505 to i64
  %507 = getelementptr inbounds ptr, ptr %503, i64 %506
  %508 = load ptr, ptr %507, align 8, !tbaa !67
  %509 = getelementptr inbounds %"struct.xercesc_2_7::ElemStack::StackElem", ptr %508, i64 0, i32 8
  %510 = load i8, ptr %509, align 8, !tbaa !98, !range !84, !noundef !85
  store i8 %510, ptr %107, align 8, !tbaa !83
  br label %511

511:                                              ; preds = %482, %483, %445
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  br label %514

512:                                              ; preds = %386, %211, %144
  %513 = phi { ptr, i32 } [ %145, %144 ], [ %212, %211 ], [ %387, %386 ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  resume { ptr, i32 } %513

514:                                              ; preds = %26, %26, %511
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  ret i1 %16
}

declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner11rawAttrScanEPKtRNS_11RefVectorOfINS_12KVStringPairEEERb(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 1 dereferenceable(1)) local_unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_79ElemStack10topElementEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addLevelEv(ptr noundef nonnull align 8 dereferenceable(104)) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner28scanRawAttrListforNameSpacesEi(ptr noundef nonnull align 8 dereferenceable(1000) %0, i32 noundef %1) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = alloca %"class.xercesc_2_7::QName", align 8
  %4 = alloca i32, align 4
  %5 = icmp sgt i32 %1, 0
  br i1 %5, label %6, label %69

6:                                                ; preds = %2
  %7 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %8 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 9
  %9 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  %10 = zext nneg i32 %1 to i64
  br label %11

11:                                               ; preds = %6, %66
  %12 = phi i64 [ 0, %6 ], [ %67, %66 ]
  %13 = load ptr, ptr %7, align 8, !tbaa !99
  %14 = trunc i64 %12 to i32
  %15 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %13, i32 noundef %14)
  %16 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %15, i64 0, i32 3
  %17 = load ptr, ptr %16, align 8, !tbaa !138
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %17, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni18fgXMLNSColonStringE, i32 noundef 6)
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %40, label %20

20:                                               ; preds = %11
  %21 = icmp eq ptr %17, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %20
  %23 = load i16, ptr %17, align 2, !tbaa !91
  %24 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !91
  %25 = icmp eq i16 %23, %24
  br i1 %25, label %29, label %66

26:                                               ; preds = %20
  %27 = load i16, ptr @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, align 2, !tbaa !91
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %40, label %66

29:                                               ; preds = %22, %34
  %30 = phi i16 [ %37, %34 ], [ %23, %22 ]
  %31 = phi ptr [ %36, %34 ], [ @_ZN11xercesc_2_76XMLUni13fgXMLNSStringE, %22 ]
  %32 = phi ptr [ %35, %34 ], [ %17, %22 ]
  %33 = icmp eq i16 %30, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %29
  %35 = getelementptr inbounds i16, ptr %32, i64 1
  %36 = getelementptr inbounds i16, ptr %31, i64 1
  %37 = load i16, ptr %35, align 2, !tbaa !91
  %38 = load i16, ptr %36, align 2, !tbaa !91
  %39 = icmp eq i16 %37, %38
  br i1 %39, label %29, label %66, !llvm.loop !140

40:                                               ; preds = %29, %26, %11
  %41 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %15, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !141
  %43 = load ptr, ptr %8, align 8, !tbaa !142
  %44 = getelementptr inbounds i32, ptr %43, i64 %12
  %45 = load i32, ptr %44, align 4, !tbaa !117
  tail call void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %17, ptr noundef %42, i32 noundef %45)
  %46 = icmp eq ptr %42, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %40
  %48 = load i16, ptr %42, align 2, !tbaa !91
  %49 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !91
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %54, label %66

51:                                               ; preds = %40
  %52 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, align 2, !tbaa !91
  %53 = icmp eq i16 %52, 0
  br i1 %53, label %65, label %66

54:                                               ; preds = %47, %59
  %55 = phi i16 [ %62, %59 ], [ %48, %47 ]
  %56 = phi ptr [ %61, %59 ], [ @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE, %47 ]
  %57 = phi ptr [ %60, %59 ], [ %42, %47 ]
  %58 = icmp eq i16 %55, 0
  br i1 %58, label %65, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds i16, ptr %57, i64 1
  %61 = getelementptr inbounds i16, ptr %56, i64 1
  %62 = load i16, ptr %60, align 2, !tbaa !91
  %63 = load i16, ptr %61, align 2, !tbaa !91
  %64 = icmp eq i16 %62, %63
  br i1 %64, label %54, label %66, !llvm.loop !140

65:                                               ; preds = %54, %51
  store i8 1, ptr %9, align 8, !tbaa !143
  br label %66

66:                                               ; preds = %34, %59, %22, %47, %51, %65, %26
  %67 = add nuw nsw i64 %12, 1
  %68 = icmp eq i64 %67, %10
  br i1 %68, label %69, label %11, !llvm.loop !144

69:                                               ; preds = %66, %2
  %70 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  %71 = load i8, ptr %70, align 8, !tbaa !143, !range !84, !noundef !85
  %72 = icmp eq i8 %71, 0
  br i1 %72, label %241, label %73

73:                                               ; preds = %69
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 63
  %75 = tail call noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24) %74)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #10
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %77 = load ptr, ptr %76, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %77)
          to label %78 unwind label %125

78:                                               ; preds = %73
  %79 = icmp sgt i32 %1, 0
  br i1 %79, label %80, label %180

80:                                               ; preds = %78
  %81 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 7
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %83 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %3, i64 0, i32 5
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %85 = getelementptr inbounds %"class.xercesc_2_7::QName", ptr %3, i64 0, i32 6
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  br label %87

87:                                               ; preds = %80, %177
  %88 = phi i32 [ 0, %80 ], [ %178, %177 ]
  %89 = load ptr, ptr %81, align 8, !tbaa !99
  %90 = invoke noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %89, i32 noundef %88)
          to label %91 unwind label %127

91:                                               ; preds = %87
  %92 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %90, i64 0, i32 3
  %93 = load ptr, ptr %92, align 8, !tbaa !138
  %94 = load i32, ptr %82, align 4, !tbaa !145
  invoke void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %93, i32 noundef %94)
          to label %95 unwind label %129

95:                                               ; preds = %91
  %96 = load ptr, ptr %83, align 8, !tbaa !146
  %97 = invoke noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %96, i32 noundef 0)
          to label %98 unwind label %131

98:                                               ; preds = %95
  %99 = load i32, ptr %84, align 4, !tbaa !147
  %100 = icmp eq i32 %97, %99
  br i1 %100, label %101, label %177

101:                                              ; preds = %98
  %102 = getelementptr inbounds %"class.xercesc_2_7::KVStringPair", ptr %90, i64 0, i32 4
  %103 = load ptr, ptr %102, align 8, !tbaa !141
  %104 = load ptr, ptr %85, align 8, !tbaa !122
  %105 = icmp eq ptr %104, null
  br i1 %105, label %110, label %106

106:                                              ; preds = %101
  %107 = load i16, ptr %104, align 2, !tbaa !91
  %108 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, align 2, !tbaa !91
  %109 = icmp eq i16 %107, %108
  br i1 %109, label %113, label %135

110:                                              ; preds = %101
  %111 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, align 2, !tbaa !91
  %112 = icmp eq i16 %111, 0
  br i1 %112, label %124, label %135

113:                                              ; preds = %106, %118
  %114 = phi i16 [ %121, %118 ], [ %107, %106 ]
  %115 = phi ptr [ %120, %118 ], [ @_ZN11xercesc_2_713SchemaSymbols10fgXSI_TYPEE, %106 ]
  %116 = phi ptr [ %119, %118 ], [ %104, %106 ]
  %117 = icmp eq i16 %114, 0
  br i1 %117, label %124, label %118

118:                                              ; preds = %113
  %119 = getelementptr inbounds i16, ptr %116, i64 1
  %120 = getelementptr inbounds i16, ptr %115, i64 1
  %121 = load i16, ptr %119, align 2, !tbaa !91
  %122 = load i16, ptr %120, align 2, !tbaa !91
  %123 = icmp eq i16 %121, %122
  br i1 %123, label %113, label %135, !llvm.loop !140

124:                                              ; preds = %113, %110
  store i32 0, ptr %75, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %75, ptr noundef %103)
          to label %177 unwind label %133

125:                                              ; preds = %73
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %235

127:                                              ; preds = %87
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %233

129:                                              ; preds = %91
  %130 = landingpad { ptr, i32 }
          cleanup
  br label %233

131:                                              ; preds = %95
  %132 = landingpad { ptr, i32 }
          cleanup
  br label %233

133:                                              ; preds = %124
  %134 = landingpad { ptr, i32 }
          cleanup
  br label %233

135:                                              ; preds = %118, %106, %110
  br i1 %105, label %140, label %136

136:                                              ; preds = %135
  %137 = load i16, ptr %104, align 2, !tbaa !91
  %138 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, align 2, !tbaa !91
  %139 = icmp eq i16 %137, %138
  br i1 %139, label %143, label %177

140:                                              ; preds = %135
  %141 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, align 2, !tbaa !91
  %142 = icmp eq i16 %141, 0
  br i1 %142, label %154, label %177

143:                                              ; preds = %136, %148
  %144 = phi i16 [ %151, %148 ], [ %137, %136 ]
  %145 = phi ptr [ %150, %148 ], [ @_ZN11xercesc_2_713SchemaSymbols10fgATT_NILLE, %136 ]
  %146 = phi ptr [ %149, %148 ], [ %104, %136 ]
  %147 = icmp eq i16 %144, 0
  br i1 %147, label %154, label %148

148:                                              ; preds = %143
  %149 = getelementptr inbounds i16, ptr %146, i64 1
  %150 = getelementptr inbounds i16, ptr %145, i64 1
  %151 = load i16, ptr %149, align 2, !tbaa !91
  %152 = load i16, ptr %150, align 2, !tbaa !91
  %153 = icmp eq i16 %151, %152
  br i1 %153, label %143, label %177, !llvm.loop !140

154:                                              ; preds = %143, %140
  %155 = icmp eq ptr %103, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %154
  %157 = load i16, ptr %103, align 2, !tbaa !91
  %158 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, align 2, !tbaa !91
  %159 = icmp eq i16 %157, %158
  br i1 %159, label %163, label %177

160:                                              ; preds = %154
  %161 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, align 2, !tbaa !91
  %162 = icmp eq i16 %161, 0
  br i1 %162, label %174, label %177

163:                                              ; preds = %156, %168
  %164 = phi i16 [ %171, %168 ], [ %157, %156 ]
  %165 = phi ptr [ %170, %168 ], [ @_ZN11xercesc_2_713SchemaSymbols13fgATTVAL_TRUEE, %156 ]
  %166 = phi ptr [ %169, %168 ], [ %103, %156 ]
  %167 = icmp eq i16 %164, 0
  br i1 %167, label %174, label %168

168:                                              ; preds = %163
  %169 = getelementptr inbounds i16, ptr %166, i64 1
  %170 = getelementptr inbounds i16, ptr %165, i64 1
  %171 = load i16, ptr %169, align 2, !tbaa !91
  %172 = load i16, ptr %170, align 2, !tbaa !91
  %173 = icmp eq i16 %171, %172
  br i1 %173, label %163, label %177, !llvm.loop !140

174:                                              ; preds = %163, %160
  %175 = load ptr, ptr %86, align 8, !tbaa !86
  %176 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %175, i64 0, i32 5
  store i8 1, ptr %176, align 8, !tbaa !148
  br label %177

177:                                              ; preds = %148, %168, %136, %156, %124, %174, %160, %140, %98
  %178 = add nuw nsw i32 %88, 1
  %179 = icmp eq i32 %178, %1
  br i1 %179, label %180, label %87, !llvm.loop !149

180:                                              ; preds = %177, %78
  %181 = load i32, ptr %75, align 8, !tbaa !89
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %229, label %183

183:                                              ; preds = %180
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #10
  store i32 -1, ptr %4, align 4, !tbaa !117
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %75, i64 0, i32 6
  %185 = load ptr, ptr %184, align 8, !tbaa !90
  %186 = zext i32 %181 to i64
  %187 = getelementptr inbounds i16, ptr %185, i64 %186
  store i16 0, ptr %187, align 2, !tbaa !91
  %188 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68
  %189 = load ptr, ptr %0, align 8, !tbaa !40
  %190 = getelementptr inbounds ptr, ptr %189, i64 7
  %191 = load ptr, ptr %190, align 8
  %192 = invoke noundef i32 %191(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %185, ptr noundef nonnull align 8 dereferenceable(40) %188, i16 noundef signext 1, ptr noundef nonnull align 4 dereferenceable(4) %4)
          to label %193 unwind label %225

193:                                              ; preds = %183
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %195 = load ptr, ptr %194, align 8, !tbaa !86
  %196 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 68, i32 6
  %197 = load ptr, ptr %196, align 8, !tbaa !90
  %198 = load i32, ptr %188, align 8, !tbaa !89
  %199 = zext i32 %198 to i64
  %200 = getelementptr inbounds i16, ptr %197, i64 %199
  store i16 0, ptr %200, align 2, !tbaa !91
  %201 = load ptr, ptr %184, align 8, !tbaa !90
  %202 = load i32, ptr %75, align 8, !tbaa !89
  %203 = zext i32 %202 to i64
  %204 = getelementptr inbounds i16, ptr %201, i64 %203
  store i16 0, ptr %204, align 2, !tbaa !91
  %205 = load i32, ptr %4, align 4, !tbaa !117
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i16, ptr %201, i64 %206
  %208 = getelementptr inbounds i16, ptr %207, i64 1
  %209 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %195, i64 0, i32 4
  %210 = load ptr, ptr %209, align 8, !tbaa !150
  %211 = icmp eq ptr %210, null
  br i1 %211, label %216, label %212

212:                                              ; preds = %193
  %213 = load ptr, ptr %210, align 8, !tbaa !40
  %214 = getelementptr inbounds ptr, ptr %213, i64 1
  %215 = load ptr, ptr %214, align 8
  call void %215(ptr noundef nonnull align 8 dereferenceable(56) %210) #10
  br label %216

216:                                              ; preds = %212, %193
  %217 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %195, i64 0, i32 1
  %218 = load ptr, ptr %217, align 8, !tbaa !151
  %219 = invoke noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %218)
          to label %220 unwind label %225

220:                                              ; preds = %216
  %221 = load ptr, ptr %217, align 8, !tbaa !151
  invoke void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %219, ptr noundef %197, ptr noundef nonnull %208, i32 noundef %192, ptr noundef %221)
          to label %224 unwind label %222

222:                                              ; preds = %220
  %223 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %219, ptr noundef %218) #10
  br label %227

224:                                              ; preds = %220
  store ptr %219, ptr %209, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %229

225:                                              ; preds = %216, %183
  %226 = landingpad { ptr, i32 }
          cleanup
  br label %227

227:                                              ; preds = %222, %225
  %228 = phi { ptr, i32 } [ %226, %225 ], [ %223, %222 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #10
  br label %233

229:                                              ; preds = %224, %180
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #10
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %241 unwind label %230

230:                                              ; preds = %229
  %231 = landingpad { ptr, i32 }
          catch ptr null
  %232 = extractvalue { ptr, i32 } %231, 0
  call void @__clang_call_terminate(ptr %232) #11
  unreachable

233:                                              ; preds = %127, %131, %133, %129, %227
  %234 = phi { ptr, i32 } [ %228, %227 ], [ %128, %127 ], [ %130, %129 ], [ %134, %133 ], [ %132, %131 ]
  call void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56) %3) #10
  br label %235

235:                                              ; preds = %233, %125
  %236 = phi { ptr, i32 } [ %234, %233 ], [ %126, %125 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #10
  invoke void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24) %74, ptr noundef nonnull align 8 dereferenceable(40) %75)
          to label %240 unwind label %237

237:                                              ; preds = %235
  %238 = landingpad { ptr, i32 }
          catch ptr null
  %239 = extractvalue { ptr, i32 } %238, 0
  call void @__clang_call_terminate(ptr %239) #11
  unreachable

240:                                              ; preds = %235
  resume { ptr, i32 } %236

241:                                              ; preds = %229, %69
  ret void
}

declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner21resolveQNameWithColonEPKtRNS_9XMLBufferEsi(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_75QNameC1EPKtS2_jPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner20laxElementValidationEPNS_5QNameEPNS_25ContentLeafNameTypeVectorEPKNS_15XMLContentModelEj(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_75QNameD1Ev(ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner13switchGrammarEPKtb(ptr nocapture noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 align 2 !prof !39 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %3
  %6 = load i16, ptr %1, align 2, !tbaa !91
  %7 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !91
  %8 = icmp eq i16 %6, %7
  br i1 %8, label %12, label %26

9:                                                ; preds = %3
  %10 = load i16, ptr @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, align 2, !tbaa !91
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %26

12:                                               ; preds = %5, %17
  %13 = phi i16 [ %20, %17 ], [ %6, %5 ]
  %14 = phi ptr [ %19, %17 ], [ @_ZN11xercesc_2_713SchemaSymbols21fgURI_SCHEMAFORSCHEMAE, %5 ]
  %15 = phi ptr [ %18, %17 ], [ %1, %5 ]
  %16 = icmp eq i16 %13, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %12
  %18 = getelementptr inbounds i16, ptr %15, i64 1
  %19 = getelementptr inbounds i16, ptr %14, i64 1
  %20 = load i16, ptr %18, align 2, !tbaa !91
  %21 = load i16, ptr %19, align 2, !tbaa !91
  %22 = icmp eq i16 %20, %21
  br i1 %22, label %12, label %26, !llvm.loop !140

23:                                               ; preds = %12, %9
  %24 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !43
  br label %30

26:                                               ; preds = %17, %5, %9
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %28 = load ptr, ptr %27, align 8, !tbaa !152
  %29 = tail call noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80) %28, ptr noundef %1)
  br label %30

30:                                               ; preds = %26, %23
  %31 = phi ptr [ %25, %23 ], [ %29, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %47, label %33

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !40
  %35 = getelementptr inbounds ptr, ptr %34, i64 5
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(8) %31)
  %38 = icmp eq i32 %37, 1
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %31, ptr %40, align 8, !tbaa !96
  %41 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 1, ptr %41, align 4, !tbaa !97
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %43 = load ptr, ptr %42, align 8, !tbaa !86
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = getelementptr inbounds ptr, ptr %44, i64 11
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(40) %43, ptr noundef nonnull %31)
  br label %51

47:                                               ; preds = %33, %30
  br i1 %2, label %51, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %50 = load ptr, ptr %49, align 8, !tbaa !86
  tail call void @_ZN11xercesc_2_712XMLValidator9emitErrorENS_8XMLValid5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(40) %50, i32 noundef 72, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null)
  br label %51

51:                                               ; preds = %47, %48, %39
  ret void
}

declare noundef ptr @_ZNK11xercesc_2_710XMLScanner10getURITextEj(ptr noundef nonnull align 8 dereferenceable(776), i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_717SchemaElementDeclC1EPKtS2_iNS0_10ModelTypesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(147), ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 comdat align 2 !prof !153 {
  %6 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #10
  %7 = call noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %6)
  %8 = icmp eq ptr %7, null
  br i1 %8, label %24, label %9, !prof !154

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 1
  %11 = load i8, ptr %10, align 8, !tbaa !155, !range !84, !noundef !85
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %20, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %7, align 8, !tbaa !120
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %14, align 8, !tbaa !40
  %18 = getelementptr inbounds ptr, ptr %17, i64 1
  %19 = load ptr, ptr %18, align 8
  call void %19(ptr noundef nonnull align 8 dereferenceable(147) %14) #10
  br label %20

20:                                               ; preds = %13, %16, %9
  store ptr %4, ptr %7, align 8, !tbaa !120
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 2
  store ptr %1, ptr %21, align 8, !tbaa !157
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 3
  store i32 %2, ptr %22, align 8, !tbaa !158
  %23 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %7, i64 0, i32 4
  store i32 %3, ptr %23, align 4, !tbaa !159
  br label %40

24:                                               ; preds = %5
  %25 = load ptr, ptr %0, align 8, !tbaa !160
  %26 = load ptr, ptr %25, align 8, !tbaa !40
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %25, i64 noundef 32), !prof !161
  %30 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !162
  %32 = load i32, ptr %6, align 4, !tbaa !117
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds ptr, ptr %31, i64 %33
  %35 = load ptr, ptr %34, align 8, !tbaa !67
  store ptr %4, ptr %29, align 8, !tbaa !120
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 1
  store ptr %35, ptr %36, align 8, !tbaa !163
  %37 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 2
  store ptr %1, ptr %37, align 8, !tbaa !157
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 3
  store i32 %2, ptr %38, align 8, !tbaa !158
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %29, i64 0, i32 4
  store i32 %3, ptr %39, align 4, !tbaa !159
  store ptr %29, ptr %34, align 8, !tbaa !67
  br label %40

40:                                               ; preds = %24, %20
  %41 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 7
  %42 = load i32, ptr %41, align 4, !tbaa !164
  %43 = add i32 %42, 1
  %44 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 6
  %45 = load i32, ptr %44, align 8, !tbaa !165
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %68, !prof !166

47:                                               ; preds = %40
  %48 = uitofp i32 %45 to double
  %49 = fmul double %48, 1.500000e+00
  %50 = fptoui double %49 to i32
  %51 = load ptr, ptr %0, align 8, !tbaa !160
  %52 = zext i32 %50 to i64
  %53 = shl nuw nsw i64 %52, 3
  %54 = load ptr, ptr %51, align 8, !tbaa !40
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %51, i64 noundef %53)
  %58 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %59 = load ptr, ptr %58, align 8, !tbaa !167
  %60 = load i32, ptr %44, align 8, !tbaa !165
  %61 = zext i32 %60 to i64
  %62 = shl nuw nsw i64 %61, 3
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %57, ptr align 8 %59, i64 %62, i1 false)
  %63 = load ptr, ptr %0, align 8, !tbaa !160
  %64 = load ptr, ptr %58, align 8, !tbaa !167
  %65 = load ptr, ptr %63, align 8, !tbaa !40
  %66 = getelementptr inbounds ptr, ptr %65, i64 3
  %67 = load ptr, ptr %66, align 8
  call void %67(ptr noundef nonnull align 8 dereferenceable(8) %63, ptr noundef %64)
  store ptr %57, ptr %58, align 8, !tbaa !167
  store i32 %50, ptr %44, align 8, !tbaa !165
  br label %68

68:                                               ; preds = %47, %40
  %69 = load i32, ptr %41, align 4, !tbaa !164
  %70 = add i32 %69, 1
  store i32 %70, ptr %41, align 4, !tbaa !164
  %71 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 5
  %72 = load ptr, ptr %71, align 8, !tbaa !167
  %73 = zext i32 %70 to i64
  %74 = getelementptr inbounds ptr, ptr %72, i64 %73
  store ptr %4, ptr %74, align 8, !tbaa !67
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLElementDecl", ptr %4, i64 0, i32 4
  store i32 %70, ptr %75, align 4, !tbaa !124
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #10
  ret i32 %70
}

declare void @_ZN11xercesc_2_79ElemStack10setElementEPNS_14XMLElementDeclEj(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #7 comdat align 2 !prof !168 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %22, label %5, !prof !169

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !89
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !170
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %12, label %11, !prof !171

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2)
  br label %12

12:                                               ; preds = %11, %5
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = load i32, ptr %0, align 8, !tbaa !89
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i16, ptr %14, i64 %16
  %18 = zext i32 %2 to i64
  %19 = shl nuw nsw i64 %18, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %17, ptr align 2 %1, i64 %19, i1 false), !prof !172
  %20 = load i32, ptr %0, align 8, !tbaa !89
  %21 = add i32 %20, %2
  store i32 %21, ptr %0, align 8, !tbaa !89
  br label %23

22:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %23

23:                                               ; preds = %22, %12
  ret void
}

declare void @_ZN11xercesc_2_712SGXMLScanner15resizeElemStateEv(ptr noundef nonnull align 8 dereferenceable(1000)) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_79ElemStack8addChildEPNS_5QNameEb(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner12buildAttListERKNS_11RefVectorOfINS_12KVStringPairEEEjPNS_14XMLElementDeclERNS1_INS_7XMLAttrEEE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(40), i32 noundef, ptr noundef, ptr noundef nonnull align 1) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 !prof !173 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 4
  %3 = load i32, ptr %2, align 4, !tbaa !174
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !176

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !177
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHash2KeysTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 4, !tbaa !174
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !178
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHash2KeysTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !179
  %23 = load i8, ptr %11, align 8, !tbaa !181, !range !84, !noundef !85
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !182
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #13
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !183
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20)
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !llvm.loop !184

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !178
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !67
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !177
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !llvm.loop !185

42:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XSAXMLScanner9scanResetERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !43
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 54
  store ptr %4, ptr %5, align 8, !tbaa !96
  %6 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  store i32 1, ptr %6, align 4, !tbaa !97
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 55
  store ptr %4, ptr %7, align 8, !tbaa !186
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 50
  %9 = load ptr, ptr %8, align 8, !tbaa !86
  %10 = load ptr, ptr %9, align 8, !tbaa !40
  %11 = getelementptr inbounds ptr, ptr %10, i64 11
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(40) %9, ptr noundef %4)
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 10
  store i8 1, ptr %13, align 8, !tbaa !83
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 41
  %15 = load ptr, ptr %14, align 8, !tbaa !93
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %2
  %18 = load ptr, ptr %15, align 8, !tbaa !40
  %19 = getelementptr inbounds ptr, ptr %18, i64 9
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(8) %15)
  br label %21

21:                                               ; preds = %17, %2
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 43
  %23 = load ptr, ptr %22, align 8, !tbaa !187
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %23, align 8, !tbaa !40
  %27 = getelementptr inbounds ptr, ptr %26, i64 4
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(8) %23)
  br label %29

29:                                               ; preds = %25, %21
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 44
  %31 = load ptr, ptr %30, align 8, !tbaa !188
  %32 = icmp eq ptr %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %29
  %34 = load ptr, ptr %31, align 8, !tbaa !40
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %31)
  br label %37

37:                                               ; preds = %33, %29
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 47
  %39 = load ptr, ptr %38, align 8, !tbaa !189
  %40 = load ptr, ptr %39, align 8, !tbaa !40
  %41 = getelementptr inbounds ptr, ptr %40, i64 4
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(16) %39)
  %43 = load ptr, ptr %38, align 8, !tbaa !189
  %44 = load ptr, ptr %43, align 8, !tbaa !40
  %45 = getelementptr inbounds ptr, ptr %44, i64 9
  %46 = load ptr, ptr %45, align 8
  %47 = tail call noundef ptr %46(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef null)
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 48
  store i8 0, ptr %48, align 8, !tbaa !190
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 57
  %50 = load ptr, ptr %49, align 8, !tbaa !129
  %51 = icmp eq ptr %50, null
  br i1 %51, label %58, label %52

52:                                               ; preds = %37
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %54 = load ptr, ptr %53, align 8, !tbaa !65
  %55 = load ptr, ptr %54, align 8, !tbaa !40
  %56 = getelementptr inbounds ptr, ptr %55, i64 3
  %57 = load ptr, ptr %56, align 8
  tail call void %57(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef nonnull %50)
  br label %58

58:                                               ; preds = %52, %37
  store ptr null, ptr %49, align 8, !tbaa !129
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 71
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 28
  %61 = load i32, ptr %60, align 4, !tbaa !145
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 29
  %63 = load i32, ptr %62, align 8, !tbaa !191
  %64 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 30
  %65 = load i32, ptr %64, align 4, !tbaa !192
  %66 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 31
  %67 = load i32, ptr %66, align 8, !tbaa !193
  tail call void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104) %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67)
  %68 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 32
  %69 = load i32, ptr %68, align 4, !tbaa !147
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %58
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 56
  %73 = load ptr, ptr %72, align 8, !tbaa !118
  %74 = load ptr, ptr %73, align 8, !tbaa !40
  %75 = getelementptr inbounds ptr, ptr %74, i64 5
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef i32 %76(ptr noundef nonnull align 8 dereferenceable(40) %73, ptr noundef nonnull @_ZN11xercesc_2_713SchemaSymbols9fgURI_XSIE)
  store i32 %77, ptr %68, align 4, !tbaa !147
  br label %78

78:                                               ; preds = %71, %58
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 7
  store i8 0, ptr %79, align 1, !tbaa !194
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 8
  store i8 0, ptr %80, align 2, !tbaa !195
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 25
  store i32 0, ptr %81, align 8, !tbaa !196
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 9
  store i8 1, ptr %82, align 1, !tbaa !197
  %83 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 1
  store i8 0, ptr %83, align 8, !tbaa !143
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 4
  store i8 1, ptr %84, align 2, !tbaa !198
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 12
  store i8 1, ptr %85, align 2, !tbaa !199
  %86 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 11
  %87 = load ptr, ptr %86, align 8, !tbaa !200
  %88 = load ptr, ptr %87, align 8, !tbaa !40
  %89 = getelementptr inbounds ptr, ptr %88, i64 6
  %90 = load ptr, ptr %89, align 8
  tail call void %90(ptr noundef nonnull align 8 dereferenceable(186) %87)
  %91 = load ptr, ptr %86, align 8, !tbaa !200
  %92 = load ptr, ptr %30, align 8, !tbaa !188
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLValidator", ptr %91, i64 0, i32 2
  store ptr %92, ptr %93, align 8, !tbaa !201
  %94 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %91, i64 0, i32 13, i32 2
  store ptr %92, ptr %94, align 8, !tbaa !202
  %95 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 5
  %96 = load i8, ptr %95, align 1, !tbaa !203, !range !84, !noundef !85
  %97 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %91, i64 0, i32 13, i32 1
  store i8 %96, ptr %97, align 8, !tbaa !204
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 52
  %99 = load ptr, ptr %98, align 8, !tbaa !152
  %100 = getelementptr inbounds %"class.xercesc_2_7::SchemaValidator", ptr %91, i64 0, i32 3
  store ptr %99, ptr %100, align 8, !tbaa !205
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 49
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 3
  %103 = load i8, ptr %102, align 1, !tbaa !206, !range !84, !noundef !85
  %104 = icmp ne i8 %103, 0
  %105 = tail call noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef nonnull align 8 dereferenceable(41) %1, i1 noundef zeroext true, i32 noundef 1, i32 noundef 1, i32 noundef 1, i1 noundef zeroext %104)
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %132

107:                                              ; preds = %78
  %108 = load ptr, ptr %1, align 8, !tbaa !40
  %109 = getelementptr inbounds ptr, ptr %108, i64 6
  %110 = load ptr, ptr %109, align 8
  %111 = tail call noundef zeroext i1 %110(ptr noundef nonnull align 8 dereferenceable(41) %1)
  %112 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %113 = load ptr, ptr %1, align 8, !tbaa !40
  %114 = getelementptr inbounds ptr, ptr %113, i64 5
  %115 = load ptr, ptr %114, align 8
  br i1 %111, label %116, label %124

116:                                              ; preds = %107
  %117 = invoke noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %118 unwind label %122

118:                                              ; preds = %116
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %120 = load ptr, ptr %119, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %112, ptr noundef nonnull @.str, i32 noundef 585, i32 noundef 76, ptr noundef %117, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %120)
          to label %121 unwind label %122

121:                                              ; preds = %118
  tail call void @__cxa_throw(ptr nonnull %112, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

122:                                              ; preds = %118, %116
  %123 = landingpad { ptr, i32 }
          cleanup
  br label %156

124:                                              ; preds = %107
  %125 = invoke noundef ptr %115(ptr noundef nonnull align 8 dereferenceable(41) %1)
          to label %126 unwind label %130

126:                                              ; preds = %124
  %127 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 62
  %128 = load ptr, ptr %127, align 8, !tbaa !65
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %112, ptr noundef nonnull @.str, i32 noundef 587, i32 noundef 2, ptr noundef %125, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %128)
          to label %129 unwind label %130

129:                                              ; preds = %126
  tail call void @__cxa_throw(ptr nonnull %112, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

130:                                              ; preds = %126, %124
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %156

132:                                              ; preds = %78
  %133 = tail call noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80) %101, ptr noundef nonnull %105, ptr noundef null)
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 60
  %135 = load ptr, ptr %134, align 8, !tbaa !207
  %136 = icmp eq ptr %135, null
  br i1 %136, label %144, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %135, align 8, !tbaa !40
  %139 = getelementptr inbounds ptr, ptr %138, i64 3
  %140 = load ptr, ptr %139, align 8
  %141 = tail call noundef i32 %140(ptr noundef nonnull align 8 dereferenceable(12) %135)
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 26
  store i32 %141, ptr %142, align 4, !tbaa !208
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 27
  store i32 0, ptr %143, align 8, !tbaa !209
  br label %144

144:                                              ; preds = %137, %132
  %145 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 14
  store i32 0, ptr %145, align 8, !tbaa !210
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLScanner", ptr %0, i64 0, i32 36
  %147 = load i32, ptr %146, align 8, !tbaa !211
  %148 = icmp ugt i32 %147, 31
  br i1 %148, label %149, label %152

149:                                              ; preds = %144
  %150 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 15
  %151 = load ptr, ptr %150, align 8, !tbaa !212
  tail call void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %151)
  tail call void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %153

152:                                              ; preds = %144
  tail call void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776) %0)
  br label %153

153:                                              ; preds = %152, %149
  %154 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 16
  %155 = load ptr, ptr %154, align 8, !tbaa !137
  tail call void @_ZN11xercesc_2_719RefHash2KeysTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(40) %155)
  ret void

156:                                              ; preds = %130, %122
  %157 = phi { ptr, i32 } [ %123, %122 ], [ %131, %130 ]
  tail call void @__cxa_free_exception(ptr %112) #10
  resume { ptr, i32 } %157
}

declare void @_ZN11xercesc_2_79ElemStack5resetEjjjj(ptr noundef nonnull align 8 dereferenceable(104), i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_79ReaderMgr12createReaderERKNS_11InputSourceEbNS_9XMLReader7RefFromENS4_5TypesENS4_7SourcesEb(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef nonnull align 8 dereferenceable(41), i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %12
}

declare noundef zeroext i1 @_ZN11xercesc_2_79ReaderMgr10pushReaderEPNS_9XMLReaderEPNS_13XMLEntityDeclE(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfIjE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #7 comdat align 2 !prof !213 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !214
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %42, label %5, !prof !216

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !217
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !218

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %35, %5
  store i32 0, ptr %2, align 8, !tbaa !214
  br label %42

13:                                               ; preds = %9, %35
  %14 = phi i64 [ 0, %9 ], [ %38, %35 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %35, label %19, !prof !220

19:                                               ; preds = %13, %29
  %20 = phi ptr [ %22, %29 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !221
  %23 = load i8, ptr %11, align 8, !tbaa !223, !range !84, !noundef !85
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %29, label %25, !prof !224

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !225
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void @_ZdlPv(ptr noundef %26) #13
  br label %29

29:                                               ; preds = %25, %28, %19
  %30 = load ptr, ptr %0, align 8, !tbaa !226
  %31 = load ptr, ptr %30, align 8, !tbaa !40
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %20), !prof !227
  %34 = icmp eq ptr %22, null
  br i1 %34, label %35, label %19, !prof !224, !llvm.loop !228

35:                                               ; preds = %29, %13
  %36 = load ptr, ptr %10, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 %14
  store ptr null, ptr %37, align 8, !tbaa !67
  %38 = add nuw nsw i64 %14, 1
  %39 = load i32, ptr %6, align 8, !tbaa !217
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %13, label %12, !prof !229, !llvm.loop !230

42:                                               ; preds = %1, %12
  ret void
}

declare void @_ZN11xercesc_2_710XMLScanner16recreateUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_710XMLScanner13resetUIntPoolEv(ptr noundef nonnull align 8 dereferenceable(776)) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !232
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6, !prof !234

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !235
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.3, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !236
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  ret ptr %18
}

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712SGXMLScanner11updateNSMapEPKtS2_i(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_75QNameC1EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_75QName7setNameEPKtj(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner13resolvePrefixEPKtNS_9ElemStack8MapModesE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, i32 noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_715GrammarResolver10getGrammarEPKt(ptr noundef nonnull align 8 dereferenceable(80), ptr noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLScanner10bufferFullERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) unnamed_addr #3 comdat align 2 !prof !39 {
  %3 = load ptr, ptr %0, align 8, !tbaa !40
  %4 = getelementptr inbounds ptr, ptr %3, i64 16
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(40) %1)
  ret i1 true
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_712SGXMLScanner21getCurrentGrammarTypeEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #8 comdat align 2 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::SGXMLScanner", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !97
  ret i32 %3
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XSAXMLScanner7getNameEv(ptr noundef nonnull align 8 dereferenceable(1000) %0) unnamed_addr #8 comdat align 2 !prof !39 {
  ret ptr @_ZN11xercesc_2_76XMLUni15fgXSAXMLScannerE
}

declare noundef ptr @_ZN11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #4

declare noundef ptr @_ZNK11xercesc_2_712SGXMLScanner17getEntityDeclPoolEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner12resolveQNameEPKtRNS_9XMLBufferEsRi(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef nonnull align 8 dereferenceable(40), i16 noundef signext, ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #4

declare void @_ZN11xercesc_2_712SGXMLScanner12scanDocumentERKNS_11InputSourceE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(41)) unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_712SGXMLScanner8scanNextERNS_13XMLPScanTokenE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 1) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_712SGXMLScanner11loadGrammarERKNS_11InputSourceEsb(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(41), i16 noundef signext, i1 noundef zeroext) unnamed_addr #4

declare void @_ZN11xercesc_2_712SGXMLScanner13scanCDSectionEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #4

declare void @_ZN11xercesc_2_712SGXMLScanner12scanCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare noundef i32 @_ZN11xercesc_2_712SGXMLScanner13scanEntityRefEbRtS1_Rb(ptr noundef nonnull align 8 dereferenceable(1000), i1 noundef zeroext, ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 2 dereferenceable(2), ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #4

declare void @_ZN11xercesc_2_712SGXMLScanner15scanDocTypeDeclEv(ptr noundef nonnull align 8 dereferenceable(1000)) unnamed_addr #4

declare void @_ZN11xercesc_2_712SGXMLScanner12sendCharDataERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef nonnull align 8 dereferenceable(40)) unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_712SGXMLScanner15resolveSystemIdEPKtS2_(ptr noundef nonnull align 8 dereferenceable(1000), ptr noundef, ptr noundef) unnamed_addr #4

declare noundef zeroext i16 @_ZN11xercesc_2_79ReaderMgr11getNextCharEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #4

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !39 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !40
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992), ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(8) ptr @_ZNK11xercesc_2_712ValueStackOfIPNS_15ComplexTypeInfoEE4peekEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 !prof !240 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %3 = load i32, ptr %2, align 4, !tbaa !104
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %15, !prof !241

5:                                                ; preds = %1
  %6 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %7 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !242
  invoke void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef nonnull @.str.1, i32 noundef 61, i32 noundef 80, ptr noundef %8)
          to label %9 unwind label %13

9:                                                ; preds = %5
  tail call void @__cxa_throw(ptr nonnull %6, ptr nonnull @_ZTIN11xercesc_2_719EmptyStackExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

10:                                               ; preds = %25, %13
  %11 = phi ptr [ %21, %25 ], [ %6, %13 ]
  %12 = phi { ptr, i32 } [ %26, %25 ], [ %14, %13 ]
  tail call void @__cxa_free_exception(ptr %11) #10
  resume { ptr, i32 } %12

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          cleanup
  br label %10

15:                                               ; preds = %1
  %16 = add nsw i32 %3, -1
  %17 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !104
  %19 = icmp ugt i32 %18, %16
  br i1 %19, label %27, label %20, !prof !243

20:                                               ; preds = %15
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #10
  %22 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !242
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str.2, i32 noundef 198, i32 noundef 116, ptr noundef %23)
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  br label %10

27:                                               ; preds = %15
  %28 = getelementptr inbounds %"class.xercesc_2_7::ValueStackOf", ptr %0, i64 0, i32 1, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !244
  %30 = zext i32 %16 to i64
  %31 = getelementptr inbounds ptr, ptr %29, i64 %30
  ret ptr %31
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_719EmptyStackExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !39 {
  ret ptr @_ZN11xercesc_2_76XMLUni26fgEmptyStackException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_719EmptyStackException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_719EmptyStackExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !40
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !40
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !39 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !39 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !39 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !40
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_715ComplexTypeInfo16makeContentModelEb(ptr noundef nonnull align 8 dereferenceable(176), i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(40) ptr @_ZN11xercesc_2_712XMLBufferMgr11bidOnBufferEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #7 comdat align 2 !prof !245 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %30, label %4, !prof !246

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !91
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %30, label %7, !prof !247

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !91
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !248, !llvm.loop !249

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !89
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !170
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %21, label %20, !prof !250

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8)
  br label %21

21:                                               ; preds = %20, %14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !90
  %24 = load i32, ptr %0, align 8, !tbaa !89
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i16, ptr %23, i64 %25
  %27 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %26, ptr nonnull align 2 %1, i64 %27, i1 false), !prof !251
  %28 = load i32, ptr %0, align 8, !tbaa !89
  %29 = add i32 %28, %8
  store i32 %29, ptr %0, align 8, !tbaa !89
  br label %30

30:                                               ; preds = %21, %4, %2
  ret void
}

declare void @_ZN11xercesc_2_712XMLBufferMgr13releaseBufferERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #7 comdat align 2 !prof !252 {
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !253
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 3
  %9 = load i32, ptr %8, align 8, !tbaa !254
  %10 = load ptr, ptr %0, align 8, !tbaa !160
  %11 = load ptr, ptr %7, align 8, !tbaa !40
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef i32 %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef %1, i32 noundef %9, ptr noundef %10), !prof !255
  store i32 %13, ptr %4, align 4, !tbaa !117
  %14 = getelementptr inbounds %"class.xercesc_2_7::RefHash3KeysIdPool", ptr %0, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !162
  %16 = zext i32 %13 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %41, label %20, !prof !256

20:                                               ; preds = %5, %37
  %21 = phi ptr [ %39, %37 ], [ %18, %5 ]
  %22 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 3
  %23 = load i32, ptr %22, align 8, !tbaa !158
  %24 = icmp eq i32 %23, %2
  br i1 %24, label %25, label %37, !prof !257

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !159
  %28 = icmp eq i32 %27, %3
  br i1 %28, label %29, label %37, !prof !258

29:                                               ; preds = %25
  %30 = load ptr, ptr %6, align 8, !tbaa !253
  %31 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !157
  %33 = load ptr, ptr %30, align 8, !tbaa !40
  %34 = getelementptr inbounds ptr, ptr %33, i64 1
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef zeroext i1 %35(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %1, ptr noundef %32), !prof !259
  br i1 %36, label %41, label %37, !prof !260

37:                                               ; preds = %29, %25, %20
  %38 = getelementptr inbounds %"struct.xercesc_2_7::RefHash3KeysTableBucketElem", ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !67
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %20, !prof !261, !llvm.loop !262

41:                                               ; preds = %29, %37, %5
  %42 = phi ptr [ null, %5 ], [ %21, %29 ], [ null, %37 ]
  ret ptr %42
}

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { noreturn }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!38}

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
!34 = distinct !{!35, !36, !37}
!35 = !{ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE3putEPviiPS1_, ptr @_ZN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEE14findBucketElemEPKviiRj, i64 79}
!36 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 4}
!37 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!38 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!39 = !{!"function_entry_count", i64 0}
!40 = !{!41, !41, i64 0}
!41 = !{!"vtable pointer", !42, i64 0}
!42 = !{!"Simple C++ TBAA"}
!43 = !{!44, !51, i64 872}
!44 = !{!"_ZTSN11xercesc_2_712SGXMLScannerE", !45, i64 0, !49, i64 776, !61, i64 780, !50, i64 784, !51, i64 792, !57, i64 800, !51, i64 840, !51, i64 848, !50, i64 856, !51, i64 864, !51, i64 872, !51, i64 880, !51, i64 888, !51, i64 896, !50, i64 904, !51, i64 912, !51, i64 920, !51, i64 928, !51, i64 936, !51, i64 944, !51, i64 952, !62, i64 960}
!45 = !{!"_ZTSN11xercesc_2_710XMLScannerE", !46, i64 0, !47, i64 8, !49, i64 16, !49, i64 17, !49, i64 18, !49, i64 19, !49, i64 20, !49, i64 21, !49, i64 22, !49, i64 23, !49, i64 24, !49, i64 25, !49, i64 26, !49, i64 27, !49, i64 28, !49, i64 29, !49, i64 30, !49, i64 31, !49, i64 32, !49, i64 33, !49, i64 34, !49, i64 35, !49, i64 36, !49, i64 37, !49, i64 38, !50, i64 40, !50, i64 44, !50, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !50, i64 64, !50, i64 68, !51, i64 72, !50, i64 80, !50, i64 84, !50, i64 88, !50, i64 92, !50, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168, !49, i64 176, !52, i64 184, !51, i64 264, !55, i64 272, !51, i64 280, !51, i64 288, !51, i64 296, !51, i64 304, !51, i64 312, !51, i64 320, !51, i64 328, !51, i64 336, !51, i64 344, !54, i64 352, !51, i64 360, !56, i64 368, !57, i64 392, !57, i64 432, !57, i64 472, !57, i64 512, !57, i64 552, !57, i64 592, !57, i64 632, !58, i64 672}
!46 = !{!"_ZTSN11xercesc_2_720XMLBufferFullHandlerE"}
!47 = !{!"long", !48, i64 0}
!48 = !{!"omnipotent char", !42, i64 0}
!49 = !{!"bool", !48, i64 0}
!50 = !{!"int", !48, i64 0}
!51 = !{!"any pointer", !48, i64 0}
!52 = !{!"_ZTSN11xercesc_2_79ReaderMgrE", !53, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32, !50, i64 40, !51, i64 48, !49, i64 56, !54, i64 60, !49, i64 64, !51, i64 72}
!53 = !{!"_ZTSN11xercesc_2_77LocatorE"}
!54 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !48, i64 0}
!55 = !{!"_ZTSN11xercesc_2_710XMLScanner10ValSchemesE", !48, i64 0}
!56 = !{!"_ZTSN11xercesc_2_712XMLBufferMgrE", !50, i64 0, !51, i64 8, !51, i64 16}
!57 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !50, i64 0, !50, i64 4, !50, i64 8, !49, i64 12, !51, i64 16, !51, i64 24, !51, i64 32}
!58 = !{!"_ZTSN11xercesc_2_79ElemStackE", !50, i64 0, !50, i64 4, !59, i64 8, !51, i64 48, !50, i64 56, !50, i64 60, !50, i64 64, !50, i64 68, !50, i64 72, !50, i64 76, !50, i64 80, !51, i64 88, !51, i64 96}
!59 = !{!"_ZTSN11xercesc_2_713XMLStringPoolE", !60, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !50, i64 32, !50, i64 36}
!60 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!61 = !{!"_ZTSN11xercesc_2_77Grammar11GrammarTypeE", !48, i64 0}
!62 = !{!"_ZTSN11xercesc_2_715PSVIElemContextE", !49, i64 0, !49, i64 1, !50, i64 4, !50, i64 8, !50, i64 12, !51, i64 16, !51, i64 24, !51, i64 32}
!63 = !{!49, !49, i64 0}
!64 = !{!58, !50, i64 60}
!65 = !{!45, !51, i64 360}
!66 = !{!58, !51, i64 48}
!67 = !{!51, !51, i64 0}
!68 = !{!69, !50, i64 64}
!69 = !{!"_ZTSN11xercesc_2_79ElemStack9StackElemE", !51, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !51, i64 24, !51, i64 32, !50, i64 40, !50, i64 44, !49, i64 48, !49, i64 49, !49, i64 50, !50, i64 52, !51, i64 56, !50, i64 64, !51, i64 72, !50, i64 80, !50, i64 84}
!70 = !{!69, !51, i64 72}
!71 = !{!52, !51, i64 16}
!72 = !{!69, !50, i64 8}
!73 = !{!74, !50, i64 163904}
!74 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !50, i64 0, !48, i64 4, !50, i64 32772, !48, i64 32776, !48, i64 49160, !47, i64 114696, !47, i64 114704, !75, i64 114712, !51, i64 114720, !49, i64 114728, !49, i64 114729, !51, i64 114736, !50, i64 114744, !48, i64 114748, !50, i64 163900, !50, i64 163904, !76, i64 163908, !49, i64 163912, !77, i64 163916, !50, i64 163920, !49, i64 163924, !49, i64 163925, !51, i64 163928, !51, i64 163936, !49, i64 163944, !49, i64 163945, !51, i64 163952, !78, i64 163960, !51, i64 163968, !49, i64 163976, !54, i64 163980, !51, i64 163984}
!75 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !48, i64 0}
!76 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !48, i64 0}
!77 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !48, i64 0}
!78 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !48, i64 0}
!79 = !{!69, !51, i64 0}
!80 = !{!81, !51, i64 16}
!81 = !{!"_ZTSN11xercesc_2_714XMLElementDeclE", !60, i64 0, !51, i64 8, !51, i64 16, !82, i64 24, !50, i64 28, !49, i64 32}
!82 = !{!"_ZTSN11xercesc_2_714XMLElementDecl13CreateReasonsE", !48, i64 0}
!83 = !{!45, !49, i64 24}
!84 = !{i8 0, i8 2}
!85 = !{}
!86 = !{!45, !51, i64 264}
!87 = !{!69, !51, i64 24}
!88 = !{!69, !50, i64 16}
!89 = !{!57, !50, i64 0}
!90 = !{!57, !51, i64 32}
!91 = !{!92, !92, i64 0}
!92 = !{!"short", !48, i64 0}
!93 = !{!45, !51, i64 120}
!94 = !{!69, !50, i64 84}
!95 = !{!69, !51, i64 56}
!96 = !{!45, !51, i64 296}
!97 = !{!44, !61, i64 780}
!98 = !{!69, !49, i64 48}
!99 = !{!44, !51, i64 848}
!100 = !{!101, !51, i64 168}
!101 = !{!"_ZTSN11xercesc_2_715SchemaValidatorE", !102, i64 0, !51, i64 40, !51, i64 48, !51, i64 56, !51, i64 64, !49, i64 72, !51, i64 80, !51, i64 88, !57, i64 96, !49, i64 136, !49, i64 137, !103, i64 144, !51, i64 168, !51, i64 176, !49, i64 184, !49, i64 185}
!102 = !{!"_ZTSN11xercesc_2_712XMLValidatorE", !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32}
!103 = !{!"_ZTSN11xercesc_2_716XSDErrorReporterE", !49, i64 8, !51, i64 16}
!104 = !{!105, !50, i64 4}
!105 = !{!"_ZTSN11xercesc_2_713ValueVectorOfIPNS_15ComplexTypeInfoEEE", !49, i64 0, !50, i64 4, !50, i64 8, !51, i64 16, !51, i64 24}
!106 = !{!107, !50, i64 32}
!107 = !{!"_ZTSN11xercesc_2_715ComplexTypeInfoE", !60, i64 0, !49, i64 8, !49, i64 9, !49, i64 10, !49, i64 11, !49, i64 12, !50, i64 16, !50, i64 20, !50, i64 24, !50, i64 28, !50, i64 32, !50, i64 36, !50, i64 40, !50, i64 44, !51, i64 48, !51, i64 56, !51, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !51, i64 144, !51, i64 152, !51, i64 160, !51, i64 168}
!108 = !{!109, !51, i64 80}
!109 = !{!"_ZTSN11xercesc_2_717SchemaElementDeclE", !81, i64 0, !110, i64 36, !111, i64 40, !112, i64 44, !113, i64 48, !50, i64 52, !50, i64 56, !50, i64 60, !50, i64 64, !51, i64 72, !51, i64 80, !51, i64 88, !51, i64 96, !51, i64 104, !51, i64 112, !51, i64 120, !51, i64 128, !51, i64 136, !49, i64 144, !49, i64 145, !49, i64 146}
!110 = !{!"_ZTSN11xercesc_2_717SchemaElementDecl10ModelTypesE", !48, i64 0}
!111 = !{!"_ZTSN11xercesc_2_78PSVIDefs9PSVIScopeE", !48, i64 0}
!112 = !{!"_ZTSN11xercesc_2_78PSVIDefs8ValidityE", !48, i64 0}
!113 = !{!"_ZTSN11xercesc_2_78PSVIDefs10ValidationE", !48, i64 0}
!114 = !{!48, !48, i64 0}
!115 = !{!107, !51, i64 136}
!116 = !{!69, !50, i64 52}
!117 = !{!50, !50, i64 0}
!118 = !{!45, !51, i64 312}
!119 = !{!44, !51, i64 896}
!120 = !{!121, !51, i64 0}
!121 = !{!"_ZTSN11xercesc_2_727RefHash3KeysTableBucketElemINS_17SchemaElementDeclEEE", !51, i64 0, !51, i64 8, !51, i64 16, !50, i64 24, !50, i64 28}
!122 = !{!123, !51, i64 32}
!123 = !{!"_ZTSN11xercesc_2_75QNameE", !60, i64 0, !50, i64 8, !50, i64 12, !50, i64 16, !50, i64 20, !51, i64 24, !51, i64 32, !51, i64 40, !51, i64 48}
!124 = !{!81, !50, i64 28}
!125 = !{!81, !82, i64 24}
!126 = distinct !{!126, !127, !128}
!127 = !{!"llvm.loop.mustprogress"}
!128 = !{!"llvm.loop.unroll.disable"}
!129 = !{!45, !51, i64 320}
!130 = !{!69, !50, i64 80}
!131 = !{!58, !51, i64 96}
!132 = !{!107, !50, i64 28}
!133 = !{!107, !51, i64 48}
!134 = !{!44, !50, i64 784}
!135 = !{!44, !51, i64 792}
!136 = !{!45, !51, i64 104}
!137 = !{!44, !51, i64 920}
!138 = !{!139, !51, i64 24}
!139 = !{!"_ZTSN11xercesc_2_712KVStringPairE", !60, i64 0, !47, i64 8, !47, i64 16, !51, i64 24, !51, i64 32, !51, i64 40}
!140 = distinct !{!140, !127, !128}
!141 = !{!139, !51, i64 32}
!142 = !{!44, !51, i64 864}
!143 = !{!44, !49, i64 776}
!144 = distinct !{!144, !127, !128}
!145 = !{!45, !50, i64 52}
!146 = !{!123, !51, i64 24}
!147 = !{!45, !50, i64 68}
!148 = !{!101, !49, i64 72}
!149 = distinct !{!149, !127, !128}
!150 = !{!101, !51, i64 64}
!151 = !{!101, !51, i64 40}
!152 = !{!45, !51, i64 280}
!153 = !{!"function_entry_count", i64 79}
!154 = !{!"branch_weights", i32 79, i32 0}
!155 = !{!156, !49, i64 8}
!156 = !{!"_ZTSN11xercesc_2_718RefHash3KeysIdPoolINS_17SchemaElementDeclEEE", !51, i64 0, !49, i64 8, !51, i64 16, !50, i64 24, !51, i64 32, !51, i64 40, !50, i64 48, !50, i64 52}
!157 = !{!121, !51, i64 16}
!158 = !{!121, !50, i64 24}
!159 = !{!121, !50, i64 28}
!160 = !{!156, !51, i64 0}
!161 = !{!"VP", i32 0, i64 79, i64 8345045103670217670, i64 79}
!162 = !{!156, !51, i64 16}
!163 = !{!121, !51, i64 8}
!164 = !{!156, !50, i64 52}
!165 = !{!156, !50, i64 48}
!166 = !{!"branch_weights", i32 0, i32 79}
!167 = !{!156, !51, i64 40}
!168 = !{!"function_entry_count", i64 2718768}
!169 = !{!"branch_weights", i32 0, i32 2718768}
!170 = !{!57, !50, i64 4}
!171 = !{!"branch_weights", i32 2718764, i32 4}
!172 = !{!"VP", i32 1, i64 2718768, i64 33, i64 658811, i64 9, i64 435444, i64 17, i64 410031, i64 8, i64 320017}
!173 = !{!"function_entry_count", i64 190056}
!174 = !{!175, !50, i64 28}
!175 = !{!"_ZTSN11xercesc_2_719RefHash2KeysTableOfIjEE", !51, i64 0, !49, i64 8, !51, i64 16, !50, i64 24, !50, i64 28, !51, i64 32}
!176 = !{!"branch_weights", i32 190056, i32 0}
!177 = !{!175, !50, i64 24}
!178 = !{!175, !51, i64 16}
!179 = !{!180, !51, i64 8}
!180 = !{!"_ZTSN11xercesc_2_727RefHash2KeysTableBucketElemIjEE", !51, i64 0, !51, i64 8, !51, i64 16, !50, i64 24}
!181 = !{!175, !49, i64 8}
!182 = !{!180, !51, i64 0}
!183 = !{!175, !51, i64 0}
!184 = distinct !{!184, !127, !128}
!185 = distinct !{!185, !127, !128}
!186 = !{!45, !51, i64 304}
!187 = !{!45, !51, i64 136}
!188 = !{!45, !51, i64 144}
!189 = !{!45, !51, i64 168}
!190 = !{!45, !49, i64 176}
!191 = !{!45, !50, i64 56}
!192 = !{!45, !50, i64 60}
!193 = !{!45, !50, i64 64}
!194 = !{!45, !49, i64 21}
!195 = !{!45, !49, i64 22}
!196 = !{!45, !50, i64 40}
!197 = !{!45, !49, i64 23}
!198 = !{!45, !49, i64 18}
!199 = !{!45, !49, i64 26}
!200 = !{!44, !51, i64 880}
!201 = !{!102, !51, i64 16}
!202 = !{!103, !51, i64 16}
!203 = !{!45, !49, i64 19}
!204 = !{!103, !49, i64 8}
!205 = !{!101, !51, i64 56}
!206 = !{!45, !49, i64 17}
!207 = !{!45, !51, i64 344}
!208 = !{!45, !50, i64 44}
!209 = !{!45, !50, i64 48}
!210 = !{!44, !50, i64 904}
!211 = !{!45, !50, i64 88}
!212 = !{!44, !51, i64 912}
!213 = !{!"function_entry_count", i64 190248}
!214 = !{!215, !50, i64 32}
!215 = !{!"_ZTSN11xercesc_2_714RefHashTableOfIjEE", !51, i64 0, !49, i64 8, !51, i64 16, !50, i64 24, !50, i64 28, !50, i64 32, !51, i64 40}
!216 = !{!"branch_weights", i32 189544, i32 704}
!217 = !{!215, !50, i64 24}
!218 = !{!"branch_weights", i32 1, i32 703}
!219 = !{!215, !51, i64 16}
!220 = !{!"branch_weights", i32 4167, i32 885}
!221 = !{!222, !51, i64 8}
!222 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemIjEE", !51, i64 0, !51, i64 8, !51, i64 16}
!223 = !{!215, !49, i64 8}
!224 = !{!"branch_weights", i32 885, i32 0}
!225 = !{!222, !51, i64 0}
!226 = !{!215, !51, i64 0}
!227 = !{!"VP", i32 0, i64 885, i64 -7405368087501025645, i64 885}
!228 = distinct !{!228, !127, !128}
!229 = !{!"branch_weights", i32 4349, i32 703}
!230 = distinct !{!230, !127, !128}
!231 = !{!"function_entry_count", i64 574788}
!232 = !{!233, !50, i64 12}
!233 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_12KVStringPairEEE", !49, i64 8, !50, i64 12, !50, i64 16, !51, i64 24, !51, i64 32}
!234 = !{!"branch_weights", i32 574788, i32 0}
!235 = !{!233, !51, i64 32}
!236 = !{!233, !51, i64 24}
!237 = !{!238, !51, i64 40}
!238 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !239, i64 8, !51, i64 16, !50, i64 24, !51, i64 32, !51, i64 40}
!239 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !48, i64 0}
!240 = !{!"function_entry_count", i64 4843157}
!241 = !{!"branch_weights", i32 0, i32 4843157}
!242 = !{!105, !51, i64 24}
!243 = !{!"branch_weights", i32 4843157, i32 0}
!244 = !{!105, !51, i64 16}
!245 = !{!"function_entry_count", i64 789922}
!246 = !{!"branch_weights", i32 0, i32 789922}
!247 = !{!"branch_weights", i32 284, i32 789638}
!248 = !{!"branch_weights", i32 789638, i32 41628303}
!249 = distinct !{!249, !127, !128}
!250 = !{!"branch_weights", i32 789636, i32 2}
!251 = !{!"VP", i32 1, i64 789638, i64 17, i64 255406, i64 33, i64 81401, i64 65, i64 73335, i64 16, i64 65652}
!252 = !{!"function_entry_count", i64 1992794}
!253 = !{!156, !51, i64 32}
!254 = !{!156, !50, i64 24}
!255 = !{!"VP", i32 0, i64 1992794, i64 3024540859536234746, i64 1992794}
!256 = !{!"branch_weights", i32 1, i32 1159830}
!257 = !{!"branch_weights", i32 2435526, i32 0}
!258 = !{!"branch_weights", i32 1030784, i32 1404742}
!259 = !{!"VP", i32 0, i64 1030784, i64 -1309333655503989351, i64 1030784}
!260 = !{!"branch_weights", i32 832963, i32 197821}
!261 = !{!"branch_weights", i32 1159830, i32 1275696}
!262 = distinct !{!262, !127, !128}
