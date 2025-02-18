; ModuleID = 'TransService.cpp'
source_filename = "TransService.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLRegisterCleanup" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::BaseRefVectorOf" = type { ptr, i8, i32, i32, ptr, ptr }
%"class.xercesc_2_7::RefHashTableOf" = type { ptr, i8, ptr, i32, i32, i32, ptr }
%"struct.xercesc_2_7::RefHashTableBucketElem" = type { ptr, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::ENameMap" = type { ptr, ptr }
%"class.xercesc_2_7::EEndianNameMapFor" = type <{ %"class.xercesc_2_7::ENameMap", i8, [7 x i8] }>
%"class.xercesc_2_7::EEndianNameMapFor.3" = type <{ %"class.xercesc_2_7::ENameMap", i8, [7 x i8] }>
%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::ArrayJanitor.9" = type { ptr, ptr }

$_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEEC2EjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3getEPKv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE9elementAtEj = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE7cleanupEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE9removeAllEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE10initializeEj = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv = comdat any

$_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev = comdat any

$_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED0Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE12setElementAtEPS1_j = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeAllElementsEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE15removeElementAtEj = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeLastElementEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE7cleanupEv = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEED0Ev = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv = comdat any

$_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv = comdat any

$_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE6rehashEv = comdat any

$_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8ENameMapEEEED2Ev = comdat any

$_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE19ensureExtraCapacityEj = comdat any

$_ZN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_15XMLChTranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_78ENameMapD0Ev = comdat any

$_ZN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_18XML88591TranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_78ENameMapD2Ev = comdat any

$_ZN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEED0Ev = comdat any

$_ZNK11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEE7makeNewEjPNS_13MemoryManagerE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTIN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_724IllegalArgumentExceptionE = comdat any

$_ZTVN11xercesc_2_711RefVectorOfINS_8ENameMapEEE = comdat any

$_ZTSN11xercesc_2_711RefVectorOfINS_8ENameMapEEE = comdat any

$_ZTSN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE = comdat any

$_ZTIN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE = comdat any

$_ZTIN11xercesc_2_711RefVectorOfINS_8ENameMapEEE = comdat any

$_ZTVN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE = comdat any

$_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE = comdat any

$_ZTSN11xercesc_2_78ENameMapE = comdat any

$_ZTIN11xercesc_2_78ENameMapE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE = comdat any

$_ZTVN11xercesc_2_78ENameMapE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE = comdat any

$_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE = comdat any

$_ZTSN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE = comdat any

$_ZTIN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE = comdat any

$_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE = comdat any

$_ZTSN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE = comdat any

$_ZTIN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE = comdat any

$_ZTVN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE = comdat any

$_ZTSN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE = comdat any

$_ZTIN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE = comdat any

@_ZN11xercesc_2_715XMLTransService9gMappingsE = dso_local global ptr null, align 8
@_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE = dso_local global ptr null, align 8
@_ZN11xercesc_2_7L15mappingsCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZN11xercesc_2_7L25mappingsRecognizerCleanupE = internal global %"class.xercesc_2_7::XMLRegisterCleanup" zeroinitializer, align 8
@_ZTVN11xercesc_2_715XMLTransServiceE = dso_local unnamed_addr constant { [14 x ptr] } { [14 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715XMLTransServiceE, ptr @_ZN11xercesc_2_715XMLTransServiceD2Ev, ptr @_ZN11xercesc_2_715XMLTransServiceD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN11xercesc_2_715XMLTransService16initTransServiceEv] }, align 8
@_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE = external local_unnamed_addr global ptr, align 8
@_ZN11xercesc_2_7L19gStrictIANAEncodingE = internal unnamed_addr global i8 0, align 1
@_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgISO88591EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString4E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString5E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString6E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString7E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString8E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString9E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString10E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString11E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString12E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgEBCDICEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgIBM037EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgIBM037EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgIBM1047EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgIBM1047EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgIBM1140EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString4E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni23fgWin1252EncodingStringE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_713XMLTranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XMLTranscoderE, ptr @_ZN11xercesc_2_713XMLTranscoderD2Ev, ptr @_ZN11xercesc_2_713XMLTranscoderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN11xercesc_2_716XMLLCPTranscoderE = dso_local unnamed_addr constant { [12 x ptr] } { [12 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716XMLLCPTranscoderE, ptr @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev, ptr @_ZN11xercesc_2_716XMLLCPTranscoderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_715XMLTransServiceE = dso_local constant [33 x i8] c"N11xercesc_2_715XMLTransServiceE\00", align 1
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_715XMLTransServiceE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715XMLTransServiceE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTSN11xercesc_2_713XMLTranscoderE = dso_local constant [31 x i8] c"N11xercesc_2_713XMLTranscoderE\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XMLTranscoderE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@_ZTSN11xercesc_2_716XMLLCPTranscoderE = dso_local constant [34 x i8] c"N11xercesc_2_716XMLLCPTranscoderE\00", align 1
@_ZTIN11xercesc_2_716XMLLCPTranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716XMLLCPTranscoderE, ptr @_ZTIN11xercesc_2_77XMemoryE }, align 8
@.str = private unnamed_addr constant [32 x i8] c"./xercesc/util/RefHashTableOf.c\00", align 1
@_ZTSN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant [42 x i8] c"N11xercesc_2_724IllegalArgumentExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_724IllegalArgumentExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev, ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv, ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711RefVectorOfINS_8ENameMapEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711RefVectorOfINS_8ENameMapEEE, ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE7cleanupEv] }, comdat, align 8
@_ZTSN11xercesc_2_711RefVectorOfINS_8ENameMapEEE = linkonce_odr dso_local constant [44 x i8] c"N11xercesc_2_711RefVectorOfINS_8ENameMapEEE\00", comdat, align 1
@_ZTSN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE\00", comdat, align 1
@_ZTIN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711RefVectorOfINS_8ENameMapEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711RefVectorOfINS_8ENameMapEEE, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE }, comdat, align 8
@_ZTVN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE = linkonce_odr dso_local unnamed_addr constant { [9 x ptr] } { [9 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEED2Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEED0Ev, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE12setElementAtEPS1_j, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeAllElementsEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE15removeElementAtEj, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeLastElementEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE7cleanupEv] }, comdat, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"./xercesc/util/BaseRefVectorOf.c\00", align 1
@_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant [48 x i8] c"N11xercesc_2_730ArrayIndexOutOfBoundsExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv, ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_15XMLChTranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE = linkonce_odr dso_local constant [52 x i8] c"N11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE\00", comdat, align 1
@_ZTSN11xercesc_2_78ENameMapE = linkonce_odr dso_local constant [25 x i8] c"N11xercesc_2_78ENameMapE\00", comdat, align 1
@_ZTIN11xercesc_2_78ENameMapE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_78ENameMapE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_78ENameMapE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_78ENameMapE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_78ENameMapD0Ev, ptr @__cxa_pure_virtual] }, comdat, align 8
@_ZTVN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE = linkonce_odr dso_local constant [55 x i8] c"N11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE = linkonce_odr dso_local constant [54 x i8] c"N11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_18XML88591TranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE = linkonce_odr dso_local constant [55 x i8] c"N11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEED0Ev, ptr @_ZNK11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE = linkonce_odr dso_local constant [61 x i8] c"N11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEED0Ev, ptr @_ZNK11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE = linkonce_odr dso_local constant [60 x i8] c"N11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE = linkonce_odr dso_local constant [56 x i8] c"N11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE = linkonce_odr dso_local constant [57 x i8] c"N11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE = linkonce_odr dso_local constant [57 x i8] c"N11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@_ZTVN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE = linkonce_odr dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE, ptr @_ZN11xercesc_2_78ENameMapD2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEED0Ev, ptr @_ZNK11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEE7makeNewEjPNS_13MemoryManagerE] }, comdat, align 8
@_ZTSN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE = linkonce_odr dso_local constant [57 x i8] c"N11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE\00", comdat, align 1
@_ZTIN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE, ptr @_ZTIN11xercesc_2_78ENameMapE }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_TransService.cpp, ptr null }]

@_ZN11xercesc_2_715XMLTransServiceD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_715XMLTransServiceD2Ev
@_ZN11xercesc_2_713XMLTranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_713XMLTranscoderD2Ev
@_ZN11xercesc_2_716XMLLCPTranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev

declare void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransService14reinitMappingsEv() #1 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %1 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %2 = icmp eq ptr %1, null
  br i1 %2, label %8, label %3, !prof !81

3:                                                ; preds = %0
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %1)
          to label %7 unwind label %4, !prof !82

4:                                                ; preds = %3
  %5 = landingpad { ptr, i32 }
          catch ptr null
  %6 = extractvalue { ptr, i32 } %5, 0
  tail call void @__clang_call_terminate(ptr %6) #18
  unreachable

7:                                                ; preds = %3
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1) #19
  br label %8

8:                                                ; preds = %7, %0
  store ptr null, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransService24reinitMappingsRecognizerEv() #1 align 2 !prof !76 {
  %1 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %2 = icmp eq ptr %1, null
  br i1 %2, label %7, label %3, !prof !81

3:                                                ; preds = %0
  %4 = load ptr, ptr %1, align 8, !tbaa !83
  %5 = getelementptr inbounds ptr, ptr %4, i64 1
  %6 = load ptr, ptr %5, align 8
  tail call void %6(ptr noundef nonnull align 8 dereferenceable(40) %1) #19, !prof !85
  br label %7

7:                                                ; preds = %3, %0
  store ptr null, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransServiceC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [14 x ptr] }, ptr @_ZTVN11xercesc_2_715XMLTransServiceE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %18, !prof !82

4:                                                ; preds = %1
  %5 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 48)
  %6 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, i32 noundef 103, ptr noundef %6)
          to label %7 unwind label %15, !prof !82

7:                                                ; preds = %4
  %8 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_715XMLTransService9gMappingsE, ptr noundef nonnull %5, ptr noundef null)
  %9 = icmp eq ptr %8, null
  br i1 %9, label %17, label %10, !prof !82

10:                                               ; preds = %7
  invoke void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %5)
          to label %14 unwind label %11

11:                                               ; preds = %10
  %12 = landingpad { ptr, i32 }
          catch ptr null
  %13 = extractvalue { ptr, i32 } %12, 0
  tail call void @__clang_call_terminate(ptr %13) #18
  unreachable

14:                                               ; preds = %10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %5) #19
  br label %18

15:                                               ; preds = %4
  %16 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef %5) #19
  br label %51

17:                                               ; preds = %7
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15mappingsCleanupE, ptr noundef nonnull @_ZN11xercesc_2_715XMLTransService14reinitMappingsEv)
  br label %18

18:                                               ; preds = %17, %14, %1
  %19 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %50, !prof !82

21:                                               ; preds = %18
  %22 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 40)
  %23 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !83
  %24 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %22, i64 0, i32 1
  store i8 1, ptr %24, align 8, !tbaa !86
  %25 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %22, i64 0, i32 2
  store i32 0, ptr %25, align 4, !tbaa !90
  %26 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %22, i64 0, i32 3
  store i32 8, ptr %26, align 8, !tbaa !91
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %22, i64 0, i32 4
  store ptr null, ptr %27, align 8, !tbaa !92
  %28 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %22, i64 0, i32 5
  store ptr %23, ptr %28, align 8, !tbaa !93
  %29 = load ptr, ptr %23, align 8, !tbaa !83
  %30 = getelementptr inbounds ptr, ptr %29, i64 2
  %31 = load ptr, ptr %30, align 8
  %32 = invoke noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(8) %23, i64 noundef 64)
          to label %33 unwind label %47, !prof !94

33:                                               ; preds = %21
  store ptr %32, ptr %27, align 8, !tbaa !92
  br label %34

34:                                               ; preds = %33, %34
  %35 = phi i64 [ 0, %33 ], [ %38, %34 ]
  %36 = load ptr, ptr %27, align 8, !tbaa !92
  %37 = getelementptr inbounds ptr, ptr %36, i64 %35
  store ptr null, ptr %37, align 8, !tbaa !77
  %38 = add nuw nsw i64 %35, 1
  %39 = icmp eq i64 %38, 8
  br i1 %39, label %40, label %34, !prof !95, !llvm.loop !96

40:                                               ; preds = %34
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8ENameMapEEE, i64 0, inrange i32 0, i64 2), ptr %22, align 8, !tbaa !83
  %41 = tail call noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef nonnull @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, ptr noundef nonnull %22, ptr noundef null)
  %42 = icmp eq ptr %41, null
  br i1 %42, label %49, label %43, !prof !82

43:                                               ; preds = %40
  %44 = load ptr, ptr %22, align 8, !tbaa !83
  %45 = getelementptr inbounds ptr, ptr %44, i64 1
  %46 = load ptr, ptr %45, align 8
  tail call void %46(ptr noundef nonnull align 8 dereferenceable(40) %22) #19
  br label %50

47:                                               ; preds = %21
  %48 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %22) #19
  br label %51

49:                                               ; preds = %40
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25mappingsRecognizerCleanupE, ptr noundef nonnull @_ZN11xercesc_2_715XMLTransService24reinitMappingsRecognizerEv)
  br label %50

50:                                               ; preds = %49, %43, %18
  ret void

51:                                               ; preds = %47, %15
  %52 = phi { ptr, i32 } [ %48, %47 ], [ %16, %15 ]
  resume { ptr, i32 } %52
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEEC2EjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr %2, ptr %0, align 8, !tbaa !99
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  store i8 1, ptr %4, align 8, !tbaa !101
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr null, ptr %5, align 8, !tbaa !102
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  store i32 %1, ptr %6, align 8, !tbaa !103
  %7 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 4
  store i32 %1, ptr %7, align 4, !tbaa !104
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  store i32 0, ptr %8, align 8, !tbaa !105
  %9 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  store ptr null, ptr %9, align 8, !tbaa !106
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1)
  %10 = load ptr, ptr %0, align 8, !tbaa !99
  %11 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 8, ptr noundef %10)
  invoke void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %11)
          to label %12 unwind label %13, !prof !82

12:                                               ; preds = %3
  store ptr %11, ptr %9, align 8, !tbaa !106
  ret void

13:                                               ; preds = %3
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %10) #19
  resume { ptr, i32 } %14
}

declare i32 @__gxx_personality_v0(...)

declare noundef ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #0

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransServiceD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !76 {
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransServiceD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !107 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #7

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransService11addEncodingEPKtPNS_8ENameMapE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 align 2 !prof !107 {
  %3 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %3, ptr noundef %0, ptr noundef %1)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 comdat align 2 !prof !108 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %5 = load i32, ptr %4, align 8, !tbaa !103
  %6 = mul i32 %5, 3
  %7 = lshr i32 %6, 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %9 = load i32, ptr %8, align 8, !tbaa !105
  %10 = icmp ult i32 %9, %7
  br i1 %10, label %12, label %11, !prof !109

11:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  br label %12

12:                                               ; preds = %11, %3
  %13 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %14 = load ptr, ptr %13, align 8, !tbaa !106
  %15 = load i32, ptr %4, align 8, !tbaa !103
  %16 = load ptr, ptr %0, align 8, !tbaa !99
  %17 = load ptr, ptr %14, align 8, !tbaa !83
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %14, ptr noundef %1, i32 noundef %15, ptr noundef %16), !prof !110
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !102
  %22 = zext i32 %19 to i64
  %23 = getelementptr inbounds ptr, ptr %21, i64 %22
  %24 = load ptr, ptr %23, align 8, !tbaa !77
  %25 = icmp eq ptr %24, null
  br i1 %25, label %39, label %26, !prof !111

26:                                               ; preds = %12, %35
  %27 = phi ptr [ %37, %35 ], [ %24, %12 ]
  %28 = load ptr, ptr %13, align 8, !tbaa !106
  %29 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !112
  %31 = load ptr, ptr %28, align 8, !tbaa !83
  %32 = getelementptr inbounds ptr, ptr %31, i64 1
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef zeroext i1 %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %1, ptr noundef %30), !prof !114
  br i1 %34, label %39, label %35, !prof !115

35:                                               ; preds = %26
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %27, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !77
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %26, !prof !116, !llvm.loop !117

39:                                               ; preds = %26, %35, %12
  %40 = phi ptr [ null, %12 ], [ %27, %26 ], [ null, %35 ]
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42, !prof !109

42:                                               ; preds = %39
  %43 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  %44 = load i8, ptr %43, align 8, !tbaa !101, !range !118, !noundef !119
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %42
  %47 = load ptr, ptr %40, align 8, !tbaa !120
  %48 = icmp eq ptr %47, null
  br i1 %48, label %53, label %49

49:                                               ; preds = %46
  %50 = load ptr, ptr %47, align 8, !tbaa !83
  %51 = getelementptr inbounds ptr, ptr %50, i64 1
  %52 = load ptr, ptr %51, align 8
  tail call void %52(ptr noundef nonnull align 8 dereferenceable(16) %47) #19
  br label %53

53:                                               ; preds = %46, %49, %42
  store ptr %2, ptr %40, align 8, !tbaa !120
  %54 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %40, i64 0, i32 2
  store ptr %1, ptr %54, align 8, !tbaa !112
  br label %68

55:                                               ; preds = %39
  %56 = load ptr, ptr %0, align 8, !tbaa !99
  %57 = load ptr, ptr %56, align 8, !tbaa !83
  %58 = getelementptr inbounds ptr, ptr %57, i64 2
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(8) %56, i64 noundef 24), !prof !121
  %61 = load ptr, ptr %20, align 8, !tbaa !102
  %62 = getelementptr inbounds ptr, ptr %61, i64 %22
  %63 = load ptr, ptr %62, align 8, !tbaa !77
  store ptr %2, ptr %60, align 8, !tbaa !120
  %64 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 1
  store ptr %63, ptr %64, align 8, !tbaa !122
  %65 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %60, i64 0, i32 2
  store ptr %1, ptr %65, align 8, !tbaa !112
  store ptr %60, ptr %62, align 8, !tbaa !77
  %66 = load i32, ptr %8, align 8, !tbaa !105
  %67 = add i32 %66, 1
  store i32 %67, ptr %8, align 8, !tbaa !105
  br label %68

68:                                               ; preds = %55, %53
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKcRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %4)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #19
  store ptr %7, ptr %6, align 8, !tbaa !123
  %8 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %6, i64 0, i32 1
  store ptr %4, ptr %8, align 8, !tbaa !125
  %9 = invoke noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %7, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4)
          to label %10 unwind label %11

10:                                               ; preds = %5
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  ret ptr %9

11:                                               ; preds = %5
  %12 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #19
  resume { ptr, i32 } %12
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !126 {
  %6 = alloca [2049 x i16], align 16
  %7 = load i8, ptr @_ZN11xercesc_2_7L19gStrictIANAEncodingE, align 1, !tbaa !127, !range !118, !noundef !119
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %13, label %9, !prof !128

9:                                                ; preds = %5
  %10 = tail call noundef ptr @_ZN11xercesc_2_717EncodingValidator8instanceEv()
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_717EncodingValidator15isValidEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %1)
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 1, ptr %2, align 4, !tbaa !129
  br label %37

13:                                               ; preds = %9, %5
  call void @llvm.lifetime.start.p0(i64 4098, ptr nonnull %6) #19
  %14 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef nonnull %6, ptr noundef %1, i32 noundef 2048)
  br i1 %14, label %15, label %32, !prof !128

15:                                               ; preds = %13
  call void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef nonnull %6)
  %16 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %17 = call noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %16, ptr noundef nonnull %6)
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19, !prof !131

19:                                               ; preds = %15
  %20 = load ptr, ptr %17, align 8, !tbaa !83
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %17, i32 noundef %3, ptr noundef %4), !prof !132
  %24 = icmp eq ptr %23, null
  %25 = select i1 %24, i32 2, i32 0, !prof !131
  br label %32

26:                                               ; preds = %15
  %27 = load ptr, ptr %0, align 8, !tbaa !83
  %28 = getelementptr inbounds ptr, ptr %27, i64 10
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4)
  %31 = icmp eq ptr %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %26, %13, %19
  %33 = phi i32 [ %25, %19 ], [ 2, %13 ], [ 0, %26 ]
  %34 = phi ptr [ %23, %19 ], [ null, %13 ], [ %30, %26 ]
  store i32 %33, ptr %2, align 4, !tbaa !129
  br label %35

35:                                               ; preds = %32, %26
  %36 = phi ptr [ %30, %26 ], [ %34, %32 ]
  call void @llvm.lifetime.end.p0(i64 4098, ptr nonnull %6) #19
  br label %37

37:                                               ; preds = %35, %12
  %38 = phi ptr [ %36, %35 ], [ null, %12 ]
  ret ptr %38
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 !prof !133 {
  %2 = load ptr, ptr %0, align 8, !tbaa !123
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !134

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !125
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !135

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !83
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !136

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #20
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #18
  unreachable
}

declare noundef ptr @_ZN11xercesc_2_717EncodingValidator8instanceEv() local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_717EncodingValidator15isValidEncodingEPKt(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #0

declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3getEPKv(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1) local_unnamed_addr #3 comdat align 2 !prof !126 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %4 = load ptr, ptr %3, align 8, !tbaa !106
  %5 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 8, !tbaa !103
  %7 = load ptr, ptr %0, align 8, !tbaa !99
  %8 = load ptr, ptr %4, align 8, !tbaa !83
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef i32 %9(ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef %1, i32 noundef %6, ptr noundef %7), !prof !137
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !102
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  br i1 %16, label %30, label %17, !prof !81

17:                                               ; preds = %2, %26
  %18 = phi ptr [ %28, %26 ], [ %15, %2 ]
  %19 = load ptr, ptr %3, align 8, !tbaa !106
  %20 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !112
  %22 = load ptr, ptr %19, align 8, !tbaa !83
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef zeroext i1 %24(ptr noundef nonnull align 8 dereferenceable(8) %19, ptr noundef %1, ptr noundef %21), !prof !138
  br i1 %25, label %30, label %26, !prof !128

26:                                               ; preds = %17
  %27 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %18, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !77
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %17, !prof !131, !llvm.loop !117

30:                                               ; preds = %17, %26, %2
  %31 = phi ptr [ null, %2 ], [ %18, %17 ], [ null, %26 ]
  %32 = icmp eq ptr %31, null
  br i1 %32, label %35, label %33, !prof !131

33:                                               ; preds = %30
  %34 = load ptr, ptr %31, align 8, !tbaa !120
  br label %35

35:                                               ; preds = %30, %33
  %36 = phi ptr [ %34, %33 ], [ null, %30 ]
  ret ptr %36
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4) local_unnamed_addr #3 align 2 !prof !107 {
  %6 = icmp ugt i32 %1, 7
  br i1 %6, label %25, label %7

7:                                                ; preds = %5
  %8 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %9 = tail call noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %8, i32 noundef %1)
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !83
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(16) %9, i32 noundef %3, ptr noundef %4)
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, i32 2, i32 0
  br label %25

18:                                               ; preds = %7
  %19 = tail call noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef %1, ptr noundef %4)
  %20 = load ptr, ptr %0, align 8, !tbaa !83
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %19, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef %3, ptr noundef %4)
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %18, %5, %11
  %26 = phi i32 [ %17, %11 ], [ 2, %5 ], [ 0, %18 ]
  %27 = phi ptr [ %15, %11 ], [ null, %5 ], [ %23, %18 ]
  store i32 %26, ptr %2, align 4, !tbaa !129
  br label %28

28:                                               ; preds = %25, %18
  %29 = phi ptr [ %23, %18 ], [ %27, %25 ]
  ret ptr %29
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE9elementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !90
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 249, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !92
  %16 = zext i32 %1 to i64
  %17 = getelementptr inbounds ptr, ptr %15, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  ret ptr %18
}

declare noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransService16initTransServiceEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  br label %31

2:                                                ; preds = %31
  %3 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !83
  %5 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %6 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE, align 2, !tbaa !139
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %17, label %8, !prof !81

8:                                                ; preds = %2, %8
  %9 = phi ptr [ %10, %8 ], [ @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE, %2 ]
  %10 = getelementptr inbounds i16, ptr %9, i64 1
  %11 = load i16, ptr %10, align 2, !tbaa !139
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %13, label %8, !prof !141, !llvm.loop !142

13:                                               ; preds = %8
  %14 = ptrtoint ptr %10 to i64
  %15 = add i64 %14, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE to i64)), i64 2)
  %16 = and i64 %15, 8589934590
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i64 [ %16, %13 ], [ 2, %2 ]
  %19 = load ptr, ptr %5, align 8, !tbaa !83
  %20 = getelementptr inbounds ptr, ptr %19, i64 2
  %21 = load ptr, ptr %20, align 8
  %22 = invoke noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(8) %5, i64 noundef %18)
          to label %23 unwind label %1235, !prof !94

23:                                               ; preds = %17
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %22, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE, i64 %18, i1 false), !prof !143
  %24 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %4, i64 0, i32 1
  store ptr %22, ptr %24, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !83
  %25 = load ptr, ptr %3, align 8, !tbaa !83
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull %4, i32 noundef 7), !prof !146
  %28 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %29 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %29, align 8, !tbaa !83
  %30 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br i1 %7, label %52, label %43, !prof !81

31:                                               ; preds = %1, %31
  %32 = phi i32 [ 0, %1 ], [ %41, %31 ]
  %33 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  tail call void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %33, i32 noundef 1)
  %34 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %33, i64 0, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !90
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds ptr, ptr %35, i64 %38
  store ptr null, ptr %39, align 8, !tbaa !77
  %40 = add i32 %37, 1
  store i32 %40, ptr %36, align 4, !tbaa !90
  %41 = add nuw nsw i32 %32, 1
  %42 = icmp eq i32 %41, 8
  br i1 %42, label %2, label %31, !prof !95, !llvm.loop !147

43:                                               ; preds = %23, %43
  %44 = phi ptr [ %45, %43 ], [ @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE, %23 ]
  %45 = getelementptr inbounds i16, ptr %44, i64 1
  %46 = load i16, ptr %45, align 2, !tbaa !139
  %47 = icmp eq i16 %46, 0
  br i1 %47, label %48, label %43, !prof !141, !llvm.loop !142

48:                                               ; preds = %43
  %49 = ptrtoint ptr %45 to i64
  %50 = add i64 %49, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE to i64)), i64 2)
  %51 = and i64 %50, 8589934590
  br label %52

52:                                               ; preds = %48, %23
  %53 = phi i64 [ %51, %48 ], [ 2, %23 ]
  %54 = load ptr, ptr %30, align 8, !tbaa !83
  %55 = getelementptr inbounds ptr, ptr %54, i64 2
  %56 = load ptr, ptr %55, align 8
  %57 = invoke noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(8) %30, i64 noundef %53)
          to label %58 unwind label %1237, !prof !94

58:                                               ; preds = %52
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %57, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE, i64 %53, i1 false), !prof !143
  %59 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %29, i64 0, i32 1
  store ptr %57, ptr %59, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %29, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgXMLChEncodingStringE, ptr noundef nonnull %29)
  %60 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %61 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %61, align 8, !tbaa !83
  %62 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %63 = load i16, ptr @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE, align 2, !tbaa !139
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %74, label %65, !prof !81

65:                                               ; preds = %58, %65
  %66 = phi ptr [ %67, %65 ], [ @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE, %58 ]
  %67 = getelementptr inbounds i16, ptr %66, i64 1
  %68 = load i16, ptr %67, align 2, !tbaa !139
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %70, label %65, !prof !95, !llvm.loop !142

70:                                               ; preds = %65
  %71 = ptrtoint ptr %67 to i64
  %72 = add i64 %71, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE to i64)), i64 2)
  %73 = and i64 %72, 8589934590
  br label %74

74:                                               ; preds = %70, %58
  %75 = phi i64 [ %73, %70 ], [ 2, %58 ]
  %76 = load ptr, ptr %62, align 8, !tbaa !83
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(8) %62, i64 noundef %75)
          to label %80 unwind label %1239, !prof !94

80:                                               ; preds = %74
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %79, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE, i64 %75, i1 false), !prof !143
  %81 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %61, i64 0, i32 1
  store ptr %79, ptr %81, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %61, align 8, !tbaa !83
  %82 = load ptr, ptr %60, align 8, !tbaa !83
  %83 = getelementptr inbounds ptr, ptr %82, i64 2
  %84 = load ptr, ptr %83, align 8
  tail call void %84(ptr noundef nonnull align 8 dereferenceable(40) %60, ptr noundef nonnull %61, i32 noundef 3), !prof !146
  %85 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %86 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %86, align 8, !tbaa !83
  %87 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br i1 %64, label %97, label %88, !prof !81

88:                                               ; preds = %80, %88
  %89 = phi ptr [ %90, %88 ], [ @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE, %80 ]
  %90 = getelementptr inbounds i16, ptr %89, i64 1
  %91 = load i16, ptr %90, align 2, !tbaa !139
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %93, label %88, !prof !95, !llvm.loop !142

93:                                               ; preds = %88
  %94 = ptrtoint ptr %90 to i64
  %95 = add i64 %94, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE to i64)), i64 2)
  %96 = and i64 %95, 8589934590
  br label %97

97:                                               ; preds = %93, %80
  %98 = phi i64 [ %96, %93 ], [ 2, %80 ]
  %99 = load ptr, ptr %87, align 8, !tbaa !83
  %100 = getelementptr inbounds ptr, ptr %99, i64 2
  %101 = load ptr, ptr %100, align 8
  %102 = invoke noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(8) %87, i64 noundef %98)
          to label %103 unwind label %1241, !prof !94

103:                                              ; preds = %97
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %102, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE, i64 %98, i1 false), !prof !143
  %104 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %86, i64 0, i32 1
  store ptr %102, ptr %104, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %86, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %85, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUSASCIIEncodingStringE, ptr noundef nonnull %86)
  %105 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %106 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %106, align 8, !tbaa !83
  %107 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %108 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E, align 2, !tbaa !139
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %119, label %110, !prof !81

110:                                              ; preds = %103, %110
  %111 = phi ptr [ %112, %110 ], [ @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E, %103 ]
  %112 = getelementptr inbounds i16, ptr %111, i64 1
  %113 = load i16, ptr %112, align 2, !tbaa !139
  %114 = icmp eq i16 %113, 0
  br i1 %114, label %115, label %110, !prof !148, !llvm.loop !142

115:                                              ; preds = %110
  %116 = ptrtoint ptr %112 to i64
  %117 = add i64 %116, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E to i64)), i64 2)
  %118 = and i64 %117, 8589934590
  br label %119

119:                                              ; preds = %115, %103
  %120 = phi i64 [ %118, %115 ], [ 2, %103 ]
  %121 = load ptr, ptr %107, align 8, !tbaa !83
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8
  %124 = invoke noundef ptr %123(ptr noundef nonnull align 8 dereferenceable(8) %107, i64 noundef %120)
          to label %125 unwind label %1243, !prof !94

125:                                              ; preds = %119
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %124, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E, i64 %120, i1 false), !prof !149
  %126 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %106, i64 0, i32 1
  store ptr %124, ptr %126, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %106, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %105, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString2E, ptr noundef nonnull %106)
  %127 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %128 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %128, align 8, !tbaa !83
  %129 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %130 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E, align 2, !tbaa !139
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %141, label %132, !prof !81

132:                                              ; preds = %125, %132
  %133 = phi ptr [ %134, %132 ], [ @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E, %125 ]
  %134 = getelementptr inbounds i16, ptr %133, i64 1
  %135 = load i16, ptr %134, align 2, !tbaa !139
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %132, !prof !150, !llvm.loop !142

137:                                              ; preds = %132
  %138 = ptrtoint ptr %134 to i64
  %139 = add i64 %138, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E to i64)), i64 2)
  %140 = and i64 %139, 8589934590
  br label %141

141:                                              ; preds = %137, %125
  %142 = phi i64 [ %140, %137 ], [ 2, %125 ]
  %143 = load ptr, ptr %129, align 8, !tbaa !83
  %144 = getelementptr inbounds ptr, ptr %143, i64 2
  %145 = load ptr, ptr %144, align 8
  %146 = invoke noundef ptr %145(ptr noundef nonnull align 8 dereferenceable(8) %129, i64 noundef %142)
          to label %147 unwind label %1245, !prof !94

147:                                              ; preds = %141
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %146, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E, i64 %142, i1 false), !prof !151
  %148 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %128, i64 0, i32 1
  store ptr %146, ptr %148, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %128, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %127, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString3E, ptr noundef nonnull %128)
  %149 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %150 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %150, align 8, !tbaa !83
  %151 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %152 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E, align 2, !tbaa !139
  %153 = icmp eq i16 %152, 0
  br i1 %153, label %163, label %154, !prof !81

154:                                              ; preds = %147, %154
  %155 = phi ptr [ %156, %154 ], [ @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E, %147 ]
  %156 = getelementptr inbounds i16, ptr %155, i64 1
  %157 = load i16, ptr %156, align 2, !tbaa !139
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %159, label %154, !prof !95, !llvm.loop !142

159:                                              ; preds = %154
  %160 = ptrtoint ptr %156 to i64
  %161 = add i64 %160, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E to i64)), i64 2)
  %162 = and i64 %161, 8589934590
  br label %163

163:                                              ; preds = %159, %147
  %164 = phi i64 [ %162, %159 ], [ 2, %147 ]
  %165 = load ptr, ptr %151, align 8, !tbaa !83
  %166 = getelementptr inbounds ptr, ptr %165, i64 2
  %167 = load ptr, ptr %166, align 8
  %168 = invoke noundef ptr %167(ptr noundef nonnull align 8 dereferenceable(8) %151, i64 noundef %164)
          to label %169 unwind label %1247, !prof !94

169:                                              ; preds = %163
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %168, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E, i64 %164, i1 false), !prof !143
  %170 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %150, i64 0, i32 1
  store ptr %168, ptr %170, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %150, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %149, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgUSASCIIEncodingString4E, ptr noundef nonnull %150)
  %171 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %172 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %172, align 8, !tbaa !83
  %173 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %174 = load i16, ptr @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE, align 2, !tbaa !139
  %175 = icmp eq i16 %174, 0
  br i1 %175, label %185, label %176, !prof !81

176:                                              ; preds = %169, %176
  %177 = phi ptr [ %178, %176 ], [ @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE, %169 ]
  %178 = getelementptr inbounds i16, ptr %177, i64 1
  %179 = load i16, ptr %178, align 2, !tbaa !139
  %180 = icmp eq i16 %179, 0
  br i1 %180, label %181, label %176, !prof !150, !llvm.loop !142

181:                                              ; preds = %176
  %182 = ptrtoint ptr %178 to i64
  %183 = add i64 %182, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE to i64)), i64 2)
  %184 = and i64 %183, 8589934590
  br label %185

185:                                              ; preds = %181, %169
  %186 = phi i64 [ %184, %181 ], [ 2, %169 ]
  %187 = load ptr, ptr %173, align 8, !tbaa !83
  %188 = getelementptr inbounds ptr, ptr %187, i64 2
  %189 = load ptr, ptr %188, align 8
  %190 = invoke noundef ptr %189(ptr noundef nonnull align 8 dereferenceable(8) %173, i64 noundef %186)
          to label %191 unwind label %1249, !prof !94

191:                                              ; preds = %185
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %190, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE, i64 %186, i1 false), !prof !151
  %192 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %172, i64 0, i32 1
  store ptr %190, ptr %192, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %172, align 8, !tbaa !83
  %193 = load ptr, ptr %171, align 8, !tbaa !83
  %194 = getelementptr inbounds ptr, ptr %193, i64 2
  %195 = load ptr, ptr %194, align 8
  tail call void %195(ptr noundef nonnull align 8 dereferenceable(40) %171, ptr noundef nonnull %172, i32 noundef 4), !prof !146
  %196 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %197 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %197, align 8, !tbaa !83
  %198 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br i1 %175, label %208, label %199, !prof !81

199:                                              ; preds = %191, %199
  %200 = phi ptr [ %201, %199 ], [ @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE, %191 ]
  %201 = getelementptr inbounds i16, ptr %200, i64 1
  %202 = load i16, ptr %201, align 2, !tbaa !139
  %203 = icmp eq i16 %202, 0
  br i1 %203, label %204, label %199, !prof !150, !llvm.loop !142

204:                                              ; preds = %199
  %205 = ptrtoint ptr %201 to i64
  %206 = add i64 %205, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE to i64)), i64 2)
  %207 = and i64 %206, 8589934590
  br label %208

208:                                              ; preds = %204, %191
  %209 = phi i64 [ %207, %204 ], [ 2, %191 ]
  %210 = load ptr, ptr %198, align 8, !tbaa !83
  %211 = getelementptr inbounds ptr, ptr %210, i64 2
  %212 = load ptr, ptr %211, align 8
  %213 = invoke noundef ptr %212(ptr noundef nonnull align 8 dereferenceable(8) %198, i64 noundef %209)
          to label %214 unwind label %1251, !prof !94

214:                                              ; preds = %208
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %213, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE, i64 %209, i1 false), !prof !151
  %215 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %197, i64 0, i32 1
  store ptr %213, ptr %215, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %197, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %196, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgUTF8EncodingStringE, ptr noundef nonnull %197)
  %216 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %217 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %217, align 8, !tbaa !83
  %218 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %219 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E, align 2, !tbaa !139
  %220 = icmp eq i16 %219, 0
  br i1 %220, label %230, label %221, !prof !81

221:                                              ; preds = %214, %221
  %222 = phi ptr [ %223, %221 ], [ @_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E, %214 ]
  %223 = getelementptr inbounds i16, ptr %222, i64 1
  %224 = load i16, ptr %223, align 2, !tbaa !139
  %225 = icmp eq i16 %224, 0
  br i1 %225, label %226, label %221, !prof !152, !llvm.loop !142

226:                                              ; preds = %221
  %227 = ptrtoint ptr %223 to i64
  %228 = add i64 %227, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E to i64)), i64 2)
  %229 = and i64 %228, 8589934590
  br label %230

230:                                              ; preds = %226, %214
  %231 = phi i64 [ %229, %226 ], [ 2, %214 ]
  %232 = load ptr, ptr %218, align 8, !tbaa !83
  %233 = getelementptr inbounds ptr, ptr %232, i64 2
  %234 = load ptr, ptr %233, align 8
  %235 = invoke noundef ptr %234(ptr noundef nonnull align 8 dereferenceable(8) %218, i64 noundef %231)
          to label %236 unwind label %1253, !prof !94

236:                                              ; preds = %230
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %235, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E, i64 %231, i1 false), !prof !151
  %237 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %217, i64 0, i32 1
  store ptr %235, ptr %237, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %217, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %216, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUTF8EncodingString2E, ptr noundef nonnull %217)
  %238 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %239 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %239, align 8, !tbaa !83
  %240 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %241 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgISO88591EncodingStringE, align 2, !tbaa !139
  %242 = icmp eq i16 %241, 0
  br i1 %242, label %252, label %243, !prof !81

243:                                              ; preds = %236, %243
  %244 = phi ptr [ %245, %243 ], [ @_ZN11xercesc_2_76XMLUni24fgISO88591EncodingStringE, %236 ]
  %245 = getelementptr inbounds i16, ptr %244, i64 1
  %246 = load i16, ptr %245, align 2, !tbaa !139
  %247 = icmp eq i16 %246, 0
  br i1 %247, label %248, label %243, !prof !153, !llvm.loop !142

248:                                              ; preds = %243
  %249 = ptrtoint ptr %245 to i64
  %250 = add i64 %249, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgISO88591EncodingStringE to i64)), i64 2)
  %251 = and i64 %250, 8589934590
  br label %252

252:                                              ; preds = %248, %236
  %253 = phi i64 [ %251, %248 ], [ 2, %236 ]
  %254 = load ptr, ptr %240, align 8, !tbaa !83
  %255 = getelementptr inbounds ptr, ptr %254, i64 2
  %256 = load ptr, ptr %255, align 8
  %257 = invoke noundef ptr %256(ptr noundef nonnull align 8 dereferenceable(8) %240, i64 noundef %253)
          to label %258 unwind label %1255, !prof !94

258:                                              ; preds = %252
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %257, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgISO88591EncodingStringE, i64 %253, i1 false), !prof !143
  %259 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %239, i64 0, i32 1
  store ptr %257, ptr %259, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %239, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %238, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgISO88591EncodingStringE, ptr noundef nonnull %239)
  %260 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %261 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %261, align 8, !tbaa !83
  %262 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %263 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString2E, align 2, !tbaa !139
  %264 = icmp eq i16 %263, 0
  br i1 %264, label %274, label %265, !prof !81

265:                                              ; preds = %258, %265
  %266 = phi ptr [ %267, %265 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString2E, %258 ]
  %267 = getelementptr inbounds i16, ptr %266, i64 1
  %268 = load i16, ptr %267, align 2, !tbaa !139
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %270, label %265, !prof !154, !llvm.loop !142

270:                                              ; preds = %265
  %271 = ptrtoint ptr %267 to i64
  %272 = add i64 %271, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString2E to i64)), i64 2)
  %273 = and i64 %272, 8589934590
  br label %274

274:                                              ; preds = %270, %258
  %275 = phi i64 [ %273, %270 ], [ 2, %258 ]
  %276 = load ptr, ptr %262, align 8, !tbaa !83
  %277 = getelementptr inbounds ptr, ptr %276, i64 2
  %278 = load ptr, ptr %277, align 8
  %279 = invoke noundef ptr %278(ptr noundef nonnull align 8 dereferenceable(8) %262, i64 noundef %275)
          to label %280 unwind label %1257, !prof !94

280:                                              ; preds = %274
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %279, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString2E, i64 %275, i1 false), !prof !143
  %281 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %261, i64 0, i32 1
  store ptr %279, ptr %281, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %261, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %260, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString2E, ptr noundef nonnull %261)
  %282 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %283 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %283, align 8, !tbaa !83
  %284 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %285 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString3E, align 2, !tbaa !139
  %286 = icmp eq i16 %285, 0
  br i1 %286, label %296, label %287, !prof !81

287:                                              ; preds = %280, %287
  %288 = phi ptr [ %289, %287 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString3E, %280 ]
  %289 = getelementptr inbounds i16, ptr %288, i64 1
  %290 = load i16, ptr %289, align 2, !tbaa !139
  %291 = icmp eq i16 %290, 0
  br i1 %291, label %292, label %287, !prof !154, !llvm.loop !142

292:                                              ; preds = %287
  %293 = ptrtoint ptr %289 to i64
  %294 = add i64 %293, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString3E to i64)), i64 2)
  %295 = and i64 %294, 8589934590
  br label %296

296:                                              ; preds = %292, %280
  %297 = phi i64 [ %295, %292 ], [ 2, %280 ]
  %298 = load ptr, ptr %284, align 8, !tbaa !83
  %299 = getelementptr inbounds ptr, ptr %298, i64 2
  %300 = load ptr, ptr %299, align 8
  %301 = invoke noundef ptr %300(ptr noundef nonnull align 8 dereferenceable(8) %284, i64 noundef %297)
          to label %302 unwind label %1259, !prof !94

302:                                              ; preds = %296
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %301, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString3E, i64 %297, i1 false), !prof !143
  %303 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %283, i64 0, i32 1
  store ptr %301, ptr %303, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %283, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %282, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString3E, ptr noundef nonnull %283)
  %304 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %305 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %305, align 8, !tbaa !83
  %306 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %307 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString4E, align 2, !tbaa !139
  %308 = icmp eq i16 %307, 0
  br i1 %308, label %318, label %309, !prof !81

309:                                              ; preds = %302, %309
  %310 = phi ptr [ %311, %309 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString4E, %302 ]
  %311 = getelementptr inbounds i16, ptr %310, i64 1
  %312 = load i16, ptr %311, align 2, !tbaa !139
  %313 = icmp eq i16 %312, 0
  br i1 %313, label %314, label %309, !prof !148, !llvm.loop !142

314:                                              ; preds = %309
  %315 = ptrtoint ptr %311 to i64
  %316 = add i64 %315, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString4E to i64)), i64 2)
  %317 = and i64 %316, 8589934590
  br label %318

318:                                              ; preds = %314, %302
  %319 = phi i64 [ %317, %314 ], [ 2, %302 ]
  %320 = load ptr, ptr %306, align 8, !tbaa !83
  %321 = getelementptr inbounds ptr, ptr %320, i64 2
  %322 = load ptr, ptr %321, align 8
  %323 = invoke noundef ptr %322(ptr noundef nonnull align 8 dereferenceable(8) %306, i64 noundef %319)
          to label %324 unwind label %1261, !prof !94

324:                                              ; preds = %318
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %323, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString4E, i64 %319, i1 false), !prof !149
  %325 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %305, i64 0, i32 1
  store ptr %323, ptr %325, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %305, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %304, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString4E, ptr noundef nonnull %305)
  %326 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %327 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %327, align 8, !tbaa !83
  %328 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %329 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString5E, align 2, !tbaa !139
  %330 = icmp eq i16 %329, 0
  br i1 %330, label %340, label %331, !prof !81

331:                                              ; preds = %324, %331
  %332 = phi ptr [ %333, %331 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString5E, %324 ]
  %333 = getelementptr inbounds i16, ptr %332, i64 1
  %334 = load i16, ptr %333, align 2, !tbaa !139
  %335 = icmp eq i16 %334, 0
  br i1 %335, label %336, label %331, !prof !155, !llvm.loop !142

336:                                              ; preds = %331
  %337 = ptrtoint ptr %333 to i64
  %338 = add i64 %337, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString5E to i64)), i64 2)
  %339 = and i64 %338, 8589934590
  br label %340

340:                                              ; preds = %336, %324
  %341 = phi i64 [ %339, %336 ], [ 2, %324 ]
  %342 = load ptr, ptr %328, align 8, !tbaa !83
  %343 = getelementptr inbounds ptr, ptr %342, i64 2
  %344 = load ptr, ptr %343, align 8
  %345 = invoke noundef ptr %344(ptr noundef nonnull align 8 dereferenceable(8) %328, i64 noundef %341)
          to label %346 unwind label %1263, !prof !94

346:                                              ; preds = %340
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %345, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString5E, i64 %341, i1 false), !prof !151
  %347 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %327, i64 0, i32 1
  store ptr %345, ptr %347, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %327, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %326, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString5E, ptr noundef nonnull %327)
  %348 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %349 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %349, align 8, !tbaa !83
  %350 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %351 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString6E, align 2, !tbaa !139
  %352 = icmp eq i16 %351, 0
  br i1 %352, label %362, label %353, !prof !81

353:                                              ; preds = %346, %353
  %354 = phi ptr [ %355, %353 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString6E, %346 ]
  %355 = getelementptr inbounds i16, ptr %354, i64 1
  %356 = load i16, ptr %355, align 2, !tbaa !139
  %357 = icmp eq i16 %356, 0
  br i1 %357, label %358, label %353, !prof !155, !llvm.loop !142

358:                                              ; preds = %353
  %359 = ptrtoint ptr %355 to i64
  %360 = add i64 %359, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString6E to i64)), i64 2)
  %361 = and i64 %360, 8589934590
  br label %362

362:                                              ; preds = %358, %346
  %363 = phi i64 [ %361, %358 ], [ 2, %346 ]
  %364 = load ptr, ptr %350, align 8, !tbaa !83
  %365 = getelementptr inbounds ptr, ptr %364, i64 2
  %366 = load ptr, ptr %365, align 8
  %367 = invoke noundef ptr %366(ptr noundef nonnull align 8 dereferenceable(8) %350, i64 noundef %363)
          to label %368 unwind label %1265, !prof !94

368:                                              ; preds = %362
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %367, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString6E, i64 %363, i1 false), !prof !151
  %369 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %349, i64 0, i32 1
  store ptr %367, ptr %369, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %349, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %348, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString6E, ptr noundef nonnull %349)
  %370 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %371 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %371, align 8, !tbaa !83
  %372 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %373 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString7E, align 2, !tbaa !139
  %374 = icmp eq i16 %373, 0
  br i1 %374, label %384, label %375, !prof !81

375:                                              ; preds = %368, %375
  %376 = phi ptr [ %377, %375 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString7E, %368 ]
  %377 = getelementptr inbounds i16, ptr %376, i64 1
  %378 = load i16, ptr %377, align 2, !tbaa !139
  %379 = icmp eq i16 %378, 0
  br i1 %379, label %380, label %375, !prof !148, !llvm.loop !142

380:                                              ; preds = %375
  %381 = ptrtoint ptr %377 to i64
  %382 = add i64 %381, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString7E to i64)), i64 2)
  %383 = and i64 %382, 8589934590
  br label %384

384:                                              ; preds = %380, %368
  %385 = phi i64 [ %383, %380 ], [ 2, %368 ]
  %386 = load ptr, ptr %372, align 8, !tbaa !83
  %387 = getelementptr inbounds ptr, ptr %386, i64 2
  %388 = load ptr, ptr %387, align 8
  %389 = invoke noundef ptr %388(ptr noundef nonnull align 8 dereferenceable(8) %372, i64 noundef %385)
          to label %390 unwind label %1267, !prof !94

390:                                              ; preds = %384
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %389, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString7E, i64 %385, i1 false), !prof !149
  %391 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %371, i64 0, i32 1
  store ptr %389, ptr %391, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %371, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %370, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString7E, ptr noundef nonnull %371)
  %392 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %393 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %393, align 8, !tbaa !83
  %394 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %395 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString8E, align 2, !tbaa !139
  %396 = icmp eq i16 %395, 0
  br i1 %396, label %406, label %397, !prof !81

397:                                              ; preds = %390, %397
  %398 = phi ptr [ %399, %397 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString8E, %390 ]
  %399 = getelementptr inbounds i16, ptr %398, i64 1
  %400 = load i16, ptr %399, align 2, !tbaa !139
  %401 = icmp eq i16 %400, 0
  br i1 %401, label %402, label %397, !prof !148, !llvm.loop !142

402:                                              ; preds = %397
  %403 = ptrtoint ptr %399 to i64
  %404 = add i64 %403, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString8E to i64)), i64 2)
  %405 = and i64 %404, 8589934590
  br label %406

406:                                              ; preds = %402, %390
  %407 = phi i64 [ %405, %402 ], [ 2, %390 ]
  %408 = load ptr, ptr %394, align 8, !tbaa !83
  %409 = getelementptr inbounds ptr, ptr %408, i64 2
  %410 = load ptr, ptr %409, align 8
  %411 = invoke noundef ptr %410(ptr noundef nonnull align 8 dereferenceable(8) %394, i64 noundef %407)
          to label %412 unwind label %1269, !prof !94

412:                                              ; preds = %406
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %411, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString8E, i64 %407, i1 false), !prof !149
  %413 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %393, i64 0, i32 1
  store ptr %411, ptr %413, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %393, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %392, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString8E, ptr noundef nonnull %393)
  %414 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %415 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %415, align 8, !tbaa !83
  %416 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %417 = load i16, ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString9E, align 2, !tbaa !139
  %418 = icmp eq i16 %417, 0
  br i1 %418, label %428, label %419, !prof !81

419:                                              ; preds = %412, %419
  %420 = phi ptr [ %421, %419 ], [ @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString9E, %412 ]
  %421 = getelementptr inbounds i16, ptr %420, i64 1
  %422 = load i16, ptr %421, align 2, !tbaa !139
  %423 = icmp eq i16 %422, 0
  br i1 %423, label %424, label %419, !prof !150, !llvm.loop !142

424:                                              ; preds = %419
  %425 = ptrtoint ptr %421 to i64
  %426 = add i64 %425, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString9E to i64)), i64 2)
  %427 = and i64 %426, 8589934590
  br label %428

428:                                              ; preds = %424, %412
  %429 = phi i64 [ %427, %424 ], [ 2, %412 ]
  %430 = load ptr, ptr %416, align 8, !tbaa !83
  %431 = getelementptr inbounds ptr, ptr %430, i64 2
  %432 = load ptr, ptr %431, align 8
  %433 = invoke noundef ptr %432(ptr noundef nonnull align 8 dereferenceable(8) %416, i64 noundef %429)
          to label %434 unwind label %1271, !prof !94

434:                                              ; preds = %428
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %433, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString9E, i64 %429, i1 false), !prof !151
  %435 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %415, i64 0, i32 1
  store ptr %433, ptr %435, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %415, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %414, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni25fgISO88591EncodingString9E, ptr noundef nonnull %415)
  %436 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %437 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %437, align 8, !tbaa !83
  %438 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %439 = load i16, ptr @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString10E, align 2, !tbaa !139
  %440 = icmp eq i16 %439, 0
  br i1 %440, label %450, label %441, !prof !81

441:                                              ; preds = %434, %441
  %442 = phi ptr [ %443, %441 ], [ @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString10E, %434 ]
  %443 = getelementptr inbounds i16, ptr %442, i64 1
  %444 = load i16, ptr %443, align 2, !tbaa !139
  %445 = icmp eq i16 %444, 0
  br i1 %445, label %446, label %441, !prof !156, !llvm.loop !142

446:                                              ; preds = %441
  %447 = ptrtoint ptr %443 to i64
  %448 = add i64 %447, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString10E to i64)), i64 2)
  %449 = and i64 %448, 8589934590
  br label %450

450:                                              ; preds = %446, %434
  %451 = phi i64 [ %449, %446 ], [ 2, %434 ]
  %452 = load ptr, ptr %438, align 8, !tbaa !83
  %453 = getelementptr inbounds ptr, ptr %452, i64 2
  %454 = load ptr, ptr %453, align 8
  %455 = invoke noundef ptr %454(ptr noundef nonnull align 8 dereferenceable(8) %438, i64 noundef %451)
          to label %456 unwind label %1273, !prof !94

456:                                              ; preds = %450
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %455, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString10E, i64 %451, i1 false), !prof !143
  %457 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %437, i64 0, i32 1
  store ptr %455, ptr %457, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %437, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %436, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString10E, ptr noundef nonnull %437)
  %458 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %459 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %459, align 8, !tbaa !83
  %460 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %461 = load i16, ptr @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString11E, align 2, !tbaa !139
  %462 = icmp eq i16 %461, 0
  br i1 %462, label %472, label %463, !prof !81

463:                                              ; preds = %456, %463
  %464 = phi ptr [ %465, %463 ], [ @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString11E, %456 ]
  %465 = getelementptr inbounds i16, ptr %464, i64 1
  %466 = load i16, ptr %465, align 2, !tbaa !139
  %467 = icmp eq i16 %466, 0
  br i1 %467, label %468, label %463, !prof !154, !llvm.loop !142

468:                                              ; preds = %463
  %469 = ptrtoint ptr %465 to i64
  %470 = add i64 %469, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString11E to i64)), i64 2)
  %471 = and i64 %470, 8589934590
  br label %472

472:                                              ; preds = %468, %456
  %473 = phi i64 [ %471, %468 ], [ 2, %456 ]
  %474 = load ptr, ptr %460, align 8, !tbaa !83
  %475 = getelementptr inbounds ptr, ptr %474, i64 2
  %476 = load ptr, ptr %475, align 8
  %477 = invoke noundef ptr %476(ptr noundef nonnull align 8 dereferenceable(8) %460, i64 noundef %473)
          to label %478 unwind label %1275, !prof !94

478:                                              ; preds = %472
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %477, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString11E, i64 %473, i1 false), !prof !143
  %479 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %459, i64 0, i32 1
  store ptr %477, ptr %479, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %459, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %458, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString11E, ptr noundef nonnull %459)
  %480 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %481 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %481, align 8, !tbaa !83
  %482 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %483 = load i16, ptr @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString12E, align 2, !tbaa !139
  %484 = icmp eq i16 %483, 0
  br i1 %484, label %494, label %485, !prof !81

485:                                              ; preds = %478, %485
  %486 = phi ptr [ %487, %485 ], [ @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString12E, %478 ]
  %487 = getelementptr inbounds i16, ptr %486, i64 1
  %488 = load i16, ptr %487, align 2, !tbaa !139
  %489 = icmp eq i16 %488, 0
  br i1 %489, label %490, label %485, !prof !157, !llvm.loop !142

490:                                              ; preds = %485
  %491 = ptrtoint ptr %487 to i64
  %492 = add i64 %491, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString12E to i64)), i64 2)
  %493 = and i64 %492, 8589934590
  br label %494

494:                                              ; preds = %490, %478
  %495 = phi i64 [ %493, %490 ], [ 2, %478 ]
  %496 = load ptr, ptr %482, align 8, !tbaa !83
  %497 = getelementptr inbounds ptr, ptr %496, i64 2
  %498 = load ptr, ptr %497, align 8
  %499 = invoke noundef ptr %498(ptr noundef nonnull align 8 dereferenceable(8) %482, i64 noundef %495)
          to label %500 unwind label %1277, !prof !94

500:                                              ; preds = %494
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %499, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString12E, i64 %495, i1 false), !prof !158
  %501 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %481, i64 0, i32 1
  store ptr %499, ptr %501, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %481, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %480, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni26fgISO88591EncodingString12E, ptr noundef nonnull %481)
  %502 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %503 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %503, align 8, !tbaa !83
  %504 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %505 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, align 2, !tbaa !139
  %506 = icmp eq i16 %505, 0
  br i1 %506, label %516, label %507, !prof !81

507:                                              ; preds = %500, %507
  %508 = phi ptr [ %509, %507 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, %500 ]
  %509 = getelementptr inbounds i16, ptr %508, i64 1
  %510 = load i16, ptr %509, align 2, !tbaa !139
  %511 = icmp eq i16 %510, 0
  br i1 %511, label %512, label %507, !prof !156, !llvm.loop !142

512:                                              ; preds = %507
  %513 = ptrtoint ptr %509 to i64
  %514 = add i64 %513, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE to i64)), i64 2)
  %515 = and i64 %514, 8589934590
  br label %516

516:                                              ; preds = %512, %500
  %517 = phi i64 [ %515, %512 ], [ 2, %500 ]
  %518 = load ptr, ptr %504, align 8, !tbaa !83
  %519 = getelementptr inbounds ptr, ptr %518, i64 2
  %520 = load ptr, ptr %519, align 8
  %521 = invoke noundef ptr %520(ptr noundef nonnull align 8 dereferenceable(8) %504, i64 noundef %517)
          to label %522 unwind label %1279, !prof !94

522:                                              ; preds = %516
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %521, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, i64 %517, i1 false), !prof !143
  %523 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %503, i64 0, i32 1
  store ptr %521, ptr %523, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %503, align 8, !tbaa !83
  %524 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %503, i64 0, i32 1
  store i8 0, ptr %524, align 8, !tbaa !159
  %525 = load ptr, ptr %502, align 8, !tbaa !83
  %526 = getelementptr inbounds ptr, ptr %525, i64 2
  %527 = load ptr, ptr %526, align 8
  tail call void %527(ptr noundef nonnull align 8 dereferenceable(40) %502, ptr noundef nonnull %503, i32 noundef 6), !prof !146
  %528 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %529 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %529, align 8, !tbaa !83
  %530 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br i1 %506, label %540, label %531, !prof !81

531:                                              ; preds = %522, %531
  %532 = phi ptr [ %533, %531 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, %522 ]
  %533 = getelementptr inbounds i16, ptr %532, i64 1
  %534 = load i16, ptr %533, align 2, !tbaa !139
  %535 = icmp eq i16 %534, 0
  br i1 %535, label %536, label %531, !prof !156, !llvm.loop !142

536:                                              ; preds = %531
  %537 = ptrtoint ptr %533 to i64
  %538 = add i64 %537, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE to i64)), i64 2)
  %539 = and i64 %538, 8589934590
  br label %540

540:                                              ; preds = %536, %522
  %541 = phi i64 [ %539, %536 ], [ 2, %522 ]
  %542 = load ptr, ptr %530, align 8, !tbaa !83
  %543 = getelementptr inbounds ptr, ptr %542, i64 2
  %544 = load ptr, ptr %543, align 8
  %545 = invoke noundef ptr %544(ptr noundef nonnull align 8 dereferenceable(8) %530, i64 noundef %541)
          to label %546 unwind label %1281, !prof !94

546:                                              ; preds = %540
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %545, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, i64 %541, i1 false), !prof !143
  %547 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %529, i64 0, i32 1
  store ptr %545, ptr %547, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %529, align 8, !tbaa !83
  %548 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %529, i64 0, i32 1
  store i8 0, ptr %548, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %528, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, ptr noundef nonnull %529)
  %549 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %550 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %550, align 8, !tbaa !83
  %551 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %552 = load i16, ptr @_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E, align 2, !tbaa !139
  %553 = icmp eq i16 %552, 0
  br i1 %553, label %563, label %554, !prof !81

554:                                              ; preds = %546, %554
  %555 = phi ptr [ %556, %554 ], [ @_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E, %546 ]
  %556 = getelementptr inbounds i16, ptr %555, i64 1
  %557 = load i16, ptr %556, align 2, !tbaa !139
  %558 = icmp eq i16 %557, 0
  br i1 %558, label %559, label %554, !prof !95, !llvm.loop !142

559:                                              ; preds = %554
  %560 = ptrtoint ptr %556 to i64
  %561 = add i64 %560, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E to i64)), i64 2)
  %562 = and i64 %561, 8589934590
  br label %563

563:                                              ; preds = %559, %546
  %564 = phi i64 [ %562, %559 ], [ 2, %546 ]
  %565 = load ptr, ptr %551, align 8, !tbaa !83
  %566 = getelementptr inbounds ptr, ptr %565, i64 2
  %567 = load ptr, ptr %566, align 8
  %568 = invoke noundef ptr %567(ptr noundef nonnull align 8 dereferenceable(8) %551, i64 noundef %564)
          to label %569 unwind label %1283, !prof !94

569:                                              ; preds = %563
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %568, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E, i64 %564, i1 false), !prof !143
  %570 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %550, i64 0, i32 1
  store ptr %568, ptr %570, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %550, align 8, !tbaa !83
  %571 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %550, i64 0, i32 1
  store i8 0, ptr %571, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %549, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUTF16LEncodingString2E, ptr noundef nonnull %550)
  %572 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %573 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %573, align 8, !tbaa !83
  %574 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %575 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, align 2, !tbaa !139
  %576 = icmp eq i16 %575, 0
  br i1 %576, label %586, label %577, !prof !81

577:                                              ; preds = %569, %577
  %578 = phi ptr [ %579, %577 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, %569 ]
  %579 = getelementptr inbounds i16, ptr %578, i64 1
  %580 = load i16, ptr %579, align 2, !tbaa !139
  %581 = icmp eq i16 %580, 0
  br i1 %581, label %582, label %577, !prof !154, !llvm.loop !142

582:                                              ; preds = %577
  %583 = ptrtoint ptr %579 to i64
  %584 = add i64 %583, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE to i64)), i64 2)
  %585 = and i64 %584, 8589934590
  br label %586

586:                                              ; preds = %582, %569
  %587 = phi i64 [ %585, %582 ], [ 2, %569 ]
  %588 = load ptr, ptr %574, align 8, !tbaa !83
  %589 = getelementptr inbounds ptr, ptr %588, i64 2
  %590 = load ptr, ptr %589, align 8
  %591 = invoke noundef ptr %590(ptr noundef nonnull align 8 dereferenceable(8) %574, i64 noundef %587)
          to label %592 unwind label %1285, !prof !94

592:                                              ; preds = %586
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %591, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, i64 %587, i1 false), !prof !143
  %593 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %573, i64 0, i32 1
  store ptr %591, ptr %593, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %573, align 8, !tbaa !83
  %594 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %573, i64 0, i32 1
  store i8 0, ptr %594, align 8, !tbaa !161
  %595 = load ptr, ptr %572, align 8, !tbaa !83
  %596 = getelementptr inbounds ptr, ptr %595, i64 2
  %597 = load ptr, ptr %596, align 8
  tail call void %597(ptr noundef nonnull align 8 dereferenceable(40) %572, ptr noundef nonnull %573, i32 noundef 2), !prof !146
  %598 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %599 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %599, align 8, !tbaa !83
  %600 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br i1 %576, label %610, label %601, !prof !81

601:                                              ; preds = %592, %601
  %602 = phi ptr [ %603, %601 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, %592 ]
  %603 = getelementptr inbounds i16, ptr %602, i64 1
  %604 = load i16, ptr %603, align 2, !tbaa !139
  %605 = icmp eq i16 %604, 0
  br i1 %605, label %606, label %601, !prof !154, !llvm.loop !142

606:                                              ; preds = %601
  %607 = ptrtoint ptr %603 to i64
  %608 = add i64 %607, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE to i64)), i64 2)
  %609 = and i64 %608, 8589934590
  br label %610

610:                                              ; preds = %606, %592
  %611 = phi i64 [ %609, %606 ], [ 2, %592 ]
  %612 = load ptr, ptr %600, align 8, !tbaa !83
  %613 = getelementptr inbounds ptr, ptr %612, i64 2
  %614 = load ptr, ptr %613, align 8
  %615 = invoke noundef ptr %614(ptr noundef nonnull align 8 dereferenceable(8) %600, i64 noundef %611)
          to label %616 unwind label %1287, !prof !94

616:                                              ; preds = %610
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %615, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, i64 %611, i1 false), !prof !143
  %617 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %599, i64 0, i32 1
  store ptr %615, ptr %617, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %599, align 8, !tbaa !83
  %618 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %599, i64 0, i32 1
  store i8 0, ptr %618, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %598, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, ptr noundef nonnull %599)
  %619 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %620 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %620, align 8, !tbaa !83
  %621 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %622 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E, align 2, !tbaa !139
  %623 = icmp eq i16 %622, 0
  br i1 %623, label %633, label %624, !prof !81

624:                                              ; preds = %616, %624
  %625 = phi ptr [ %626, %624 ], [ @_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E, %616 ]
  %626 = getelementptr inbounds i16, ptr %625, i64 1
  %627 = load i16, ptr %626, align 2, !tbaa !139
  %628 = icmp eq i16 %627, 0
  br i1 %628, label %629, label %624, !prof !148, !llvm.loop !142

629:                                              ; preds = %624
  %630 = ptrtoint ptr %626 to i64
  %631 = add i64 %630, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E to i64)), i64 2)
  %632 = and i64 %631, 8589934590
  br label %633

633:                                              ; preds = %629, %616
  %634 = phi i64 [ %632, %629 ], [ 2, %616 ]
  %635 = load ptr, ptr %621, align 8, !tbaa !83
  %636 = getelementptr inbounds ptr, ptr %635, i64 2
  %637 = load ptr, ptr %636, align 8
  %638 = invoke noundef ptr %637(ptr noundef nonnull align 8 dereferenceable(8) %621, i64 noundef %634)
          to label %639 unwind label %1289, !prof !94

639:                                              ; preds = %633
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %638, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E, i64 %634, i1 false), !prof !149
  %640 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %620, i64 0, i32 1
  store ptr %638, ptr %640, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %620, align 8, !tbaa !83
  %641 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %620, i64 0, i32 1
  store i8 0, ptr %641, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %619, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUCS4LEncodingString2E, ptr noundef nonnull %620)
  %642 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %643 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %643, align 8, !tbaa !83
  %644 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %645 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, align 2, !tbaa !139
  %646 = icmp eq i16 %645, 0
  br i1 %646, label %656, label %647, !prof !81

647:                                              ; preds = %639, %647
  %648 = phi ptr [ %649, %647 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, %639 ]
  %649 = getelementptr inbounds i16, ptr %648, i64 1
  %650 = load i16, ptr %649, align 2, !tbaa !139
  %651 = icmp eq i16 %650, 0
  br i1 %651, label %652, label %647, !prof !156, !llvm.loop !142

652:                                              ; preds = %647
  %653 = ptrtoint ptr %649 to i64
  %654 = add i64 %653, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE to i64)), i64 2)
  %655 = and i64 %654, 8589934590
  br label %656

656:                                              ; preds = %652, %639
  %657 = phi i64 [ %655, %652 ], [ 2, %639 ]
  %658 = load ptr, ptr %644, align 8, !tbaa !83
  %659 = getelementptr inbounds ptr, ptr %658, i64 2
  %660 = load ptr, ptr %659, align 8
  %661 = invoke noundef ptr %660(ptr noundef nonnull align 8 dereferenceable(8) %644, i64 noundef %657)
          to label %662 unwind label %1291, !prof !94

662:                                              ; preds = %656
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %661, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, i64 %657, i1 false), !prof !143
  %663 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %643, i64 0, i32 1
  store ptr %661, ptr %663, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %643, align 8, !tbaa !83
  %664 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %643, i64 0, i32 1
  store i8 1, ptr %664, align 8, !tbaa !159
  %665 = load ptr, ptr %642, align 8, !tbaa !83
  %666 = getelementptr inbounds ptr, ptr %665, i64 2
  %667 = load ptr, ptr %666, align 8
  tail call void %667(ptr noundef nonnull align 8 dereferenceable(40) %642, ptr noundef nonnull %643, i32 noundef 5), !prof !146
  %668 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %669 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %669, align 8, !tbaa !83
  %670 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br i1 %646, label %680, label %671, !prof !81

671:                                              ; preds = %662, %671
  %672 = phi ptr [ %673, %671 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, %662 ]
  %673 = getelementptr inbounds i16, ptr %672, i64 1
  %674 = load i16, ptr %673, align 2, !tbaa !139
  %675 = icmp eq i16 %674, 0
  br i1 %675, label %676, label %671, !prof !156, !llvm.loop !142

676:                                              ; preds = %671
  %677 = ptrtoint ptr %673 to i64
  %678 = add i64 %677, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE to i64)), i64 2)
  %679 = and i64 %678, 8589934590
  br label %680

680:                                              ; preds = %676, %662
  %681 = phi i64 [ %679, %676 ], [ 2, %662 ]
  %682 = load ptr, ptr %670, align 8, !tbaa !83
  %683 = getelementptr inbounds ptr, ptr %682, i64 2
  %684 = load ptr, ptr %683, align 8
  %685 = invoke noundef ptr %684(ptr noundef nonnull align 8 dereferenceable(8) %670, i64 noundef %681)
          to label %686 unwind label %1293, !prof !94

686:                                              ; preds = %680
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %685, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, i64 %681, i1 false), !prof !143
  %687 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %669, i64 0, i32 1
  store ptr %685, ptr %687, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %669, align 8, !tbaa !83
  %688 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %669, i64 0, i32 1
  store i8 1, ptr %688, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %668, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, ptr noundef nonnull %669)
  %689 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %690 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %690, align 8, !tbaa !83
  %691 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %692 = load i16, ptr @_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E, align 2, !tbaa !139
  %693 = icmp eq i16 %692, 0
  br i1 %693, label %703, label %694, !prof !81

694:                                              ; preds = %686, %694
  %695 = phi ptr [ %696, %694 ], [ @_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E, %686 ]
  %696 = getelementptr inbounds i16, ptr %695, i64 1
  %697 = load i16, ptr %696, align 2, !tbaa !139
  %698 = icmp eq i16 %697, 0
  br i1 %698, label %699, label %694, !prof !95, !llvm.loop !142

699:                                              ; preds = %694
  %700 = ptrtoint ptr %696 to i64
  %701 = add i64 %700, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E to i64)), i64 2)
  %702 = and i64 %701, 8589934590
  br label %703

703:                                              ; preds = %699, %686
  %704 = phi i64 [ %702, %699 ], [ 2, %686 ]
  %705 = load ptr, ptr %691, align 8, !tbaa !83
  %706 = getelementptr inbounds ptr, ptr %705, i64 2
  %707 = load ptr, ptr %706, align 8
  %708 = invoke noundef ptr %707(ptr noundef nonnull align 8 dereferenceable(8) %691, i64 noundef %704)
          to label %709 unwind label %1295, !prof !94

709:                                              ; preds = %703
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %708, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E, i64 %704, i1 false), !prof !143
  %710 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %690, i64 0, i32 1
  store ptr %708, ptr %710, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %690, align 8, !tbaa !83
  %711 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %690, i64 0, i32 1
  store i8 1, ptr %711, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %689, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgUTF16BEncodingString2E, ptr noundef nonnull %690)
  %712 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %713 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %713, align 8, !tbaa !83
  %714 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %715 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, align 2, !tbaa !139
  %716 = icmp eq i16 %715, 0
  br i1 %716, label %726, label %717, !prof !81

717:                                              ; preds = %709, %717
  %718 = phi ptr [ %719, %717 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, %709 ]
  %719 = getelementptr inbounds i16, ptr %718, i64 1
  %720 = load i16, ptr %719, align 2, !tbaa !139
  %721 = icmp eq i16 %720, 0
  br i1 %721, label %722, label %717, !prof !154, !llvm.loop !142

722:                                              ; preds = %717
  %723 = ptrtoint ptr %719 to i64
  %724 = add i64 %723, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE to i64)), i64 2)
  %725 = and i64 %724, 8589934590
  br label %726

726:                                              ; preds = %722, %709
  %727 = phi i64 [ %725, %722 ], [ 2, %709 ]
  %728 = load ptr, ptr %714, align 8, !tbaa !83
  %729 = getelementptr inbounds ptr, ptr %728, i64 2
  %730 = load ptr, ptr %729, align 8
  %731 = invoke noundef ptr %730(ptr noundef nonnull align 8 dereferenceable(8) %714, i64 noundef %727)
          to label %732 unwind label %1297, !prof !94

732:                                              ; preds = %726
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %731, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, i64 %727, i1 false), !prof !143
  %733 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %713, i64 0, i32 1
  store ptr %731, ptr %733, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %713, align 8, !tbaa !83
  %734 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %713, i64 0, i32 1
  store i8 1, ptr %734, align 8, !tbaa !161
  %735 = load ptr, ptr %712, align 8, !tbaa !83
  %736 = getelementptr inbounds ptr, ptr %735, i64 2
  %737 = load ptr, ptr %736, align 8
  tail call void %737(ptr noundef nonnull align 8 dereferenceable(40) %712, ptr noundef nonnull %713, i32 noundef 1), !prof !146
  %738 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %739 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %739, align 8, !tbaa !83
  %740 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  br i1 %716, label %750, label %741, !prof !81

741:                                              ; preds = %732, %741
  %742 = phi ptr [ %743, %741 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, %732 ]
  %743 = getelementptr inbounds i16, ptr %742, i64 1
  %744 = load i16, ptr %743, align 2, !tbaa !139
  %745 = icmp eq i16 %744, 0
  br i1 %745, label %746, label %741, !prof !154, !llvm.loop !142

746:                                              ; preds = %741
  %747 = ptrtoint ptr %743 to i64
  %748 = add i64 %747, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE to i64)), i64 2)
  %749 = and i64 %748, 8589934590
  br label %750

750:                                              ; preds = %746, %732
  %751 = phi i64 [ %749, %746 ], [ 2, %732 ]
  %752 = load ptr, ptr %740, align 8, !tbaa !83
  %753 = getelementptr inbounds ptr, ptr %752, i64 2
  %754 = load ptr, ptr %753, align 8
  %755 = invoke noundef ptr %754(ptr noundef nonnull align 8 dereferenceable(8) %740, i64 noundef %751)
          to label %756 unwind label %1299, !prof !94

756:                                              ; preds = %750
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %755, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, i64 %751, i1 false), !prof !143
  %757 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %739, i64 0, i32 1
  store ptr %755, ptr %757, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %739, align 8, !tbaa !83
  %758 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %739, i64 0, i32 1
  store i8 1, ptr %758, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %738, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, ptr noundef nonnull %739)
  %759 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %760 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %760, align 8, !tbaa !83
  %761 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %762 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E, align 2, !tbaa !139
  %763 = icmp eq i16 %762, 0
  br i1 %763, label %773, label %764, !prof !81

764:                                              ; preds = %756, %764
  %765 = phi ptr [ %766, %764 ], [ @_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E, %756 ]
  %766 = getelementptr inbounds i16, ptr %765, i64 1
  %767 = load i16, ptr %766, align 2, !tbaa !139
  %768 = icmp eq i16 %767, 0
  br i1 %768, label %769, label %764, !prof !148, !llvm.loop !142

769:                                              ; preds = %764
  %770 = ptrtoint ptr %766 to i64
  %771 = add i64 %770, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E to i64)), i64 2)
  %772 = and i64 %771, 8589934590
  br label %773

773:                                              ; preds = %769, %756
  %774 = phi i64 [ %772, %769 ], [ 2, %756 ]
  %775 = load ptr, ptr %761, align 8, !tbaa !83
  %776 = getelementptr inbounds ptr, ptr %775, i64 2
  %777 = load ptr, ptr %776, align 8
  %778 = invoke noundef ptr %777(ptr noundef nonnull align 8 dereferenceable(8) %761, i64 noundef %774)
          to label %779 unwind label %1301, !prof !94

779:                                              ; preds = %773
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %778, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E, i64 %774, i1 false), !prof !149
  %780 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %760, i64 0, i32 1
  store ptr %778, ptr %780, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %760, align 8, !tbaa !83
  %781 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %760, i64 0, i32 1
  store i8 1, ptr %781, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %759, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUCS4BEncodingString2E, ptr noundef nonnull %760)
  %782 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %783 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %783, align 8, !tbaa !83
  %784 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %785 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE, align 2, !tbaa !139
  %786 = icmp eq i16 %785, 0
  br i1 %786, label %796, label %787, !prof !81

787:                                              ; preds = %779, %787
  %788 = phi ptr [ %789, %787 ], [ @_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE, %779 ]
  %789 = getelementptr inbounds i16, ptr %788, i64 1
  %790 = load i16, ptr %789, align 2, !tbaa !139
  %791 = icmp eq i16 %790, 0
  br i1 %791, label %792, label %787, !prof !155, !llvm.loop !142

792:                                              ; preds = %787
  %793 = ptrtoint ptr %789 to i64
  %794 = add i64 %793, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE to i64)), i64 2)
  %795 = and i64 %794, 8589934590
  br label %796

796:                                              ; preds = %792, %779
  %797 = phi i64 [ %795, %792 ], [ 2, %779 ]
  %798 = load ptr, ptr %784, align 8, !tbaa !83
  %799 = getelementptr inbounds ptr, ptr %798, i64 2
  %800 = load ptr, ptr %799, align 8
  %801 = invoke noundef ptr %800(ptr noundef nonnull align 8 dereferenceable(8) %784, i64 noundef %797)
          to label %802 unwind label %1303, !prof !94

802:                                              ; preds = %796
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %801, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE, i64 %797, i1 false), !prof !151
  %803 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %783, i64 0, i32 1
  store ptr %801, ptr %803, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %783, align 8, !tbaa !83
  %804 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %783, i64 0, i32 1
  store i8 0, ptr %804, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %782, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE, ptr noundef nonnull %783)
  %805 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %806 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %806, align 8, !tbaa !83
  %807 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %808 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E, align 2, !tbaa !139
  %809 = icmp eq i16 %808, 0
  br i1 %809, label %819, label %810, !prof !81

810:                                              ; preds = %802, %810
  %811 = phi ptr [ %812, %810 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E, %802 ]
  %812 = getelementptr inbounds i16, ptr %811, i64 1
  %813 = load i16, ptr %812, align 2, !tbaa !139
  %814 = icmp eq i16 %813, 0
  br i1 %814, label %815, label %810, !prof !152, !llvm.loop !142

815:                                              ; preds = %810
  %816 = ptrtoint ptr %812 to i64
  %817 = add i64 %816, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E to i64)), i64 2)
  %818 = and i64 %817, 8589934590
  br label %819

819:                                              ; preds = %815, %802
  %820 = phi i64 [ %818, %815 ], [ 2, %802 ]
  %821 = load ptr, ptr %807, align 8, !tbaa !83
  %822 = getelementptr inbounds ptr, ptr %821, i64 2
  %823 = load ptr, ptr %822, align 8
  %824 = invoke noundef ptr %823(ptr noundef nonnull align 8 dereferenceable(8) %807, i64 noundef %820)
          to label %825 unwind label %1305, !prof !94

825:                                              ; preds = %819
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %824, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E, i64 %820, i1 false), !prof !151
  %826 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %806, i64 0, i32 1
  store ptr %824, ptr %826, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %806, align 8, !tbaa !83
  %827 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %806, i64 0, i32 1
  store i8 0, ptr %827, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %805, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E, ptr noundef nonnull %806)
  %828 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %829 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %829, align 8, !tbaa !83
  %830 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %831 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E, align 2, !tbaa !139
  %832 = icmp eq i16 %831, 0
  br i1 %832, label %842, label %833, !prof !81

833:                                              ; preds = %825, %833
  %834 = phi ptr [ %835, %833 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E, %825 ]
  %835 = getelementptr inbounds i16, ptr %834, i64 1
  %836 = load i16, ptr %835, align 2, !tbaa !139
  %837 = icmp eq i16 %836, 0
  br i1 %837, label %838, label %833, !prof !148, !llvm.loop !142

838:                                              ; preds = %833
  %839 = ptrtoint ptr %835 to i64
  %840 = add i64 %839, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E to i64)), i64 2)
  %841 = and i64 %840, 8589934590
  br label %842

842:                                              ; preds = %838, %825
  %843 = phi i64 [ %841, %838 ], [ 2, %825 ]
  %844 = load ptr, ptr %830, align 8, !tbaa !83
  %845 = getelementptr inbounds ptr, ptr %844, i64 2
  %846 = load ptr, ptr %845, align 8
  %847 = invoke noundef ptr %846(ptr noundef nonnull align 8 dereferenceable(8) %830, i64 noundef %843)
          to label %848 unwind label %1307, !prof !94

848:                                              ; preds = %842
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %847, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E, i64 %843, i1 false), !prof !149
  %849 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %829, i64 0, i32 1
  store ptr %847, ptr %849, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %829, align 8, !tbaa !83
  %850 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %829, i64 0, i32 1
  store i8 0, ptr %850, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %828, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E, ptr noundef nonnull %829)
  %851 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %852 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %852, align 8, !tbaa !83
  %853 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %854 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E, align 2, !tbaa !139
  %855 = icmp eq i16 %854, 0
  br i1 %855, label %865, label %856, !prof !81

856:                                              ; preds = %848, %856
  %857 = phi ptr [ %858, %856 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E, %848 ]
  %858 = getelementptr inbounds i16, ptr %857, i64 1
  %859 = load i16, ptr %858, align 2, !tbaa !139
  %860 = icmp eq i16 %859, 0
  br i1 %860, label %861, label %856, !prof !95, !llvm.loop !142

861:                                              ; preds = %856
  %862 = ptrtoint ptr %858 to i64
  %863 = add i64 %862, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E to i64)), i64 2)
  %864 = and i64 %863, 8589934590
  br label %865

865:                                              ; preds = %861, %848
  %866 = phi i64 [ %864, %861 ], [ 2, %848 ]
  %867 = load ptr, ptr %853, align 8, !tbaa !83
  %868 = getelementptr inbounds ptr, ptr %867, i64 2
  %869 = load ptr, ptr %868, align 8
  %870 = invoke noundef ptr %869(ptr noundef nonnull align 8 dereferenceable(8) %853, i64 noundef %866)
          to label %871 unwind label %1309, !prof !94

871:                                              ; preds = %865
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %870, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E, i64 %866, i1 false), !prof !143
  %872 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %852, i64 0, i32 1
  store ptr %870, ptr %872, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %852, align 8, !tbaa !83
  %873 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %852, i64 0, i32 1
  store i8 0, ptr %873, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %851, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E, ptr noundef nonnull %852)
  %874 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %875 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %875, align 8, !tbaa !83
  %876 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %877 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E, align 2, !tbaa !139
  %878 = icmp eq i16 %877, 0
  br i1 %878, label %888, label %879, !prof !81

879:                                              ; preds = %871, %879
  %880 = phi ptr [ %881, %879 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E, %871 ]
  %881 = getelementptr inbounds i16, ptr %880, i64 1
  %882 = load i16, ptr %881, align 2, !tbaa !139
  %883 = icmp eq i16 %882, 0
  br i1 %883, label %884, label %879, !prof !150, !llvm.loop !142

884:                                              ; preds = %879
  %885 = ptrtoint ptr %881 to i64
  %886 = add i64 %885, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E to i64)), i64 2)
  %887 = and i64 %886, 8589934590
  br label %888

888:                                              ; preds = %884, %871
  %889 = phi i64 [ %887, %884 ], [ 2, %871 ]
  %890 = load ptr, ptr %876, align 8, !tbaa !83
  %891 = getelementptr inbounds ptr, ptr %890, i64 2
  %892 = load ptr, ptr %891, align 8
  %893 = invoke noundef ptr %892(ptr noundef nonnull align 8 dereferenceable(8) %876, i64 noundef %889)
          to label %894 unwind label %1311, !prof !94

894:                                              ; preds = %888
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %893, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E, i64 %889, i1 false), !prof !151
  %895 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %875, i64 0, i32 1
  store ptr %893, ptr %895, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %875, align 8, !tbaa !83
  %896 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %875, i64 0, i32 1
  store i8 0, ptr %896, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %874, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E, ptr noundef nonnull %875)
  %897 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %898 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %898, align 8, !tbaa !83
  %899 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %900 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E, align 2, !tbaa !139
  %901 = icmp eq i16 %900, 0
  br i1 %901, label %911, label %902, !prof !81

902:                                              ; preds = %894, %902
  %903 = phi ptr [ %904, %902 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E, %894 ]
  %904 = getelementptr inbounds i16, ptr %903, i64 1
  %905 = load i16, ptr %904, align 2, !tbaa !139
  %906 = icmp eq i16 %905, 0
  br i1 %906, label %907, label %902, !prof !150, !llvm.loop !142

907:                                              ; preds = %902
  %908 = ptrtoint ptr %904 to i64
  %909 = add i64 %908, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E to i64)), i64 2)
  %910 = and i64 %909, 8589934590
  br label %911

911:                                              ; preds = %907, %894
  %912 = phi i64 [ %910, %907 ], [ 2, %894 ]
  %913 = load ptr, ptr %899, align 8, !tbaa !83
  %914 = getelementptr inbounds ptr, ptr %913, i64 2
  %915 = load ptr, ptr %914, align 8
  %916 = invoke noundef ptr %915(ptr noundef nonnull align 8 dereferenceable(8) %899, i64 noundef %912)
          to label %917 unwind label %1313, !prof !94

917:                                              ; preds = %911
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %916, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E, i64 %912, i1 false), !prof !151
  %918 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %898, i64 0, i32 1
  store ptr %916, ptr %918, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %898, align 8, !tbaa !83
  %919 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %898, i64 0, i32 1
  store i8 0, ptr %919, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %897, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E, ptr noundef nonnull %898)
  %920 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %921 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %921, align 8, !tbaa !83
  %922 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %923 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E, align 2, !tbaa !139
  %924 = icmp eq i16 %923, 0
  br i1 %924, label %934, label %925, !prof !81

925:                                              ; preds = %917, %925
  %926 = phi ptr [ %927, %925 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E, %917 ]
  %927 = getelementptr inbounds i16, ptr %926, i64 1
  %928 = load i16, ptr %927, align 2, !tbaa !139
  %929 = icmp eq i16 %928, 0
  br i1 %929, label %930, label %925, !prof !163, !llvm.loop !142

930:                                              ; preds = %925
  %931 = ptrtoint ptr %927 to i64
  %932 = add i64 %931, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E to i64)), i64 2)
  %933 = and i64 %932, 8589934590
  br label %934

934:                                              ; preds = %930, %917
  %935 = phi i64 [ %933, %930 ], [ 2, %917 ]
  %936 = load ptr, ptr %922, align 8, !tbaa !83
  %937 = getelementptr inbounds ptr, ptr %936, i64 2
  %938 = load ptr, ptr %937, align 8
  %939 = invoke noundef ptr %938(ptr noundef nonnull align 8 dereferenceable(8) %922, i64 noundef %935)
          to label %940 unwind label %1315, !prof !94

940:                                              ; preds = %934
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %939, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E, i64 %935, i1 false), !prof !164
  %941 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %921, i64 0, i32 1
  store ptr %939, ptr %941, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %921, align 8, !tbaa !83
  %942 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %921, i64 0, i32 1
  store i8 0, ptr %942, align 8, !tbaa !159
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %920, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E, ptr noundef nonnull %921)
  %943 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %944 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %944, align 8, !tbaa !83
  %945 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %946 = load i16, ptr @_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE, align 2, !tbaa !139
  %947 = icmp eq i16 %946, 0
  br i1 %947, label %957, label %948, !prof !81

948:                                              ; preds = %940, %948
  %949 = phi ptr [ %950, %948 ], [ @_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE, %940 ]
  %950 = getelementptr inbounds i16, ptr %949, i64 1
  %951 = load i16, ptr %950, align 2, !tbaa !139
  %952 = icmp eq i16 %951, 0
  br i1 %952, label %953, label %948, !prof !152, !llvm.loop !142

953:                                              ; preds = %948
  %954 = ptrtoint ptr %950 to i64
  %955 = add i64 %954, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE to i64)), i64 2)
  %956 = and i64 %955, 8589934590
  br label %957

957:                                              ; preds = %953, %940
  %958 = phi i64 [ %956, %953 ], [ 2, %940 ]
  %959 = load ptr, ptr %945, align 8, !tbaa !83
  %960 = getelementptr inbounds ptr, ptr %959, i64 2
  %961 = load ptr, ptr %960, align 8
  %962 = invoke noundef ptr %961(ptr noundef nonnull align 8 dereferenceable(8) %945, i64 noundef %958)
          to label %963 unwind label %1317, !prof !94

963:                                              ; preds = %957
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %962, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE, i64 %958, i1 false), !prof !151
  %964 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %944, i64 0, i32 1
  store ptr %962, ptr %964, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %944, align 8, !tbaa !83
  %965 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %944, i64 0, i32 1
  store i8 0, ptr %965, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %943, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE, ptr noundef nonnull %944)
  %966 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %967 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %967, align 8, !tbaa !83
  %968 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %969 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E, align 2, !tbaa !139
  %970 = icmp eq i16 %969, 0
  br i1 %970, label %980, label %971, !prof !81

971:                                              ; preds = %963, %971
  %972 = phi ptr [ %973, %971 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E, %963 ]
  %973 = getelementptr inbounds i16, ptr %972, i64 1
  %974 = load i16, ptr %973, align 2, !tbaa !139
  %975 = icmp eq i16 %974, 0
  br i1 %975, label %976, label %971, !prof !150, !llvm.loop !142

976:                                              ; preds = %971
  %977 = ptrtoint ptr %973 to i64
  %978 = add i64 %977, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E to i64)), i64 2)
  %979 = and i64 %978, 8589934590
  br label %980

980:                                              ; preds = %976, %963
  %981 = phi i64 [ %979, %976 ], [ 2, %963 ]
  %982 = load ptr, ptr %968, align 8, !tbaa !83
  %983 = getelementptr inbounds ptr, ptr %982, i64 2
  %984 = load ptr, ptr %983, align 8
  %985 = invoke noundef ptr %984(ptr noundef nonnull align 8 dereferenceable(8) %968, i64 noundef %981)
          to label %986 unwind label %1319, !prof !94

986:                                              ; preds = %980
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %985, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E, i64 %981, i1 false), !prof !151
  %987 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %967, i64 0, i32 1
  store ptr %985, ptr %987, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %967, align 8, !tbaa !83
  %988 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %967, i64 0, i32 1
  store i8 0, ptr %988, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %966, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E, ptr noundef nonnull %967)
  %989 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %990 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 24)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %990, align 8, !tbaa !83
  %991 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %992 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E, align 2, !tbaa !139
  %993 = icmp eq i16 %992, 0
  br i1 %993, label %1003, label %994, !prof !81

994:                                              ; preds = %986, %994
  %995 = phi ptr [ %996, %994 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E, %986 ]
  %996 = getelementptr inbounds i16, ptr %995, i64 1
  %997 = load i16, ptr %996, align 2, !tbaa !139
  %998 = icmp eq i16 %997, 0
  br i1 %998, label %999, label %994, !prof !150, !llvm.loop !142

999:                                              ; preds = %994
  %1000 = ptrtoint ptr %996 to i64
  %1001 = add i64 %1000, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E to i64)), i64 2)
  %1002 = and i64 %1001, 8589934590
  br label %1003

1003:                                             ; preds = %999, %986
  %1004 = phi i64 [ %1002, %999 ], [ 2, %986 ]
  %1005 = load ptr, ptr %991, align 8, !tbaa !83
  %1006 = getelementptr inbounds ptr, ptr %1005, i64 2
  %1007 = load ptr, ptr %1006, align 8
  %1008 = invoke noundef ptr %1007(ptr noundef nonnull align 8 dereferenceable(8) %991, i64 noundef %1004)
          to label %1009 unwind label %1321, !prof !94

1009:                                             ; preds = %1003
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1008, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E, i64 %1004, i1 false), !prof !151
  %1010 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %990, i64 0, i32 1
  store ptr %1008, ptr %1010, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %990, align 8, !tbaa !83
  %1011 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %990, i64 0, i32 1
  store i8 0, ptr %1011, align 8, !tbaa !161
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %989, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E, ptr noundef nonnull %990)
  %1012 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService19gMappingsRecognizerE, align 8, !tbaa !77
  %1013 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1013, align 8, !tbaa !83
  %1014 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1015 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgEBCDICEncodingStringE, align 2, !tbaa !139
  %1016 = icmp eq i16 %1015, 0
  br i1 %1016, label %1026, label %1017, !prof !81

1017:                                             ; preds = %1009, %1017
  %1018 = phi ptr [ %1019, %1017 ], [ @_ZN11xercesc_2_76XMLUni22fgEBCDICEncodingStringE, %1009 ]
  %1019 = getelementptr inbounds i16, ptr %1018, i64 1
  %1020 = load i16, ptr %1019, align 2, !tbaa !139
  %1021 = icmp eq i16 %1020, 0
  br i1 %1021, label %1022, label %1017, !prof !155, !llvm.loop !142

1022:                                             ; preds = %1017
  %1023 = ptrtoint ptr %1019 to i64
  %1024 = add i64 %1023, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgEBCDICEncodingStringE to i64)), i64 2)
  %1025 = and i64 %1024, 8589934590
  br label %1026

1026:                                             ; preds = %1022, %1009
  %1027 = phi i64 [ %1025, %1022 ], [ 2, %1009 ]
  %1028 = load ptr, ptr %1014, align 8, !tbaa !83
  %1029 = getelementptr inbounds ptr, ptr %1028, i64 2
  %1030 = load ptr, ptr %1029, align 8
  %1031 = invoke noundef ptr %1030(ptr noundef nonnull align 8 dereferenceable(8) %1014, i64 noundef %1027)
          to label %1032 unwind label %1323, !prof !94

1032:                                             ; preds = %1026
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1031, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgEBCDICEncodingStringE, i64 %1027, i1 false), !prof !151
  %1033 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1013, i64 0, i32 1
  store ptr %1031, ptr %1033, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1013, align 8, !tbaa !83
  %1034 = load ptr, ptr %1012, align 8, !tbaa !83
  %1035 = getelementptr inbounds ptr, ptr %1034, i64 2
  %1036 = load ptr, ptr %1035, align 8
  tail call void %1036(ptr noundef nonnull align 8 dereferenceable(40) %1012, ptr noundef nonnull %1013, i32 noundef 0), !prof !146
  %1037 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1038 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1038, align 8, !tbaa !83
  %1039 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1040 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgIBM037EncodingStringE, align 2, !tbaa !139
  %1041 = icmp eq i16 %1040, 0
  br i1 %1041, label %1051, label %1042, !prof !81

1042:                                             ; preds = %1032, %1042
  %1043 = phi ptr [ %1044, %1042 ], [ @_ZN11xercesc_2_76XMLUni22fgIBM037EncodingStringE, %1032 ]
  %1044 = getelementptr inbounds i16, ptr %1043, i64 1
  %1045 = load i16, ptr %1044, align 2, !tbaa !139
  %1046 = icmp eq i16 %1045, 0
  br i1 %1046, label %1047, label %1042, !prof !141, !llvm.loop !142

1047:                                             ; preds = %1042
  %1048 = ptrtoint ptr %1044 to i64
  %1049 = add i64 %1048, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgIBM037EncodingStringE to i64)), i64 2)
  %1050 = and i64 %1049, 8589934590
  br label %1051

1051:                                             ; preds = %1047, %1032
  %1052 = phi i64 [ %1050, %1047 ], [ 2, %1032 ]
  %1053 = load ptr, ptr %1039, align 8, !tbaa !83
  %1054 = getelementptr inbounds ptr, ptr %1053, i64 2
  %1055 = load ptr, ptr %1054, align 8
  %1056 = invoke noundef ptr %1055(ptr noundef nonnull align 8 dereferenceable(8) %1039, i64 noundef %1052)
          to label %1057 unwind label %1325, !prof !94

1057:                                             ; preds = %1051
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1056, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgIBM037EncodingStringE, i64 %1052, i1 false), !prof !143
  %1058 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1038, i64 0, i32 1
  store ptr %1056, ptr %1058, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1038, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1037, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgIBM037EncodingStringE, ptr noundef nonnull %1038)
  %1059 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1060 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1060, align 8, !tbaa !83
  %1061 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1062 = load i16, ptr @_ZN11xercesc_2_76XMLUni23fgIBM037EncodingString2E, align 2, !tbaa !139
  %1063 = icmp eq i16 %1062, 0
  br i1 %1063, label %1073, label %1064, !prof !81

1064:                                             ; preds = %1057, %1064
  %1065 = phi ptr [ %1066, %1064 ], [ @_ZN11xercesc_2_76XMLUni23fgIBM037EncodingString2E, %1057 ]
  %1066 = getelementptr inbounds i16, ptr %1065, i64 1
  %1067 = load i16, ptr %1066, align 2, !tbaa !139
  %1068 = icmp eq i16 %1067, 0
  br i1 %1068, label %1069, label %1064, !prof !155, !llvm.loop !142

1069:                                             ; preds = %1064
  %1070 = ptrtoint ptr %1066 to i64
  %1071 = add i64 %1070, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgIBM037EncodingString2E to i64)), i64 2)
  %1072 = and i64 %1071, 8589934590
  br label %1073

1073:                                             ; preds = %1069, %1057
  %1074 = phi i64 [ %1072, %1069 ], [ 2, %1057 ]
  %1075 = load ptr, ptr %1061, align 8, !tbaa !83
  %1076 = getelementptr inbounds ptr, ptr %1075, i64 2
  %1077 = load ptr, ptr %1076, align 8
  %1078 = invoke noundef ptr %1077(ptr noundef nonnull align 8 dereferenceable(8) %1061, i64 noundef %1074)
          to label %1079 unwind label %1327, !prof !94

1079:                                             ; preds = %1073
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1078, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgIBM037EncodingString2E, i64 %1074, i1 false), !prof !151
  %1080 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1060, i64 0, i32 1
  store ptr %1078, ptr %1080, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1060, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1059, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgIBM037EncodingString2E, ptr noundef nonnull %1060)
  %1081 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1082 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1082, align 8, !tbaa !83
  %1083 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1084 = load i16, ptr @_ZN11xercesc_2_76XMLUni23fgIBM1047EncodingStringE, align 2, !tbaa !139
  %1085 = icmp eq i16 %1084, 0
  br i1 %1085, label %1095, label %1086, !prof !81

1086:                                             ; preds = %1079, %1086
  %1087 = phi ptr [ %1088, %1086 ], [ @_ZN11xercesc_2_76XMLUni23fgIBM1047EncodingStringE, %1079 ]
  %1088 = getelementptr inbounds i16, ptr %1087, i64 1
  %1089 = load i16, ptr %1088, align 2, !tbaa !139
  %1090 = icmp eq i16 %1089, 0
  br i1 %1090, label %1091, label %1086, !prof !148, !llvm.loop !142

1091:                                             ; preds = %1086
  %1092 = ptrtoint ptr %1088 to i64
  %1093 = add i64 %1092, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgIBM1047EncodingStringE to i64)), i64 2)
  %1094 = and i64 %1093, 8589934590
  br label %1095

1095:                                             ; preds = %1091, %1079
  %1096 = phi i64 [ %1094, %1091 ], [ 2, %1079 ]
  %1097 = load ptr, ptr %1083, align 8, !tbaa !83
  %1098 = getelementptr inbounds ptr, ptr %1097, i64 2
  %1099 = load ptr, ptr %1098, align 8
  %1100 = invoke noundef ptr %1099(ptr noundef nonnull align 8 dereferenceable(8) %1083, i64 noundef %1096)
          to label %1101 unwind label %1329, !prof !94

1101:                                             ; preds = %1095
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1100, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgIBM1047EncodingStringE, i64 %1096, i1 false), !prof !149
  %1102 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1082, i64 0, i32 1
  store ptr %1100, ptr %1102, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1082, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1081, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgIBM1047EncodingStringE, ptr noundef nonnull %1082)
  %1103 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1104 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1104, align 8, !tbaa !83
  %1105 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1106 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgIBM1047EncodingString2E, align 2, !tbaa !139
  %1107 = icmp eq i16 %1106, 0
  br i1 %1107, label %1117, label %1108, !prof !81

1108:                                             ; preds = %1101, %1108
  %1109 = phi ptr [ %1110, %1108 ], [ @_ZN11xercesc_2_76XMLUni24fgIBM1047EncodingString2E, %1101 ]
  %1110 = getelementptr inbounds i16, ptr %1109, i64 1
  %1111 = load i16, ptr %1110, align 2, !tbaa !139
  %1112 = icmp eq i16 %1111, 0
  br i1 %1112, label %1113, label %1108, !prof !95, !llvm.loop !142

1113:                                             ; preds = %1108
  %1114 = ptrtoint ptr %1110 to i64
  %1115 = add i64 %1114, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgIBM1047EncodingString2E to i64)), i64 2)
  %1116 = and i64 %1115, 8589934590
  br label %1117

1117:                                             ; preds = %1113, %1101
  %1118 = phi i64 [ %1116, %1113 ], [ 2, %1101 ]
  %1119 = load ptr, ptr %1105, align 8, !tbaa !83
  %1120 = getelementptr inbounds ptr, ptr %1119, i64 2
  %1121 = load ptr, ptr %1120, align 8
  %1122 = invoke noundef ptr %1121(ptr noundef nonnull align 8 dereferenceable(8) %1105, i64 noundef %1118)
          to label %1123 unwind label %1331, !prof !94

1123:                                             ; preds = %1117
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1122, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgIBM1047EncodingString2E, i64 %1118, i1 false), !prof !143
  %1124 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1104, i64 0, i32 1
  store ptr %1122, ptr %1124, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1104, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1103, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgIBM1047EncodingString2E, ptr noundef nonnull %1104)
  %1125 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1126 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1126, align 8, !tbaa !83
  %1127 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1128 = load i16, ptr @_ZN11xercesc_2_76XMLUni23fgIBM1140EncodingStringE, align 2, !tbaa !139
  %1129 = icmp eq i16 %1128, 0
  br i1 %1129, label %1139, label %1130, !prof !81

1130:                                             ; preds = %1123, %1130
  %1131 = phi ptr [ %1132, %1130 ], [ @_ZN11xercesc_2_76XMLUni23fgIBM1140EncodingStringE, %1123 ]
  %1132 = getelementptr inbounds i16, ptr %1131, i64 1
  %1133 = load i16, ptr %1132, align 2, !tbaa !139
  %1134 = icmp eq i16 %1133, 0
  br i1 %1134, label %1135, label %1130, !prof !148, !llvm.loop !142

1135:                                             ; preds = %1130
  %1136 = ptrtoint ptr %1132 to i64
  %1137 = add i64 %1136, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgIBM1140EncodingStringE to i64)), i64 2)
  %1138 = and i64 %1137, 8589934590
  br label %1139

1139:                                             ; preds = %1135, %1123
  %1140 = phi i64 [ %1138, %1135 ], [ 2, %1123 ]
  %1141 = load ptr, ptr %1127, align 8, !tbaa !83
  %1142 = getelementptr inbounds ptr, ptr %1141, i64 2
  %1143 = load ptr, ptr %1142, align 8
  %1144 = invoke noundef ptr %1143(ptr noundef nonnull align 8 dereferenceable(8) %1127, i64 noundef %1140)
          to label %1145 unwind label %1333, !prof !94

1145:                                             ; preds = %1139
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1144, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgIBM1140EncodingStringE, i64 %1140, i1 false), !prof !149
  %1146 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1126, i64 0, i32 1
  store ptr %1144, ptr %1146, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1126, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1125, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgIBM1140EncodingStringE, ptr noundef nonnull %1126)
  %1147 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1148 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1148, align 8, !tbaa !83
  %1149 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1150 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString2E, align 2, !tbaa !139
  %1151 = icmp eq i16 %1150, 0
  br i1 %1151, label %1161, label %1152, !prof !81

1152:                                             ; preds = %1145, %1152
  %1153 = phi ptr [ %1154, %1152 ], [ @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString2E, %1145 ]
  %1154 = getelementptr inbounds i16, ptr %1153, i64 1
  %1155 = load i16, ptr %1154, align 2, !tbaa !139
  %1156 = icmp eq i16 %1155, 0
  br i1 %1156, label %1157, label %1152, !prof !95, !llvm.loop !142

1157:                                             ; preds = %1152
  %1158 = ptrtoint ptr %1154 to i64
  %1159 = add i64 %1158, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString2E to i64)), i64 2)
  %1160 = and i64 %1159, 8589934590
  br label %1161

1161:                                             ; preds = %1157, %1145
  %1162 = phi i64 [ %1160, %1157 ], [ 2, %1145 ]
  %1163 = load ptr, ptr %1149, align 8, !tbaa !83
  %1164 = getelementptr inbounds ptr, ptr %1163, i64 2
  %1165 = load ptr, ptr %1164, align 8
  %1166 = invoke noundef ptr %1165(ptr noundef nonnull align 8 dereferenceable(8) %1149, i64 noundef %1162)
          to label %1167 unwind label %1335, !prof !94

1167:                                             ; preds = %1161
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1166, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString2E, i64 %1162, i1 false), !prof !143
  %1168 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1148, i64 0, i32 1
  store ptr %1166, ptr %1168, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1148, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1147, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString2E, ptr noundef nonnull %1148)
  %1169 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1170 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1170, align 8, !tbaa !83
  %1171 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1172 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString3E, align 2, !tbaa !139
  %1173 = icmp eq i16 %1172, 0
  br i1 %1173, label %1183, label %1174, !prof !81

1174:                                             ; preds = %1167, %1174
  %1175 = phi ptr [ %1176, %1174 ], [ @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString3E, %1167 ]
  %1176 = getelementptr inbounds i16, ptr %1175, i64 1
  %1177 = load i16, ptr %1176, align 2, !tbaa !139
  %1178 = icmp eq i16 %1177, 0
  br i1 %1178, label %1179, label %1174, !prof !154, !llvm.loop !142

1179:                                             ; preds = %1174
  %1180 = ptrtoint ptr %1176 to i64
  %1181 = add i64 %1180, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString3E to i64)), i64 2)
  %1182 = and i64 %1181, 8589934590
  br label %1183

1183:                                             ; preds = %1179, %1167
  %1184 = phi i64 [ %1182, %1179 ], [ 2, %1167 ]
  %1185 = load ptr, ptr %1171, align 8, !tbaa !83
  %1186 = getelementptr inbounds ptr, ptr %1185, i64 2
  %1187 = load ptr, ptr %1186, align 8
  %1188 = invoke noundef ptr %1187(ptr noundef nonnull align 8 dereferenceable(8) %1171, i64 noundef %1184)
          to label %1189 unwind label %1337, !prof !94

1189:                                             ; preds = %1183
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1188, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString3E, i64 %1184, i1 false), !prof !143
  %1190 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1170, i64 0, i32 1
  store ptr %1188, ptr %1190, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1170, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1169, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString3E, ptr noundef nonnull %1170)
  %1191 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1192 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1192, align 8, !tbaa !83
  %1193 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1194 = load i16, ptr @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString4E, align 2, !tbaa !139
  %1195 = icmp eq i16 %1194, 0
  br i1 %1195, label %1205, label %1196, !prof !81

1196:                                             ; preds = %1189, %1196
  %1197 = phi ptr [ %1198, %1196 ], [ @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString4E, %1189 ]
  %1198 = getelementptr inbounds i16, ptr %1197, i64 1
  %1199 = load i16, ptr %1198, align 2, !tbaa !139
  %1200 = icmp eq i16 %1199, 0
  br i1 %1200, label %1201, label %1196, !prof !148, !llvm.loop !142

1201:                                             ; preds = %1196
  %1202 = ptrtoint ptr %1198 to i64
  %1203 = add i64 %1202, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString4E to i64)), i64 2)
  %1204 = and i64 %1203, 8589934590
  br label %1205

1205:                                             ; preds = %1201, %1189
  %1206 = phi i64 [ %1204, %1201 ], [ 2, %1189 ]
  %1207 = load ptr, ptr %1193, align 8, !tbaa !83
  %1208 = getelementptr inbounds ptr, ptr %1207, i64 2
  %1209 = load ptr, ptr %1208, align 8
  %1210 = invoke noundef ptr %1209(ptr noundef nonnull align 8 dereferenceable(8) %1193, i64 noundef %1206)
          to label %1211 unwind label %1339, !prof !94

1211:                                             ; preds = %1205
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1210, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString4E, i64 %1206, i1 false), !prof !149
  %1212 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1192, i64 0, i32 1
  store ptr %1210, ptr %1212, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1192, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1191, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni24fgIBM1140EncodingString4E, ptr noundef nonnull %1192)
  %1213 = load ptr, ptr @_ZN11xercesc_2_715XMLTransService9gMappingsE, align 8, !tbaa !77
  %1214 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEm(i64 noundef 16)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %1214, align 8, !tbaa !83
  %1215 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %1216 = load i16, ptr @_ZN11xercesc_2_76XMLUni23fgWin1252EncodingStringE, align 2, !tbaa !139
  %1217 = icmp eq i16 %1216, 0
  br i1 %1217, label %1227, label %1218, !prof !81

1218:                                             ; preds = %1211, %1218
  %1219 = phi ptr [ %1220, %1218 ], [ @_ZN11xercesc_2_76XMLUni23fgWin1252EncodingStringE, %1211 ]
  %1220 = getelementptr inbounds i16, ptr %1219, i64 1
  %1221 = load i16, ptr %1220, align 2, !tbaa !139
  %1222 = icmp eq i16 %1221, 0
  br i1 %1222, label %1223, label %1218, !prof !141, !llvm.loop !142

1223:                                             ; preds = %1218
  %1224 = ptrtoint ptr %1220 to i64
  %1225 = add i64 %1224, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni23fgWin1252EncodingStringE to i64)), i64 2)
  %1226 = and i64 %1225, 8589934590
  br label %1227

1227:                                             ; preds = %1223, %1211
  %1228 = phi i64 [ %1226, %1223 ], [ 2, %1211 ]
  %1229 = load ptr, ptr %1215, align 8, !tbaa !83
  %1230 = getelementptr inbounds ptr, ptr %1229, i64 2
  %1231 = load ptr, ptr %1230, align 8
  %1232 = invoke noundef ptr %1231(ptr noundef nonnull align 8 dereferenceable(8) %1215, i64 noundef %1228)
          to label %1233 unwind label %1341, !prof !94

1233:                                             ; preds = %1227
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %1232, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni23fgWin1252EncodingStringE, i64 %1228, i1 false), !prof !143
  %1234 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %1214, i64 0, i32 1
  store ptr %1232, ptr %1234, align 8, !tbaa !144
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEEE, i64 0, inrange i32 0, i64 2), ptr %1214, align 8, !tbaa !83
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_(ptr noundef nonnull align 8 dereferenceable(48) %1213, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni23fgWin1252EncodingStringE, ptr noundef nonnull %1214)
  ret void

1235:                                             ; preds = %17
  %1236 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1237:                                             ; preds = %52
  %1238 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1239:                                             ; preds = %74
  %1240 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1241:                                             ; preds = %97
  %1242 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1243:                                             ; preds = %119
  %1244 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1245:                                             ; preds = %141
  %1246 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1247:                                             ; preds = %163
  %1248 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1249:                                             ; preds = %185
  %1250 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1251:                                             ; preds = %208
  %1252 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1253:                                             ; preds = %230
  %1254 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1255:                                             ; preds = %252
  %1256 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1257:                                             ; preds = %274
  %1258 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1259:                                             ; preds = %296
  %1260 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1261:                                             ; preds = %318
  %1262 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1263:                                             ; preds = %340
  %1264 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1265:                                             ; preds = %362
  %1266 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1267:                                             ; preds = %384
  %1268 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1269:                                             ; preds = %406
  %1270 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1271:                                             ; preds = %428
  %1272 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1273:                                             ; preds = %450
  %1274 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1275:                                             ; preds = %472
  %1276 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1277:                                             ; preds = %494
  %1278 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1279:                                             ; preds = %516
  %1280 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1281:                                             ; preds = %540
  %1282 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1283:                                             ; preds = %563
  %1284 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1285:                                             ; preds = %586
  %1286 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1287:                                             ; preds = %610
  %1288 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1289:                                             ; preds = %633
  %1290 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1291:                                             ; preds = %656
  %1292 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1293:                                             ; preds = %680
  %1294 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1295:                                             ; preds = %703
  %1296 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1297:                                             ; preds = %726
  %1298 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1299:                                             ; preds = %750
  %1300 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1301:                                             ; preds = %773
  %1302 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1303:                                             ; preds = %796
  %1304 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1305:                                             ; preds = %819
  %1306 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1307:                                             ; preds = %842
  %1308 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1309:                                             ; preds = %865
  %1310 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1311:                                             ; preds = %888
  %1312 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1313:                                             ; preds = %911
  %1314 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1315:                                             ; preds = %934
  %1316 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1317:                                             ; preds = %957
  %1318 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1319:                                             ; preds = %980
  %1320 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1321:                                             ; preds = %1003
  %1322 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1323:                                             ; preds = %1026
  %1324 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1325:                                             ; preds = %1051
  %1326 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1327:                                             ; preds = %1073
  %1328 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1329:                                             ; preds = %1095
  %1330 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1331:                                             ; preds = %1117
  %1332 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1333:                                             ; preds = %1139
  %1334 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1335:                                             ; preds = %1161
  %1336 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1337:                                             ; preds = %1183
  %1338 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1339:                                             ; preds = %1205
  %1340 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1341:                                             ; preds = %1227
  %1342 = landingpad { ptr, i32 }
          cleanup
  br label %1343

1343:                                             ; preds = %1279, %1281, %1283, %1285, %1287, %1289, %1291, %1293, %1295, %1297, %1299, %1301, %1303, %1305, %1307, %1309, %1311, %1313, %1315, %1317, %1319, %1321, %1323, %1325, %1327, %1329, %1331, %1333, %1335, %1337, %1339, %1341, %1277, %1275, %1273, %1271, %1269, %1267, %1265, %1263, %1261, %1259, %1257, %1255, %1253, %1251, %1249, %1247, %1245, %1243, %1241, %1239, %1237, %1235
  %1344 = phi ptr [ %503, %1279 ], [ %529, %1281 ], [ %550, %1283 ], [ %573, %1285 ], [ %599, %1287 ], [ %620, %1289 ], [ %643, %1291 ], [ %669, %1293 ], [ %690, %1295 ], [ %713, %1297 ], [ %739, %1299 ], [ %760, %1301 ], [ %783, %1303 ], [ %806, %1305 ], [ %829, %1307 ], [ %852, %1309 ], [ %875, %1311 ], [ %898, %1313 ], [ %921, %1315 ], [ %944, %1317 ], [ %967, %1319 ], [ %990, %1321 ], [ %1013, %1323 ], [ %1038, %1325 ], [ %1060, %1327 ], [ %1082, %1329 ], [ %1104, %1331 ], [ %1126, %1333 ], [ %1148, %1335 ], [ %1170, %1337 ], [ %1192, %1339 ], [ %1214, %1341 ], [ %481, %1277 ], [ %459, %1275 ], [ %437, %1273 ], [ %415, %1271 ], [ %393, %1269 ], [ %371, %1267 ], [ %349, %1265 ], [ %327, %1263 ], [ %305, %1261 ], [ %283, %1259 ], [ %261, %1257 ], [ %239, %1255 ], [ %217, %1253 ], [ %197, %1251 ], [ %172, %1249 ], [ %150, %1247 ], [ %128, %1245 ], [ %106, %1243 ], [ %86, %1241 ], [ %61, %1239 ], [ %29, %1237 ], [ %4, %1235 ]
  %1345 = phi { ptr, i32 } [ %1280, %1279 ], [ %1282, %1281 ], [ %1284, %1283 ], [ %1286, %1285 ], [ %1288, %1287 ], [ %1290, %1289 ], [ %1292, %1291 ], [ %1294, %1293 ], [ %1296, %1295 ], [ %1298, %1297 ], [ %1300, %1299 ], [ %1302, %1301 ], [ %1304, %1303 ], [ %1306, %1305 ], [ %1308, %1307 ], [ %1310, %1309 ], [ %1312, %1311 ], [ %1314, %1313 ], [ %1316, %1315 ], [ %1318, %1317 ], [ %1320, %1319 ], [ %1322, %1321 ], [ %1324, %1323 ], [ %1326, %1325 ], [ %1328, %1327 ], [ %1330, %1329 ], [ %1332, %1331 ], [ %1334, %1333 ], [ %1336, %1335 ], [ %1338, %1337 ], [ %1340, %1339 ], [ %1342, %1341 ], [ %1278, %1277 ], [ %1276, %1275 ], [ %1274, %1273 ], [ %1272, %1271 ], [ %1270, %1269 ], [ %1268, %1267 ], [ %1266, %1265 ], [ %1264, %1263 ], [ %1262, %1261 ], [ %1260, %1259 ], [ %1258, %1257 ], [ %1256, %1255 ], [ %1254, %1253 ], [ %1252, %1251 ], [ %1250, %1249 ], [ %1248, %1247 ], [ %1246, %1245 ], [ %1244, %1243 ], [ %1242, %1241 ], [ %1240, %1239 ], [ %1238, %1237 ], [ %1236, %1235 ]
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %1344) #19
  resume { ptr, i32 } %1345
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define dso_local void @_ZN11xercesc_2_715XMLTransService18strictIANAEncodingEb(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0, i1 noundef zeroext %1) local_unnamed_addr #9 align 2 !prof !107 {
  %3 = zext i1 %1 to i8
  store i8 %3, ptr @_ZN11xercesc_2_7L19gStrictIANAEncodingE, align 1, !tbaa !127
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_715XMLTransService20isStrictIANAEncodingEv(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) local_unnamed_addr #10 align 2 !prof !107 {
  %2 = load i8, ptr @_ZN11xercesc_2_7L19gStrictIANAEncodingE, align 1, !tbaa !127, !range !118, !noundef !119
  %3 = icmp ne i8 %2, 0
  ret i1 %3
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !165
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !167
  %6 = load ptr, ptr %3, align 8, !tbaa !83
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %10, !prof !168

9:                                                ; preds = %1
  ret void

10:                                               ; preds = %1
  %11 = landingpad { ptr, i32 }
          catch ptr null
  %12 = extractvalue { ptr, i32 } %11, 0
  tail call void @__clang_call_terminate(ptr %12) #18
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !107 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #19
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_713XMLTranscoderD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !107 {
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #3 align 2 !prof !126 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XMLTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 1
  store i32 %2, ptr %5, align 8, !tbaa !169
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  store ptr null, ptr %6, align 8, !tbaa !167
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  store ptr %3, ptr %7, align 8, !tbaa !165
  %8 = icmp eq ptr %1, null
  br i1 %8, label %29, label %9, !prof !131

9:                                                ; preds = %4
  %10 = load i16, ptr %1, align 2, !tbaa !139
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %23, label %12, !prof !131

12:                                               ; preds = %9, %12
  %13 = phi ptr [ %14, %12 ], [ %1, %9 ]
  %14 = getelementptr inbounds i16, ptr %13, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !139
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %12, !prof !170, !llvm.loop !142

17:                                               ; preds = %12
  %18 = ptrtoint ptr %14 to i64
  %19 = ptrtoint ptr %1 to i64
  %20 = sub i64 %18, %19
  %21 = add i64 %20, 2
  %22 = and i64 %21, 8589934590
  br label %23

23:                                               ; preds = %17, %9
  %24 = phi i64 [ %22, %17 ], [ 2, %9 ]
  %25 = load ptr, ptr %3, align 8, !tbaa !83
  %26 = getelementptr inbounds ptr, ptr %25, i64 2
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 noundef %24), !prof !171
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %28, ptr nonnull align 2 %1, i64 %24, i1 false), !prof !172
  br label %29

29:                                               ; preds = %4, %23
  %30 = phi ptr [ %28, %23 ], [ null, %4 ]
  store ptr %30, ptr %6, align 8, !tbaa !167
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_713XMLTranscoder14checkBlockSizeEj(ptr nocapture noundef nonnull readnone align 8 dereferenceable(32) %0, i32 noundef %1) local_unnamed_addr #5 align 2 !prof !107 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xercesc_2_716XMLLCPTranscoderC2Ev(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(8) %0) unnamed_addr #12 align 2 !prof !76 {
  store ptr getelementptr inbounds ({ [12 x ptr] }, ptr @_ZTVN11xercesc_2_716XMLLCPTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xercesc_2_716XMLLCPTranscoderD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #5 align 2 !prof !76 {
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xercesc_2_716XMLLCPTranscoderD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #6 align 2 !prof !107 {
  tail call void @llvm.trap() #18
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #13

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0)
  %2 = load ptr, ptr %0, align 8, !tbaa !99
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !102
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4), !prof !173
  store ptr null, ptr %3, align 8, !tbaa !102
  %8 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11, !prof !81

11:                                               ; preds = %1
  %12 = load ptr, ptr %9, align 8, !tbaa !83
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9) #19, !prof !174
  br label %15

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE9removeAllEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 !prof !76 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 5
  %3 = load i32, ptr %2, align 8, !tbaa !105
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %45, label %5, !prof !81

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !103
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9, !prof !175

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %11 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 1
  br label %13

12:                                               ; preds = %38, %5
  store i32 0, ptr %2, align 8, !tbaa !105
  br label %45

13:                                               ; preds = %9, %38
  %14 = phi i64 [ 0, %9 ], [ %41, %38 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !102
  %16 = getelementptr inbounds ptr, ptr %15, i64 %14
  %17 = load ptr, ptr %16, align 8, !tbaa !77
  %18 = icmp eq ptr %17, null
  br i1 %18, label %38, label %19, !prof !176

19:                                               ; preds = %13, %32
  %20 = phi ptr [ %22, %32 ], [ %17, %13 ]
  %21 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %20, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !122
  %23 = load i8, ptr %11, align 8, !tbaa !101, !range !118, !noundef !119
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %32, label %25, !prof !177

25:                                               ; preds = %19
  %26 = load ptr, ptr %20, align 8, !tbaa !120
  %27 = icmp eq ptr %26, null
  br i1 %27, label %32, label %28, !prof !177

28:                                               ; preds = %25
  %29 = load ptr, ptr %26, align 8, !tbaa !83
  %30 = getelementptr inbounds ptr, ptr %29, i64 1
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(16) %26) #19, !prof !178
  br label %32

32:                                               ; preds = %25, %28, %19
  %33 = load ptr, ptr %0, align 8, !tbaa !99
  %34 = load ptr, ptr %33, align 8, !tbaa !83
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  tail call void %36(ptr noundef nonnull align 8 dereferenceable(8) %33, ptr noundef nonnull %20), !prof !179
  %37 = icmp eq ptr %22, null
  br i1 %37, label %38, label %19, !prof !109, !llvm.loop !180

38:                                               ; preds = %32, %13
  %39 = load ptr, ptr %10, align 8, !tbaa !102
  %40 = getelementptr inbounds ptr, ptr %39, i64 %14
  store ptr null, ptr %40, align 8, !tbaa !77
  %41 = add nuw nsw i64 %14, 1
  %42 = load i32, ptr %6, align 8, !tbaa !103
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %13, label %12, !prof !181, !llvm.loop !182

45:                                               ; preds = %1, %12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE10initializeEj(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %4, label %10, !prof !81

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %6 = load ptr, ptr %0, align 8, !tbaa !99
  invoke void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 99, i32 noundef 48, ptr noundef %6)
          to label %7 unwind label %8

7:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_724IllegalArgumentExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

8:                                                ; preds = %4
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %5) #19
  resume { ptr, i32 } %9

10:                                               ; preds = %2
  %11 = load ptr, ptr %0, align 8, !tbaa !99
  %12 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !103
  %14 = zext i32 %13 to i64
  %15 = shl nuw nsw i64 %14, 3
  %16 = load ptr, ptr %11, align 8, !tbaa !83
  %17 = getelementptr inbounds ptr, ptr %16, i64 2
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %15), !prof !94
  %20 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !102
  %21 = load i32, ptr %12, align 8, !tbaa !103
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %25, label %23, !prof !175

23:                                               ; preds = %10
  %24 = zext i32 %21 to i64
  br label %26

25:                                               ; preds = %26, %10
  ret void

26:                                               ; preds = %23, %26
  %27 = phi i64 [ 0, %23 ], [ %30, %26 ]
  %28 = load ptr, ptr %20, align 8, !tbaa !102
  %29 = getelementptr inbounds ptr, ptr %28, i64 %27
  store ptr null, ptr %29, align 8, !tbaa !77
  %30 = add nuw nsw i64 %27, 1
  %31 = icmp eq i64 %30, %24
  br i1 %31, label %25, label %26, !prof !183, !llvm.loop !184
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #0

declare void @_ZN11xercesc_2_79HashXMLChC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_724IllegalArgumentExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  ret ptr @_ZN11xercesc_2_76XMLUni31fgIllegalArgumentException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_724IllegalArgumentException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_724IllegalArgumentExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !83
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [9 x ptr] }, ptr @_ZTVN11xercesc_2_711RefVectorOfINS_8ENameMapEEE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !86, !range !118, !noundef !119
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5, !prof !81

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9, !prof !175

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !92
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17, !prof !115

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !83
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #19, !prof !188
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !90
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !prof !189, !llvm.loop !190

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  %31 = load ptr, ptr %28, align 8, !tbaa !83
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  invoke void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
          to label %34 unwind label %35, !prof !173

34:                                               ; preds = %26
  ret void

35:                                               ; preds = %26
  %36 = landingpad { ptr, i32 }
          catch ptr null
  %37 = extractvalue { ptr, i32 } %36, 0
  tail call void @__clang_call_terminate(ptr %37) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !76 {
  tail call void @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE12setElementAtEPS1_j(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !191 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !90
  %6 = icmp ugt i32 %5, %2
  br i1 %6, label %14, label %7, !prof !116

7:                                                ; preds = %3
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %9 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str.2, i32 noundef 67, i32 noundef 116, ptr noundef %10)
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #19
  resume { ptr, i32 } %13

14:                                               ; preds = %3
  %15 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %16 = load i8, ptr %15, align 8, !tbaa !86, !range !118, !noundef !119
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %29, label %18, !prof !115

18:                                               ; preds = %14
  %19 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = zext i32 %2 to i64
  %22 = getelementptr inbounds ptr, ptr %20, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !77
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25, !prof !116

25:                                               ; preds = %18
  %26 = load ptr, ptr %23, align 8, !tbaa !83
  %27 = getelementptr inbounds ptr, ptr %26, i64 1
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23) #19
  br label %29

29:                                               ; preds = %18, %25, %14
  %30 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !92
  %32 = zext i32 %2 to i64
  %33 = getelementptr inbounds ptr, ptr %31, i64 %32
  store ptr %1, ptr %33, align 8, !tbaa !77
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeAllElementsEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

9:                                                ; preds = %24, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !90
  ret void

11:                                               ; preds = %5, %24
  %12 = phi i64 [ 0, %5 ], [ %27, %24 ]
  %13 = load i8, ptr %6, align 8, !tbaa !86, !range !118, !noundef !119
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %24, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %7, align 8, !tbaa !92
  %17 = getelementptr inbounds ptr, ptr %16, i64 %12
  %18 = load ptr, ptr %17, align 8, !tbaa !77
  %19 = icmp eq ptr %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load ptr, ptr %18, align 8, !tbaa !83
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8
  tail call void %23(ptr noundef nonnull align 8 dereferenceable(16) %18) #19
  br label %24

24:                                               ; preds = %15, %20, %11
  %25 = load ptr, ptr %8, align 8, !tbaa !92
  %26 = getelementptr inbounds ptr, ptr %25, i64 %12
  store ptr null, ptr %26, align 8, !tbaa !77
  %27 = add nuw nsw i64 %12, 1
  %28 = load i32, ptr %2, align 4, !tbaa !90
  %29 = zext i32 %28 to i64
  %30 = icmp ult i64 %27, %29
  br i1 %30, label %11, label %9, !llvm.loop !192
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE15removeElementAtEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !90
  %5 = icmp ugt i32 %4, %1
  br i1 %5, label %13, label %6

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #19
  %8 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !93
  invoke void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str.2, i32 noundef 144, i32 noundef 116, ptr noundef %9)
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #21
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #19
  resume { ptr, i32 } %12

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %15 = load i8, ptr %14, align 8, !tbaa !86, !range !118, !noundef !119
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %28, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  %20 = zext i32 %1 to i64
  %21 = getelementptr inbounds ptr, ptr %19, i64 %20
  %22 = load ptr, ptr %21, align 8, !tbaa !77
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %22, align 8, !tbaa !83
  %26 = getelementptr inbounds ptr, ptr %25, i64 1
  %27 = load ptr, ptr %26, align 8
  tail call void %27(ptr noundef nonnull align 8 dereferenceable(16) %22) #19
  br label %28

28:                                               ; preds = %17, %24, %13
  %29 = load i32, ptr %3, align 4, !tbaa !90
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
  %40 = load ptr, ptr %35, align 8, !tbaa !92
  %41 = add nuw nsw i64 %39, 1
  %42 = getelementptr inbounds ptr, ptr %40, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !77
  %44 = getelementptr inbounds ptr, ptr %40, i64 %39
  store ptr %43, ptr %44, align 8, !tbaa !77
  %45 = icmp eq i64 %41, %37
  br i1 %45, label %46, label %38, !llvm.loop !193

46:                                               ; preds = %38, %32, %28
  %47 = phi i32 [ %1, %28 ], [ %30, %32 ], [ %30, %38 ]
  %48 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !92
  %50 = zext i32 %47 to i64
  %51 = getelementptr inbounds ptr, ptr %49, i64 %50
  store ptr null, ptr %51, align 8, !tbaa !77
  store i32 %30, ptr %3, align 4, !tbaa !90
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE17removeLastElementEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !90
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %21, label %5

5:                                                ; preds = %1
  %6 = add i32 %3, -1
  store i32 %6, ptr %2, align 4, !tbaa !90
  %7 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !86, !range !118, !noundef !119
  %9 = icmp eq i8 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !92
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds ptr, ptr %12, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %15, align 8, !tbaa !83
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #19
  br label %21

21:                                               ; preds = %10, %17, %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE7cleanupEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 1
  %3 = load i8, ptr %2, align 8, !tbaa !86, !range !118, !noundef !119
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %7 = load i32, ptr %6, align 4, !tbaa !90
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %9, %21
  %12 = phi i64 [ 0, %9 ], [ %22, %21 ]
  %13 = load ptr, ptr %10, align 8, !tbaa !92
  %14 = getelementptr inbounds ptr, ptr %13, i64 %12
  %15 = load ptr, ptr %14, align 8, !tbaa !77
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !83
  %19 = getelementptr inbounds ptr, ptr %18, i64 1
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #19
  br label %21

21:                                               ; preds = %11, %17
  %22 = add nuw nsw i64 %12, 1
  %23 = load i32, ptr %6, align 4, !tbaa !90
  %24 = zext i32 %23 to i64
  %25 = icmp ult i64 %22, %24
  br i1 %25, label %11, label %26, !llvm.loop !194

26:                                               ; preds = %21, %5, %1
  %27 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !93
  %29 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !92
  %31 = load ptr, ptr %28, align 8, !tbaa !83
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30)
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEED2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEED0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_730ArrayIndexOutOfBoundsExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #19
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  ret ptr @_ZN11xercesc_2_76XMLUni37fgArrayIndexOutOfBoundsException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_730ArrayIndexOutOfBoundsException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !185
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_730ArrayIndexOutOfBoundsExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !83
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #19
  resume { ptr, i32 } %7
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE6rehashEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor.9", align 8
  %3 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 8, !tbaa !103
  %5 = shl i32 %4, 1
  %6 = load ptr, ptr %0, align 8, !tbaa !99
  %7 = zext i32 %5 to i64
  %8 = shl nuw nsw i64 %7, 3
  %9 = load ptr, ptr %6, align 8, !tbaa !83
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %6, i64 noundef %8)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #19
  %13 = load ptr, ptr %0, align 8, !tbaa !99
  store ptr %12, ptr %2, align 8, !tbaa !195
  %14 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.9", ptr %2, i64 0, i32 1
  store ptr %13, ptr %14, align 8, !tbaa !197
  tail call void @llvm.memset.p0.i64(ptr align 8 %12, i8 0, i64 %8, i1 false)
  %15 = load i32, ptr %3, align 8, !tbaa !103
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %19 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 6
  br label %28

20:                                               ; preds = %52, %1
  %21 = getelementptr inbounds %"class.xercesc_2_7::RefHashTableOf", ptr %0, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !102
  %23 = load ptr, ptr %2, align 8, !tbaa !195
  store ptr null, ptr %2, align 8, !tbaa !195
  store ptr %23, ptr %21, align 8, !tbaa !102
  store i32 %5, ptr %3, align 8, !tbaa !103
  %24 = load ptr, ptr %0, align 8, !tbaa !99
  %25 = load ptr, ptr %24, align 8, !tbaa !83
  %26 = getelementptr inbounds ptr, ptr %25, i64 3
  %27 = load ptr, ptr %26, align 8
  invoke void %27(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %22)
          to label %57 unwind label %58

28:                                               ; preds = %17, %52
  %29 = phi i64 [ 0, %17 ], [ %53, %52 ]
  %30 = load ptr, ptr %18, align 8, !tbaa !102
  %31 = getelementptr inbounds ptr, ptr %30, i64 %29
  %32 = load ptr, ptr %31, align 8, !tbaa !77
  %33 = icmp eq ptr %32, null
  br i1 %33, label %52, label %34

34:                                               ; preds = %28, %45
  %35 = phi ptr [ %37, %45 ], [ %32, %28 ]
  %36 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !122
  %38 = load ptr, ptr %19, align 8, !tbaa !106
  %39 = getelementptr inbounds %"struct.xercesc_2_7::RefHashTableBucketElem", ptr %35, i64 0, i32 2
  %40 = load ptr, ptr %39, align 8, !tbaa !112
  %41 = load ptr, ptr %0, align 8, !tbaa !99
  %42 = load ptr, ptr %38, align 8, !tbaa !83
  %43 = load ptr, ptr %42, align 8
  %44 = invoke noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40, i32 noundef %5, ptr noundef %41)
          to label %45 unwind label %50

45:                                               ; preds = %34
  %46 = zext i32 %44 to i64
  %47 = getelementptr inbounds ptr, ptr %12, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !77
  store ptr %48, ptr %36, align 8, !tbaa !122
  store ptr %35, ptr %47, align 8, !tbaa !77
  %49 = icmp eq ptr %37, null
  br i1 %49, label %52, label %34, !llvm.loop !198

50:                                               ; preds = %34
  %51 = landingpad { ptr, i32 }
          cleanup
  br label %60

52:                                               ; preds = %45, %28
  %53 = add nuw nsw i64 %29, 1
  %54 = load i32, ptr %3, align 8, !tbaa !103
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %28, label %20, !llvm.loop !199

57:                                               ; preds = %20
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8ENameMapEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  ret void

58:                                               ; preds = %20
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi { ptr, i32 } [ %51, %50 ], [ %59, %58 ]
  call void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8ENameMapEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #19
  resume { ptr, i32 } %61
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8ENameMapEEEED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %2 = load ptr, ptr %0, align 8, !tbaa !195
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor.9", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !197
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !83
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #20
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #18
  unreachable
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #15

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE19ensureExtraCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %1) local_unnamed_addr #3 comdat align 2 !prof !191 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 2
  %4 = load i32, ptr %3, align 4, !tbaa !90
  %5 = add i32 %4, %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !91
  %8 = icmp ugt i32 %5, %7
  br i1 %8, label %9, label %55, !prof !115

9:                                                ; preds = %2
  %10 = lshr i32 %7, 1
  %11 = add i32 %10, %7
  %12 = tail call i32 @llvm.umax.i32(i32 %5, i32 %11)
  %13 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 5
  %14 = load ptr, ptr %13, align 8, !tbaa !93
  %15 = zext i32 %12 to i64
  %16 = shl nuw nsw i64 %15, 3
  %17 = load ptr, ptr %14, align 8, !tbaa !83
  %18 = getelementptr inbounds ptr, ptr %17, i64 2
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(8) %14, i64 noundef %16)
  %21 = load i32, ptr %3, align 4, !tbaa !90
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
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %34, i8 0, i64 %39, i1 false), !tbaa !77
  br label %48

40:                                               ; preds = %23, %40
  %41 = phi i64 [ 0, %23 ], [ %46, %40 ]
  %42 = load ptr, ptr %24, align 8, !tbaa !92
  %43 = getelementptr inbounds ptr, ptr %42, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !77
  %45 = getelementptr inbounds ptr, ptr %20, i64 %41
  store ptr %44, ptr %45, align 8, !tbaa !77
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, %25
  br i1 %47, label %26, label %40, !llvm.loop !200

48:                                               ; preds = %31, %28
  %49 = load ptr, ptr %13, align 8, !tbaa !93
  %50 = getelementptr inbounds %"class.xercesc_2_7::BaseRefVectorOf", ptr %0, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !92
  %52 = load ptr, ptr %49, align 8, !tbaa !83
  %53 = getelementptr inbounds ptr, ptr %52, i64 3
  %54 = load ptr, ptr %53, align 8
  tail call void %54(ptr noundef nonnull align 8 dereferenceable(8) %49, ptr noundef %51)
  store ptr %20, ptr %50, align 8, !tbaa !92
  store i32 %12, ptr %6, align 8, !tbaa !91
  br label %55

55:                                               ; preds = %2, %48
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !202

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_15XMLChTranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_715XMLChTranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78ENameMapD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 !prof !107 {
  tail call void @llvm.trap() #18
  unreachable
}

declare void @_ZN11xercesc_2_715XMLChTranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !168

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_718XMLASCIITranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_718XMLASCIITranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !204

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !126 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_717XMLUTF8TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8, !prof !128

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_717XMLUTF8TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !205 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !206

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_18XML88591TranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 32, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_718XML88591TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_718XML88591TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !207 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !208

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(17) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !159, !range !118, !noundef !119
  %9 = icmp ne i8 %8, 0
  invoke void @_ZN11xercesc_2_718XMLUTF16TranscoderC1EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, ptr noundef %6, i32 noundef %1, i1 noundef zeroext %9, ptr noundef %2)
          to label %10 unwind label %11

10:                                               ; preds = %3
  ret ptr %4

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %12
}

declare void @_ZN11xercesc_2_718XMLUTF16TranscoderC1EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(17) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !209 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !210

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(17) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 40, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  %7 = getelementptr inbounds %"class.xercesc_2_7::EEndianNameMapFor.3", ptr %0, i64 0, i32 1
  %8 = load i8, ptr %7, align 8, !tbaa !161, !range !118, !noundef !119
  %9 = icmp ne i8 %8, 0
  invoke void @_ZN11xercesc_2_717XMLUCS4TranscoderC1EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %4, ptr noundef %6, i32 noundef %1, i1 noundef zeroext %9, ptr noundef %2)
          to label %10 unwind label %11

10:                                               ; preds = %3
  ret ptr %4

11:                                               ; preds = %3
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %12
}

declare void @_ZN11xercesc_2_717XMLUCS4TranscoderC1EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33), ptr noundef, i32 noundef, i1 noundef zeroext, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !203 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !204

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_719XMLEBCDICTranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_719XMLEBCDICTranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !201 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !202

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_720XMLIBM1047TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_720XMLIBM1047TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !211 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !212

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_720XMLIBM1140TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_720XMLIBM1140TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_78ENameMapD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %8 unwind label %9

8:                                                ; preds = %1
  ret void

9:                                                ; preds = %1
  %10 = landingpad { ptr, i32 }
          catch ptr null
  %11 = extractvalue { ptr, i32 } %10, 0
  tail call void @__clang_call_terminate(ptr %11) #18
  unreachable
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEED0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !76 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xercesc_2_78ENameMapE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !83
  %2 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils15fgMemoryManagerE, align 8, !tbaa !77
  %3 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !144
  %5 = load ptr, ptr %2, align 8, !tbaa !83
  %6 = getelementptr inbounds ptr, ptr %5, i64 3
  %7 = load ptr, ptr %6, align 8
  invoke void %7(ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %4)
          to label %11 unwind label %8, !prof !173

8:                                                ; preds = %1
  %9 = landingpad { ptr, i32 }
          catch ptr null
  %10 = extractvalue { ptr, i32 } %9, 0
  tail call void @__clang_call_terminate(ptr %10) #18
  unreachable

11:                                               ; preds = %1
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEE7makeNewEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 !prof !107 {
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 56, ptr noundef %2)
  %5 = getelementptr inbounds %"class.xercesc_2_7::ENameMap", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !144
  invoke void @_ZN11xercesc_2_720XMLWin1252TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef %6, i32 noundef %1, ptr noundef %2)
          to label %7 unwind label %8

7:                                                ; preds = %3
  ret ptr %4

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %2) #19
  resume { ptr, i32 } %9
}

declare void @_ZN11xercesc_2_720XMLWin1252TranscoderC1EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(56), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #0

; Function Attrs: cold uwtable
define internal void @_GLOBAL__sub_I_TransService.cpp() #16 section ".text.startup" !prof !76 !PGOFuncName !213 {
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L15mappingsCleanupE)
  tail call void @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZN11xercesc_2_7L25mappingsRecognizerCleanupE)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #17

attributes #0 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { cold uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { builtin nounwind }
attributes #21 = { noreturn }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!75}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!35 = !{ptr @_ZN11xercesc_2_715XMLTransService14reinitMappingsEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE7cleanupEv, i64 1}
!36 = !{ptr @_ZN11xercesc_2_715XMLTransService14reinitMappingsEv, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!37 = !{ptr @_ZN11xercesc_2_715XMLTransService24reinitMappingsRecognizerEv, ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED0Ev, i64 1}
!38 = !{ptr @_ZN11xercesc_2_715XMLTransServiceC2Ev, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 2}
!39 = !{ptr @_ZN11xercesc_2_715XMLTransServiceC2Ev, ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEEC2EjPNS_13MemoryManagerE, i64 1}
!40 = !{ptr @_ZN11xercesc_2_715XMLTransServiceC2Ev, ptr @_ZN11xercesc_2_716XMLPlatformUtils14compareAndSwapEPPvPKvS4_, i64 2}
!41 = !{ptr @_ZN11xercesc_2_715XMLTransServiceC2Ev, ptr @_ZN11xercesc_2_718XMLRegisterCleanup15registerCleanupEPFvvE, i64 2}
!42 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE10initializeEj, i64 1}
!43 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 1}
!44 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEEC2EjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79HashXMLChC1Ev, i64 1}
!45 = !{ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString11copyNStringEPtPKtj, i64 5}
!46 = !{ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt, i64 5}
!47 = !{ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3getEPKv, i64 5}
!48 = !{ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, ptr @_ZNK11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEE7makeNewEjPNS_13MemoryManagerE, i64 5}
!49 = !{ptr @_ZN11xercesc_2_715XMLTransService16initTransServiceEv, ptr @_ZN11xercesc_2_77XMemorynwEm, i64 54}
!50 = !{ptr @_ZN11xercesc_2_715XMLTransService16initTransServiceEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE12setElementAtEPS1_j, i64 8}
!51 = !{ptr @_ZN11xercesc_2_715XMLTransService16initTransServiceEv, ptr @_ZN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEE19ensureExtraCapacityEj, i64 8}
!52 = !{ptr @_ZN11xercesc_2_715XMLTransService16initTransServiceEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE3putEPvPS1_, i64 46}
!53 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE7cleanupEv, ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE9removeAllEv, i64 1}
!54 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE9removeAllEv, ptr @_ZN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEED0Ev, i64 12}
!55 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE9removeAllEv, ptr @_ZN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEED0Ev, i64 11}
!56 = !{ptr @_ZN11xercesc_2_714RefHashTableOfINS_8ENameMapEE9removeAllEv, ptr @_ZN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEED0Ev, i64 7}
!57 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev, ptr @_ZN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEED0Ev, i64 2}
!58 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev, ptr @_ZN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEED0Ev, i64 2}
!59 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev, ptr @_ZN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEED0Ev, i64 1}
!60 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED0Ev, ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED2Ev, i64 1}
!61 = !{ptr @_ZN11xercesc_2_711RefVectorOfINS_8ENameMapEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!62 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_15XMLChTranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!63 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_18XMLASCIITranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 5}
!64 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!65 = !{ptr @_ZNK11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEE7makeNewEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE, i64 5}
!66 = !{ptr @_ZNK11xercesc_2_711ENameMapForINS_17XMLUTF8TranscoderEE7makeNewEjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_717XMLUTF8TranscoderC1EPKtjPNS_13MemoryManagerE, i64 5}
!67 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_18XML88591TranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 12}
!68 = !{ptr @_ZN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 13}
!69 = !{ptr @_ZN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 9}
!70 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_19XMLEBCDICTranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 3}
!71 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1047TranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 2}
!72 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_20XMLIBM1140TranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 4}
!73 = !{ptr @_ZN11xercesc_2_711ENameMapForINS_20XMLWin1252TranscoderEED0Ev, ptr @_ZN11xercesc_2_77XMemorydlEPv, i64 1}
!74 = !{ptr @_GLOBAL__sub_I_TransService.cpp, ptr @_ZN11xercesc_2_718XMLRegisterCleanupC1Ev, i64 2}
!75 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!76 = !{!"function_entry_count", i64 1}
!77 = !{!78, !78, i64 0}
!78 = !{!"any pointer", !79, i64 0}
!79 = !{!"omnipotent char", !80, i64 0}
!80 = !{!"Simple C++ TBAA"}
!81 = !{!"branch_weights", i32 0, i32 1}
!82 = !{!"branch_weights", i32 1, i32 0}
!83 = !{!84, !84, i64 0}
!84 = !{!"vtable pointer", !80, i64 0}
!85 = !{!"VP", i32 0, i64 1, i64 -408442269596346840, i64 1}
!86 = !{!87, !88, i64 8}
!87 = !{!"_ZTSN11xercesc_2_715BaseRefVectorOfINS_8ENameMapEEE", !88, i64 8, !89, i64 12, !89, i64 16, !78, i64 24, !78, i64 32}
!88 = !{!"bool", !79, i64 0}
!89 = !{!"int", !79, i64 0}
!90 = !{!87, !89, i64 12}
!91 = !{!87, !89, i64 16}
!92 = !{!87, !78, i64 24}
!93 = !{!87, !78, i64 32}
!94 = !{!"VP", i32 0, i64 1, i64 8345045103670217670, i64 1}
!95 = !{!"branch_weights", i32 1, i32 7}
!96 = distinct !{!96, !97, !98}
!97 = !{!"llvm.loop.mustprogress"}
!98 = !{!"llvm.loop.unroll.disable"}
!99 = !{!100, !78, i64 0}
!100 = !{!"_ZTSN11xercesc_2_714RefHashTableOfINS_8ENameMapEEE", !78, i64 0, !88, i64 8, !78, i64 16, !89, i64 24, !89, i64 28, !89, i64 32, !78, i64 40}
!101 = !{!100, !88, i64 8}
!102 = !{!100, !78, i64 16}
!103 = !{!100, !89, i64 24}
!104 = !{!100, !89, i64 28}
!105 = !{!100, !89, i64 32}
!106 = !{!100, !78, i64 40}
!107 = !{!"function_entry_count", i64 0}
!108 = !{!"function_entry_count", i64 46}
!109 = !{!"branch_weights", i32 46, i32 0}
!110 = !{!"VP", i32 0, i64 46, i64 3024540859536234746, i64 46}
!111 = !{!"branch_weights", i32 38, i32 8}
!112 = !{!113, !78, i64 16}
!113 = !{!"_ZTSN11xercesc_2_722RefHashTableBucketElemINS_8ENameMapEEE", !78, i64 0, !78, i64 8, !78, i64 16}
!114 = !{!"VP", i32 0, i64 8, i64 -1309333655503989351, i64 8}
!115 = !{!"branch_weights", i32 0, i32 8}
!116 = !{!"branch_weights", i32 8, i32 0}
!117 = distinct !{!117, !97, !98}
!118 = !{i8 0, i8 2}
!119 = !{}
!120 = !{!113, !78, i64 0}
!121 = !{!"VP", i32 0, i64 46, i64 8345045103670217670, i64 46}
!122 = !{!113, !78, i64 8}
!123 = !{!124, !78, i64 0}
!124 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !78, i64 0, !78, i64 8}
!125 = !{!124, !78, i64 8}
!126 = !{!"function_entry_count", i64 5}
!127 = !{!88, !88, i64 0}
!128 = !{!"branch_weights", i32 5, i32 0}
!129 = !{!130, !130, i64 0}
!130 = !{!"_ZTSN11xercesc_2_715XMLTransService5CodesE", !79, i64 0}
!131 = !{!"branch_weights", i32 0, i32 5}
!132 = !{!"VP", i32 0, i64 5, i64 -3262434142723714033, i64 5}
!133 = !{!"function_entry_count", i64 243874}
!134 = !{!"branch_weights", i32 191815, i32 52059}
!135 = !{!"branch_weights", i32 0, i32 52059}
!136 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!137 = !{!"VP", i32 0, i64 5, i64 3024540859536234746, i64 5}
!138 = !{!"VP", i32 0, i64 5, i64 -1309333655503989351, i64 5}
!139 = !{!140, !140, i64 0}
!140 = !{!"short", !79, i64 0}
!141 = !{!"branch_weights", i32 1, i32 11}
!142 = distinct !{!142, !97, !98}
!143 = !{!"VP", i32 1, i64 1, i64 17, i64 1}
!144 = !{!145, !78, i64 8}
!145 = !{!"_ZTSN11xercesc_2_78ENameMapE", !78, i64 8}
!146 = !{!"VP", i32 0, i64 1, i64 -7076450575612185257, i64 1}
!147 = distinct !{!147, !97, !98}
!148 = !{!"branch_weights", i32 1, i32 6}
!149 = !{!"VP", i32 1, i64 1, i64 16, i64 1}
!150 = !{!"branch_weights", i32 1, i32 4}
!151 = !{!"VP", i32 1, i64 1, i64 9, i64 1}
!152 = !{!"branch_weights", i32 1, i32 3}
!153 = !{!"branch_weights", i32 1, i32 8}
!154 = !{!"branch_weights", i32 1, i32 9}
!155 = !{!"branch_weights", i32 1, i32 5}
!156 = !{!"branch_weights", i32 1, i32 10}
!157 = !{!"branch_weights", i32 1, i32 1}
!158 = !{!"VP", i32 1, i64 1, i64 6, i64 1}
!159 = !{!160, !88, i64 16}
!160 = !{!"_ZTSN11xercesc_2_717EEndianNameMapForINS_18XMLUTF16TranscoderEEE", !145, i64 0, !88, i64 16}
!161 = !{!162, !88, i64 16}
!162 = !{!"_ZTSN11xercesc_2_717EEndianNameMapForINS_17XMLUCS4TranscoderEEE", !145, i64 0, !88, i64 16}
!163 = !{!"branch_weights", i32 1, i32 14}
!164 = !{!"VP", i32 1, i64 1, i64 32, i64 1}
!165 = !{!166, !78, i64 24}
!166 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !89, i64 8, !78, i64 16, !78, i64 24}
!167 = !{!166, !78, i64 16}
!168 = !{!"VP", i32 0, i64 5, i64 -7405368087501025645, i64 5}
!169 = !{!166, !89, i64 8}
!170 = !{!"branch_weights", i32 5, i32 20}
!171 = !{!"VP", i32 0, i64 5, i64 8345045103670217670, i64 5}
!172 = !{!"VP", i32 1, i64 5, i64 9, i64 5}
!173 = !{!"VP", i32 0, i64 1, i64 -7405368087501025645, i64 1}
!174 = !{!"VP", i32 0, i64 1, i64 -5147776714887549805, i64 1}
!175 = !{!"branch_weights", i32 1, i32 127}
!176 = !{!"branch_weights", i32 57, i32 46}
!177 = !{!"branch_weights", i32 0, i32 46}
!178 = !{!"VP", i32 0, i64 46, i64 -3536239669441986148, i64 12, i64 5209431091469295868, i64 11, i64 2164253184326004299, i64 7}
!179 = !{!"VP", i32 0, i64 46, i64 -7405368087501025645, i64 46}
!180 = distinct !{!180, !97, !98}
!181 = !{!"branch_weights", i32 13057, i32 127}
!182 = distinct !{!182, !97, !98}
!183 = !{!"branch_weights", i32 127, i32 13057}
!184 = distinct !{!184, !97, !98}
!185 = !{!186, !78, i64 40}
!186 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !187, i64 8, !78, i64 16, !89, i64 24, !78, i64 32, !78, i64 40}
!187 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !79, i64 0}
!188 = !{!"VP", i32 0, i64 8, i64 2164253184326004299, i64 2, i64 5209431091469295868, i64 2, i64 -8058236798046714992, i64 1}
!189 = !{!"branch_weights", i32 897, i32 127}
!190 = distinct !{!190, !97, !98}
!191 = !{!"function_entry_count", i64 8}
!192 = distinct !{!192, !97, !98}
!193 = distinct !{!193, !97, !98}
!194 = distinct !{!194, !97, !98}
!195 = !{!196, !78, i64 0}
!196 = !{!"_ZTSN11xercesc_2_712ArrayJanitorIPNS_22RefHashTableBucketElemINS_8ENameMapEEEEE", !78, i64 0, !78, i64 8}
!197 = !{!196, !78, i64 8}
!198 = distinct !{!198, !97, !98}
!199 = distinct !{!199, !97, !98}
!200 = distinct !{!200, !97, !98}
!201 = !{!"function_entry_count", i64 2}
!202 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!203 = !{!"function_entry_count", i64 3}
!204 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!205 = !{!"function_entry_count", i64 12}
!206 = !{!"VP", i32 0, i64 12, i64 -7405368087501025645, i64 12}
!207 = !{!"function_entry_count", i64 13}
!208 = !{!"VP", i32 0, i64 13, i64 -7405368087501025645, i64 13}
!209 = !{!"function_entry_count", i64 9}
!210 = !{!"VP", i32 0, i64 9, i64 -7405368087501025645, i64 9}
!211 = !{!"function_entry_count", i64 4}
!212 = !{!"VP", i32 0, i64 4, i64 -7405368087501025645, i64 4}
!213 = !{!"TransService.cpp;_GLOBAL__sub_I_TransService.cpp"}
