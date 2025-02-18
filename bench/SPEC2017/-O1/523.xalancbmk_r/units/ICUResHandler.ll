; ModuleID = 'ICUResHandler.cpp'
source_filename = "ICUResHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.ICUResHandler = type { %class.SAX2Handler, %class.XalanFileOutputStream }
%class.SAX2Handler = type { %"class.xercesc_2_7::DefaultHandler", i32, ptr, i8, %class.XalanFileOutputStream }
%"class.xercesc_2_7::DefaultHandler" = type { %"class.xercesc_2_7::EntityResolver", %"class.xercesc_2_7::DTDHandler", %"class.xercesc_2_7::ContentHandler", %"class.xercesc_2_7::ErrorHandler", %"class.xercesc_2_7::LexicalHandler", %"class.xercesc_2_7::DeclHandler" }
%"class.xercesc_2_7::EntityResolver" = type { ptr }
%"class.xercesc_2_7::DTDHandler" = type { ptr }
%"class.xercesc_2_7::ContentHandler" = type { ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xercesc_2_7::LexicalHandler" = type { ptr }
%"class.xercesc_2_7::DeclHandler" = type { ptr }
%class.XalanFileOutputStream = type { ptr, ptr, ptr }

$_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj = comdat any

$_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler13resetDocumentEv = comdat any

$_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE = comdat any

$_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler11resetErrorsEv = comdat any

$_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv = comdat any

$_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler7commentEPKtj = comdat any

$_ZN11xercesc_2_714DefaultHandler8endCDATAEv = comdat any

$_ZN11xercesc_2_714DefaultHandler6endDTDEv = comdat any

$_ZN11xercesc_2_714DefaultHandler9endEntityEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler10startCDATAEv = comdat any

$_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler11startEntityEPKt = comdat any

$_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_ = comdat any

$_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_ = comdat any

$_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_ = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_ = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt = comdat any

$_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt = comdat any

$_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_ = comdat any

$_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_ = comdat any

$_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_ = comdat any

@_ZTV13ICUResHandler = dso_local unnamed_addr constant { [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI13ICUResHandler, ptr @_ZN13ICUResHandlerD2Ev, ptr @_ZN13ICUResHandlerD0Ev, ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_, ptr @_ZN13ICUResHandler10charactersEPKtj, ptr @_ZN13ICUResHandler11endDocumentEv, ptr @_ZN13ICUResHandler10endElementEPKtS1_S1_, ptr @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZN13ICUResHandler13startDocumentEv, ptr @_ZN13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt, ptr @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv, ptr @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv, ptr @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_, ptr @_ZN13ICUResHandler23createHeaderForDataFileEv, ptr @_ZN13ICUResHandler23createBottomForDataFileEv, ptr @_ZN13ICUResHandler20printBeginOfDataLineEv, ptr @_ZN13ICUResHandler18printEndOfDataLineEv, ptr @_ZN13ICUResHandler15printToDataFileEPPKc], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTI13ICUResHandler, ptr @_ZThn8_N13ICUResHandlerD1Ev, ptr @_ZThn8_N13ICUResHandlerD0Ev, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv], [15 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTI13ICUResHandler, ptr @_ZThn16_N13ICUResHandlerD1Ev, ptr @_ZThn16_N13ICUResHandlerD0Ev, ptr @_ZThn16_N13ICUResHandler10charactersEPKtj, ptr @_ZThn16_N13ICUResHandler11endDocumentEv, ptr @_ZThn16_N13ICUResHandler10endElementEPKtS1_S1_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZThn16_N13ICUResHandler13startDocumentEv, ptr @_ZThn16_N13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTI13ICUResHandler, ptr @_ZThn24_N13ICUResHandlerD1Ev, ptr @_ZThn24_N13ICUResHandlerD0Ev, ptr @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv], [11 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTI13ICUResHandler, ptr @_ZThn32_N13ICUResHandlerD1Ev, ptr @_ZThn32_N13ICUResHandlerD0Ev, ptr @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTI13ICUResHandler, ptr @_ZThn40_N13ICUResHandlerD1Ev, ptr @_ZThn40_N13ICUResHandlerD0Ev, ptr @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_] }, align 8
@_ZL13s_targetXMLCh = internal constant [7 x i16] [i16 116, i16 97, i16 114, i16 103, i16 101, i16 116, i16 0], align 2
@_ZL16s_transUnitXMLCh = internal constant [11 x i16] [i16 116, i16 114, i16 97, i16 110, i16 115, i16 45, i16 117, i16 110, i16 105, i16 116, i16 0], align 16
@_ZL15szApacheLicense = internal global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, ptr @.str.2, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.14, ptr null], align 16
@_ZL15szStartDataFile = internal global [5 x ptr] [ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr null], align 16
@_ZL23szBeginOfLineInDataFile = internal global [2 x ptr] [ptr @.str.21, ptr null], align 16
@_ZL13szEndDataFile = internal global [2 x ptr] [ptr @.str.22, ptr null], align 16
@_ZL21szEndOfLineInDataFile = internal global [2 x ptr] [ptr @.str.23, ptr null], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13ICUResHandler = dso_local constant [16 x i8] c"13ICUResHandler\00", align 1
@_ZTI11SAX2Handler = external constant ptr
@_ZTI13ICUResHandler = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13ICUResHandler, ptr @_ZTI11SAX2Handler }, align 8
@.str = private unnamed_addr constant [6 x i8] c"///*\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"//* Copyright 1999-2004 The Apache Software Foundation.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"//*\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"//* Licensed under the Apache License, Version 2.0 (the \22License\22);\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"//* you may not use this file except in compliance with the License.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"//* You may obtain a copy of the License at\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"//*     http://www.apache.org/licenses/LICENSE-2.0\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"//* Unless required by applicable law or agreed to in writing, software\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"//* distributed under the License is distributed on an \22AS IS\22 BASIS,\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"//* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"//* See the License for the specific language governing permissions and\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"//* limitations under the License.\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"//*/\0A\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"// ----------------------------------------------------------------\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"//  This file was generated from the XalanC error message source.\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"//  so do not edit this file directly!!\0A\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"xalanc\00", align 1
@.str.19 = private unnamed_addr constant [6 x i8] c" \09\09{\0A\00", align 1
@.str.20 = private unnamed_addr constant [18 x i8] c"\09\09\09\22Dummy data\22,\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"\09\09\09\09\22\00", align 1
@.str.22 = private unnamed_addr constant [9 x i8] c" \0A\09\09} \0A}\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"\22 , \0A\00", align 1

@_ZN13ICUResHandlerC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN13ICUResHandlerC2EPKc
@_ZN13ICUResHandlerD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13ICUResHandlerD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0)
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %7, align 8, !tbaa !35
  %8 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  invoke void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef %1)
          to label %9 unwind label %10

9:                                                ; preds = %2
  ret void

10:                                               ; preds = %2
  %11 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  resume { ptr, i32 } %11
}

declare void @_ZN11SAX2HandlerC2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

declare void @_ZN21XalanFileOutputStreamC1EPKc(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  ret void
}

; Function Attrs: nounwind
declare void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #3

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N13ICUResHandlerD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 88
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N13ICUResHandlerD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 80
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N13ICUResHandlerD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 72
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N13ICUResHandlerD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 64
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn40_N13ICUResHandlerD1Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %6, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 56
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN13ICUResHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #4 align 2 !prof !34 {
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %2 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  tail call void @_ZdlPv(ptr noundef %0) #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn8_N13ICUResHandlerD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 88
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn16_N13ICUResHandlerD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 80
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn24_N13ICUResHandlerD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %0, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 72
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn32_N13ICUResHandlerD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %0, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %6, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 64
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: cold nounwind uwtable
define dso_local void @_ZThn40_N13ICUResHandlerD0Ev(ptr noundef %0) unnamed_addr #5 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 0, i64 2), ptr %2, align 8, !tbaa !35
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 1, i64 2), ptr %3, align 8, !tbaa !35
  %4 = getelementptr inbounds i8, ptr %0, i64 -24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 2, i64 2), ptr %4, align 8, !tbaa !35
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 3, i64 2), ptr %5, align 8, !tbaa !35
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 4, i64 2), ptr %6, align 8, !tbaa !35
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV13ICUResHandler, i64 0, inrange i32 5, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds i8, ptr %0, i64 56
  tail call void @_ZN21XalanFileOutputStreamD1Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #11
  tail call void @_ZN11SAX2HandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(96) %2) #11
  tail call void @_ZdlPv(ptr noundef %2) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 34
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(120) %0)
  tail call void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

declare void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N13ICUResHandler11endDocumentEv(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  %3 = load ptr, ptr %2, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 34
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(120) %2)
  tail call void @_ZN11SAX2Handler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #1 align 2 !prof !34 {
  %4 = alloca [512 x i16], align 16
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !38, !range !52, !noundef !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %4) #11
  %9 = icmp eq i32 %2, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %8
  %11 = zext i32 %2 to i64
  br label %17

12:                                               ; preds = %26, %8
  %13 = phi i32 [ 0, %8 ], [ %31, %26 ]
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [512 x i16], ptr %4, i64 0, i64 %14
  store i16 0, ptr %15, align 2, !tbaa !54
  %16 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  call void @_ZN21XalanFileOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull %4, i32 noundef %13)
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %4) #11
  br label %33

17:                                               ; preds = %10, %26
  %18 = phi i64 [ 0, %10 ], [ %30, %26 ]
  %19 = phi i32 [ 0, %10 ], [ %31, %26 ]
  %20 = getelementptr inbounds i16, ptr %1, i64 %18
  %21 = load i16, ptr %20, align 2, !tbaa !54
  switch i16 %21, label %26 [
    i16 34, label %22
    i16 123, label %22
    i16 125, label %22
  ]

22:                                               ; preds = %17, %17, %17
  %23 = sext i32 %19 to i64
  %24 = getelementptr inbounds [512 x i16], ptr %4, i64 0, i64 %23
  store i16 92, ptr %24, align 2, !tbaa !54
  %25 = add nsw i32 %19, 1
  br label %26

26:                                               ; preds = %17, %22
  %27 = phi i32 [ %25, %22 ], [ %19, %17 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [512 x i16], ptr %4, i64 0, i64 %28
  store i16 %21, ptr %29, align 2, !tbaa !54
  %30 = add nuw nsw i64 %18, 1
  %31 = add nsw i32 %27, 1
  %32 = icmp eq i64 %30, %11
  br i1 %32, label %12, label %17, !llvm.loop !56

33:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

declare void @_ZN21XalanFileOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N13ICUResHandler10charactersEPKtj(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #6 align 2 !prof !34 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN13ICUResHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(120) %4, ptr noundef %1, i32 noundef %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  tail call void @_ZN21XalanFileOutputStream14writeUTFprefixEv(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %3 = load ptr, ptr %0, align 8, !tbaa !35
  %4 = getelementptr inbounds ptr, ptr %3, i64 33
  %5 = load ptr, ptr %4, align 8
  tail call void %5(ptr noundef nonnull align 8 dereferenceable(120) %0)
  tail call void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0)
  ret void
}

declare void @_ZN21XalanFileOutputStream14writeUTFprefixEv(ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N13ICUResHandler13startDocumentEv(ptr noundef %0) unnamed_addr #6 align 2 !prof !34 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  %3 = getelementptr inbounds i8, ptr %0, i64 80
  tail call void @_ZN21XalanFileOutputStream14writeUTFprefixEv(ptr noundef nonnull align 8 dereferenceable(24) %3)
  %4 = load ptr, ptr %2, align 8, !tbaa !35
  %5 = getelementptr inbounds ptr, ptr %4, i64 33
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(120) %2)
  tail call void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %2)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler10endElementEPKtS1_S1_(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #1 align 2 !prof !34 {
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  %6 = load i8, ptr %5, align 8, !tbaa !38, !range !52, !noundef !53
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %15, label %8

8:                                                ; preds = %4
  %9 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh)
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  store i8 0, ptr %5, align 8, !tbaa !38
  %12 = load ptr, ptr %0, align 8, !tbaa !35
  %13 = getelementptr inbounds ptr, ptr %12, i64 36
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %15

15:                                               ; preds = %4, %11, %8
  ret void
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N13ICUResHandler10endElementEPKtS1_S1_(ptr noundef %0, ptr nocapture readnone %1, ptr noundef %2, ptr nocapture readnone %3) unnamed_addr #6 align 2 !prof !34 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -16
  %6 = getelementptr inbounds i8, ptr %0, i64 48
  %7 = load i8, ptr %6, align 8, !tbaa !38, !range !52, !noundef !53
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %4
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh)
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  store i8 0, ptr %6, align 8, !tbaa !38
  %13 = load ptr, ptr %5, align 8, !tbaa !35
  %14 = getelementptr inbounds ptr, ptr %13, i64 36
  %15 = load ptr, ptr %14, align 8
  tail call void %15(ptr noundef nonnull align 8 dereferenceable(120) %5)
  br label %16

16:                                               ; preds = %4, %9, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #1 align 2 !prof !34 {
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL16s_transUnitXMLCh)
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %5
  tail call void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  br label %21

9:                                                ; preds = %5
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZL13s_targetXMLCh)
  %11 = icmp ne i32 %10, 0
  %12 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %11, i1 true, i1 %14
  br i1 %15, label %21, label %16

16:                                               ; preds = %9
  %17 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  store i8 1, ptr %17, align 8, !tbaa !38
  %18 = load ptr, ptr %0, align 8, !tbaa !35
  %19 = getelementptr inbounds ptr, ptr %18, i64 35
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(120) %0)
  br label %21

21:                                               ; preds = %9, %16, %8
  ret void
}

declare void @_ZN11SAX2Handler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #2

; Function Attrs: cold uwtable
define dso_local void @_ZThn16_N13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #6 align 2 !prof !34 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(120) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler23createHeaderForDataFileEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZL15szApacheLicense)
  %5 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !59
  %7 = icmp eq ptr %6, null
  br i1 %7, label %25, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  %10 = load i16, ptr %6, align 2, !tbaa !54
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12

12:                                               ; preds = %8, %12
  %13 = phi ptr [ %14, %12 ], [ %6, %8 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !54
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !llvm.loop !60

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %6 to i64
  %20 = sub i64 %18, %19
  %21 = lshr exact i64 %20, 1
  %22 = trunc i64 %21 to i32
  br label %23

23:                                               ; preds = %8, %17
  %24 = phi i32 [ %22, %17 ], [ 0, %8 ]
  tail call void @_ZN21XalanFileOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull %6, i32 noundef %24)
  br label %25

25:                                               ; preds = %23, %1
  %26 = load ptr, ptr %0, align 8, !tbaa !35
  %27 = getelementptr inbounds ptr, ptr %26, i64 37
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZL15szStartDataFile)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler20printBeginOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZL23szBeginOfLineInDataFile)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler23createBottomForDataFileEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZL13szEndDataFile)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler18printEndOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(120) %0) unnamed_addr #1 align 2 !prof !34 {
  %2 = load ptr, ptr %0, align 8, !tbaa !35
  %3 = getelementptr inbounds ptr, ptr %2, i64 37
  %4 = load ptr, ptr %3, align 8
  tail call void %4(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZL21szEndOfLineInDataFile)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN13ICUResHandler15printToDataFileEPPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef readonly %1) unnamed_addr #1 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !61
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = phi ptr [ %5, %7 ], [ %16, %9 ]
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #13
  %13 = trunc i64 %12 to i32
  tail call void @_ZN21XalanFileOutputStream5writeEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %11, i32 noundef %13)
  %14 = add nuw i64 %10, 1
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !61
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !62

18:                                               ; preds = %9, %4, %2
  ret void
}

declare void @_ZN21XalanFileOutputStream5writeEPKcj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 !prof !34 {
  ret ptr null
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #9 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef %0) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef %0) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef %0) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef %0) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef %0) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

; Function Attrs: cold inlinehint uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #10 comdat align 2 !prof !34 {
  ret void
}

declare void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #6 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #6 align 2

; Function Attrs: cold uwtable
declare void @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #6 align 2

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { mustprogress nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { builtin nounwind }
attributes #13 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !50, i64 64}
!39 = !{!"_ZTS11SAX2Handler", !40, i64 0, !47, i64 48, !49, i64 56, !50, i64 64, !51, i64 72}
!40 = !{!"_ZTSN11xercesc_2_714DefaultHandlerE", !41, i64 0, !42, i64 8, !43, i64 16, !44, i64 24, !45, i64 32, !46, i64 40}
!41 = !{!"_ZTSN11xercesc_2_714EntityResolverE"}
!42 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!43 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!44 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!45 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!46 = !{!"_ZTSN11xercesc_2_711DeclHandlerE"}
!47 = !{!"int", !48, i64 0}
!48 = !{!"omnipotent char", !37, i64 0}
!49 = !{!"any pointer", !48, i64 0}
!50 = !{!"bool", !48, i64 0}
!51 = !{!"_ZTS21XalanFileOutputStream", !49, i64 8, !49, i64 16}
!52 = !{i8 0, i8 2}
!53 = !{}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !48, i64 0}
!56 = distinct !{!56, !57, !58}
!57 = !{!"llvm.loop.mustprogress"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!39, !49, i64 56}
!60 = distinct !{!60, !57, !58}
!61 = !{!49, !49, i64 0}
!62 = distinct !{!62, !57, !58}
