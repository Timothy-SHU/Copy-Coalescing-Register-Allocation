; ModuleID = 'NLSHandler.cpp'
source_filename = "NLSHandler.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.SAX2Handler = type { %"class.xercesc_2_7::DefaultHandler", i32, ptr, i8, %class.XalanFileOutputStream }
%"class.xercesc_2_7::DefaultHandler" = type { %"class.xercesc_2_7::EntityResolver", %"class.xercesc_2_7::DTDHandler", %"class.xercesc_2_7::ContentHandler", %"class.xercesc_2_7::ErrorHandler", %"class.xercesc_2_7::LexicalHandler", %"class.xercesc_2_7::DeclHandler" }
%"class.xercesc_2_7::EntityResolver" = type { ptr }
%"class.xercesc_2_7::DTDHandler" = type { ptr }
%"class.xercesc_2_7::ContentHandler" = type { ptr }
%"class.xercesc_2_7::ErrorHandler" = type { ptr }
%"class.xercesc_2_7::LexicalHandler" = type { ptr }
%"class.xercesc_2_7::DeclHandler" = type { ptr }
%class.XalanFileOutputStream = type { ptr, ptr, ptr }
%class.NLSHandler = type <{ %class.ICUResHandler, i32, i8, [3 x i8] }>
%class.ICUResHandler = type { %class.SAX2Handler, %class.XalanFileOutputStream }

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

$_ZN10NLSHandlerD0Ev = comdat any

$_ZThn8_N10NLSHandlerD1Ev = comdat any

$_ZThn8_N10NLSHandlerD0Ev = comdat any

$_ZThn16_N10NLSHandlerD1Ev = comdat any

$_ZThn16_N10NLSHandlerD0Ev = comdat any

$_ZThn24_N10NLSHandlerD1Ev = comdat any

$_ZThn24_N10NLSHandlerD0Ev = comdat any

$_ZThn32_N10NLSHandlerD1Ev = comdat any

$_ZThn32_N10NLSHandlerD0Ev = comdat any

$_ZThn40_N10NLSHandlerD1Ev = comdat any

$_ZThn40_N10NLSHandlerD0Ev = comdat any

@_ZTV10NLSHandler = dso_local unnamed_addr constant { [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] } { [40 x ptr] [ptr null, ptr @_ZTI10NLSHandler, ptr @_ZN13ICUResHandlerD2Ev, ptr @_ZN10NLSHandlerD0Ev, ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_, ptr @_ZN10NLSHandler10charactersEPKtj, ptr @_ZN13ICUResHandler11endDocumentEv, ptr @_ZN13ICUResHandler10endElementEPKtS1_S1_, ptr @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv, ptr @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZN10NLSHandler13startDocumentEv, ptr @_ZN13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt, ptr @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv, ptr @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv, ptr @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZN11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt, ptr @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_, ptr @_ZN10NLSHandler23createHeaderForDataFileEv, ptr @_ZN10NLSHandler23createBottomForDataFileEv, ptr @_ZN10NLSHandler20printBeginOfDataLineEv, ptr @_ZN10NLSHandler18printEndOfDataLineEv, ptr @_ZN13ICUResHandler15printToDataFileEPPKc], [7 x ptr] [ptr inttoptr (i64 -8 to ptr), ptr @_ZTI10NLSHandler, ptr @_ZThn8_N10NLSHandlerD1Ev, ptr @_ZThn8_N10NLSHandlerD0Ev, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_, ptr @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv], [15 x ptr] [ptr inttoptr (i64 -16 to ptr), ptr @_ZTI10NLSHandler, ptr @_ZThn16_N10NLSHandlerD1Ev, ptr @_ZThn16_N10NLSHandlerD0Ev, ptr @_ZThn16_N10NLSHandler10charactersEPKtj, ptr @_ZThn16_N13ICUResHandler11endDocumentEv, ptr @_ZThn16_N13ICUResHandler10endElementEPKtS1_S1_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj, ptr @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE, ptr @_ZThn16_N10NLSHandler13startDocumentEv, ptr @_ZThn16_N13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE, ptr @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_, ptr @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt, ptr @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -24 to ptr), ptr @_ZTI10NLSHandler, ptr @_ZThn24_N10NLSHandlerD1Ev, ptr @_ZThn24_N10NLSHandlerD0Ev, ptr @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE, ptr @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv], [11 x ptr] [ptr inttoptr (i64 -32 to ptr), ptr @_ZTI10NLSHandler, ptr @_ZThn32_N10NLSHandlerD1Ev, ptr @_ZThn32_N10NLSHandlerD0Ev, ptr @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt, ptr @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv, ptr @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_, ptr @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt], [8 x ptr] [ptr inttoptr (i64 -40 to ptr), ptr @_ZTI10NLSHandler, ptr @_ZThn40_N10NLSHandlerD1Ev, ptr @_ZThn40_N10NLSHandlerD0Ev, ptr @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_, ptr @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS10NLSHandler = dso_local constant [13 x i8] c"10NLSHandler\00", align 1
@_ZTI13ICUResHandler = external constant ptr
@_ZTI10NLSHandler = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS10NLSHandler, ptr @_ZTI13ICUResHandler }, align 8
@_ZL15szApacheLicense = internal global [22 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.2, ptr @.str.6, ptr @.str.2, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.14, ptr null], align 16
@_ZL15szStartDataFile = internal global [3 x ptr] [ptr @.str.17, ptr @.str.18, ptr null], align 16
@.str = private unnamed_addr constant [6 x i8] c"$ /*\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"$ * Copyright 1999-2004 The Apache Software Foundation.\0A\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"$ *\0A\00", align 1
@.str.3 = private unnamed_addr constant [69 x i8] c"$ * Licensed under the Apache License, Version 2.0 (the \22License\22);\0A\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"$ * you may not use this file except in compliance with the License.\0A\00", align 1
@.str.5 = private unnamed_addr constant [45 x i8] c"$ * You may obtain a copy of the License at\0A\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"$ *     http://www.apache.org/licenses/LICENSE-2.0\0A\00", align 1
@.str.7 = private unnamed_addr constant [73 x i8] c"$ * Unless required by applicable law or agreed to in writing, software\0A\00", align 1
@.str.8 = private unnamed_addr constant [71 x i8] c"$ * distributed under the License is distributed on an \22AS IS\22 BASIS,\0A\00", align 1
@.str.9 = private unnamed_addr constant [78 x i8] c"$ * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\0A\00", align 1
@.str.10 = private unnamed_addr constant [73 x i8] c"$ * See the License for the specific language governing permissions and\0A\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"$ * limitations under the License.\0A\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"$ */\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"$ \00", align 1
@.str.14 = private unnamed_addr constant [69 x i8] c"$  ----------------------------------------------------------------\0A\00", align 1
@.str.15 = private unnamed_addr constant [67 x i8] c"$   This file was generated from the XalanC error message source.\0A\00", align 1
@.str.16 = private unnamed_addr constant [41 x i8] c"$   so do not edit this file directly!!\0A\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"$quote ^ \0A\00", align 1
@.str.18 = private unnamed_addr constant [9 x i8] c"$set 1 \0A\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"%d ^\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"^\0A\00", align 1

@_ZN10NLSHandlerC1EPKcb = dso_local unnamed_addr alias void (ptr, ptr, i1), ptr @_ZN10NLSHandlerC2EPKcb

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714DefaultHandler13resolveEntityEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  ret ptr null
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13resetDocumentEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 comdat align 2 !prof !35 {
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler12notationDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 {
  %6 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler18unparsedEntityDeclEPKtS2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN11xercesc_2_714DefaultHandler12resetDocTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler19ignorableWhitespaceEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler21processingInstructionEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler18setDocumentLocatorEPKNS_7LocatorE(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler18startPrefixMappingEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler16endPrefixMappingEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN11xercesc_2_714DefaultHandler13skippedEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN11xercesc_2_714DefaultHandler11resetErrorsEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler7commentEPKtj(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler8endCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler6endDTDEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler9endEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef %0) unnamed_addr #1 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler10startCDATAEv(ptr noundef nonnull align 8 dereferenceable(48) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler8startDTDEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef %0, ptr noundef %1) unnamed_addr #1 comdat align 2 {
  %3 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN11xercesc_2_714DefaultHandler11startEntityEPKt(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %1) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler11elementDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) unnamed_addr #1 comdat align 2 {
  %7 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler13attributeDeclEPKtS2_S2_S2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 comdat align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler18internalEntityDeclEPKtS2_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %1, ptr noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 comdat align 2 {
  %5 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN11xercesc_2_714DefaultHandler18externalEntityDeclEPKtS2_S2_(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef %1, ptr noundef %2, ptr noundef %3) #11
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN10NLSHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(125) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(125) %0) #12
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NLSHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(125) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 align 2 !prof !35 {
  %4 = getelementptr inbounds %class.SAX2Handler, ptr %0, i64 0, i32 3
  %5 = load i8, ptr %4, align 8, !tbaa !36, !range !51, !noundef !52
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %3
  %8 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !53, !range !51, !noundef !52
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  br i1 %10, label %13, label %12

12:                                               ; preds = %7
  tail call void @_ZN21XalanFileOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %1, i32 noundef %2) #11
  br label %14

13:                                               ; preds = %7
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef %1, i32 noundef %2) #11
  br label %14

14:                                               ; preds = %12, %13, %3
  ret void
}

; Function Attrs: optsize
declare void @_ZN13ICUResHandler11endDocumentEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN13ICUResHandler10endElementEPKtS1_S1_(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NLSHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(125) %0) unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 4, !tbaa !53, !range !51, !noundef !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZN13ICUResHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(120) %0) #11
  br label %10

6:                                                ; preds = %1
  %7 = load ptr, ptr %0, align 8, !tbaa !56
  %8 = getelementptr inbounds ptr, ptr %7, i64 33
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(125) %0) #11
  tail call void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96) %0) #11
  br label %10

10:                                               ; preds = %6, %5
  ret void
}

; Function Attrs: optsize
declare void @_ZN13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 1) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NLSHandler23createHeaderForDataFileEv(ptr noundef nonnull align 8 dereferenceable(125) %0) unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 4, !tbaa !53, !range !51, !noundef !52
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %12, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !56
  %7 = getelementptr inbounds ptr, ptr %6, i64 37
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZL15szApacheLicense) #11
  %9 = load ptr, ptr %0, align 8, !tbaa !56
  %10 = getelementptr inbounds ptr, ptr %9, i64 37
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull @_ZL15szStartDataFile) #11
  br label %13

12:                                               ; preds = %1
  tail call void @_ZN10NLSHandler22printToDataFileasASCIIEPPKc(ptr noundef nonnull align 8 dereferenceable(125) %0, ptr noundef nonnull @_ZL15szApacheLicense) #11
  tail call void @_ZN10NLSHandler22printToDataFileasASCIIEPPKc(ptr noundef nonnull align 8 dereferenceable(125) %0, ptr noundef nonnull @_ZL15szStartDataFile) #11
  br label %13

13:                                               ; preds = %12, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local void @_ZN10NLSHandler23createBottomForDataFileEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !35 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NLSHandler20printBeginOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(125) %0) unnamed_addr #3 align 2 !prof !35 {
  %2 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #14
  %3 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !58
  %5 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %4) #12
  %6 = load i32, ptr %3, align 8, !tbaa !58
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr %3, align 8, !tbaa !58
  %8 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 2
  %9 = load i8, ptr %8, align 4, !tbaa !53, !range !51, !noundef !52
  %10 = icmp eq i8 %9, 0
  %11 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  %12 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #15
  %13 = trunc i64 %12 to i32
  br i1 %10, label %15, label %14

14:                                               ; preds = %1
  call void @_ZN21XalanFileOutputStream5writeEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %2, i32 noundef %13) #11
  br label %16

15:                                               ; preds = %1
  call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull %2, i32 noundef %13) #11
  br label %16

16:                                               ; preds = %15, %14
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NLSHandler18printEndOfDataLineEv(ptr noundef nonnull align 8 dereferenceable(125) %0) unnamed_addr #3 align 2 !prof !35 {
  %2 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 2
  %3 = load i8, ptr %2, align 4, !tbaa !53, !range !51, !noundef !52
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  br i1 %4, label %7, label %6

6:                                                ; preds = %1
  tail call void @_ZN21XalanFileOutputStream5writeEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.20, i32 noundef 2) #11
  br label %8

7:                                                ; preds = %1
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull @.str.20, i32 noundef 2) #11
  br label %8

8:                                                ; preds = %7, %6
  ret void
}

; Function Attrs: optsize
declare void @_ZN13ICUResHandler15printToDataFileEPPKc(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #4

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N10NLSHandlerD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn8_N10NLSHandlerD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -8
  tail call void @_ZN10NLSHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N10NLSHandlerD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn16_N10NLSHandlerD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN10NLSHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N10NLSHandler10charactersEPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #1 align 2 {
  %4 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN10NLSHandler10charactersEPKtj(ptr noundef nonnull align 8 dereferenceable(125) %4, ptr noundef %1, i32 noundef %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
declare void @_ZThn16_N13ICUResHandler11endDocumentEv(ptr noundef) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn16_N13ICUResHandler10endElementEPKtS1_S1_(ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
define dso_local void @_ZThn16_N10NLSHandler13startDocumentEv(ptr noundef %0) unnamed_addr #1 align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -16
  tail call void @_ZN10NLSHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(125) %2) #11
  ret void
}

; Function Attrs: noinline optsize uwtable
declare void @_ZThn16_N13ICUResHandler12startElementEPKtS1_S1_RKN11xercesc_2_710AttributesE(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 1) unnamed_addr #1 align 2

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N10NLSHandlerD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn24_N10NLSHandlerD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -24
  tail call void @_ZN10NLSHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11SAX2Handler7warningERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11SAX2Handler5errorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1 align 2

; Function Attrs: noinline optsize uwtable
declare void @_ZThn24_N11SAX2Handler10fatalErrorERKN11xercesc_2_717SAXParseExceptionE(ptr noundef, ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #1 align 2

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N10NLSHandlerD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn32_N10NLSHandlerD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -32
  tail call void @_ZN10NLSHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N10NLSHandlerD1Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN13ICUResHandlerD2Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZThn40_N10NLSHandlerD0Ev(ptr noundef %0) unnamed_addr #6 comdat align 2 {
  %2 = getelementptr inbounds i8, ptr %0, i64 -40
  tail call void @_ZN10NLSHandlerD0Ev(ptr noundef nonnull align 8 dereferenceable(125) %2) #12
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NLSHandlerC2EPKcb(ptr noundef nonnull align 8 dereferenceable(125) %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #3 align 2 !prof !35 {
  %4 = zext i1 %2 to i8
  tail call void @_ZN13ICUResHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1) #11
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV10NLSHandler, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !56
  %5 = getelementptr inbounds i8, ptr %0, i64 8
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV10NLSHandler, i64 0, inrange i32 1, i64 2), ptr %5, align 8, !tbaa !56
  %6 = getelementptr inbounds i8, ptr %0, i64 16
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV10NLSHandler, i64 0, inrange i32 2, i64 2), ptr %6, align 8, !tbaa !56
  %7 = getelementptr inbounds i8, ptr %0, i64 24
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV10NLSHandler, i64 0, inrange i32 3, i64 2), ptr %7, align 8, !tbaa !56
  %8 = getelementptr inbounds i8, ptr %0, i64 32
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV10NLSHandler, i64 0, inrange i32 4, i64 2), ptr %8, align 8, !tbaa !56
  %9 = getelementptr inbounds i8, ptr %0, i64 40
  store ptr getelementptr inbounds ({ [40 x ptr], [7 x ptr], [15 x ptr], [8 x ptr], [11 x ptr], [8 x ptr] }, ptr @_ZTV10NLSHandler, i64 0, inrange i32 5, i64 2), ptr %9, align 8, !tbaa !56
  %10 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 1
  store i32 2, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %class.NLSHandler, ptr %0, i64 0, i32 2
  store i8 %4, ptr %11, align 4, !tbaa !53
  ret void
}

; Function Attrs: optsize
declare void @_ZN13ICUResHandlerC2EPKc(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN13ICUResHandler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11SAX2Handler13startDocumentEv(ptr noundef nonnull align 8 dereferenceable(96)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStream5writeEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKtj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN10NLSHandler22printToDataFileasASCIIEPPKc(ptr noundef nonnull align 8 dereferenceable(125) %0, ptr noundef readonly %1) local_unnamed_addr #3 align 2 !prof !35 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !59
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %class.ICUResHandler, ptr %0, i64 0, i32 1
  br label %9

9:                                                ; preds = %7, %9
  %10 = phi i64 [ 0, %7 ], [ %14, %9 ]
  %11 = phi ptr [ %5, %7 ], [ %16, %9 ]
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %11) #15
  %13 = trunc i64 %12 to i32
  tail call void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull %11, i32 noundef %13) #11
  %14 = add nuw i64 %10, 1
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !59
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !60

18:                                               ; preds = %9, %4, %2
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStream12writeAsASCIIEPKcj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: optsize
declare void @_ZN21XalanFileOutputStream5writeEPKcj(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef, i32 noundef) local_unnamed_addr #4

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize }
attributes #12 = { nounwind optsize }
attributes #13 = { builtin nounwind optsize }
attributes #14 = { nounwind }
attributes #15 = { nounwind optsize willreturn memory(read) }

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
!36 = !{!37, !49, i64 64}
!37 = !{!"_ZTS11SAX2Handler", !38, i64 0, !45, i64 48, !48, i64 56, !49, i64 64, !50, i64 72}
!38 = !{!"_ZTSN11xercesc_2_714DefaultHandlerE", !39, i64 0, !40, i64 8, !41, i64 16, !42, i64 24, !43, i64 32, !44, i64 40}
!39 = !{!"_ZTSN11xercesc_2_714EntityResolverE"}
!40 = !{!"_ZTSN11xercesc_2_710DTDHandlerE"}
!41 = !{!"_ZTSN11xercesc_2_714ContentHandlerE"}
!42 = !{!"_ZTSN11xercesc_2_712ErrorHandlerE"}
!43 = !{!"_ZTSN11xercesc_2_714LexicalHandlerE"}
!44 = !{!"_ZTSN11xercesc_2_711DeclHandlerE"}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C++ TBAA"}
!48 = !{!"any pointer", !46, i64 0}
!49 = !{!"bool", !46, i64 0}
!50 = !{!"_ZTS21XalanFileOutputStream", !48, i64 8, !48, i64 16}
!51 = !{i8 0, i8 2}
!52 = !{}
!53 = !{!54, !49, i64 124}
!54 = !{!"_ZTS10NLSHandler", !55, i64 0, !45, i64 120, !49, i64 124}
!55 = !{!"_ZTS13ICUResHandler", !37, i64 0, !50, i64 96}
!56 = !{!57, !57, i64 0}
!57 = !{!"vtable pointer", !47, i64 0}
!58 = !{!54, !45, i64 120}
!59 = !{!48, !48, i64 0}
!60 = distinct !{!60, !61}
!61 = !{!"llvm.loop.mustprogress"}
