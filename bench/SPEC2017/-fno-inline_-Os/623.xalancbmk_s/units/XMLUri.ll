; ModuleID = 'XMLUri.cpp'
source_filename = "XMLUri.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XProtoType" = type { ptr, ptr }
%"class.xercesc_2_7::XMLUri" = type { %"class.xercesc_2_7::XSerializable", i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%"class.xercesc_2_7::XSerializable" = type { ptr }
%"class.xercesc_2_7::JanitorMemFunCall" = type { ptr, { i64, i64 } }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }

$_ZN11xercesc_2_713XSerializableC2Ev = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEEC2EPS1_MS1_FvvE = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD2Ev = comdat any

$_ZN11xercesc_2_713XSerializableD0Ev = comdat any

$_ZN11xercesc_2_713XSerializableC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString10startsWithEPKtS2_ = comdat any

$_ZNK11xercesc_2_76XMLUri9getSchemeEv = comdat any

$_ZNK11xercesc_2_76XMLUri11getUserInfoEv = comdat any

$_ZNK11xercesc_2_76XMLUri7getHostEv = comdat any

$_ZNK11xercesc_2_76XMLUri7getPortEv = comdat any

$_ZNK11xercesc_2_76XMLUri20getRegBasedAuthorityEv = comdat any

$_ZNK11xercesc_2_76XMLUri7getPathEv = comdat any

$_ZNK11xercesc_2_76XMLUri14getQueryStringEv = comdat any

$_ZN11xercesc_2_79XMLString11lastIndexOfEPKtt = comdat any

$_ZN11xercesc_2_79XMLString8endsWithEPKtS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionD0Ev = comdat any

$_ZNK11xercesc_2_721MalformedURLException7getTypeEv = comdat any

$_ZNK11xercesc_2_721MalformedURLException9duplicateEv = comdat any

$_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj = comdat any

$_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt = comdat any

$_ZN11xercesc_2_76XMLUri15isPathCharacterEt = comdat any

$_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt = comdat any

$_ZNK11xercesc_2_76XMLUri11getFragmentEv = comdat any

$_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt = comdat any

$_ZN11xercesc_2_76XMLUri19isReservedCharacterEt = comdat any

$_ZN11xercesc_2_79XMLBuffer5resetEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZNK11xercesc_2_716XSerializeEngine9isStoringEv = comdat any

$_ZN11xercesc_2_716XSerializeEngine10readStringERPt = comdat any

$_ZTSN11xercesc_2_713XSerializableE = comdat any

$_ZTIN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_77XMemoryE = comdat any

$_ZTIN11xercesc_2_77XMemoryE = comdat any

$_ZTSN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTIN11xercesc_2_720OutOfMemoryExceptionE = comdat any

$_ZTVN11xercesc_2_713XSerializableE = comdat any

$_ZTSN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTIN11xercesc_2_721MalformedURLExceptionE = comdat any

$_ZTVN11xercesc_2_721MalformedURLExceptionE = comdat any

@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN11xercesc_2_76XMLUriE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_76XMLUriE, ptr @_ZN11xercesc_2_76XMLUriD2Ev, ptr @_ZN11xercesc_2_76XMLUriD0Ev, ptr @_ZNK11xercesc_2_76XMLUri14isSerializableEv, ptr @_ZN11xercesc_2_76XMLUri9serializeERNS_16XSerializeEngineE, ptr @_ZNK11xercesc_2_76XMLUri12getProtoTypeEv] }, align 8
@_ZTVN10__cxxabiv121__vmi_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_76XMLUriE = dso_local constant [23 x i8] c"N11xercesc_2_76XMLUriE\00", align 1
@_ZTSN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant [31 x i8] c"N11xercesc_2_713XSerializableE\00", comdat, align 1
@_ZTIN11xercesc_2_713XSerializableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_713XSerializableE }, comdat, align 8
@_ZTSN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant [24 x i8] c"N11xercesc_2_77XMemoryE\00", comdat, align 1
@_ZTIN11xercesc_2_77XMemoryE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTIN11xercesc_2_76XMLUriE = dso_local constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_76XMLUriE, i32 0, i32 2, ptr @_ZTIN11xercesc_2_713XSerializableE, i64 2, ptr @_ZTIN11xercesc_2_77XMemoryE, i64 2 }, align 8
@_ZN11xercesc_2_76XMLUri19RESERVED_CHARACTERSE = dso_local constant [13 x i16] [i16 59, i16 47, i16 63, i16 58, i16 64, i16 38, i16 61, i16 43, i16 36, i16 44, i16 91, i16 93, i16 0], align 16
@_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE = dso_local constant [10 x i16] [i16 45, i16 95, i16 46, i16 33, i16 126, i16 42, i16 39, i16 40, i16 41, i16 0], align 16
@_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE = dso_local constant [22 x i16] [i16 45, i16 95, i16 46, i16 33, i16 126, i16 42, i16 39, i16 40, i16 41, i16 59, i16 47, i16 63, i16 58, i16 64, i16 38, i16 61, i16 43, i16 36, i16 44, i16 91, i16 93, i16 0], align 16
@_ZN11xercesc_2_76XMLUri17SCHEME_CHARACTERSE = dso_local constant [4 x i16] [i16 43, i16 45, i16 46, i16 0], align 2
@_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE = dso_local constant [8 x i16] [i16 59, i16 58, i16 38, i16 61, i16 43, i16 36, i16 46, i16 0], align 16
@_ZN11xercesc_2_76XMLUri19REG_NAME_CHARACTERSE = dso_local constant [9 x i16] [i16 36, i16 44, i16 59, i16 58, i16 64, i16 38, i16 61, i16 43, i16 0], align 16
@_ZN11xercesc_2_76XMLUri15PATH_CHARACTERSE = dso_local constant [10 x i16] [i16 59, i16 47, i16 58, i16 64, i16 38, i16 61, i16 43, i16 36, i16 44, i16 0], align 16
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720OutOfMemoryExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720OutOfMemoryExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720OutOfMemoryExceptionE, ptr @_ZTIN11xercesc_2_77XMemoryE }, comdat, align 8
@_ZTVN11xercesc_2_713XSerializableE = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_713XSerializableE, ptr @_ZN11xercesc_2_713XSerializableD2Ev, ptr @_ZN11xercesc_2_713XSerializableD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, comdat, align 8
@.str = private unnamed_addr constant [11 x i8] c"XMLUri.cpp\00", align 1
@_ZN11xercesc_2_7L13errMsg_PARAMSE = internal constant [11 x i16] [i16 80, i16 97, i16 114, i16 97, i16 109, i16 101, i16 116, i16 101, i16 114, i16 115, i16 0], align 16
@_ZTSN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant [39 x i8] c"N11xercesc_2_721MalformedURLExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_721MalformedURLExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L11errMsg_PATHE = internal constant [5 x i16] [i16 80, i16 97, i16 116, i16 104, i16 0], align 2
@_ZN11xercesc_2_7L12DOUBLE_SLASHE = internal constant [3 x i16] [i16 47, i16 47, i16 0], align 2
@_ZN11xercesc_2_76XMLUni15fgZeroLenStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L12SINGLE_SLASHE = internal constant [2 x i16] [i16 47, i16 0], align 2
@_ZN11xercesc_2_7L15SLASH_DOT_SLASHE = internal constant [4 x i16] [i16 47, i16 46, i16 47, i16 0], align 2
@_ZN11xercesc_2_7L9SLASH_DOTE = internal constant [3 x i16] [i16 47, i16 46, i16 0], align 2
@_ZN11xercesc_2_7L18SLASH_DOTDOT_SLASHE = internal constant [5 x i16] [i16 47, i16 46, i16 46, i16 47, i16 0], align 2
@_ZN11xercesc_2_7L12SLASH_DOTDOTE = internal constant [4 x i16] [i16 47, i16 46, i16 46, i16 0], align 2
@_ZTVN11xercesc_2_721MalformedURLExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_721MalformedURLExceptionD0Ev, ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv, ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L17SCHEME_SEPARATORSE = internal constant [5 x i16] [i16 58, i16 47, i16 63, i16 35, i16 0], align 2
@_ZN11xercesc_2_7L12errMsg_QUERYE = internal constant [6 x i16] [i16 81, i16 117, i16 101, i16 114, i16 121, i16 0], align 2
@_ZN11xercesc_2_7L15errMsg_FRAGMENTE = internal constant [9 x i16] [i16 70, i16 114, i16 97, i16 103, i16 109, i16 101, i16 110, i16 116, i16 0], align 16
@_ZN11xercesc_2_7L13errMsg_SCHEMEE = internal constant [7 x i16] [i16 83, i16 99, i16 104, i16 101, i16 109, i16 101, i16 0], align 2
@_ZN11xercesc_2_7L15errMsg_USERINFOE = internal constant [9 x i16] [i16 85, i16 115, i16 101, i16 114, i16 105, i16 110, i16 102, i16 111, i16 0], align 16
@_ZN11xercesc_2_7L11errMsg_HOSTE = internal constant [5 x i16] [i16 72, i16 111, i16 115, i16 116, i16 0], align 2
@_ZN11xercesc_2_7L11errMsg_PORTE = internal constant [5 x i16] [i16 80, i16 111, i16 114, i16 116, i16 0], align 2
@_ZN11xercesc_2_7L14errMsg_REGNAMEE = internal constant [8 x i16] [i16 82, i16 101, i16 103, i16 78, i16 97, i16 109, i16 101, i16 0], align 16
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external local_unnamed_addr global [65536 x i8], align 16
@_ZN11xercesc_2_76XMLUri11classXMLUriE = dso_local global %"class.xercesc_2_7::XProtoType" { ptr @.str.1, ptr @_ZN11xercesc_2_76XMLUri12createObjectEPNS_13MemoryManagerE }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"XMLUri\00", align 1

@_ZN11xercesc_2_76XMLUriC1EPKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2EPKtPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLUriC1EPKS0_PKtPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2EPKS0_PKtPNS_13MemoryManagerE
@_ZN11xercesc_2_76XMLUriC1ERKS0_ = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2ERKS0_
@_ZN11xercesc_2_76XMLUriD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_76XMLUriD2Ev
@_ZN11xercesc_2_76XMLUriC1EPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN11xercesc_2_76XMLUriC2EPNS_13MemoryManagerE

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriD0Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_76XMLUriD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_76XMLUri14isSerializableEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !79 {
  ret i1 true
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri9serializeERNS_16XSerializeEngineE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(100) %1) unnamed_addr #2 align 2 !prof !79 {
  %3 = tail call noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %1) #14
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  br i1 %3, label %5, label %24

5:                                                ; preds = %2
  %6 = load i32, ptr %4, align 8, !tbaa !80
  %7 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100) %1, i32 noundef %6) #14
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %9, i32 noundef 0, i1 noundef zeroext false) #14
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %11, i32 noundef 0, i1 noundef zeroext false) #14
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !89
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %13, i32 noundef 0, i1 noundef zeroext false) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %15, i32 noundef 0, i1 noundef zeroext false) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %17, i32 noundef 0, i1 noundef zeroext false) #14
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %19 = load ptr, ptr %18, align 8, !tbaa !92
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %19, i32 noundef 0, i1 noundef zeroext false) #14
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !93
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %21, i32 noundef 0, i1 noundef zeroext false) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %23 = load ptr, ptr %22, align 8, !tbaa !94
  tail call void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef %23, i32 noundef 0, i1 noundef zeroext false) #14
  br label %34

24:                                               ; preds = %2
  %25 = tail call noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 4 dereferenceable(4) %4) #14
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %26) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %27) #14
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %28) #14
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %29) #14
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %30) #14
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %31) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %32) #14
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  tail call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %1, ptr noundef nonnull align 8 dereferenceable(8) %33) #14
  br label %34

34:                                               ; preds = %24, %5
  ret void
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef nonnull ptr @_ZNK11xercesc_2_76XMLUri12getProtoTypeEv(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #1 align 2 !prof !79 {
  ret ptr @_ZN11xercesc_2_76XMLUri11classXMLUriE
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2EPKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %4 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %5, align 8, !tbaa !80
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %6, i8 0, i64 64, i1 false)
  store ptr %2, ptr %7, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUri7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_76XMLUri10initializeEPKS0_PKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null, ptr noundef %1) #14
          to label %18 unwind label %8

8:                                                ; preds = %3
  %9 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %10 = extractvalue { ptr, i32 } %9, 1
  %11 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %8
  %14 = extractvalue { ptr, i32 } %9, 0
  %15 = call ptr @__cxa_begin_catch(ptr %14) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  invoke void @__cxa_rethrow() #16
          to label %24 unwind label %16

16:                                               ; preds = %13
  %17 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %19 unwind label %21

18:                                               ; preds = %3
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %4) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  ret void

19:                                               ; preds = %16, %8
  %20 = phi { ptr, i32 } [ %9, %8 ], [ %17, %16 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %20

21:                                               ; preds = %16
  %22 = landingpad { ptr, i32 }
          catch ptr null
  %23 = extractvalue { ptr, i32 } %22, 0
  call void @__clang_call_terminate(ptr %23) #17
  unreachable

24:                                               ; preds = %13
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !98 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !99 {
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #2 align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %2, ptr noundef %7) #14
  br label %8

8:                                                ; preds = %5, %1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !88
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %14 = load ptr, ptr %13, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %9, ptr noundef %14) #14
  br label %15

15:                                               ; preds = %12, %8
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !89
  %18 = icmp eq ptr %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %15
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %16, ptr noundef %21) #14
  br label %22

22:                                               ; preds = %19, %15
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %23, ptr noundef %28) #14
  br label %29

29:                                               ; preds = %26, %22
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = icmp eq ptr %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %30, ptr noundef %35) #14
  br label %36

36:                                               ; preds = %33, %29
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !92
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %36
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %37, ptr noundef %42) #14
  br label %43

43:                                               ; preds = %40, %36
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %45 = load ptr, ptr %44, align 8, !tbaa !93
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %43
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %44, ptr noundef %49) #14
  br label %50

50:                                               ; preds = %47, %43
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %53 = load ptr, ptr %52, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef nonnull %51, ptr noundef %53) #14
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i64 %2, i64 %3) unnamed_addr #0 comdat align 2 !prof !79 {
  store ptr %1, ptr %0, align 8, !tbaa !100
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  store i64 %2, ptr %5, align 8, !tbaa !102
  %6 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  store i64 %3, ptr %6, align 8, !tbaa !102
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri10initializeEPKS0_PKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %7 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %8 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %10 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !97
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %12) #14
  tail call void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef %13) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %14 = load ptr, ptr %11, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %13, ptr noundef %14) #14
  %15 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %13) #14
  %16 = icmp eq ptr %1, null
  br i1 %16, label %17, label %29

17:                                               ; preds = %3
  %18 = icmp eq ptr %13, null
  %19 = icmp eq i32 %15, 0
  %20 = or i1 %18, %19
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = call ptr @__cxa_allocate_exception(i64 48) #15
  %23 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 417, i32 noundef 266, ptr noundef nonnull @_ZN11xercesc_2_7L13errMsg_PARAMSE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %23) #14
          to label %24 unwind label %25

24:                                               ; preds = %21
  invoke void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %453 unwind label %27

25:                                               ; preds = %21
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %22) #15
  br label %451

27:                                               ; preds = %33, %24
  %28 = landingpad { ptr, i32 }
          cleanup
  br label %451

29:                                               ; preds = %3, %17
  %30 = icmp eq ptr %13, null
  %31 = icmp eq i32 %15, 0
  %32 = or i1 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  invoke void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #14
          to label %446 unwind label %27

34:                                               ; preds = %29
  %35 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %13, i16 noundef zeroext 58) #14
          to label %36 unwind label %67

36:                                               ; preds = %34
  %37 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %13, i16 noundef zeroext 47) #14
          to label %38 unwind label %69

38:                                               ; preds = %36
  %39 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %13, i16 noundef zeroext 63) #14
          to label %40 unwind label %71

40:                                               ; preds = %38
  %41 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %13, i16 noundef zeroext 35) #14
          to label %42 unwind label %73

42:                                               ; preds = %40
  %43 = icmp slt i32 %35, 1
  br i1 %43, label %56, label %44

44:                                               ; preds = %42
  %45 = icmp sgt i32 %35, %37
  %46 = icmp ne i32 %37, -1
  %47 = and i1 %45, %46
  br i1 %47, label %61, label %48

48:                                               ; preds = %44
  %49 = icmp sgt i32 %35, %39
  %50 = icmp ne i32 %39, -1
  %51 = and i1 %49, %50
  br i1 %51, label %61, label %52

52:                                               ; preds = %48
  %53 = icmp sgt i32 %35, %41
  %54 = icmp ne i32 %41, -1
  %55 = and i1 %53, %54
  br i1 %55, label %61, label %77

56:                                               ; preds = %42
  %57 = icmp eq i32 %35, 0
  %58 = icmp ne i32 %41, 0
  %59 = and i1 %16, %58
  %60 = or i1 %57, %59
  br i1 %60, label %64, label %97

61:                                               ; preds = %44, %48, %52
  %62 = icmp ne i32 %41, 0
  %63 = and i1 %16, %62
  br i1 %63, label %64, label %97

64:                                               ; preds = %61, %56
  %65 = call ptr @__cxa_allocate_exception(i64 48) #15
  %66 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %65, ptr noundef nonnull @.str, i32 noundef 444, i32 noundef 272, ptr noundef %66) #14
          to label %92 unwind label %75

67:                                               ; preds = %34
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %451

69:                                               ; preds = %36
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %451

71:                                               ; preds = %38
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %451

73:                                               ; preds = %92, %77, %40
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %451

75:                                               ; preds = %64
  %76 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %65) #15
  br label %451

77:                                               ; preds = %52
  invoke void @_ZN11xercesc_2_76XMLUri16initializeSchemeEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %13) #14
          to label %78 unwind label %73

78:                                               ; preds = %77
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !87
  %81 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %80) #14
  %82 = add i32 %81, 1
  %83 = icmp eq i32 %82, %15
  br i1 %83, label %89, label %84

84:                                               ; preds = %78
  %85 = sext i32 %82 to i64
  %86 = getelementptr inbounds i16, ptr %13, i64 %85
  %87 = load i16, ptr %86, align 2, !tbaa !103
  %88 = icmp eq i16 %87, 35
  br i1 %88, label %89, label %97

89:                                               ; preds = %84, %78
  %90 = call ptr @__cxa_allocate_exception(i64 48) #15
  %91 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %90, ptr noundef nonnull @.str, i32 noundef 460, i32 noundef 266, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %91) #14
          to label %92 unwind label %95

92:                                               ; preds = %64, %89
  %93 = phi ptr [ %90, %89 ], [ %65, %64 ]
  invoke void @__cxa_throw(ptr nonnull %93, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %94 unwind label %73

94:                                               ; preds = %92
  unreachable

95:                                               ; preds = %89
  %96 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %90) #15
  br label %451

97:                                               ; preds = %61, %56, %84
  %98 = phi i32 [ %82, %84 ], [ 0, %56 ], [ 0, %61 ]
  %99 = load ptr, ptr %11, align 8, !tbaa !97
  %100 = add i32 %15, 1
  %101 = sext i32 %100 to i64
  %102 = shl nsw i64 %101, 1
  %103 = load ptr, ptr %99, align 8, !tbaa !95
  %104 = getelementptr inbounds ptr, ptr %103, i64 2
  %105 = load ptr, ptr %104, align 8
  %106 = invoke noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(8) %99, i64 noundef %102) #14
          to label %107 unwind label %125

107:                                              ; preds = %97
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %108 = load ptr, ptr %11, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %106, ptr noundef %108) #14
  %109 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %106, ptr noundef nonnull %13, i32 noundef %98, i32 noundef %15, ptr noundef %109) #14
          to label %110 unwind label %127

110:                                              ; preds = %107
  %111 = add nsw i32 %98, 1
  %112 = icmp slt i32 %111, %15
  br i1 %112, label %113, label %145

113:                                              ; preds = %110
  %114 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %106, ptr noundef nonnull @_ZN11xercesc_2_7L12DOUBLE_SLASHE) #14
          to label %115 unwind label %127

115:                                              ; preds = %113
  br i1 %114, label %116, label %145

116:                                              ; preds = %115
  %117 = add nsw i32 %98, 2
  %118 = icmp slt i32 %117, %15
  br i1 %118, label %119, label %143

119:                                              ; preds = %116
  %120 = sext i32 %117 to i64
  br label %121

121:                                              ; preds = %119, %129
  %122 = phi i64 [ %120, %119 ], [ %130, %129 ]
  %123 = getelementptr inbounds i16, ptr %13, i64 %122
  %124 = load i16, ptr %123, align 2, !tbaa !103
  switch i16 %124, label %129 [
    i16 63, label %133
    i16 47, label %133
    i16 35, label %133
  ]

125:                                              ; preds = %97
  %126 = landingpad { ptr, i32 }
          cleanup
  br label %451

127:                                              ; preds = %113, %107
  %128 = landingpad { ptr, i32 }
          cleanup
  br label %449

129:                                              ; preds = %121
  %130 = add nsw i64 %122, 1
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %15, %131
  br i1 %132, label %135, label %121, !llvm.loop !105

133:                                              ; preds = %121, %121, %121
  %134 = trunc i64 %122 to i32
  br label %135

135:                                              ; preds = %129, %133
  %136 = phi i32 [ %134, %133 ], [ %15, %129 ]
  %137 = icmp sgt i32 %136, %117
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %106, ptr noundef nonnull %13, i32 noundef %117, i32 noundef %136, ptr noundef %139) #14
          to label %140 unwind label %141

140:                                              ; preds = %138
  invoke void @_ZN11xercesc_2_76XMLUri19initializeAuthorityEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %106) #14
          to label %145 unwind label %141

141:                                              ; preds = %143, %140, %138
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %449

143:                                              ; preds = %116, %135
  %144 = phi i32 [ %136, %135 ], [ %117, %116 ]
  invoke void @_ZN11xercesc_2_76XMLUri7setHostEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE) #14
          to label %145 unwind label %141

145:                                              ; preds = %140, %143, %115, %110
  %146 = phi i32 [ %98, %115 ], [ %98, %110 ], [ %144, %143 ], [ %136, %140 ]
  %147 = icmp slt i32 %146, %15
  br i1 %147, label %148, label %445

148:                                              ; preds = %145
  %149 = load ptr, ptr %11, align 8, !tbaa !97
  %150 = load ptr, ptr %149, align 8, !tbaa !95
  %151 = getelementptr inbounds ptr, ptr %150, i64 2
  %152 = load ptr, ptr %151, align 8
  %153 = invoke noundef ptr %152(ptr noundef nonnull align 8 dereferenceable(8) %149, i64 noundef %102) #14
          to label %154 unwind label %222

154:                                              ; preds = %148
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #15
  %155 = load ptr, ptr %11, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %153, ptr noundef %155) #14
  %156 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %153, ptr noundef nonnull %13, i32 noundef %146, i32 noundef %15, ptr noundef %156) #14
          to label %157 unwind label %224

157:                                              ; preds = %154
  invoke void @_ZN11xercesc_2_76XMLUri14initializePathEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %153) #14
          to label %158 unwind label %224

158:                                              ; preds = %157
  br i1 %16, label %444, label %159

159:                                              ; preds = %158
  %160 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %161 = load ptr, ptr %160, align 8, !tbaa !91
  %162 = icmp eq ptr %161, null
  br i1 %162, label %166, label %163

163:                                              ; preds = %159
  %164 = load i16, ptr %161, align 2, !tbaa !103
  %165 = icmp eq i16 %164, 0
  br i1 %165, label %166, label %226

166:                                              ; preds = %163, %159
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %168 = load ptr, ptr %167, align 8, !tbaa !87
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %444

170:                                              ; preds = %166
  %171 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %172 = load ptr, ptr %171, align 8, !tbaa !89
  %173 = icmp eq ptr %172, null
  br i1 %173, label %174, label %230

174:                                              ; preds = %170
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %176 = load ptr, ptr %175, align 8, !tbaa !90
  %177 = icmp eq ptr %176, null
  br i1 %177, label %178, label %230

178:                                              ; preds = %174
  %179 = call noundef ptr @_ZNK11xercesc_2_76XMLUri9getSchemeEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %180 = load ptr, ptr %11, align 8, !tbaa !97
  %181 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %179, ptr noundef %180) #14
          to label %182 unwind label %224

182:                                              ; preds = %178
  store ptr %181, ptr %167, align 8, !tbaa !87
  %183 = load ptr, ptr %11, align 8, !tbaa !97
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %185 = load ptr, ptr %184, align 8, !tbaa !88
  %186 = load ptr, ptr %183, align 8, !tbaa !95
  %187 = getelementptr inbounds ptr, ptr %186, i64 3
  %188 = load ptr, ptr %187, align 8
  invoke void %188(ptr noundef nonnull align 8 dereferenceable(8) %183, ptr noundef %185) #14
          to label %189 unwind label %224

189:                                              ; preds = %182
  %190 = call noundef ptr @_ZNK11xercesc_2_76XMLUri11getUserInfoEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %191 = load ptr, ptr %11, align 8, !tbaa !97
  %192 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %190, ptr noundef %191) #14
          to label %193 unwind label %224

193:                                              ; preds = %189
  store ptr %192, ptr %184, align 8, !tbaa !88
  %194 = call noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %195 = load ptr, ptr %11, align 8, !tbaa !97
  %196 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %194, ptr noundef %195) #14
          to label %197 unwind label %224

197:                                              ; preds = %193
  store ptr %196, ptr %171, align 8, !tbaa !89
  %198 = call noundef i32 @_ZNK11xercesc_2_76XMLUri7getPortEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %199 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %198, ptr %199, align 8, !tbaa !80
  %200 = call noundef ptr @_ZNK11xercesc_2_76XMLUri20getRegBasedAuthorityEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %201 = load ptr, ptr %11, align 8, !tbaa !97
  %202 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %200, ptr noundef %201) #14
          to label %203 unwind label %224

203:                                              ; preds = %197
  store ptr %202, ptr %175, align 8, !tbaa !90
  %204 = load ptr, ptr %11, align 8, !tbaa !97
  %205 = load ptr, ptr %160, align 8, !tbaa !91
  %206 = load ptr, ptr %204, align 8, !tbaa !95
  %207 = getelementptr inbounds ptr, ptr %206, i64 3
  %208 = load ptr, ptr %207, align 8
  invoke void %208(ptr noundef nonnull align 8 dereferenceable(8) %204, ptr noundef %205) #14
          to label %209 unwind label %224

209:                                              ; preds = %203
  %210 = call noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %211 = load ptr, ptr %11, align 8, !tbaa !97
  %212 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %210, ptr noundef %211) #14
          to label %213 unwind label %224

213:                                              ; preds = %209
  store ptr %212, ptr %160, align 8, !tbaa !91
  %214 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %215 = load ptr, ptr %214, align 8, !tbaa !92
  %216 = icmp eq ptr %215, null
  br i1 %216, label %217, label %444

217:                                              ; preds = %213
  %218 = call noundef ptr @_ZNK11xercesc_2_76XMLUri14getQueryStringEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %219 = load ptr, ptr %11, align 8, !tbaa !97
  %220 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %218, ptr noundef %219) #14
          to label %221 unwind label %224

221:                                              ; preds = %217
  store ptr %220, ptr %214, align 8, !tbaa !92
  br label %444

222:                                              ; preds = %148
  %223 = landingpad { ptr, i32 }
          cleanup
  br label %449

224:                                              ; preds = %270, %258, %254, %250, %243, %230, %217, %209, %203, %197, %193, %189, %182, %178, %157, %154
  %225 = landingpad { ptr, i32 }
          cleanup
  br label %447

226:                                              ; preds = %163
  %227 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %228 = load ptr, ptr %227, align 8, !tbaa !87
  %229 = icmp eq ptr %228, null
  br i1 %229, label %230, label %444

230:                                              ; preds = %170, %174, %226
  %231 = call noundef ptr @_ZNK11xercesc_2_76XMLUri9getSchemeEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %232 = load ptr, ptr %11, align 8, !tbaa !97
  %233 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %231, ptr noundef %232) #14
          to label %234 unwind label %224

234:                                              ; preds = %230
  %235 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  store ptr %233, ptr %235, align 8, !tbaa !87
  %236 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %237 = load ptr, ptr %236, align 8, !tbaa !89
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %444

239:                                              ; preds = %234
  %240 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %241 = load ptr, ptr %240, align 8, !tbaa !90
  %242 = icmp eq ptr %241, null
  br i1 %242, label %243, label %444

243:                                              ; preds = %239
  %244 = load ptr, ptr %11, align 8, !tbaa !97
  %245 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %246 = load ptr, ptr %245, align 8, !tbaa !88
  %247 = load ptr, ptr %244, align 8, !tbaa !95
  %248 = getelementptr inbounds ptr, ptr %247, i64 3
  %249 = load ptr, ptr %248, align 8
  invoke void %249(ptr noundef nonnull align 8 dereferenceable(8) %244, ptr noundef %246) #14
          to label %250 unwind label %224

250:                                              ; preds = %243
  %251 = call noundef ptr @_ZNK11xercesc_2_76XMLUri11getUserInfoEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %252 = load ptr, ptr %11, align 8, !tbaa !97
  %253 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %251, ptr noundef %252) #14
          to label %254 unwind label %224

254:                                              ; preds = %250
  store ptr %253, ptr %245, align 8, !tbaa !88
  %255 = call noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %256 = load ptr, ptr %11, align 8, !tbaa !97
  %257 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %255, ptr noundef %256) #14
          to label %258 unwind label %224

258:                                              ; preds = %254
  store ptr %257, ptr %236, align 8, !tbaa !89
  %259 = call noundef i32 @_ZNK11xercesc_2_76XMLUri7getPortEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %260 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %259, ptr %260, align 8, !tbaa !80
  %261 = call noundef ptr @_ZNK11xercesc_2_76XMLUri20getRegBasedAuthorityEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %262 = load ptr, ptr %11, align 8, !tbaa !97
  %263 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %261, ptr noundef %262) #14
          to label %264 unwind label %224

264:                                              ; preds = %258
  store ptr %263, ptr %240, align 8, !tbaa !90
  %265 = load ptr, ptr %160, align 8, !tbaa !91
  %266 = icmp eq ptr %265, null
  br i1 %266, label %273, label %267

267:                                              ; preds = %264
  %268 = load i16, ptr %265, align 2, !tbaa !103
  %269 = icmp eq i16 %268, 0
  br i1 %269, label %273, label %270

270:                                              ; preds = %267
  %271 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef nonnull %265, ptr noundef nonnull @_ZN11xercesc_2_7L12SINGLE_SLASHE) #14
          to label %272 unwind label %224

272:                                              ; preds = %270
  br i1 %271, label %444, label %273

273:                                              ; preds = %272, %267, %264
  %274 = call noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %1) #14
  %275 = load ptr, ptr %11, align 8, !tbaa !97
  %276 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %274, ptr noundef %275) #14
          to label %277 unwind label %315

277:                                              ; preds = %273
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #15
  %278 = load ptr, ptr %11, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %276, ptr noundef %278) #14
  %279 = load ptr, ptr %160, align 8, !tbaa !91
  %280 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %279) #14
  %281 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %276) #14
  %282 = add i32 %100, %280
  %283 = add i32 %282, %281
  %284 = load ptr, ptr %11, align 8, !tbaa !97
  %285 = sext i32 %283 to i64
  %286 = shl nsw i64 %285, 1
  %287 = load ptr, ptr %284, align 8, !tbaa !95
  %288 = getelementptr inbounds ptr, ptr %287, i64 2
  %289 = load ptr, ptr %288, align 8
  %290 = invoke noundef ptr %289(ptr noundef nonnull align 8 dereferenceable(8) %284, i64 noundef %286) #14
          to label %291 unwind label %317

291:                                              ; preds = %277
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #15
  %292 = load ptr, ptr %11, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %290, ptr noundef %292) #14
  store i16 0, ptr %290, align 2, !tbaa !103
  %293 = load ptr, ptr %11, align 8, !tbaa !97
  %294 = load ptr, ptr %293, align 8, !tbaa !95
  %295 = getelementptr inbounds ptr, ptr %294, i64 2
  %296 = load ptr, ptr %295, align 8
  %297 = invoke noundef ptr %296(ptr noundef nonnull align 8 dereferenceable(8) %293, i64 noundef %286) #14
          to label %298 unwind label %319

298:                                              ; preds = %291
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #15
  %299 = load ptr, ptr %11, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %297, ptr noundef %299) #14
  %300 = load ptr, ptr %11, align 8, !tbaa !97
  %301 = load ptr, ptr %300, align 8, !tbaa !95
  %302 = getelementptr inbounds ptr, ptr %301, i64 2
  %303 = load ptr, ptr %302, align 8
  %304 = invoke noundef ptr %303(ptr noundef nonnull align 8 dereferenceable(8) %300, i64 noundef %286) #14
          to label %305 unwind label %321

305:                                              ; preds = %298
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %10) #15
  %306 = load ptr, ptr %11, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %10, ptr noundef %304, ptr noundef %306) #14
  %307 = icmp eq ptr %276, null
  br i1 %307, label %325, label %308

308:                                              ; preds = %305
  %309 = invoke noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEPKtt(ptr noundef nonnull %276, i16 noundef zeroext 47) #14
          to label %310 unwind label %323

310:                                              ; preds = %308
  %311 = icmp eq i32 %309, -1
  br i1 %311, label %325, label %312

312:                                              ; preds = %310
  %313 = add nuw nsw i32 %309, 1
  %314 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef nonnull %290, ptr noundef nonnull %276, i32 noundef 0, i32 noundef %313, ptr noundef %314) #14
          to label %325 unwind label %323

315:                                              ; preds = %273
  %316 = landingpad { ptr, i32 }
          cleanup
  br label %447

317:                                              ; preds = %277
  %318 = landingpad { ptr, i32 }
          cleanup
  br label %442

319:                                              ; preds = %291
  %320 = landingpad { ptr, i32 }
          cleanup
  br label %440

321:                                              ; preds = %298
  %322 = landingpad { ptr, i32 }
          cleanup
  br label %438

323:                                              ; preds = %312, %308
  %324 = landingpad { ptr, i32 }
          cleanup
  br label %436

325:                                              ; preds = %310, %312, %305
  %326 = load ptr, ptr %160, align 8, !tbaa !91
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %290, ptr noundef %326) #14
          to label %327 unwind label %341

327:                                              ; preds = %325, %338
  %328 = invoke noundef i32 @_ZN11xercesc_2_79XMLString12patternMatchEPKtS2_(ptr noundef nonnull %290, ptr noundef nonnull @_ZN11xercesc_2_7L15SLASH_DOT_SLASHE) #14
          to label %329 unwind label %339

329:                                              ; preds = %327
  %330 = icmp eq i32 %328, -1
  br i1 %330, label %343, label %331

331:                                              ; preds = %329
  %332 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %297, ptr noundef nonnull %290, i32 noundef 0, i32 noundef %328, ptr noundef %332) #14
          to label %333 unwind label %339

333:                                              ; preds = %331
  %334 = add nsw i32 %328, 2
  %335 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %290) #14
  %336 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %304, ptr noundef nonnull %290, i32 noundef %334, i32 noundef %335, ptr noundef %336) #14
          to label %337 unwind label %339

337:                                              ; preds = %333
  store i16 0, ptr %290, align 2, !tbaa !103
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %290, ptr noundef %297) #14
          to label %338 unwind label %339

338:                                              ; preds = %337
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %290, ptr noundef %304) #14
          to label %327 unwind label %339, !llvm.loop !107

339:                                              ; preds = %327, %331, %333, %337, %338
  %340 = landingpad { ptr, i32 }
          cleanup
  br label %436

341:                                              ; preds = %325, %343
  %342 = landingpad { ptr, i32 }
          cleanup
  br label %436

343:                                              ; preds = %329
  %344 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8endsWithEPKtS2_(ptr noundef nonnull %290, ptr noundef nonnull @_ZN11xercesc_2_7L9SLASH_DOTE) #14
          to label %345 unwind label %341

345:                                              ; preds = %343
  br i1 %344, label %346, label %351

346:                                              ; preds = %345
  %347 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %290) #14
  %348 = add i32 %347, -1
  %349 = zext i32 %348 to i64
  %350 = getelementptr inbounds i16, ptr %290, i64 %349
  store i16 0, ptr %350, align 2, !tbaa !103
  br label %351

351:                                              ; preds = %346, %345
  br label %352

352:                                              ; preds = %396, %351
  %353 = phi i32 [ 1, %351 ], [ %397, %396 ]
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds i16, ptr %290, i64 %354
  %356 = invoke noundef i32 @_ZN11xercesc_2_79XMLString12patternMatchEPKtS2_(ptr noundef nonnull %355, ptr noundef nonnull @_ZN11xercesc_2_7L18SLASH_DOTDOT_SLASHE) #14
          to label %357 unwind label %390

357:                                              ; preds = %352
  %358 = icmp eq i32 %356, -1
  br i1 %358, label %398, label %359

359:                                              ; preds = %357
  %360 = add nsw i32 %356, %353
  %361 = add nsw i32 %360, -1
  %362 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %297, ptr noundef nonnull %290, i32 noundef 0, i32 noundef %361, ptr noundef %362) #14
          to label %363 unwind label %390

363:                                              ; preds = %359
  %364 = invoke noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEPKtt(ptr noundef %297, i16 noundef zeroext 47) #14
          to label %365 unwind label %390

365:                                              ; preds = %363
  %366 = icmp eq i32 %364, -1
  br i1 %366, label %394, label %367

367:                                              ; preds = %365
  %368 = sext i32 %364 to i64
  %369 = getelementptr i16, ptr %290, i64 %368
  %370 = getelementptr i16, ptr %369, i64 1
  %371 = load i16, ptr %370, align 2, !tbaa !103
  %372 = icmp eq i16 %371, 46
  br i1 %372, label %373, label %380

373:                                              ; preds = %367
  %374 = getelementptr i16, ptr %369, i64 2
  %375 = load i16, ptr %374, align 2, !tbaa !103
  %376 = icmp eq i16 %375, 46
  %377 = add nsw i32 %364, 3
  %378 = icmp eq i32 %377, %360
  %379 = select i1 %376, i1 %378, i1 false
  br i1 %379, label %394, label %380

380:                                              ; preds = %373, %367
  %381 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %297, ptr noundef nonnull %290, i32 noundef 0, i32 noundef %364, ptr noundef %381) #14
          to label %382 unwind label %390

382:                                              ; preds = %380
  %383 = add nsw i32 %360, 3
  %384 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %290) #14
  %385 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %304, ptr noundef nonnull %290, i32 noundef %383, i32 noundef %384, ptr noundef %385) #14
          to label %386 unwind label %390

386:                                              ; preds = %382
  store i16 0, ptr %290, align 2, !tbaa !103
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %290, ptr noundef %297) #14
          to label %387 unwind label %390

387:                                              ; preds = %386
  invoke void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %290, ptr noundef %304) #14
          to label %388 unwind label %390

388:                                              ; preds = %387
  %389 = call i32 @llvm.umax.i32(i32 %364, i32 1)
  br label %396

390:                                              ; preds = %352, %359, %363, %380, %382, %386, %387
  %391 = landingpad { ptr, i32 }
          cleanup
  br label %436

392:                                              ; preds = %398, %401, %405, %426, %432
  %393 = landingpad { ptr, i32 }
          cleanup
  br label %436

394:                                              ; preds = %373, %365
  %395 = add nsw i32 %353, 4
  br label %396

396:                                              ; preds = %394, %388
  %397 = phi i32 [ %389, %388 ], [ %395, %394 ]
  br label %352, !llvm.loop !108

398:                                              ; preds = %357
  %399 = invoke noundef zeroext i1 @_ZN11xercesc_2_79XMLString8endsWithEPKtS2_(ptr noundef nonnull %290, ptr noundef nonnull @_ZN11xercesc_2_7L12SLASH_DOTDOTE) #14
          to label %400 unwind label %392

400:                                              ; preds = %398
  br i1 %399, label %401, label %423

401:                                              ; preds = %400
  %402 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %290) #14
  %403 = add i32 %402, -4
  %404 = load ptr, ptr %11, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %297, ptr noundef nonnull %290, i32 noundef 0, i32 noundef %403, ptr noundef %404) #14
          to label %405 unwind label %392

405:                                              ; preds = %401
  %406 = invoke noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEPKtt(ptr noundef %297, i16 noundef zeroext 47) #14
          to label %407 unwind label %392

407:                                              ; preds = %405
  %408 = icmp eq i32 %406, -1
  br i1 %408, label %423, label %409

409:                                              ; preds = %407
  %410 = sext i32 %406 to i64
  %411 = getelementptr i16, ptr %290, i64 %410
  %412 = getelementptr i16, ptr %411, i64 1
  %413 = load i16, ptr %412, align 2, !tbaa !103
  %414 = icmp eq i16 %413, 46
  br i1 %414, label %415, label %422

415:                                              ; preds = %409
  %416 = getelementptr i16, ptr %411, i64 2
  %417 = load i16, ptr %416, align 2, !tbaa !103
  %418 = icmp eq i16 %417, 46
  %419 = add i32 %402, -6
  %420 = icmp eq i32 %406, %419
  %421 = and i1 %420, %418
  br i1 %421, label %423, label %422

422:                                              ; preds = %415, %409
  store i16 0, ptr %412, align 2, !tbaa !103
  br label %423

423:                                              ; preds = %415, %407, %422, %400
  %424 = call noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %425 = icmp eq ptr %424, null
  br i1 %425, label %432, label %426

426:                                              ; preds = %423
  %427 = load ptr, ptr %11, align 8, !tbaa !97
  %428 = load ptr, ptr %160, align 8, !tbaa !91
  %429 = load ptr, ptr %427, align 8, !tbaa !95
  %430 = getelementptr inbounds ptr, ptr %429, i64 3
  %431 = load ptr, ptr %430, align 8
  invoke void %431(ptr noundef nonnull align 8 dereferenceable(8) %427, ptr noundef %428) #14
          to label %432 unwind label %392

432:                                              ; preds = %426, %423
  %433 = load ptr, ptr %11, align 8, !tbaa !97
  %434 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %290, ptr noundef %433) #14
          to label %435 unwind label %392

435:                                              ; preds = %432
  store ptr %434, ptr %160, align 8, !tbaa !91
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %444

436:                                              ; preds = %390, %392, %339, %341, %323
  %437 = phi { ptr, i32 } [ %324, %323 ], [ %340, %339 ], [ %342, %341 ], [ %391, %390 ], [ %393, %392 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %10) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %10) #15
  br label %438

438:                                              ; preds = %436, %321
  %439 = phi { ptr, i32 } [ %437, %436 ], [ %322, %321 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #15
  br label %440

440:                                              ; preds = %438, %319
  %441 = phi { ptr, i32 } [ %439, %438 ], [ %320, %319 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %8) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #15
  br label %442

442:                                              ; preds = %440, %317
  %443 = phi { ptr, i32 } [ %441, %440 ], [ %318, %317 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #15
  br label %447

444:                                              ; preds = %166, %158, %435, %272, %234, %239, %226, %213, %221
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %445

445:                                              ; preds = %145, %444
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %446

446:                                              ; preds = %33, %445
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  ret void

447:                                              ; preds = %315, %442, %224
  %448 = phi { ptr, i32 } [ %225, %224 ], [ %443, %442 ], [ %316, %315 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %6) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #15
  br label %449

449:                                              ; preds = %222, %447, %141, %127
  %450 = phi { ptr, i32 } [ %142, %141 ], [ %128, %127 ], [ %448, %447 ], [ %223, %222 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %451

451:                                              ; preds = %67, %71, %125, %449, %95, %75, %73, %69, %27, %25
  %452 = phi { ptr, i32 } [ %28, %27 ], [ %26, %25 ], [ %68, %67 ], [ %70, %69 ], [ %72, %71 ], [ %74, %73 ], [ %76, %75 ], [ %96, %95 ], [ %450, %449 ], [ %126, %125 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  resume { ptr, i32 } %452

453:                                              ; preds = %24
  unreachable
}

; Function Attrs: nofree nosync nounwind memory(none)
declare i32 @llvm.eh.typeid.for(ptr) #4

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  ret void
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = load ptr, ptr %0, align 8, !tbaa !100
  %3 = icmp eq ptr %2, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1
  %6 = load i64, ptr %5, align 8, !tbaa !102
  %7 = icmp eq i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::JanitorMemFunCall", ptr %0, i64 0, i32 1, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !102
  %11 = getelementptr inbounds i8, ptr %2, i64 %10
  %12 = and i64 %6, 1
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %11, align 8, !tbaa !95
  %16 = getelementptr i8, ptr %15, i64 %6
  %17 = getelementptr i8, ptr %16, i64 -1
  %18 = load ptr, ptr %17, align 8, !nosanitize !109
  br label %21

19:                                               ; preds = %8
  %20 = inttoptr i64 %6 to ptr
  br label %21

21:                                               ; preds = %19, %14
  %22 = phi ptr [ %18, %14 ], [ %20, %19 ]
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(88) %11) #14
          to label %23 unwind label %24

23:                                               ; preds = %21, %4, %1
  ret void

24:                                               ; preds = %21
  %25 = landingpad { ptr, i32 }
          catch ptr null
  %26 = extractvalue { ptr, i32 } %25, 0
  tail call void @__clang_call_terminate(ptr %26) #17
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 !prof !110 {
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
  tail call void @llvm.trap() #17
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #6

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2EPKS0_PKtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %5 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %6, align 8, !tbaa !80
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, i8 0, i64 64, i1 false)
  store ptr %3, ptr %8, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUri7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_76XMLUri10initializeEPKS0_PKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1, ptr noundef %2) #14
          to label %19 unwind label %9

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = call ptr @__cxa_begin_catch(ptr %15) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  invoke void @__cxa_rethrow() #16
          to label %25 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %22

19:                                               ; preds = %4
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %5) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  ret void

20:                                               ; preds = %17, %9
  %21 = phi { ptr, i32 } [ %10, %9 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %21

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %4, align 8, !tbaa !80
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %5, i8 0, i64 64, i1 false)
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  store ptr %8, ptr %6, align 8, !tbaa !97
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUri7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #14
          to label %19 unwind label %9

9:                                                ; preds = %2
  %10 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %11 = extractvalue { ptr, i32 } %10, 1
  %12 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = extractvalue { ptr, i32 } %10, 0
  %16 = call ptr @__cxa_begin_catch(ptr %15) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #16
          to label %25 unwind label %17

17:                                               ; preds = %14
  %18 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %20 unwind label %22

19:                                               ; preds = %2
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret void

20:                                               ; preds = %17, %9
  %21 = phi { ptr, i32 } [ %10, %9 ], [ %18, %17 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  resume { ptr, i32 } %21

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          catch ptr null
  %24 = extractvalue { ptr, i32 } %23, 0
  call void @__clang_call_terminate(ptr %24) #17
  unreachable

25:                                               ; preds = %14
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_713XSerializableC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 comdat align 2 !prof !111 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_713XSerializableE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr nocapture noundef nonnull align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1) local_unnamed_addr #2 align 2 !prof !79 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !97
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  store ptr %4, ptr %5, align 8, !tbaa !97
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !87
  %8 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %7, ptr noundef %4) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !87
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !88
  %12 = load ptr, ptr %5, align 8, !tbaa !97
  %13 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %11, ptr noundef %12) #14
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  store ptr %13, ptr %14, align 8, !tbaa !88
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !89
  %17 = load ptr, ptr %5, align 8, !tbaa !97
  %18 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %16, ptr noundef %17) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  store ptr %18, ptr %19, align 8, !tbaa !89
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 1
  %21 = load i32, ptr %20, align 8, !tbaa !80
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %21, ptr %22, align 8, !tbaa !80
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !90
  %25 = load ptr, ptr %5, align 8, !tbaa !97
  %26 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %24, ptr noundef %25) #14
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  store ptr %26, ptr %27, align 8, !tbaa !90
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !91
  %30 = load ptr, ptr %5, align 8, !tbaa !97
  %31 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %29, ptr noundef %30) #14
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  store ptr %31, ptr %32, align 8, !tbaa !91
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 7
  %34 = load ptr, ptr %33, align 8, !tbaa !92
  %35 = load ptr, ptr %5, align 8, !tbaa !97
  %36 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %34, ptr noundef %35) #14
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  store ptr %36, ptr %37, align 8, !tbaa !92
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %1, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !93
  %40 = load ptr, ptr %5, align 8, !tbaa !97
  %41 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %39, ptr noundef %40) #14
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  store ptr %41, ptr %42, align 8, !tbaa !93
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(88) ptr @_ZN11xercesc_2_76XMLUriaSERKS0_(ptr noundef nonnull returned align 8 dereferenceable(88) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(88) %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca %"class.xercesc_2_7::JanitorMemFunCall", align 8
  tail call void @_ZN11xercesc_2_76XMLUri7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEEC2EPS1_MS1_FvvE(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull %0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUri7cleanUpEv to i64), i64 0) #14
  invoke void @_ZN11xercesc_2_76XMLUri10initializeERKS0_(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %1) #14
          to label %14 unwind label %4

4:                                                ; preds = %2
  %5 = landingpad { ptr, i32 }
          cleanup
          catch ptr @_ZTIN11xercesc_2_720OutOfMemoryExceptionE
  %6 = extractvalue { ptr, i32 } %5, 1
  %7 = call i32 @llvm.eh.typeid.for(ptr nonnull @_ZTIN11xercesc_2_720OutOfMemoryExceptionE) #15
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %15

9:                                                ; preds = %4
  %10 = extractvalue { ptr, i32 } %5, 0
  %11 = call ptr @__cxa_begin_catch(ptr %10) #15
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  invoke void @__cxa_rethrow() #16
          to label %20 unwind label %12

12:                                               ; preds = %9
  %13 = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %15 unwind label %17

14:                                               ; preds = %2
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEE7releaseEv(ptr noundef nonnull align 8 dereferenceable(24) %3) #14
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  ret ptr %0

15:                                               ; preds = %12, %4
  %16 = phi { ptr, i32 } [ %5, %4 ], [ %13, %12 ]
  call void @_ZN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #13
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #15
  resume { ptr, i32 } %16

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          catch ptr null
  %19 = extractvalue { ptr, i32 } %18, 0
  call void @__clang_call_terminate(ptr %19) #17
  unreachable

20:                                               ; preds = %9
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriD2Ev(ptr noundef nonnull align 8 dereferenceable(88) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_76XMLUri7cleanUpEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
          to label %2 unwind label %3

2:                                                ; preds = %1
  tail call void @_ZN11xercesc_2_713XSerializableD2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #13
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #17
  unreachable
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString7releaseEPPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !112 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !113

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #14
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !95
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #14
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !114 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !115

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !103
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !116

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !103
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !117, !llvm.loop !118

11:                                               ; preds = %6
  %12 = ptrtoint ptr %8 to i64
  %13 = ptrtoint ptr %0 to i64
  %14 = sub i64 %12, %13
  %15 = lshr exact i64 %14, 1
  %16 = trunc i64 %15 to i32
  br label %17

17:                                               ; preds = %1, %3, %11
  %18 = phi i32 [ %16, %11 ], [ 0, %3 ], [ 0, %1 ]
  ret i32 %18
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString4trimEPt(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !119 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr %1, ptr %0, align 8, !tbaa !120
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !122
  ret void
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #14
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef, i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri16initializeSchemeEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = tail call noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef %1, ptr noundef nonnull @_ZN11xercesc_2_7L17SCHEME_SEPARATORSE) #14
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %2
  %7 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %7, ptr noundef nonnull @.str, i32 noundef 827, i32 noundef 272, ptr noundef %9) #14
          to label %10 unwind label %11

10:                                               ; preds = %6
  tail call void @__cxa_throw(ptr nonnull %7, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

11:                                               ; preds = %6
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %7) #15
  br label %35

13:                                               ; preds = %2
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #14
  %17 = add i32 %16, 1
  %18 = zext i32 %17 to i64
  %19 = shl nuw nsw i64 %18, 1
  %20 = load ptr, ptr %15, align 8, !tbaa !95
  %21 = getelementptr inbounds ptr, ptr %20, i64 2
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(8) %15, i64 noundef %19) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %24 = load ptr, ptr %14, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %23, ptr noundef %24) #14
  %25 = ptrtoint ptr %4 to i64
  %26 = ptrtoint ptr %1 to i64
  %27 = sub i64 %25, %26
  %28 = lshr exact i64 %27, 1
  %29 = trunc i64 %28 to i32
  %30 = load ptr, ptr %14, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %23, ptr noundef %1, i32 noundef 0, i32 noundef %29, ptr noundef %30) #14
          to label %31 unwind label %33

31:                                               ; preds = %13
  invoke void @_ZN11xercesc_2_76XMLUri9setSchemeEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %23) #14
          to label %32 unwind label %33

32:                                               ; preds = %31
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void

33:                                               ; preds = %31, %13
  %34 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %35

35:                                               ; preds = %33, %11
  %36 = phi { ptr, i32 } [ %34, %33 ], [ %12, %11 ]
  resume { ptr, i32 } %36
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !123 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #14
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef %0, ptr noundef %1, i32 noundef %3) #14
  %5 = icmp eq i32 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri19initializeAuthorityEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %5 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %6 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #14
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !97
  %9 = add nsw i32 %6, 1
  %10 = sext i32 %9 to i64
  %11 = shl nsw i64 %10, 1
  %12 = load ptr, ptr %8, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 2
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(8) %8, i64 noundef %11) #14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %16 = load ptr, ptr %7, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %15, ptr noundef %16) #14
  %17 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %1, i16 noundef zeroext 64) #14
          to label %18 unwind label %24

18:                                               ; preds = %2
  %19 = icmp eq i32 %17, -1
  br i1 %19, label %26, label %20

20:                                               ; preds = %18
  %21 = load ptr, ptr %7, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %15, ptr noundef %1, i32 noundef 0, i32 noundef %17, ptr noundef %21) #14
          to label %22 unwind label %24

22:                                               ; preds = %20
  %23 = add nuw nsw i32 %17, 1
  br label %26

24:                                               ; preds = %20, %2
  %25 = landingpad { ptr, i32 }
          cleanup
  br label %148

26:                                               ; preds = %18, %22
  %27 = phi ptr [ %15, %22 ], [ null, %18 ]
  %28 = phi i32 [ %23, %22 ], [ 0, %18 ]
  %29 = load ptr, ptr %7, align 8, !tbaa !97
  %30 = load ptr, ptr %29, align 8, !tbaa !95
  %31 = getelementptr inbounds ptr, ptr %30, i64 2
  %32 = load ptr, ptr %31, align 8
  %33 = invoke noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %11) #14
          to label %34 unwind label %56

34:                                               ; preds = %26
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #15
  %35 = load ptr, ptr %7, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %33, ptr noundef %35) #14
  %36 = icmp slt i32 %28, %6
  %37 = sext i32 %28 to i64
  br i1 %36, label %38, label %60

38:                                               ; preds = %34
  %39 = getelementptr inbounds i16, ptr %1, i64 %37
  %40 = load i16, ptr %39, align 2, !tbaa !103
  %41 = icmp eq i16 %40, 91
  br i1 %41, label %42, label %60

42:                                               ; preds = %38
  %43 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %39, i16 noundef zeroext 93) #14
          to label %44 unwind label %58

44:                                               ; preds = %42
  %45 = icmp eq i32 %43, -1
  br i1 %45, label %74, label %46

46:                                               ; preds = %44
  %47 = add nsw i32 %28, 1
  %48 = add i32 %47, %43
  %49 = icmp slt i32 %48, %6
  br i1 %49, label %50, label %74

50:                                               ; preds = %46
  %51 = sext i32 %48 to i64
  %52 = getelementptr inbounds i16, ptr %1, i64 %51
  %53 = load i16, ptr %52, align 2, !tbaa !103
  %54 = icmp eq i16 %53, 58
  %55 = add nuw nsw i32 %43, 1
  br i1 %54, label %63, label %74

56:                                               ; preds = %26
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %148

58:                                               ; preds = %74, %67, %60, %42
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %146

60:                                               ; preds = %34, %38
  %61 = getelementptr inbounds i16, ptr %1, i64 %37
  %62 = invoke noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %61, i16 noundef zeroext 58) #14
          to label %63 unwind label %58

63:                                               ; preds = %50, %60
  %64 = phi i32 [ %62, %60 ], [ %55, %50 ]
  %65 = icmp eq i32 %64, -1
  %66 = sext i32 %28 to i64
  br i1 %65, label %74, label %67

67:                                               ; preds = %63
  %68 = getelementptr inbounds i16, ptr %1, i64 %66
  %69 = load ptr, ptr %7, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %33, ptr noundef %68, i32 noundef 0, i32 noundef %64, ptr noundef %69) #14
          to label %70 unwind label %58

70:                                               ; preds = %67
  %71 = add nuw nsw i32 %64, 1
  %72 = add nsw i32 %71, %28
  %73 = icmp ne i32 %71, -1
  br label %79

74:                                               ; preds = %63, %50, %46, %44
  %75 = phi i64 [ %37, %50 ], [ %37, %46 ], [ %37, %44 ], [ %66, %63 ]
  %76 = getelementptr inbounds i16, ptr %1, i64 %75
  %77 = sub nsw i32 %6, %28
  %78 = load ptr, ptr %7, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %33, ptr noundef %76, i32 noundef 0, i32 noundef %77, ptr noundef %78) #14
          to label %79 unwind label %58

79:                                               ; preds = %74, %70
  %80 = phi i32 [ %72, %70 ], [ %6, %74 ]
  %81 = phi i1 [ %73, %70 ], [ false, %74 ]
  %82 = load ptr, ptr %7, align 8, !tbaa !97
  %83 = load ptr, ptr %82, align 8, !tbaa !95
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8
  %86 = invoke noundef ptr %85(ptr noundef nonnull align 8 dereferenceable(8) %82, i64 noundef %11) #14
          to label %87 unwind label %109

87:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #15
  %88 = load ptr, ptr %7, align 8, !tbaa !97
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %86, ptr noundef %88) #14
  %89 = icmp eq ptr %33, null
  br i1 %89, label %113, label %90

90:                                               ; preds = %87
  %91 = load i16, ptr %33, align 2, !tbaa !103
  %92 = icmp ne i16 %91, 0
  %93 = select i1 %92, i1 %81, i1 false
  %94 = icmp slt i32 %80, %6
  %95 = select i1 %93, i1 %94, i1 false
  br i1 %95, label %96, label %113

96:                                               ; preds = %90
  %97 = sext i32 %80 to i64
  %98 = getelementptr inbounds i16, ptr %1, i64 %97
  %99 = sub nsw i32 %6, %80
  %100 = load ptr, ptr %7, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %86, ptr noundef %98, i32 noundef 0, i32 noundef %99, ptr noundef %100) #14
          to label %101 unwind label %111

101:                                              ; preds = %96
  %102 = icmp eq ptr %86, null
  br i1 %102, label %113, label %103

103:                                              ; preds = %101
  %104 = load i16, ptr %86, align 2, !tbaa !103
  %105 = icmp eq i16 %104, 0
  br i1 %105, label %113, label %106

106:                                              ; preds = %103
  %107 = load ptr, ptr %7, align 8, !tbaa !97
  %108 = invoke noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef nonnull %86, ptr noundef %107) #14
          to label %113 unwind label %111

109:                                              ; preds = %79
  %110 = landingpad { ptr, i32 }
          cleanup
  br label %146

111:                                              ; preds = %144, %139, %136, %131, %122, %113, %106, %96
  %112 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  br label %146

113:                                              ; preds = %106, %101, %103, %90, %87
  %114 = phi i32 [ -1, %103 ], [ -1, %101 ], [ -1, %90 ], [ -1, %87 ], [ %108, %106 ]
  %115 = load ptr, ptr %7, align 8, !tbaa !97
  %116 = invoke noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiS2_PNS_13MemoryManagerE(ptr noundef %33, i32 noundef %114, ptr noundef %27, ptr noundef %115) #14
          to label %117 unwind label %111

117:                                              ; preds = %113
  br i1 %116, label %118, label %144

118:                                              ; preds = %117
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %120 = load ptr, ptr %119, align 8, !tbaa !89
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = load ptr, ptr %7, align 8, !tbaa !97
  %124 = load ptr, ptr %123, align 8, !tbaa !95
  %125 = getelementptr inbounds ptr, ptr %124, i64 3
  %126 = load ptr, ptr %125, align 8
  invoke void %126(ptr noundef nonnull align 8 dereferenceable(8) %123, ptr noundef nonnull %120) #14
          to label %127 unwind label %111

127:                                              ; preds = %122, %118
  %128 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %129 = load ptr, ptr %128, align 8, !tbaa !88
  %130 = icmp eq ptr %129, null
  br i1 %130, label %136, label %131

131:                                              ; preds = %127
  %132 = load ptr, ptr %7, align 8, !tbaa !97
  %133 = load ptr, ptr %132, align 8, !tbaa !95
  %134 = getelementptr inbounds ptr, ptr %133, i64 3
  %135 = load ptr, ptr %134, align 8
  invoke void %135(ptr noundef nonnull align 8 dereferenceable(8) %132, ptr noundef nonnull %129) #14
          to label %136 unwind label %111

136:                                              ; preds = %131, %127
  %137 = load ptr, ptr %7, align 8, !tbaa !97
  %138 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %33, ptr noundef %137) #14
          to label %139 unwind label %111

139:                                              ; preds = %136
  store ptr %138, ptr %119, align 8, !tbaa !89
  %140 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %114, ptr %140, align 8, !tbaa !80
  %141 = load ptr, ptr %7, align 8, !tbaa !97
  %142 = invoke noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %27, ptr noundef %141) #14
          to label %143 unwind label %111

143:                                              ; preds = %139
  store ptr %142, ptr %128, align 8, !tbaa !88
  br label %145

144:                                              ; preds = %117
  invoke void @_ZN11xercesc_2_76XMLUri20setRegBasedAuthorityEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) #14
          to label %145 unwind label %111

145:                                              ; preds = %144, %143
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  ret void

146:                                              ; preds = %109, %111, %58
  %147 = phi { ptr, i32 } [ %59, %58 ], [ %112, %111 ], [ %110, %109 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %4) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #15
  br label %148

148:                                              ; preds = %56, %146, %24
  %149 = phi { ptr, i32 } [ %25, %24 ], [ %147, %146 ], [ %57, %56 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  resume { ptr, i32 } %149
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7setHostEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !89
  %12 = load ptr, ptr %9, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #14
  br label %15

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  store ptr null, ptr %16, align 8, !tbaa !89
  tail call void @_ZN11xercesc_2_76XMLUri11setUserInfoEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null) #14
  tail call void @_ZN11xercesc_2_76XMLUri7setPortEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef -1) #14
  br label %46

17:                                               ; preds = %2
  %18 = load i16, ptr %1, align 2, !tbaa !103
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %22 = load ptr, ptr %21, align 8, !tbaa !97
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %22) #14
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %26 = load ptr, ptr %21, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %25, ptr noundef nonnull @.str, i32 noundef 1179, i32 noundef 271, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_HOSTE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %26) #14
          to label %27 unwind label %28

27:                                               ; preds = %24
  tail call void @__cxa_throw(ptr nonnull %25, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

28:                                               ; preds = %24
  %29 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %25) #15
  resume { ptr, i32 } %29

30:                                               ; preds = %20, %17
  %31 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %32 = icmp eq ptr %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %35 = load ptr, ptr %34, align 8, !tbaa !97
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !89
  %38 = load ptr, ptr %35, align 8, !tbaa !95
  %39 = getelementptr inbounds ptr, ptr %38, i64 3
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef %37) #14
  br label %41

41:                                               ; preds = %33, %30
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !97
  %44 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %43) #14
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  store ptr %44, ptr %45, align 8, !tbaa !89
  tail call void @_ZN11xercesc_2_76XMLUri20setRegBasedAuthorityEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null) #14
  br label %46

46:                                               ; preds = %41, %15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri14initializePathEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca [65 x i16], align 16
  %4 = alloca [65 x i16], align 16
  %5 = alloca [65 x i16], align 16
  %6 = alloca [65 x i16], align 16
  %7 = alloca [65 x i16], align 16
  %8 = alloca [65 x i16], align 16
  %9 = alloca [65 x i16], align 16
  %10 = alloca [65 x i16], align 16
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %15 = load ptr, ptr %14, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %13, ptr noundef nonnull @.str, i32 noundef 849, i32 noundef 266, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %15) #14
          to label %16 unwind label %17

16:                                               ; preds = %12
  tail call void @__cxa_throw(ptr nonnull %13, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

17:                                               ; preds = %12
  %18 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %13) #15
  br label %276

19:                                               ; preds = %2
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %1) #14
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %112

22:                                               ; preds = %19
  %23 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri9getSchemeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %22
  %26 = load i16, ptr %1, align 2, !tbaa !103
  %27 = icmp eq i16 %26, 47
  br i1 %27, label %30, label %28

28:                                               ; preds = %25
  %29 = zext nneg i32 %20 to i64
  br label %71

30:                                               ; preds = %22, %25
  %31 = zext nneg i32 %20 to i64
  br label %32

32:                                               ; preds = %30, %68
  %33 = phi i64 [ 0, %30 ], [ %69, %68 ]
  %34 = getelementptr inbounds i16, ptr %1, i64 %33
  %35 = load i16, ptr %34, align 2, !tbaa !103
  switch i16 %35, label %56 [
    i16 63, label %108
    i16 35, label %108
    i16 37, label %36
  ]

36:                                               ; preds = %32
  %37 = add nuw nsw i64 %33, 2
  %38 = trunc i64 %37 to i32
  %39 = icmp sgt i32 %20, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = getelementptr i16, ptr %34, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !103
  %43 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %42) #14
  br i1 %43, label %44, label %48

44:                                               ; preds = %40
  %45 = getelementptr inbounds i16, ptr %1, i64 %37
  %46 = load i16, ptr %45, align 2, !tbaa !103
  %47 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %46) #14
  br i1 %47, label %68, label %48

48:                                               ; preds = %44, %40, %36
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #15
  call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef nonnull %3, ptr noundef nonnull %34, i32 noundef 3) #14
  %49 = getelementptr inbounds [65 x i16], ptr %3, i64 0, i64 3
  store i16 0, ptr %49, align 2, !tbaa !103
  %50 = call ptr @__cxa_allocate_exception(i64 48) #15
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %50, ptr noundef nonnull @.str, i32 noundef 888, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %52) #14
          to label %53 unwind label %54

53:                                               ; preds = %48
  call void @__cxa_throw(ptr nonnull %50, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

54:                                               ; preds = %48
  %55 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %50) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #15
  br label %276

56:                                               ; preds = %32
  %57 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %35) #14
  br i1 %57, label %68, label %58

58:                                               ; preds = %56
  %59 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri15isPathCharacterEt(i16 noundef zeroext %35) #14
  br i1 %59, label %68, label %60

60:                                               ; preds = %58
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #15
  store i16 %35, ptr %4, align 16, !tbaa !103
  %61 = getelementptr inbounds [65 x i16], ptr %4, i64 0, i64 1
  store i16 0, ptr %61, align 2, !tbaa !103
  %62 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %62, ptr noundef nonnull @.str, i32 noundef 901, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef %64) #14
          to label %65 unwind label %66

65:                                               ; preds = %60
  call void @__cxa_throw(ptr nonnull %62, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

66:                                               ; preds = %60
  %67 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %62) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #15
  br label %276

68:                                               ; preds = %56, %58, %44
  %69 = add nuw nsw i64 %33, 1
  %70 = icmp eq i64 %69, %31
  br i1 %70, label %112, label %32, !llvm.loop !124

71:                                               ; preds = %28, %105
  %72 = phi i64 [ 0, %28 ], [ %106, %105 ]
  %73 = getelementptr inbounds i16, ptr %1, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !103
  switch i16 %74, label %95 [
    i16 63, label %110
    i16 35, label %110
    i16 37, label %75
  ]

75:                                               ; preds = %71
  %76 = add nuw nsw i64 %72, 2
  %77 = trunc i64 %76 to i32
  %78 = icmp sgt i32 %20, %77
  br i1 %78, label %79, label %87

79:                                               ; preds = %75
  %80 = getelementptr i16, ptr %73, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !103
  %82 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %81) #14
  br i1 %82, label %83, label %87

83:                                               ; preds = %79
  %84 = getelementptr inbounds i16, ptr %1, i64 %76
  %85 = load i16, ptr %84, align 2, !tbaa !103
  %86 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %85) #14
  br i1 %86, label %105, label %87

87:                                               ; preds = %83, %79, %75
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %5) #15
  call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef nonnull %5, ptr noundef nonnull %73, i32 noundef 3) #14
  %88 = getelementptr inbounds [65 x i16], ptr %5, i64 0, i64 3
  store i16 0, ptr %88, align 2, !tbaa !103
  %89 = call ptr @__cxa_allocate_exception(i64 48) #15
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %91 = load ptr, ptr %90, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %89, ptr noundef nonnull @.str, i32 noundef 933, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %5, ptr noundef null, ptr noundef null, ptr noundef %91) #14
          to label %92 unwind label %93

92:                                               ; preds = %87
  call void @__cxa_throw(ptr nonnull %89, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

93:                                               ; preds = %87
  %94 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %89) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %5) #15
  br label %276

95:                                               ; preds = %71
  %96 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt(i16 noundef zeroext %74) #14
  br i1 %96, label %105, label %97

97:                                               ; preds = %95
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %6) #15
  store i16 %74, ptr %6, align 16, !tbaa !103
  %98 = getelementptr inbounds [65 x i16], ptr %6, i64 0, i64 1
  store i16 0, ptr %98, align 2, !tbaa !103
  %99 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %101 = load ptr, ptr %100, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %99, ptr noundef nonnull @.str, i32 noundef 950, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PATHE, ptr noundef nonnull %6, ptr noundef null, ptr noundef null, ptr noundef %101) #14
          to label %102 unwind label %103

102:                                              ; preds = %97
  call void @__cxa_throw(ptr nonnull %99, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

103:                                              ; preds = %97
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %99) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %6) #15
  br label %276

105:                                              ; preds = %95, %83
  %106 = add nuw nsw i64 %72, 1
  %107 = icmp eq i64 %106, %29
  br i1 %107, label %112, label %71, !llvm.loop !125

108:                                              ; preds = %32, %32
  %109 = trunc i64 %33 to i32
  br label %112

110:                                              ; preds = %71, %71
  %111 = trunc i64 %72 to i32
  br label %112

112:                                              ; preds = %105, %68, %110, %108, %19
  %113 = phi i32 [ 0, %19 ], [ %109, %108 ], [ %111, %110 ], [ %20, %68 ], [ %20, %105 ]
  %114 = phi i16 [ 0, %19 ], [ %35, %108 ], [ %74, %110 ], [ %35, %68 ], [ %74, %105 ]
  %115 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %116 = icmp eq ptr %115, null
  br i1 %116, label %125, label %117

117:                                              ; preds = %112
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !97
  %120 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %121 = load ptr, ptr %120, align 8, !tbaa !91
  %122 = load ptr, ptr %119, align 8, !tbaa !95
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  tail call void %124(ptr noundef nonnull align 8 dereferenceable(8) %119, ptr noundef %121) #14
  br label %125

125:                                              ; preds = %117, %112
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %127 = load ptr, ptr %126, align 8, !tbaa !97
  %128 = add nuw nsw i32 %113, 1
  %129 = shl nuw i32 %128, 1
  %130 = zext i32 %129 to i64
  %131 = load ptr, ptr %127, align 8, !tbaa !95
  %132 = getelementptr inbounds ptr, ptr %131, i64 2
  %133 = load ptr, ptr %132, align 8
  %134 = tail call noundef ptr %133(ptr noundef nonnull align 8 dereferenceable(8) %127, i64 noundef %130) #14
  %135 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  store ptr %134, ptr %135, align 8, !tbaa !91
  %136 = load ptr, ptr %126, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %134, ptr noundef nonnull %1, i32 noundef 0, i32 noundef %113, ptr noundef %136) #14
  %137 = icmp eq i16 %114, 63
  br i1 %137, label %138, label %203

138:                                              ; preds = %125
  %139 = icmp slt i32 %128, %20
  br i1 %139, label %140, label %180

140:                                              ; preds = %138
  %141 = zext i32 %128 to i64
  br label %142

142:                                              ; preds = %140, %174
  %143 = phi i64 [ %141, %140 ], [ %175, %174 ]
  %144 = getelementptr inbounds i16, ptr %1, i64 %143
  %145 = load i16, ptr %144, align 2, !tbaa !103
  switch i16 %145, label %165 [
    i16 35, label %178
    i16 37, label %146
  ]

146:                                              ; preds = %142
  %147 = add nuw nsw i64 %143, 2
  %148 = trunc i64 %147 to i32
  %149 = icmp sgt i32 %20, %148
  br i1 %149, label %150, label %158

150:                                              ; preds = %146
  %151 = getelementptr i16, ptr %144, i64 1
  %152 = load i16, ptr %151, align 2, !tbaa !103
  %153 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %152) #14
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = getelementptr inbounds i16, ptr %1, i64 %147
  %156 = load i16, ptr %155, align 2, !tbaa !103
  %157 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %156) #14
  br i1 %157, label %174, label %158

158:                                              ; preds = %154, %150, %146
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %7) #15
  call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef nonnull %7, ptr noundef nonnull %144, i32 noundef 3) #14
  %159 = getelementptr inbounds [65 x i16], ptr %7, i64 0, i64 3
  store i16 0, ptr %159, align 2, !tbaa !103
  %160 = call ptr @__cxa_allocate_exception(i64 48) #15
  %161 = load ptr, ptr %126, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %160, ptr noundef nonnull @.str, i32 noundef 992, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %7, ptr noundef null, ptr noundef null, ptr noundef %161) #14
          to label %162 unwind label %163

162:                                              ; preds = %158
  call void @__cxa_throw(ptr nonnull %160, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

163:                                              ; preds = %158
  %164 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %160) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %7) #15
  br label %276

165:                                              ; preds = %142
  %166 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt(i16 noundef zeroext %145) #14
  br i1 %166, label %174, label %167

167:                                              ; preds = %165
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %8) #15
  store i16 %145, ptr %8, align 16, !tbaa !103
  %168 = getelementptr inbounds [65 x i16], ptr %8, i64 0, i64 1
  store i16 0, ptr %168, align 2, !tbaa !103
  %169 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %170 = load ptr, ptr %126, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %169, ptr noundef nonnull @.str, i32 noundef 1004, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %8, ptr noundef null, ptr noundef null, ptr noundef %170) #14
          to label %171 unwind label %172

171:                                              ; preds = %167
  call void @__cxa_throw(ptr nonnull %169, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

172:                                              ; preds = %167
  %173 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %169) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %8) #15
  br label %276

174:                                              ; preds = %165, %154
  %175 = add nuw nsw i64 %143, 1
  %176 = trunc i64 %175 to i32
  %177 = icmp sgt i32 %20, %176
  br i1 %177, label %142, label %180, !llvm.loop !126

178:                                              ; preds = %142
  %179 = trunc i64 %143 to i32
  br label %180

180:                                              ; preds = %174, %178, %138
  %181 = phi i32 [ %128, %138 ], [ %179, %178 ], [ %20, %174 ]
  %182 = phi i16 [ 63, %138 ], [ 35, %178 ], [ %145, %174 ]
  %183 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri14getQueryStringEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %184 = icmp eq ptr %183, null
  br i1 %184, label %192, label %185

185:                                              ; preds = %180
  %186 = load ptr, ptr %126, align 8, !tbaa !97
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %188 = load ptr, ptr %187, align 8, !tbaa !92
  %189 = load ptr, ptr %186, align 8, !tbaa !95
  %190 = getelementptr inbounds ptr, ptr %189, i64 3
  %191 = load ptr, ptr %190, align 8
  tail call void %191(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef %188) #14
  br label %192

192:                                              ; preds = %185, %180
  %193 = load ptr, ptr %126, align 8, !tbaa !97
  %194 = sub i32 %181, %113
  %195 = sext i32 %194 to i64
  %196 = shl nsw i64 %195, 1
  %197 = load ptr, ptr %193, align 8, !tbaa !95
  %198 = getelementptr inbounds ptr, ptr %197, i64 2
  %199 = load ptr, ptr %198, align 8
  %200 = tail call noundef ptr %199(ptr noundef nonnull align 8 dereferenceable(8) %193, i64 noundef %196) #14
  %201 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  store ptr %200, ptr %201, align 8, !tbaa !92
  %202 = load ptr, ptr %126, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %200, ptr noundef nonnull %1, i32 noundef %128, i32 noundef %181, ptr noundef %202) #14
  br label %203

203:                                              ; preds = %192, %125
  %204 = phi i32 [ %181, %192 ], [ %113, %125 ]
  %205 = phi i16 [ %182, %192 ], [ %114, %125 ]
  %206 = icmp eq i16 %205, 35
  br i1 %206, label %207, label %275

207:                                              ; preds = %203
  %208 = add nsw i32 %204, 1
  %209 = icmp slt i32 %208, %20
  br i1 %209, label %210, label %249

210:                                              ; preds = %207
  %211 = sext i32 %208 to i64
  %212 = sext i32 %20 to i64
  br label %213

213:                                              ; preds = %210, %245
  %214 = phi i64 [ %211, %210 ], [ %246, %245 ]
  %215 = getelementptr inbounds i16, ptr %1, i64 %214
  %216 = load i16, ptr %215, align 2, !tbaa !103
  %217 = icmp eq i16 %216, 37
  br i1 %217, label %218, label %236

218:                                              ; preds = %213
  %219 = add nsw i64 %214, 2
  %220 = icmp slt i64 %219, %212
  br i1 %220, label %221, label %229

221:                                              ; preds = %218
  %222 = getelementptr i16, ptr %215, i64 1
  %223 = load i16, ptr %222, align 2, !tbaa !103
  %224 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %223) #14
  br i1 %224, label %225, label %229

225:                                              ; preds = %221
  %226 = getelementptr inbounds i16, ptr %1, i64 %219
  %227 = load i16, ptr %226, align 2, !tbaa !103
  %228 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %227) #14
  br i1 %228, label %245, label %229

229:                                              ; preds = %225, %221, %218
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %9) #15
  call void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef nonnull %9, ptr noundef nonnull %215, i32 noundef 3) #14
  %230 = getelementptr inbounds [65 x i16], ptr %9, i64 0, i64 3
  store i16 0, ptr %230, align 2, !tbaa !103
  %231 = call ptr @__cxa_allocate_exception(i64 48) #15
  %232 = load ptr, ptr %126, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %231, ptr noundef nonnull @.str, i32 noundef 1043, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %9, ptr noundef null, ptr noundef null, ptr noundef %232) #14
          to label %233 unwind label %234

233:                                              ; preds = %229
  call void @__cxa_throw(ptr nonnull %231, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

234:                                              ; preds = %229
  %235 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %231) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %9) #15
  br label %276

236:                                              ; preds = %213
  %237 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt(i16 noundef zeroext %216) #14
  br i1 %237, label %245, label %238

238:                                              ; preds = %236
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %10) #15
  store i16 %216, ptr %10, align 16, !tbaa !103
  %239 = getelementptr inbounds [65 x i16], ptr %10, i64 0, i64 1
  store i16 0, ptr %239, align 2, !tbaa !103
  %240 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %241 = load ptr, ptr %126, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %240, ptr noundef nonnull @.str, i32 noundef 1055, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %10, ptr noundef null, ptr noundef null, ptr noundef %241) #14
          to label %242 unwind label %243

242:                                              ; preds = %238
  call void @__cxa_throw(ptr nonnull %240, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

243:                                              ; preds = %238
  %244 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %240) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %10) #15
  br label %276

245:                                              ; preds = %236, %225
  %246 = add nsw i64 %214, 1
  %247 = trunc i64 %246 to i32
  %248 = icmp eq i32 %20, %247
  br i1 %248, label %249, label %213, !llvm.loop !127

249:                                              ; preds = %245, %207
  %250 = phi i32 [ %208, %207 ], [ %20, %245 ]
  %251 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri11getFragmentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %252 = icmp eq ptr %251, null
  br i1 %252, label %260, label %253

253:                                              ; preds = %249
  %254 = load ptr, ptr %126, align 8, !tbaa !97
  %255 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %256 = load ptr, ptr %255, align 8, !tbaa !93
  %257 = load ptr, ptr %254, align 8, !tbaa !95
  %258 = getelementptr inbounds ptr, ptr %257, i64 3
  %259 = load ptr, ptr %258, align 8
  tail call void %259(ptr noundef nonnull align 8 dereferenceable(8) %254, ptr noundef %256) #14
  br label %260

260:                                              ; preds = %253, %249
  %261 = icmp sgt i32 %250, %208
  br i1 %261, label %262, label %273

262:                                              ; preds = %260
  %263 = load ptr, ptr %126, align 8, !tbaa !97
  %264 = sub i32 %250, %204
  %265 = sext i32 %264 to i64
  %266 = shl nsw i64 %265, 1
  %267 = load ptr, ptr %263, align 8, !tbaa !95
  %268 = getelementptr inbounds ptr, ptr %267, i64 2
  %269 = load ptr, ptr %268, align 8
  %270 = tail call noundef ptr %269(ptr noundef nonnull align 8 dereferenceable(8) %263, i64 noundef %266) #14
  %271 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  store ptr %270, ptr %271, align 8, !tbaa !93
  %272 = load ptr, ptr %126, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %270, ptr noundef nonnull %1, i32 noundef %208, i32 noundef %250, ptr noundef %272) #14
  br label %275

273:                                              ; preds = %260
  %274 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  store ptr null, ptr %274, align 8, !tbaa !93
  br label %275

275:                                              ; preds = %262, %273, %203
  ret void

276:                                              ; preds = %54, %66, %93, %103, %163, %172, %234, %243, %17
  %277 = phi { ptr, i32 } [ %18, %17 ], [ %235, %234 ], [ %244, %243 ], [ %164, %163 ], [ %173, %172 ], [ %55, %54 ], [ %67, %66 ], [ %94, %93 ], [ %104, %103 ]
  resume { ptr, i32 } %277
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri9getSchemeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri11getUserInfoEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !89
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_76XMLUri7getPortEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  %3 = load i32, ptr %2, align 8, !tbaa !80
  ret i32 %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri20getRegBasedAuthorityEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !91
  ret ptr %3
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri14getQueryStringEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %3 = load ptr, ptr %2, align 8, !tbaa !92
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEPKtt(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !79 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #14
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext %1, ptr noundef %0, i32 noundef %3) #14
  ret i32 %4
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString12patternMatchEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString8endsWithEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !79 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #14
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) #14
  %5 = sub i32 %4, %3
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef %0, i32 noundef %5, ptr noundef %1, i32 noundef 0, i32 noundef %3) #14
  ret i1 %6
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !128 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #14
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

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !79 {
  ret ptr @_ZN11xercesc_2_76XMLUni28fgMalformedURLException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_721MalformedURLException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !129
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #14
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #14
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #13
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_721MalformedURLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #14
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_721MalformedURLExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString13regionMatchesEPKtiS2_ij(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !128 {
  %3 = load ptr, ptr %0, align 8, !tbaa !120
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !132

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !133

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !95
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #14
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #18
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !120
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !122
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #10

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString8parseIntEPKtPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiS2_PNS_13MemoryManagerE(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !79 {
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %3) #14
  %6 = add i32 %1, 1
  %7 = icmp ult i32 %6, 65537
  %8 = and i1 %7, %5
  br i1 %8, label %9, label %38

9:                                                ; preds = %4
  %10 = icmp eq ptr %2, null
  br i1 %10, label %38, label %11

11:                                               ; preds = %9
  %12 = load i16, ptr %2, align 2, !tbaa !103
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %38, label %14

14:                                               ; preds = %11, %33
  %15 = phi i16 [ %36, %33 ], [ %12, %11 ]
  %16 = phi ptr [ %35, %33 ], [ %2, %11 ]
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %15) #14
  br i1 %17, label %33, label %18

18:                                               ; preds = %14
  %19 = load i16, ptr %16, align 2, !tbaa !103
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE, i16 noundef zeroext %19) #14
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i16, ptr %16, align 2, !tbaa !103
  %24 = icmp eq i16 %23, 37
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = getelementptr inbounds i16, ptr %16, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !103
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %27) #14
  br i1 %28, label %29, label %38

29:                                               ; preds = %25
  %30 = getelementptr inbounds i16, ptr %16, i64 2
  %31 = load i16, ptr %30, align 2, !tbaa !103
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %31) #14
  br i1 %32, label %33, label %38

33:                                               ; preds = %29, %14, %18
  %34 = phi i64 [ 1, %18 ], [ 1, %14 ], [ 3, %29 ]
  %35 = getelementptr inbounds i16, ptr %16, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !103
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %38, label %14, !llvm.loop !134

38:                                               ; preds = %33, %22, %25, %29, %11, %9, %4
  %39 = phi i1 [ false, %4 ], [ true, %9 ], [ true, %11 ], [ true, %33 ], [ false, %22 ], [ false, %25 ], [ false, %29 ]
  ret i1 %39
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri20setRegBasedAuthorityEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri20getRegBasedAuthorityEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !90
  %12 = load ptr, ptr %9, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #14
  br label %15

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  store ptr null, ptr %16, align 8, !tbaa !90
  br label %45

17:                                               ; preds = %2
  %18 = load i16, ptr %1, align 2, !tbaa !103
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %17
  %21 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKt(ptr noundef nonnull %1) #14
  br i1 %21, label %29, label %22

22:                                               ; preds = %20, %17
  %23 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %23, ptr noundef nonnull @.str, i32 noundef 1237, i32 noundef 271, ptr noundef nonnull @_ZN11xercesc_2_7L14errMsg_REGNAMEE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %25) #14
          to label %26 unwind label %27

26:                                               ; preds = %22
  tail call void @__cxa_throw(ptr nonnull %23, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

27:                                               ; preds = %22
  %28 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %23) #15
  resume { ptr, i32 } %28

29:                                               ; preds = %20
  %30 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri20getRegBasedAuthorityEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %40, label %32

32:                                               ; preds = %29
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %34 = load ptr, ptr %33, align 8, !tbaa !97
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %36 = load ptr, ptr %35, align 8, !tbaa !90
  %37 = load ptr, ptr %34, align 8, !tbaa !95
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(8) %34, ptr noundef %36) #14
  br label %40

40:                                               ; preds = %32, %29
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !97
  %43 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %42) #14
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  store ptr %43, ptr %44, align 8, !tbaa !90
  tail call void @_ZN11xercesc_2_76XMLUri7setHostEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null) #14
  br label %45

45:                                               ; preds = %40, %15
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri9setSchemeEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %11

4:                                                ; preds = %2
  %5 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %5, ptr noundef nonnull @.str, i32 noundef 1099, i32 noundef 270, ptr noundef nonnull @_ZN11xercesc_2_7L13errMsg_SCHEMEE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %7) #14
          to label %8 unwind label %9

8:                                                ; preds = %4
  tail call void @__cxa_throw(ptr nonnull %5, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

9:                                                ; preds = %4
  %10 = landingpad { ptr, i32 }
          cleanup
  br label %36

11:                                               ; preds = %2
  %12 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKt(ptr noundef nonnull %1) #14
  br i1 %12, label %20, label %13

13:                                               ; preds = %11
  %14 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %14, ptr noundef nonnull @.str, i32 noundef 1108, i32 noundef 271, ptr noundef nonnull @_ZN11xercesc_2_7L13errMsg_SCHEMEE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %16) #14
          to label %17 unwind label %18

17:                                               ; preds = %13
  tail call void @__cxa_throw(ptr nonnull %14, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

18:                                               ; preds = %13
  %19 = landingpad { ptr, i32 }
          cleanup
  br label %36

20:                                               ; preds = %11
  %21 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri9getSchemeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %22 = icmp eq ptr %21, null
  br i1 %22, label %31, label %23

23:                                               ; preds = %20
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %25 = load ptr, ptr %24, align 8, !tbaa !97
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !87
  %28 = load ptr, ptr %25, align 8, !tbaa !95
  %29 = getelementptr inbounds ptr, ptr %28, i64 3
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %27) #14
  br label %31

31:                                               ; preds = %23, %20
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %33) #14
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  store ptr %34, ptr %35, align 8, !tbaa !87
  tail call void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef %34) #14
  ret void

36:                                               ; preds = %18, %9
  %37 = phi ptr [ %14, %18 ], [ %5, %9 ]
  %38 = phi { ptr, i32 } [ %19, %18 ], [ %10, %9 ]
  tail call void @__cxa_free_exception(ptr %37) #15
  resume { ptr, i32 } %38
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLString9moveCharsEPtPKtj(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 comdat align 2 !prof !135 {
  %4 = zext i32 %2 to i64
  %5 = shl nuw nsw i64 %4, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %0, ptr align 2 %1, i64 %5, i1 false)
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %0) local_unnamed_addr #2 comdat align 2 !prof !136 {
  %2 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %0) #14
  br i1 %2, label %6, label %3, !prof !137

3:                                                ; preds = %1
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15MARK_CHARACTERSE, i16 noundef zeroext %0) #14
  %5 = icmp ne i32 %4, -1
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ true, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri15isPathCharacterEt(i16 noundef zeroext %0) local_unnamed_addr #2 comdat align 2 !prof !138 {
  %2 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri15PATH_CHARACTERSE, i16 noundef zeroext %0) #14
  %3 = icmp ne i32 %2, -1
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt(i16 noundef zeroext %0) local_unnamed_addr #2 comdat align 2 !prof !139 {
  %2 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %0) #14
  br i1 %2, label %6, label %3, !prof !140

3:                                                ; preds = %1
  %4 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri27MARK_OR_RESERVED_CHARACTERSE, i16 noundef zeroext %0) #14
  %5 = icmp ne i32 %4, -1
  br label %6

6:                                                ; preds = %3, %1
  %7 = phi i1 [ true, %1 ], [ %5, %3 ]
  ret i1 %7
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_76XMLUri11getFragmentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !93
  ret ptr %3
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKt(ptr noundef readonly %0) local_unnamed_addr #2 align 2 !prof !79 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %22, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !103
  %5 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isAlphaEt(i16 noundef zeroext %4) #14
  br i1 %5, label %6, label %22

6:                                                ; preds = %3
  %7 = getelementptr inbounds i16, ptr %0, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !103
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %22, label %10

10:                                               ; preds = %6, %18
  %11 = phi i16 [ %20, %18 ], [ %8, %6 ]
  %12 = phi ptr [ %19, %18 ], [ %7, %6 ]
  %13 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %11) #14
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load i16, ptr %12, align 2, !tbaa !103
  %16 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri17SCHEME_CHARACTERSE, i16 noundef zeroext %15) #14
  %17 = icmp eq i32 %16, -1
  br i1 %17, label %22, label %18

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds i16, ptr %12, i64 1
  %20 = load i16, ptr %19, align 2, !tbaa !103
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %10, !llvm.loop !141

22:                                               ; preds = %18, %14, %6, %3, %1
  %23 = phi i1 [ false, %1 ], [ false, %3 ], [ true, %6 ], [ true, %18 ], [ false, %14 ]
  ret i1 %23
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9lowerCaseEPt(ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri11setUserInfoEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %14, label %4

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %4
  %8 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull @.str, i32 noundef 1139, i32 noundef 273, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_USERINFOE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %10) #14
          to label %11 unwind label %12

11:                                               ; preds = %7
  tail call void @__cxa_throw(ptr nonnull %8, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

12:                                               ; preds = %7
  %13 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %8) #15
  resume { ptr, i32 } %13

14:                                               ; preds = %4, %2
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !97
  tail call void @_ZN11xercesc_2_76XMLUri20isConformantUserInfoEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %16) #14
  %17 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri11getUserInfoEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %14
  %20 = load ptr, ptr %15, align 8, !tbaa !97
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !88
  %23 = load ptr, ptr %20, align 8, !tbaa !95
  %24 = getelementptr inbounds ptr, ptr %23, i64 3
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(8) %20, ptr noundef %22) #14
  br label %26

26:                                               ; preds = %19, %14
  br i1 %3, label %33, label %27

27:                                               ; preds = %26
  %28 = load i16, ptr %1, align 2, !tbaa !103
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr %15, align 8, !tbaa !97
  %32 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %31) #14
  br label %33

33:                                               ; preds = %26, %27, %30
  %34 = phi ptr [ %32, %30 ], [ null, %27 ], [ null, %26 ]
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  store ptr %34, ptr %35, align 8, !tbaa !88
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri20isConformantUserInfoEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca [65 x i16], align 16
  %4 = icmp eq ptr %0, null
  br i1 %4, label %48, label %5

5:                                                ; preds = %2
  %6 = load i16, ptr %0, align 2, !tbaa !103
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %48, label %8

8:                                                ; preds = %5, %41
  %9 = phi i16 [ %44, %41 ], [ %6, %5 ]
  %10 = phi ptr [ %43, %41 ], [ %0, %5 ]
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %9) #14
  br i1 %11, label %41, label %12

12:                                               ; preds = %8
  %13 = load i16, ptr %10, align 2, !tbaa !103
  %14 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE, i16 noundef zeroext %13) #14
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load i16, ptr %10, align 2, !tbaa !103
  %18 = icmp eq i16 %17, 37
  br i1 %18, label %19, label %36

19:                                               ; preds = %16
  %20 = getelementptr inbounds i16, ptr %10, i64 1
  %21 = load i16, ptr %20, align 2, !tbaa !103
  %22 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %21) #14
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = getelementptr inbounds i16, ptr %10, i64 2
  %25 = load i16, ptr %24, align 2, !tbaa !103
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %25) #14
  br i1 %26, label %41, label %27

27:                                               ; preds = %23, %19
  %28 = getelementptr inbounds i16, ptr %10, i64 1
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #15
  store i16 37, ptr %3, align 16, !tbaa !103
  %29 = getelementptr inbounds [65 x i16], ptr %3, i64 0, i64 1
  %30 = load <2 x i16>, ptr %28, align 2, !tbaa !103
  store <2 x i16> %30, ptr %29, align 2, !tbaa !103
  %31 = getelementptr inbounds [65 x i16], ptr %3, i64 0, i64 3
  store i16 0, ptr %31, align 2, !tbaa !103
  %32 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %32, ptr noundef nonnull @.str, i32 noundef 1429, i32 noundef 268, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_USERINFOE, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %1) #14
          to label %33 unwind label %34

33:                                               ; preds = %27
  call void @__cxa_throw(ptr nonnull %32, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

34:                                               ; preds = %27
  %35 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %32) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #15
  br label %46

36:                                               ; preds = %16
  %37 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 1438, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_USERINFOE, ptr noundef nonnull %0, ptr noundef null, ptr noundef null, ptr noundef %1) #14
          to label %38 unwind label %39

38:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

39:                                               ; preds = %36
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %37) #15
  br label %46

41:                                               ; preds = %23, %8, %12
  %42 = phi i64 [ 1, %12 ], [ 1, %8 ], [ 3, %23 ]
  %43 = getelementptr inbounds i16, ptr %10, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !103
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %48, label %8, !llvm.loop !142

46:                                               ; preds = %39, %34
  %47 = phi { ptr, i32 } [ %35, %34 ], [ %40, %39 ]
  resume { ptr, i32 } %47

48:                                               ; preds = %41, %5, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7setPortEi(ptr noundef nonnull align 8 dereferenceable(88) %0, i32 noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = alloca [65 x i16], align 16
  %4 = alloca [65 x i16], align 16
  %5 = icmp ult i32 %1, 65536
  br i1 %5, label %6, label %17

6:                                                ; preds = %2
  %7 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %3) #15
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !97
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %1, ptr noundef nonnull %3, i32 noundef 64, i32 noundef 10, ptr noundef %11) #14
  %12 = call ptr @__cxa_allocate_exception(i64 48) #15
  %13 = load ptr, ptr %10, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %12, ptr noundef nonnull @.str, i32 noundef 1203, i32 noundef 273, ptr noundef nonnull @_ZN11xercesc_2_7L11errMsg_PORTE, ptr noundef nonnull %3, ptr noundef null, ptr noundef null, ptr noundef %13) #14
          to label %14 unwind label %15

14:                                               ; preds = %9
  call void @__cxa_throw(ptr nonnull %12, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

15:                                               ; preds = %9
  %16 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %12) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %3) #15
  br label %29

17:                                               ; preds = %2
  %18 = icmp eq i32 %1, -1
  br i1 %18, label %27, label %19

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 130, ptr nonnull %4) #15
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !97
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %1, ptr noundef nonnull %4, i32 noundef 64, i32 noundef 10, ptr noundef %21) #14
  %22 = call ptr @__cxa_allocate_exception(i64 48) #15
  %23 = load ptr, ptr %20, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 1213, i32 noundef 276, ptr noundef nonnull %4, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %23) #14
          to label %24 unwind label %25

24:                                               ; preds = %19
  call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

25:                                               ; preds = %19
  %26 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %22) #15
  call void @llvm.lifetime.end.p0(i64 130, ptr nonnull %4) #15
  br label %29

27:                                               ; preds = %17, %6
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 %1, ptr %28, align 8, !tbaa !80
  ret void

29:                                               ; preds = %25, %15
  %30 = phi { ptr, i32 } [ %16, %15 ], [ %26, %25 ]
  resume { ptr, i32 } %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !79 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %89, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 2, !tbaa !103
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %89, label %7

7:                                                ; preds = %4
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #14
  %9 = load i16, ptr %0, align 2, !tbaa !103
  switch i16 %9, label %12 [
    i16 91, label %10
    i16 46, label %89
    i16 45, label %89
  ]

10:                                               ; preds = %7
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri25isWellFormedIPv6ReferenceEPKti(ptr noundef nonnull %0, i32 noundef %8) #14
  br label %89

12:                                               ; preds = %7
  %13 = sext i32 %8 to i64
  %14 = getelementptr i16, ptr %0, i64 %13
  %15 = getelementptr i16, ptr %14, i64 -1
  %16 = load i16, ptr %15, align 2, !tbaa !103
  %17 = icmp eq i16 %16, 45
  br i1 %17, label %89, label %18

18:                                               ; preds = %12
  %19 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEPKtt(ptr noundef nonnull %0, i16 noundef zeroext 46) #14
  %20 = add nsw i32 %19, 1
  %21 = icmp eq i32 %20, %8
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = sext i32 %19 to i64
  br label %39

24:                                               ; preds = %18
  %25 = shl nsw i64 %13, 1
  %26 = load ptr, ptr %1, align 8, !tbaa !95
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %25) #14
  tail call void @_ZN11xercesc_2_79XMLString9subStringEPtPKtiiPNS_13MemoryManagerE(ptr noundef %29, ptr noundef nonnull %0, i32 noundef 0, i32 noundef %19, ptr noundef nonnull %1) #14
  %30 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEPKtt(ptr noundef %29, i16 noundef zeroext 46) #14
  %31 = load ptr, ptr %1, align 8, !tbaa !95
  %32 = getelementptr inbounds ptr, ptr %31, i64 3
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %29) #14
  %34 = sext i32 %30 to i64
  %35 = getelementptr i16, ptr %0, i64 %34
  %36 = getelementptr i16, ptr %35, i64 1
  %37 = load i16, ptr %36, align 2, !tbaa !103
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %37) #14
  br i1 %38, label %89, label %39

39:                                               ; preds = %22, %24
  %40 = phi i64 [ %23, %22 ], [ %34, %24 ]
  %41 = getelementptr i16, ptr %0, i64 %40
  %42 = getelementptr i16, ptr %41, i64 1
  %43 = load i16, ptr %42, align 2, !tbaa !103
  %44 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %43) #14
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %0, i32 noundef %8) #14
  br label %89

47:                                               ; preds = %39
  %48 = icmp sgt i32 %8, 255
  br i1 %48, label %89, label %49

49:                                               ; preds = %47
  %50 = icmp slt i32 %8, 1
  br i1 %50, label %89, label %51

51:                                               ; preds = %49
  %52 = zext nneg i32 %8 to i64
  br label %53

53:                                               ; preds = %51, %83
  %54 = phi i64 [ 0, %51 ], [ %85, %83 ]
  %55 = phi i32 [ 0, %51 ], [ %84, %83 ]
  %56 = getelementptr inbounds i16, ptr %0, i64 %54
  %57 = load i16, ptr %56, align 2, !tbaa !103
  %58 = icmp eq i16 %57, 46
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = icmp eq i64 %54, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %59
  %62 = getelementptr i16, ptr %56, i64 -1
  %63 = load i16, ptr %62, align 2, !tbaa !103
  %64 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %63) #14
  br i1 %64, label %65, label %89

65:                                               ; preds = %61, %59
  %66 = add nuw nsw i64 %54, 1
  %67 = icmp slt i64 %66, %13
  br i1 %67, label %68, label %83

68:                                               ; preds = %65
  %69 = getelementptr inbounds i16, ptr %0, i64 %66
  %70 = load i16, ptr %69, align 2, !tbaa !103
  %71 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %70) #14
  br i1 %71, label %83, label %89

72:                                               ; preds = %53
  %73 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %57) #14
  br i1 %73, label %80, label %74

74:                                               ; preds = %72
  %75 = load i16, ptr %56, align 2, !tbaa !103
  %76 = icmp ne i16 %75, 45
  %77 = add i32 %55, 1
  %78 = icmp ugt i32 %77, 63
  %79 = select i1 %76, i1 true, i1 %78
  br i1 %79, label %89, label %83

80:                                               ; preds = %72
  %81 = add i32 %55, 1
  %82 = icmp ugt i32 %81, 63
  br i1 %82, label %89, label %83

83:                                               ; preds = %74, %65, %68, %80
  %84 = phi i32 [ %81, %80 ], [ 0, %68 ], [ 0, %65 ], [ %77, %74 ]
  %85 = add nuw nsw i64 %54, 1
  %86 = icmp eq i64 %85, %52
  br i1 %86, label %87, label %53, !llvm.loop !143

87:                                               ; preds = %83
  %88 = icmp sge i64 %85, %13
  br label %89

89:                                               ; preds = %68, %61, %74, %80, %87, %49, %10, %7, %7, %12, %47, %24, %45, %2, %4
  %90 = phi i1 [ false, %4 ], [ false, %2 ], [ %11, %10 ], [ false, %7 ], [ false, %7 ], [ false, %12 ], [ %46, %45 ], [ false, %24 ], [ false, %47 ], [ true, %49 ], [ %88, %87 ], [ false, %80 ], [ false, %74 ], [ false, %61 ], [ false, %68 ]
  ret i1 %90
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKt(ptr noundef readonly %0) local_unnamed_addr #2 align 2 !prof !79 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %30, label %3

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !103
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %30, label %6

6:                                                ; preds = %3, %25
  %7 = phi i16 [ %28, %25 ], [ %4, %3 ]
  %8 = phi ptr [ %27, %25 ], [ %0, %3 ]
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %7) #14
  br i1 %9, label %25, label %10

10:                                               ; preds = %6
  %11 = load i16, ptr %8, align 2, !tbaa !103
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19REG_NAME_CHARACTERSE, i16 noundef zeroext %11) #14
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i16, ptr %8, align 2, !tbaa !103
  %16 = icmp eq i16 %15, 37
  br i1 %16, label %17, label %30

17:                                               ; preds = %14
  %18 = getelementptr inbounds i16, ptr %8, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !103
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %19) #14
  br i1 %20, label %21, label %30

21:                                               ; preds = %17
  %22 = getelementptr inbounds i16, ptr %8, i64 2
  %23 = load i16, ptr %22, align 2, !tbaa !103
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %23) #14
  br i1 %24, label %25, label %30

25:                                               ; preds = %21, %6, %10
  %26 = phi i64 [ 1, %10 ], [ 1, %6 ], [ 3, %21 ]
  %27 = getelementptr inbounds i16, ptr %8, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !103
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %6, !llvm.loop !144

30:                                               ; preds = %25, %14, %17, %21, %3, %1
  %31 = phi i1 [ false, %1 ], [ true, %3 ], [ true, %25 ], [ false, %14 ], [ false, %17 ], [ false, %21 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri7setPathEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !79 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %17

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %15, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %11 = load ptr, ptr %10, align 8, !tbaa !91
  %12 = load ptr, ptr %9, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #14
  br label %15

15:                                               ; preds = %7, %4
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  store ptr null, ptr %16, align 8, !tbaa !91
  tail call void @_ZN11xercesc_2_76XMLUri14setQueryStringEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null) #14
  tail call void @_ZN11xercesc_2_76XMLUri11setFragmentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef null) #14
  br label %18

17:                                               ; preds = %2
  tail call void @_ZN11xercesc_2_76XMLUri14initializePathEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull %1) #14
  br label %18

18:                                               ; preds = %17, %15
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri14setQueryStringEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri14getQueryStringEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !92
  %12 = load ptr, ptr %9, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #14
  br label %58

15:                                               ; preds = %2
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri12isGenericURIEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 1332, i32 noundef 267, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %20) #14
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %61

24:                                               ; preds = %15
  %25 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 1340, i32 noundef 274, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %30) #14
          to label %31 unwind label %32

31:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %61

34:                                               ; preds = %24
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %1) #14
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 1348, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L12errMsg_QUERYE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %39) #14
          to label %40 unwind label %41

40:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %61

43:                                               ; preds = %34
  %44 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri14getQueryStringEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !92
  %51 = load ptr, ptr %48, align 8, !tbaa !95
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %50) #14
  br label %54

54:                                               ; preds = %46, %43
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !97
  %57 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %56) #14
  br label %58

58:                                               ; preds = %4, %7, %54
  %59 = phi ptr [ %57, %54 ], [ null, %7 ], [ null, %4 ]
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  store ptr %59, ptr %60, align 8, !tbaa !92
  ret void

61:                                               ; preds = %41, %32, %22
  %62 = phi ptr [ %37, %41 ], [ %28, %32 ], [ %18, %22 ]
  %63 = phi { ptr, i32 } [ %42, %41 ], [ %33, %32 ], [ %23, %22 ]
  tail call void @__cxa_free_exception(ptr %62) #15
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri11setFragmentEPKt(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %4, label %15

4:                                                ; preds = %2
  %5 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri11getFragmentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %6 = icmp eq ptr %5, null
  br i1 %6, label %58, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = load ptr, ptr %9, align 8, !tbaa !95
  %13 = getelementptr inbounds ptr, ptr %12, i64 3
  %14 = load ptr, ptr %13, align 8
  tail call void %14(ptr noundef nonnull align 8 dereferenceable(8) %9, ptr noundef %11) #14
  br label %58

15:                                               ; preds = %2
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri12isGenericURIEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  br i1 %16, label %24, label %17

17:                                               ; preds = %15
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %20 = load ptr, ptr %19, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str, i32 noundef 1286, i32 noundef 267, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %20) #14
          to label %21 unwind label %22

21:                                               ; preds = %17
  tail call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

22:                                               ; preds = %17
  %23 = landingpad { ptr, i32 }
          cleanup
  br label %61

24:                                               ; preds = %15
  %25 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getPathEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 1294, i32 noundef 274, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef nonnull %1, ptr noundef null, ptr noundef null, ptr noundef %30) #14
          to label %31 unwind label %32

31:                                               ; preds = %27
  tail call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

32:                                               ; preds = %27
  %33 = landingpad { ptr, i32 }
          cleanup
  br label %61

34:                                               ; preds = %24
  %35 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef nonnull %1) #14
  br i1 %35, label %43, label %36

36:                                               ; preds = %34
  %37 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !97
  invoke void @_ZN11xercesc_2_721MalformedURLExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 1301, i32 noundef 269, ptr noundef nonnull @_ZN11xercesc_2_7L15errMsg_FRAGMENTE, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %39) #14
          to label %40 unwind label %41

40:                                               ; preds = %36
  tail call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_721MalformedURLExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %61

43:                                               ; preds = %34
  %44 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri11getFragmentEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !97
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %50 = load ptr, ptr %49, align 8, !tbaa !93
  %51 = load ptr, ptr %48, align 8, !tbaa !95
  %52 = getelementptr inbounds ptr, ptr %51, i64 3
  %53 = load ptr, ptr %52, align 8
  tail call void %53(ptr noundef nonnull align 8 dereferenceable(8) %48, ptr noundef %50) #14
  br label %54

54:                                               ; preds = %46, %43
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !97
  %57 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull %1, ptr noundef %56) #14
  br label %58

58:                                               ; preds = %4, %7, %54
  %59 = phi ptr [ %57, %54 ], [ null, %7 ], [ null, %4 ]
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  store ptr %59, ptr %60, align 8, !tbaa !93
  ret void

61:                                               ; preds = %41, %32, %22
  %62 = phi ptr [ %37, %41 ], [ %28, %32 ], [ %18, %22 ]
  %63 = phi { ptr, i32 } [ %42, %41 ], [ %33, %32 ], [ %23, %22 ]
  tail call void @__cxa_free_exception(ptr %62) #15
  resume { ptr, i32 } %63
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri12isGenericURIEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #0 align 2 !prof !79 {
  %2 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri7getHostEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  %3 = icmp ne ptr %2, null
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11isURIStringEPKt(ptr noundef readonly %0) local_unnamed_addr #2 align 2 !prof !145 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %26, label %3, !prof !146

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !103
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %26, label %6, !prof !146

6:                                                ; preds = %3, %21
  %7 = phi ptr [ %23, %21 ], [ %0, %3 ]
  %8 = phi i16 [ %24, %21 ], [ %4, %3 ]
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt(i16 noundef zeroext %8) #14
  br i1 %9, label %21, label %10, !prof !147

10:                                               ; preds = %6
  %11 = load i16, ptr %7, align 2, !tbaa !103
  %12 = icmp eq i16 %11, 37
  br i1 %12, label %13, label %26

13:                                               ; preds = %10
  %14 = getelementptr inbounds i16, ptr %7, i64 1
  %15 = load i16, ptr %14, align 2, !tbaa !103
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %15) #14
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = getelementptr inbounds i16, ptr %7, i64 2
  %19 = load i16, ptr %18, align 2, !tbaa !103
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %19) #14
  br i1 %20, label %21, label %26

21:                                               ; preds = %17, %6
  %22 = phi i64 [ 1, %6 ], [ 3, %17 ]
  %23 = getelementptr inbounds i16, ptr %7, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !103
  %25 = icmp eq i16 %24, 0
  br i1 %25, label %26, label %6, !prof !148, !llvm.loop !149

26:                                               ; preds = %17, %13, %10, %21, %1, %3
  %27 = phi i1 [ false, %3 ], [ false, %1 ], [ false, %17 ], [ false, %13 ], [ false, %10 ], [ true, %21 ]
  ret i1 %27
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isAlphaEt(i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) local_unnamed_addr #2 align 2 !prof !150 {
  %6 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti(ptr noundef %0, i32 noundef %1) #14
  %7 = add i32 %2, 1
  %8 = icmp ult i32 %7, 65537
  %9 = and i1 %8, %6
  br i1 %9, label %10, label %37, !prof !151

10:                                               ; preds = %5
  %11 = icmp sgt i32 %4, 0
  br i1 %11, label %12, label %37, !prof !152

12:                                               ; preds = %10, %33
  %13 = phi i32 [ %35, %33 ], [ 0, %10 ]
  %14 = zext nneg i32 %13 to i64
  %15 = getelementptr inbounds i16, ptr %3, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !103
  %17 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %16) #14
  br i1 %17, label %33, label %18

18:                                               ; preds = %12
  %19 = load i16, ptr %15, align 2, !tbaa !103
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19USERINFO_CHARACTERSE, i16 noundef zeroext %19) #14
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %22, label %33

22:                                               ; preds = %18
  %23 = load i16, ptr %15, align 2, !tbaa !103
  %24 = icmp eq i16 %23, 37
  br i1 %24, label %25, label %37

25:                                               ; preds = %22
  %26 = getelementptr i16, ptr %15, i64 1
  %27 = load i16, ptr %26, align 2, !tbaa !103
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %27) #14
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = getelementptr i16, ptr %15, i64 2
  %31 = load i16, ptr %30, align 2, !tbaa !103
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %31) #14
  br i1 %32, label %33, label %37

33:                                               ; preds = %29, %12, %18
  %34 = phi i32 [ 1, %18 ], [ 1, %12 ], [ 3, %29 ]
  %35 = add nuw nsw i32 %13, %34
  %36 = icmp slt i32 %35, %4
  br i1 %36, label %12, label %37, !prof !153, !llvm.loop !154

37:                                               ; preds = %33, %22, %25, %29, %10, %5
  %38 = phi i1 [ false, %5 ], [ true, %10 ], [ true, %33 ], [ false, %22 ], [ false, %25 ], [ false, %29 ]
  ret i1 %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !150 {
  %3 = icmp eq i32 %1, 0
  br i1 %3, label %77, label %4, !prof !155

4:                                                ; preds = %2
  %5 = load i16, ptr %0, align 2, !tbaa !103
  switch i16 %5, label %8 [
    i16 91, label %6
    i16 46, label %77
    i16 45, label %77
  ], !prof !156

6:                                                ; preds = %4
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri25isWellFormedIPv6ReferenceEPKti(ptr noundef nonnull %0, i32 noundef %1) #14
  br label %77

8:                                                ; preds = %4
  %9 = sext i32 %1 to i64
  %10 = getelementptr i16, ptr %0, i64 %9
  %11 = getelementptr i16, ptr %10, i64 -1
  %12 = load i16, ptr %11, align 2, !tbaa !103
  %13 = icmp eq i16 %12, 45
  br i1 %13, label %77, label %14, !prof !155

14:                                               ; preds = %8
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 46, ptr noundef nonnull %0, i32 noundef %1) #14
  %16 = add nsw i32 %15, 1
  %17 = icmp eq i32 %16, %1
  br i1 %17, label %20, label %18, !prof !155

18:                                               ; preds = %14
  %19 = sext i32 %15 to i64
  br label %27

20:                                               ; preds = %14
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj(i16 noundef zeroext 46, ptr noundef nonnull %0, i32 noundef %15) #14
  %22 = sext i32 %21 to i64
  %23 = getelementptr i16, ptr %0, i64 %22
  %24 = getelementptr i16, ptr %23, i64 1
  %25 = load i16, ptr %24, align 2, !tbaa !103
  %26 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %25) #14
  br i1 %26, label %77, label %27

27:                                               ; preds = %18, %20
  %28 = phi i64 [ %19, %18 ], [ %22, %20 ]
  %29 = getelementptr i16, ptr %0, i64 %28
  %30 = getelementptr i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !103
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %31) #14
  br i1 %32, label %33, label %35, !prof !155

33:                                               ; preds = %27
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %0, i32 noundef %1) #14
  br label %77

35:                                               ; preds = %27
  %36 = icmp sgt i32 %1, 255
  br i1 %36, label %77, label %37, !prof !155

37:                                               ; preds = %35
  %38 = icmp slt i32 %1, 1
  br i1 %38, label %77, label %39, !prof !152

39:                                               ; preds = %37
  %40 = zext nneg i32 %1 to i64
  br label %41

41:                                               ; preds = %39, %71
  %42 = phi i64 [ 0, %39 ], [ %73, %71 ]
  %43 = phi i32 [ 0, %39 ], [ %72, %71 ]
  %44 = getelementptr inbounds i16, ptr %0, i64 %42
  %45 = load i16, ptr %44, align 2, !tbaa !103
  %46 = icmp eq i16 %45, 46
  br i1 %46, label %47, label %60, !prof !157

47:                                               ; preds = %41
  %48 = icmp eq i64 %42, 0
  br i1 %48, label %53, label %49, !prof !158

49:                                               ; preds = %47
  %50 = getelementptr i16, ptr %44, i64 -1
  %51 = load i16, ptr %50, align 2, !tbaa !103
  %52 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %51) #14
  br i1 %52, label %53, label %77, !prof !159

53:                                               ; preds = %49, %47
  %54 = add nuw nsw i64 %42, 1
  %55 = icmp slt i64 %54, %9
  br i1 %55, label %56, label %71, !prof !159

56:                                               ; preds = %53
  %57 = getelementptr inbounds i16, ptr %0, i64 %54
  %58 = load i16, ptr %57, align 2, !tbaa !103
  %59 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %58) #14
  br i1 %59, label %71, label %77, !prof !159

60:                                               ; preds = %41
  %61 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %45) #14
  br i1 %61, label %68, label %62, !prof !160

62:                                               ; preds = %60
  %63 = load i16, ptr %44, align 2, !tbaa !103
  %64 = icmp ne i16 %63, 45
  %65 = add i32 %43, 1
  %66 = icmp ugt i32 %65, 63
  %67 = select i1 %64, i1 true, i1 %66
  br i1 %67, label %77, label %71, !prof !161

68:                                               ; preds = %60
  %69 = add i32 %43, 1
  %70 = icmp ugt i32 %69, 63
  br i1 %70, label %77, label %71, !prof !162

71:                                               ; preds = %62, %53, %56, %68
  %72 = phi i32 [ %69, %68 ], [ 0, %56 ], [ 0, %53 ], [ %65, %62 ]
  %73 = add nuw nsw i64 %42, 1
  %74 = icmp eq i64 %73, %40
  br i1 %74, label %75, label %41, !prof !163, !llvm.loop !164

75:                                               ; preds = %71
  %76 = icmp sge i64 %73, %9
  br label %77

77:                                               ; preds = %56, %49, %62, %68, %75, %37, %33, %20, %35, %8, %4, %4, %2, %6
  %78 = phi i1 [ %7, %6 ], [ false, %2 ], [ false, %4 ], [ false, %4 ], [ false, %8 ], [ %34, %33 ], [ false, %20 ], [ false, %35 ], [ true, %37 ], [ %76, %75 ], [ false, %68 ], [ false, %62 ], [ false, %49 ], [ false, %56 ]
  ret i1 %78
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !79 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %29, label %4

4:                                                ; preds = %2, %25
  %5 = phi i32 [ %27, %25 ], [ 0, %2 ]
  %6 = zext nneg i32 %5 to i64
  %7 = getelementptr inbounds i16, ptr %0, i64 %6
  %8 = load i16, ptr %7, align 2, !tbaa !103
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %8) #14
  br i1 %9, label %25, label %10

10:                                               ; preds = %4
  %11 = load i16, ptr %7, align 2, !tbaa !103
  %12 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19REG_NAME_CHARACTERSE, i16 noundef zeroext %11) #14
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %25

14:                                               ; preds = %10
  %15 = load i16, ptr %7, align 2, !tbaa !103
  %16 = icmp eq i16 %15, 37
  br i1 %16, label %17, label %29

17:                                               ; preds = %14
  %18 = getelementptr i16, ptr %7, i64 1
  %19 = load i16, ptr %18, align 2, !tbaa !103
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %19) #14
  br i1 %20, label %21, label %29

21:                                               ; preds = %17
  %22 = getelementptr i16, ptr %7, i64 2
  %23 = load i16, ptr %22, align 2, !tbaa !103
  %24 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %23) #14
  br i1 %24, label %25, label %29

25:                                               ; preds = %21, %4, %10
  %26 = phi i32 [ 1, %10 ], [ 1, %4 ], [ 3, %21 ]
  %27 = add nuw nsw i32 %5, %26
  %28 = icmp slt i32 %27, %1
  br i1 %28, label %4, label %29, !llvm.loop !165

29:                                               ; preds = %21, %17, %14, %25, %2
  %30 = phi i1 [ true, %2 ], [ true, %25 ], [ false, %14 ], [ false, %17 ], [ false, %21 ]
  ret i1 %30
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri25isWellFormedIPv6ReferenceEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !79 {
  %3 = alloca i32, align 4
  %4 = add nsw i32 %1, -1
  %5 = icmp sgt i32 %1, 2
  br i1 %5, label %6, label %65

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !103
  %8 = icmp eq i16 %7, 91
  br i1 %8, label %9, label %65

9:                                                ; preds = %6
  %10 = zext nneg i32 %4 to i64
  %11 = getelementptr inbounds i16, ptr %0, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !103
  %13 = icmp eq i16 %12, 93
  br i1 %13, label %14, label %65

14:                                               ; preds = %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !166
  %15 = call noundef i32 @_ZN11xercesc_2_76XMLUri15scanHexSequenceEPKtiiRi(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %63, label %17

17:                                               ; preds = %14
  %18 = icmp eq i32 %15, %4
  br i1 %18, label %19, label %22

19:                                               ; preds = %17
  %20 = load i32, ptr %3, align 4, !tbaa !166
  %21 = icmp eq i32 %20, 8
  br label %63

22:                                               ; preds = %17
  %23 = add nuw nsw i32 %15, 1
  %24 = icmp slt i32 %23, %4
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  %26 = sext i32 %15 to i64
  %27 = getelementptr inbounds i16, ptr %0, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !103
  %29 = icmp eq i16 %28, 58
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = sext i32 %23 to i64
  %32 = getelementptr inbounds i16, ptr %0, i64 %31
  %33 = load i16, ptr %32, align 2, !tbaa !103
  %34 = icmp eq i16 %33, 58
  %35 = load i32, ptr %3, align 4, !tbaa !166
  br i1 %34, label %36, label %42

36:                                               ; preds = %30
  %37 = add nsw i32 %35, 1
  store i32 %37, ptr %3, align 4, !tbaa !166
  %38 = icmp sgt i32 %35, 7
  br i1 %38, label %63, label %39

39:                                               ; preds = %36
  %40 = add nsw i32 %15, 2
  %41 = icmp eq i32 %40, %4
  br i1 %41, label %63, label %49

42:                                               ; preds = %30
  %43 = icmp eq i32 %35, 6
  br i1 %43, label %44, label %63

44:                                               ; preds = %42
  %45 = getelementptr inbounds i16, ptr %27, i64 1
  %46 = xor i32 %15, -1
  %47 = add i32 %4, %46
  %48 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %45, i32 noundef %47) #14
  br label %63

49:                                               ; preds = %39
  %50 = call noundef i32 @_ZN11xercesc_2_76XMLUri15scanHexSequenceEPKtiiRi(ptr noundef nonnull %0, i32 noundef %40, i32 noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  %51 = icmp eq i32 %50, -1
  br i1 %51, label %63, label %52

52:                                               ; preds = %49
  %53 = icmp eq i32 %50, %4
  br i1 %53, label %63, label %54

54:                                               ; preds = %52
  %55 = load i32, ptr %3, align 4, !tbaa !166
  %56 = icmp sgt i32 %55, %37
  %57 = zext i1 %56 to i32
  %58 = add nuw nsw i32 %50, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i16, ptr %0, i64 %59
  %61 = sub nsw i32 %4, %58
  %62 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr noundef nonnull %60, i32 noundef %61) #14
  br label %63

63:                                               ; preds = %54, %49, %52, %22, %25, %42, %39, %36, %14, %44, %19
  %64 = phi i1 [ %21, %19 ], [ %48, %44 ], [ false, %14 ], [ false, %36 ], [ true, %39 ], [ false, %42 ], [ false, %25 ], [ false, %22 ], [ %62, %54 ], [ false, %49 ], [ true, %52 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %65

65:                                               ; preds = %2, %6, %9, %63
  %66 = phi i1 [ %64, %63 ], [ false, %9 ], [ false, %6 ], [ false, %2 ]
  ret i1 %66
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !79 {
  %3 = icmp slt i32 %1, 1
  br i1 %3, label %60, label %4

4:                                                ; preds = %2
  %5 = zext nneg i32 %1 to i64
  %6 = zext nneg i32 %1 to i64
  br label %7

7:                                                ; preds = %4, %49
  %8 = phi i64 [ 0, %4 ], [ %52, %49 ]
  %9 = phi i1 [ false, %4 ], [ %53, %49 ]
  %10 = phi i32 [ 0, %4 ], [ %51, %49 ]
  %11 = phi i32 [ 0, %4 ], [ %50, %49 ]
  %12 = getelementptr inbounds i16, ptr %0, i64 %8
  %13 = load i16, ptr %12, align 2, !tbaa !103
  %14 = icmp eq i16 %13, 46
  br i1 %14, label %15, label %27

15:                                               ; preds = %7
  %16 = icmp eq i64 %8, 0
  br i1 %16, label %55, label %17

17:                                               ; preds = %15
  %18 = add nuw nsw i64 %8, 1
  %19 = icmp eq i64 %18, %5
  br i1 %19, label %55, label %20

20:                                               ; preds = %17
  %21 = getelementptr inbounds i16, ptr %0, i64 %18
  %22 = load i16, ptr %21, align 2, !tbaa !103
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %22) #14
  br i1 %23, label %24, label %55

24:                                               ; preds = %20
  %25 = add nsw i32 %10, 1
  %26 = icmp sgt i32 %10, 2
  br i1 %26, label %55, label %49

27:                                               ; preds = %7
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isDigitEt(i16 noundef zeroext %13) #14
  %29 = icmp slt i32 %11, 3
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %55

31:                                               ; preds = %27
  %32 = add nsw i32 %11, 1
  %33 = icmp eq i32 %32, 3
  br i1 %33, label %34, label %49

34:                                               ; preds = %31
  %35 = getelementptr i16, ptr %12, i64 -2
  %36 = load i16, ptr %35, align 2, !tbaa !103
  %37 = getelementptr i16, ptr %12, i64 -1
  %38 = load i16, ptr %37, align 2, !tbaa !103
  %39 = load i16, ptr %12, align 2, !tbaa !103
  %40 = icmp ult i16 %36, 50
  br i1 %40, label %49, label %41

41:                                               ; preds = %34
  %42 = icmp eq i16 %36, 50
  br i1 %42, label %43, label %55

43:                                               ; preds = %41
  %44 = icmp ult i16 %38, 53
  br i1 %44, label %49, label %45

45:                                               ; preds = %43
  %46 = icmp eq i16 %38, 53
  %47 = icmp ult i16 %39, 54
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %49, label %55

49:                                               ; preds = %34, %43, %45, %24, %31
  %50 = phi i32 [ 0, %24 ], [ %32, %31 ], [ 3, %45 ], [ 3, %43 ], [ 3, %34 ]
  %51 = phi i32 [ %25, %24 ], [ %10, %31 ], [ %10, %45 ], [ %10, %43 ], [ %10, %34 ]
  %52 = add nuw nsw i64 %8, 1
  %53 = icmp uge i64 %52, %6
  %54 = icmp eq i64 %52, %5
  br i1 %54, label %55, label %7, !llvm.loop !167

55:                                               ; preds = %45, %41, %27, %24, %15, %17, %20, %49
  %56 = phi i1 [ %53, %49 ], [ %9, %20 ], [ %9, %17 ], [ %9, %15 ], [ %9, %24 ], [ %9, %27 ], [ %9, %41 ], [ %9, %45 ]
  %57 = phi i32 [ %51, %49 ], [ %10, %20 ], [ %10, %17 ], [ %10, %15 ], [ %25, %24 ], [ %10, %27 ], [ %10, %41 ], [ %10, %45 ]
  %58 = icmp eq i32 %57, 3
  %59 = select i1 %56, i1 %58, i1 false
  br label %60

60:                                               ; preds = %55, %2
  %61 = phi i1 [ false, %2 ], [ %59, %55 ]
  ret i1 %61
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_76XMLUri15scanHexSequenceEPKtiiRi(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #2 align 2 !prof !79 {
  %5 = icmp slt i32 %1, %2
  br i1 %5, label %6, label %65

6:                                                ; preds = %4
  %7 = sext i32 %1 to i64
  %8 = sext i32 %2 to i64
  br label %9

9:                                                ; preds = %6, %50
  %10 = phi i64 [ %7, %6 ], [ %51, %50 ]
  %11 = phi i32 [ 0, %6 ], [ %52, %50 ]
  %12 = getelementptr inbounds i16, ptr %0, i64 %10
  %13 = load i16, ptr %12, align 2, !tbaa !103
  %14 = icmp eq i16 %13, 58
  br i1 %14, label %15, label %30

15:                                               ; preds = %9
  %16 = icmp sgt i32 %11, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %15
  %18 = load i32, ptr %3, align 4, !tbaa !166
  %19 = add nsw i32 %18, 1
  store i32 %19, ptr %3, align 4, !tbaa !166
  %20 = icmp sgt i32 %18, 7
  br i1 %20, label %65, label %23

21:                                               ; preds = %15
  %22 = icmp eq i32 %11, 0
  br i1 %22, label %63, label %23

23:                                               ; preds = %17, %21
  %24 = add nsw i64 %10, 1
  %25 = icmp slt i64 %24, %8
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = getelementptr inbounds i16, ptr %0, i64 %24
  %28 = load i16, ptr %27, align 2, !tbaa !103
  %29 = icmp eq i16 %28, 58
  br i1 %29, label %61, label %50

30:                                               ; preds = %9
  %31 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %13) #14
  br i1 %31, label %45, label %32

32:                                               ; preds = %30
  %33 = icmp eq i16 %13, 46
  %34 = add i32 %11, -1
  %35 = icmp ult i32 %34, 3
  %36 = and i1 %35, %33
  %37 = load i32, ptr %3, align 4
  %38 = icmp slt i32 %37, 7
  %39 = select i1 %36, i1 %38, i1 false
  br i1 %39, label %40, label %65

40:                                               ; preds = %32
  %41 = trunc i64 %10 to i32
  %42 = xor i32 %11, -1
  %43 = add i32 %41, %42
  %44 = tail call i32 @llvm.smax.i32(i32 %43, i32 %1)
  br label %65

45:                                               ; preds = %30
  %46 = icmp sgt i32 %11, 3
  br i1 %46, label %65, label %47

47:                                               ; preds = %45
  %48 = add nsw i32 %11, 1
  %49 = add nsw i64 %10, 1
  br label %50

50:                                               ; preds = %47, %23, %26
  %51 = phi i64 [ %49, %47 ], [ %24, %23 ], [ %24, %26 ]
  %52 = phi i32 [ %48, %47 ], [ 0, %23 ], [ 0, %26 ]
  %53 = icmp eq i64 %51, %8
  br i1 %53, label %54, label %9, !llvm.loop !168

54:                                               ; preds = %50
  %55 = icmp sgt i32 %52, 0
  br i1 %55, label %56, label %65

56:                                               ; preds = %54
  %57 = load i32, ptr %3, align 4, !tbaa !166
  %58 = add nsw i32 %57, 1
  store i32 %58, ptr %3, align 4, !tbaa !166
  %59 = icmp slt i32 %57, 8
  %60 = select i1 %59, i32 %2, i32 -1
  br label %65

61:                                               ; preds = %26
  %62 = trunc i64 %10 to i32
  br label %65

63:                                               ; preds = %21
  %64 = trunc i64 %10 to i32
  br label %65

65:                                               ; preds = %17, %45, %61, %63, %4, %54, %56, %32, %40
  %66 = phi i32 [ %44, %40 ], [ -1, %32 ], [ -1, %54 ], [ %60, %56 ], [ -1, %4 ], [ %62, %61 ], [ %64, %63 ], [ -1, %45 ], [ -1, %17 ]
  ret i32 %66
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri13buildFullTextEv(ptr noundef nonnull align 8 dereferenceable(88) %0) local_unnamed_addr #2 align 2 !prof !79 {
  %2 = alloca [17 x i16], align 16
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !87
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %4) #14
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %7) #14
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !89
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8
  %14 = select i1 %11, ptr %13, ptr %10
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %14) #14
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 6
  %17 = load ptr, ptr %16, align 8, !tbaa !91
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %17) #14
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 7
  %20 = load ptr, ptr %19, align 8, !tbaa !92
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %20) #14
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 3
  %23 = load ptr, ptr %22, align 8, !tbaa !88
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %23) #14
  %25 = add i32 %5, 38
  %26 = add i32 %25, %8
  %27 = add i32 %26, %15
  %28 = add i32 %27, %18
  %29 = add i32 %28, %21
  %30 = add i32 %29, %24
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !97
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 9
  %34 = load ptr, ptr %33, align 8, !tbaa !94
  %35 = load ptr, ptr %32, align 8, !tbaa !95
  %36 = getelementptr inbounds ptr, ptr %35, i64 3
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef %34) #14
  %38 = load ptr, ptr %31, align 8, !tbaa !97
  %39 = zext i32 %30 to i64
  %40 = shl nuw nsw i64 %39, 1
  %41 = load ptr, ptr %38, align 8, !tbaa !95
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %38, i64 noundef %40) #14
  store ptr %44, ptr %33, align 8, !tbaa !94
  store i16 0, ptr %44, align 2, !tbaa !103
  %45 = load ptr, ptr %3, align 8, !tbaa !87
  %46 = icmp eq ptr %45, null
  br i1 %46, label %54, label %47

47:                                               ; preds = %1
  %48 = tail call noundef ptr @_ZNK11xercesc_2_76XMLUri9getSchemeEv(ptr noundef nonnull align 8 dereferenceable(88) %0) #14
  tail call void @_ZN11xercesc_2_79XMLString9catStringEPtPKt(ptr noundef nonnull %44, ptr noundef %48) #14
  %49 = load ptr, ptr %33, align 8, !tbaa !94
  %50 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %49) #14
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i16, ptr %44, i64 %51
  %53 = getelementptr inbounds i16, ptr %52, i64 1
  store i16 58, ptr %52, align 2, !tbaa !103
  br label %54

54:                                               ; preds = %47, %1
  %55 = phi ptr [ %53, %47 ], [ %44, %1 ]
  %56 = load ptr, ptr %9, align 8, !tbaa !89
  %57 = icmp eq ptr %56, null
  %58 = load ptr, ptr %12, align 8
  %59 = icmp eq ptr %58, null
  %60 = select i1 %57, i1 %59, i1 false
  br i1 %60, label %95, label %61

61:                                               ; preds = %54
  %62 = getelementptr inbounds i16, ptr %55, i64 1
  store i16 47, ptr %55, align 2, !tbaa !103
  %63 = getelementptr inbounds i16, ptr %55, i64 2
  store i16 47, ptr %62, align 2, !tbaa !103
  br i1 %57, label %90, label %64

64:                                               ; preds = %61
  %65 = load ptr, ptr %22, align 8, !tbaa !88
  %66 = icmp eq ptr %65, null
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %63, ptr noundef nonnull %65) #14
  %68 = load ptr, ptr %22, align 8, !tbaa !88
  %69 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %68) #14
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, ptr %63, i64 %70
  %72 = getelementptr inbounds i16, ptr %71, i64 1
  store i16 64, ptr %71, align 2, !tbaa !103
  %73 = load ptr, ptr %9, align 8, !tbaa !89
  br label %74

74:                                               ; preds = %67, %64
  %75 = phi ptr [ %73, %67 ], [ %56, %64 ]
  %76 = phi ptr [ %72, %67 ], [ %63, %64 ]
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %76, ptr noundef %75) #14
  %77 = load ptr, ptr %9, align 8, !tbaa !89
  %78 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %77) #14
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i16, ptr %76, i64 %79
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  %82 = load i32, ptr %81, align 8, !tbaa !80
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %95, label %84

84:                                               ; preds = %74
  %85 = getelementptr inbounds i16, ptr %80, i64 1
  store i16 58, ptr %80, align 2, !tbaa !103
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %2) #15
  %86 = load ptr, ptr %31, align 8, !tbaa !97
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %82, ptr noundef nonnull %2, i32 noundef 16, i32 noundef 10, ptr noundef %86) #14
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %85, ptr noundef nonnull %2) #14
  %87 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %2) #14
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i16, ptr %85, i64 %88
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %2) #15
  br label %95

90:                                               ; preds = %61
  tail call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %63, ptr noundef %58) #14
  %91 = load ptr, ptr %12, align 8, !tbaa !90
  %92 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %91) #14
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds i16, ptr %63, i64 %93
  br label %95

95:                                               ; preds = %54, %90, %84, %74
  %96 = phi ptr [ %89, %84 ], [ %80, %74 ], [ %94, %90 ], [ %55, %54 ]
  %97 = load ptr, ptr %16, align 8, !tbaa !91
  %98 = icmp eq ptr %97, null
  br i1 %98, label %104, label %99

99:                                               ; preds = %95
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %96, ptr noundef nonnull %97) #14
  %100 = load ptr, ptr %16, align 8, !tbaa !91
  %101 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %100) #14
  %102 = zext i32 %101 to i64
  %103 = getelementptr inbounds i16, ptr %96, i64 %102
  br label %104

104:                                              ; preds = %99, %95
  %105 = phi ptr [ %103, %99 ], [ %96, %95 ]
  %106 = load ptr, ptr %19, align 8, !tbaa !92
  %107 = icmp eq ptr %106, null
  br i1 %107, label %114, label %108

108:                                              ; preds = %104
  %109 = getelementptr inbounds i16, ptr %105, i64 1
  store i16 63, ptr %105, align 2, !tbaa !103
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %109, ptr noundef nonnull %106) #14
  %110 = load ptr, ptr %19, align 8, !tbaa !92
  %111 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %110) #14
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds i16, ptr %109, i64 %112
  br label %114

114:                                              ; preds = %108, %104
  %115 = phi ptr [ %113, %108 ], [ %105, %104 ]
  %116 = load ptr, ptr %6, align 8, !tbaa !93
  %117 = icmp eq ptr %116, null
  br i1 %117, label %124, label %118

118:                                              ; preds = %114
  %119 = getelementptr inbounds i16, ptr %115, i64 1
  store i16 35, ptr %115, align 2, !tbaa !103
  call void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef nonnull %119, ptr noundef nonnull %116) #14
  %120 = load ptr, ptr %6, align 8, !tbaa !93
  %121 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %120) #14
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i16, ptr %119, i64 %122
  br label %124

124:                                              ; preds = %118, %114
  %125 = phi ptr [ %123, %118 ], [ %115, %114 ]
  store i16 0, ptr %125, align 2, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString10copyStringEPtPKt(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEPKS0_PKt(ptr noundef readnone %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !79 {
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %1, %2 ], [ %8, %4 ]
  %6 = load i16, ptr %5, align 2, !tbaa !103
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %6) #14
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %4, label %9, !llvm.loop !169

9:                                                ; preds = %4
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %5) #14
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi i32 [ %21, %16 ], [ %10, %9 ]
  %14 = phi i64 [ %17, %16 ], [ %11, %9 ]
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %12
  %17 = add nsw i64 %14, -1
  %18 = getelementptr inbounds i16, ptr %5, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !103
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %19) #14
  %21 = add i32 %13, -1
  br i1 %20, label %12, label %24, !llvm.loop !170

22:                                               ; preds = %12
  %23 = icmp ne ptr %0, null
  br label %106

24:                                               ; preds = %16
  %25 = trunc i64 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !166
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 58) #14
  %27 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 47) #14
  %28 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 63) #14
  %29 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 35) #14
  %30 = icmp slt i32 %26, 1
  br i1 %30, label %43, label %31

31:                                               ; preds = %24
  %32 = icmp sgt i32 %26, %27
  %33 = icmp ne i32 %27, -1
  %34 = and i1 %32, %33
  br i1 %34, label %45, label %35

35:                                               ; preds = %31
  %36 = icmp sgt i32 %26, %28
  %37 = icmp ne i32 %28, -1
  %38 = and i1 %36, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %35
  %40 = icmp sgt i32 %26, %29
  %41 = icmp ne i32 %29, -1
  %42 = and i1 %40, %41
  br i1 %42, label %45, label %51

43:                                               ; preds = %24
  %44 = icmp eq i32 %26, 0
  br i1 %44, label %104, label %45

45:                                               ; preds = %31, %35, %39, %43
  %46 = icmp eq ptr %0, null
  %47 = icmp ne i32 %29, 0
  %48 = and i1 %46, %47
  %49 = icmp eq i32 %25, 0
  %50 = or i1 %48, %49
  br i1 %50, label %104, label %62

51:                                               ; preds = %39
  %52 = call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri13processSchemeEPKtRi(ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  br i1 %52, label %53, label %104

53:                                               ; preds = %51
  %54 = load i32, ptr %3, align 4, !tbaa !166
  %55 = add nsw i32 %54, 1
  %56 = icmp eq i32 %55, %25
  br i1 %56, label %104, label %57

57:                                               ; preds = %53
  %58 = sext i32 %55 to i64
  %59 = getelementptr inbounds i16, ptr %5, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !103
  %61 = icmp eq i16 %60, 35
  br i1 %61, label %104, label %62

62:                                               ; preds = %45, %57
  %63 = phi i1 [ true, %57 ], [ false, %45 ]
  %64 = phi i32 [ %55, %57 ], [ 0, %45 ]
  %65 = add nsw i32 %64, 1
  %66 = icmp slt i32 %65, %25
  br i1 %66, label %67, label %95

67:                                               ; preds = %62
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds i16, ptr %5, i64 %68
  %70 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef nonnull %69, ptr noundef nonnull @_ZN11xercesc_2_7L12DOUBLE_SLASHE) #14
  br i1 %70, label %71, label %95

71:                                               ; preds = %67
  %72 = add nsw i32 %64, 2
  %73 = icmp slt i32 %72, %25
  br i1 %73, label %74, label %95

74:                                               ; preds = %71
  %75 = add nsw i64 %68, 2
  %76 = shl i64 %14, 32
  %77 = ashr exact i64 %76, 32
  br label %78

78:                                               ; preds = %74, %82
  %79 = phi i64 [ %75, %74 ], [ %83, %82 ]
  %80 = getelementptr inbounds i16, ptr %5, i64 %79
  %81 = load i16, ptr %80, align 2, !tbaa !103
  switch i16 %81, label %82 [
    i16 63, label %85
    i16 47, label %85
    i16 35, label %85
  ]

82:                                               ; preds = %78
  %83 = add nsw i64 %79, 1
  %84 = icmp slt i64 %83, %77
  br i1 %84, label %78, label %87, !llvm.loop !171

85:                                               ; preds = %78, %78, %78
  %86 = trunc i64 %79 to i32
  br label %87

87:                                               ; preds = %82, %85
  %88 = phi i32 [ %86, %85 ], [ %13, %82 ]
  %89 = icmp sgt i32 %88, %72
  br i1 %89, label %90, label %95

90:                                               ; preds = %87
  %91 = sext i32 %72 to i64
  %92 = getelementptr inbounds i16, ptr %5, i64 %91
  %93 = sub nsw i32 %88, %72
  %94 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti(ptr noundef nonnull %92, i32 noundef %93) #14
  br i1 %94, label %95, label %104

95:                                               ; preds = %71, %87, %90, %67, %62
  %96 = phi i32 [ %88, %87 ], [ %88, %90 ], [ %64, %67 ], [ %64, %62 ], [ %72, %71 ]
  %97 = icmp slt i32 %96, %25
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = sext i32 %96 to i64
  %100 = getelementptr inbounds i16, ptr %5, i64 %99
  %101 = sub nsw i32 %25, %96
  %102 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11processPathEPKtib(ptr noundef nonnull %100, i32 noundef %101, i1 noundef zeroext %63) #14
  br i1 %102, label %103, label %104

103:                                              ; preds = %98, %95
  br label %104

104:                                              ; preds = %103, %90, %98, %53, %57, %51, %43, %45
  %105 = phi i1 [ false, %45 ], [ false, %43 ], [ false, %51 ], [ false, %57 ], [ false, %53 ], [ true, %103 ], [ false, %90 ], [ false, %98 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %106

106:                                              ; preds = %22, %104
  %107 = phi i1 [ %105, %104 ], [ %23, %22 ]
  ret i1 %107
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %0) local_unnamed_addr #0 comdat align 2 !prof !172 {
  %2 = zext i16 %0 to i64
  %3 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, i64 0, i64 %2
  %4 = load i8, ptr %3, align 1, !tbaa !173
  %5 = icmp slt i8 %4, 0
  ret i1 %5
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri13processSchemeEPKtRi(ptr noundef %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1) local_unnamed_addr #2 align 2 !prof !150 {
  %3 = tail call noundef ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_(ptr noundef %0, ptr noundef nonnull @_ZN11xercesc_2_7L17SCHEME_SEPARATORSE) #14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %12, label %5, !prof !155

5:                                                ; preds = %2
  %6 = ptrtoint ptr %3 to i64
  %7 = ptrtoint ptr %0 to i64
  %8 = sub i64 %6, %7
  %9 = lshr exact i64 %8, 1
  %10 = trunc i64 %9 to i32
  store i32 %10, ptr %1, align 4, !tbaa !166
  %11 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti(ptr noundef %0, i32 noundef %10) #14
  br label %12

12:                                               ; preds = %2, %5
  %13 = phi i1 [ %11, %5 ], [ false, %2 ]
  ret i1 %13
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !150 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %0, i16 noundef zeroext 64) #14
  %4 = icmp eq i32 %3, -1
  br i1 %4, label %9, label %5, !prof !174

5:                                                ; preds = %2
  %6 = icmp slt i32 %3, %1
  br i1 %6, label %7, label %9

7:                                                ; preds = %5
  %8 = add nuw nsw i32 %3, 1
  br label %9

9:                                                ; preds = %2, %5, %7
  %10 = phi i32 [ %8, %7 ], [ 0, %5 ], [ 0, %2 ]
  %11 = phi ptr [ %0, %7 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %5 ], [ @_ZN11xercesc_2_76XMLUni15fgZeroLenStringE, %2 ]
  %12 = phi i32 [ %3, %7 ], [ 0, %5 ], [ 0, %2 ]
  %13 = icmp slt i32 %10, %1
  %14 = sext i32 %10 to i64
  br i1 %13, label %15, label %34, !prof !174

15:                                               ; preds = %9
  %16 = getelementptr inbounds i16, ptr %0, i64 %14
  %17 = load i16, ptr %16, align 2, !tbaa !103
  %18 = icmp eq i16 %17, 91
  br i1 %18, label %19, label %34, !prof !155

19:                                               ; preds = %15
  %20 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %16, i16 noundef zeroext 93) #14
  %21 = icmp eq i32 %20, -1
  br i1 %21, label %38, label %22

22:                                               ; preds = %19
  %23 = icmp slt i32 %20, %1
  br i1 %23, label %24, label %47

24:                                               ; preds = %22
  %25 = add nsw i32 %10, 1
  %26 = add i32 %25, %20
  %27 = icmp slt i32 %26, %1
  br i1 %27, label %28, label %38

28:                                               ; preds = %24
  %29 = sext i32 %26 to i64
  %30 = getelementptr inbounds i16, ptr %0, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !103
  %32 = icmp eq i16 %31, 58
  %33 = add nuw nsw i32 %20, 1
  br i1 %32, label %40, label %38

34:                                               ; preds = %9, %15
  %35 = getelementptr inbounds i16, ptr %0, i64 %14
  %36 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef %35, i16 noundef zeroext 58) #14
  %37 = icmp slt i32 %36, %1
  br i1 %37, label %40, label %38, !prof !174

38:                                               ; preds = %19, %24, %28, %34
  %39 = getelementptr inbounds i16, ptr %0, i64 %14
  br label %44

40:                                               ; preds = %28, %34
  %41 = phi i32 [ %33, %28 ], [ %36, %34 ]
  %42 = getelementptr inbounds i16, ptr %0, i64 %14
  %43 = icmp eq i32 %41, -1
  br i1 %43, label %44, label %47, !prof !175

44:                                               ; preds = %40, %38
  %45 = phi ptr [ %39, %38 ], [ %42, %40 ]
  %46 = sub nsw i32 %1, %10
  br label %79

47:                                               ; preds = %22, %40
  %48 = phi ptr [ %42, %40 ], [ %16, %22 ]
  %49 = phi i32 [ %41, %40 ], [ %20, %22 ]
  %50 = add i32 %10, 1
  %51 = add i32 %50, %49
  %52 = icmp ne i32 %49, 0
  %53 = icmp slt i32 %51, %1
  %54 = and i1 %52, %53
  br i1 %54, label %55, label %79, !prof !176

55:                                               ; preds = %47
  %56 = sext i32 %51 to i64
  %57 = getelementptr inbounds i16, ptr %0, i64 %56
  %58 = load i16, ptr %57, align 2, !tbaa !103
  %59 = icmp eq i16 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %55
  %61 = sub nsw i32 %1, %51
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %79

63:                                               ; preds = %60
  %64 = zext nneg i32 %61 to i64
  br label %65

65:                                               ; preds = %63, %72
  %66 = phi i64 [ 0, %63 ], [ %77, %72 ]
  %67 = phi i32 [ 0, %63 ], [ %76, %72 ]
  %68 = getelementptr inbounds i16, ptr %57, i64 %66
  %69 = load i16, ptr %68, align 2, !tbaa !103
  %70 = add i16 %69, -58
  %71 = icmp ult i16 %70, -10
  br i1 %71, label %86, label %72

72:                                               ; preds = %65
  %73 = zext nneg i16 %69 to i32
  %74 = mul nsw i32 %67, 10
  %75 = add i32 %74, -48
  %76 = add i32 %75, %73
  %77 = add nuw nsw i64 %66, 1
  %78 = icmp ult i64 %77, %64
  br i1 %78, label %65, label %79, !llvm.loop !177

79:                                               ; preds = %72, %60, %55, %44, %47
  %80 = phi i32 [ %49, %47 ], [ %46, %44 ], [ %49, %55 ], [ %49, %60 ], [ %49, %72 ]
  %81 = phi ptr [ %48, %47 ], [ %45, %44 ], [ %48, %55 ], [ %48, %60 ], [ %48, %72 ]
  %82 = phi i32 [ -1, %47 ], [ -1, %44 ], [ -1, %55 ], [ 0, %60 ], [ %76, %72 ]
  %83 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i(ptr noundef %81, i32 noundef %80, i32 noundef %82, ptr noundef %11, i32 noundef %12) #14
  br i1 %83, label %86, label %84, !prof !174

84:                                               ; preds = %79
  %85 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKti(ptr noundef %0, i32 noundef %1) #14
  br label %86

86:                                               ; preds = %65, %79, %84
  %87 = phi i1 [ true, %79 ], [ %85, %84 ], [ false, %65 ]
  ret i1 %87
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11processPathEPKtib(ptr nocapture noundef readonly %0, i32 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !150 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %87, label %5, !prof !155

5:                                                ; preds = %3
  br i1 %2, label %6, label %9, !prof !174

6:                                                ; preds = %5
  %7 = load i16, ptr %0, align 2, !tbaa !103
  %8 = icmp eq i16 %7, 47
  br label %9

9:                                                ; preds = %6, %5
  %10 = phi i1 [ true, %5 ], [ %8, %6 ]
  %11 = icmp sgt i32 %1, 0
  br i1 %11, label %12, label %87, !prof !178

12:                                               ; preds = %9, %35
  %13 = phi i64 [ %37, %35 ], [ 0, %9 ]
  %14 = getelementptr inbounds i16, ptr %0, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !103
  switch i16 %15, label %28 [
    i16 63, label %39
    i16 35, label %39
    i16 37, label %16
  ], !prof !179

16:                                               ; preds = %12
  %17 = add nuw nsw i64 %13, 2
  %18 = trunc i64 %17 to i32
  %19 = icmp slt i32 %18, %1
  br i1 %19, label %20, label %87

20:                                               ; preds = %16
  %21 = getelementptr i16, ptr %14, i64 1
  %22 = load i16, ptr %21, align 2, !tbaa !103
  %23 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %22) #14
  br i1 %23, label %24, label %87

24:                                               ; preds = %20
  %25 = getelementptr inbounds i16, ptr %0, i64 %17
  %26 = load i16, ptr %25, align 2, !tbaa !103
  %27 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %26) #14
  br i1 %27, label %35, label %87

28:                                               ; preds = %12
  %29 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt(i16 noundef zeroext %15) #14
  br i1 %29, label %35, label %30, !prof !180

30:                                               ; preds = %28
  br i1 %10, label %31, label %33, !prof !181

31:                                               ; preds = %30
  %32 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri15isPathCharacterEt(i16 noundef zeroext %15) #14
  br i1 %32, label %35, label %87, !prof !181

33:                                               ; preds = %30
  %34 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isReservedCharacterEt(i16 noundef zeroext %15) #14
  br i1 %34, label %35, label %87

35:                                               ; preds = %31, %28, %33, %24
  %36 = zext nneg i32 %1 to i64
  %37 = add nuw nsw i64 %13, 1
  %38 = icmp eq i64 %37, %36
  br i1 %38, label %41, label %12, !prof !182, !llvm.loop !183

39:                                               ; preds = %12, %12
  %40 = trunc i64 %13 to i32
  br label %41

41:                                               ; preds = %35, %39
  %42 = phi i32 [ %40, %39 ], [ %1, %35 ]
  switch i16 %15, label %87 [
    i16 63, label %43
    i16 35, label %43
  ]

43:                                               ; preds = %41, %41
  %44 = getelementptr i16, ptr %0, i64 2
  %45 = add nsw i32 %42, 1
  %46 = icmp slt i32 %45, %1
  br i1 %46, label %47, label %87

47:                                               ; preds = %43
  %48 = icmp ne i16 %15, 63
  %49 = zext nneg i32 %1 to i64
  br label %54

50:                                               ; preds = %59
  %51 = trunc i64 %60 to i32
  %52 = add nsw i32 %51, 1
  %53 = icmp slt i32 %52, %1
  br i1 %53, label %54, label %87, !llvm.loop !184

54:                                               ; preds = %47, %50
  %55 = phi i32 [ %52, %50 ], [ %45, %47 ]
  %56 = phi i1 [ true, %50 ], [ %48, %47 ]
  %57 = phi i32 [ %51, %50 ], [ %42, %47 ]
  %58 = sext i32 %55 to i64
  br label %59

59:                                               ; preds = %54, %83
  %60 = phi i64 [ %58, %54 ], [ %84, %83 ]
  %61 = phi i32 [ %57, %54 ], [ %86, %83 ]
  %62 = getelementptr inbounds i16, ptr %0, i64 %60
  %63 = load i16, ptr %62, align 2, !tbaa !103
  %64 = icmp ne i16 %63, 35
  %65 = or i1 %64, %56
  br i1 %65, label %66, label %50

66:                                               ; preds = %59
  %67 = icmp eq i16 %63, 37
  br i1 %67, label %68, label %81

68:                                               ; preds = %66
  %69 = add nsw i32 %61, 3
  %70 = icmp slt i32 %69, %1
  br i1 %70, label %71, label %87

71:                                               ; preds = %68
  %72 = sext i32 %61 to i64
  %73 = getelementptr i16, ptr %44, i64 %72
  %74 = load i16, ptr %73, align 2, !tbaa !103
  %75 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %74) #14
  br i1 %75, label %76, label %87

76:                                               ; preds = %71
  %77 = sext i32 %69 to i64
  %78 = getelementptr inbounds i16, ptr %0, i64 %77
  %79 = load i16, ptr %78, align 2, !tbaa !103
  %80 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString5isHexEt(i16 noundef zeroext %79) #14
  br i1 %80, label %83, label %87

81:                                               ; preds = %66
  %82 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt(i16 noundef zeroext %63) #14
  br i1 %82, label %83, label %87

83:                                               ; preds = %81, %76
  %84 = add nsw i64 %60, 1
  %85 = icmp slt i64 %84, %49
  %86 = trunc i64 %60 to i32
  br i1 %85, label %59, label %87, !llvm.loop !184

87:                                               ; preds = %31, %33, %16, %20, %24, %50, %83, %76, %71, %68, %81, %9, %43, %3, %41
  %88 = phi i1 [ true, %41 ], [ true, %3 ], [ true, %43 ], [ true, %9 ], [ true, %83 ], [ false, %76 ], [ false, %71 ], [ false, %68 ], [ false, %81 ], [ true, %50 ], [ false, %24 ], [ false, %20 ], [ false, %16 ], [ false, %33 ], [ false, %31 ]
  ret i1 %88
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt(i1 noundef zeroext %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !150 {
  %3 = alloca i32, align 4
  br label %4

4:                                                ; preds = %4, %2
  %5 = phi ptr [ %1, %2 ], [ %8, %4 ]
  %6 = load i16, ptr %5, align 2, !tbaa !103
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %6) #14
  %8 = getelementptr inbounds i16, ptr %5, i64 1
  br i1 %7, label %4, label %9, !prof !155, !llvm.loop !185

9:                                                ; preds = %4
  %10 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %5) #14
  %11 = sext i32 %10 to i64
  br label %12

12:                                               ; preds = %16, %9
  %13 = phi i32 [ %21, %16 ], [ %10, %9 ]
  %14 = phi i64 [ %17, %16 ], [ %11, %9 ]
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %103, label %16, !prof !155

16:                                               ; preds = %12
  %17 = add nsw i64 %14, -1
  %18 = getelementptr inbounds i16, ptr %5, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !103
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt(i16 noundef zeroext %19) #14
  %21 = add i32 %13, -1
  br i1 %20, label %12, label %22, !prof !155, !llvm.loop !186

22:                                               ; preds = %16
  %23 = trunc i64 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  store i32 0, ptr %3, align 4, !tbaa !166
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 58) #14
  %25 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 47) #14
  %26 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 63) #14
  %27 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull %5, i16 noundef zeroext 35) #14
  %28 = icmp slt i32 %24, 1
  br i1 %28, label %41, label %29, !prof !155

29:                                               ; preds = %22
  %30 = icmp sgt i32 %24, %25
  br i1 %30, label %31, label %33, !prof !155

31:                                               ; preds = %29
  %32 = icmp eq i32 %25, -1
  br i1 %32, label %33, label %41

33:                                               ; preds = %31, %29
  %34 = icmp sgt i32 %24, %26
  %35 = icmp ne i32 %26, -1
  %36 = and i1 %34, %35
  br i1 %36, label %41, label %37, !prof !187

37:                                               ; preds = %33
  %38 = icmp sgt i32 %24, %27
  %39 = icmp ne i32 %27, -1
  %40 = and i1 %38, %39
  br i1 %40, label %41, label %48, !prof !187

41:                                               ; preds = %37, %33, %31, %22
  %42 = icmp ne i32 %24, 0
  %43 = icmp eq i32 %27, 0
  %44 = or i1 %43, %0
  %45 = and i1 %42, %44
  %46 = icmp ne i32 %23, 0
  %47 = and i1 %45, %46
  br i1 %47, label %59, label %101, !prof !188

48:                                               ; preds = %37
  %49 = call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri13processSchemeEPKtRi(ptr noundef nonnull %5, ptr noundef nonnull align 4 dereferenceable(4) %3) #14
  br i1 %49, label %50, label %101, !prof !174

50:                                               ; preds = %48
  %51 = load i32, ptr %3, align 4, !tbaa !166
  %52 = add nsw i32 %51, 1
  %53 = icmp eq i32 %52, %23
  br i1 %53, label %101, label %54, !prof !155

54:                                               ; preds = %50
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds i16, ptr %5, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !103
  %58 = icmp eq i16 %57, 35
  br i1 %58, label %101, label %59, !prof !155

59:                                               ; preds = %41, %54
  %60 = phi i1 [ true, %54 ], [ false, %41 ]
  %61 = phi i32 [ %52, %54 ], [ 0, %41 ]
  %62 = add nsw i32 %61, 1
  %63 = icmp slt i32 %62, %23
  br i1 %63, label %64, label %92, !prof !174

64:                                               ; preds = %59
  %65 = sext i32 %61 to i64
  %66 = getelementptr inbounds i16, ptr %5, i64 %65
  %67 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_(ptr noundef nonnull %66, ptr noundef nonnull @_ZN11xercesc_2_7L12DOUBLE_SLASHE) #14
  br i1 %67, label %68, label %92, !prof !174

68:                                               ; preds = %64
  %69 = add nsw i32 %61, 2
  %70 = icmp slt i32 %69, %23
  br i1 %70, label %71, label %92, !prof !189

71:                                               ; preds = %68
  %72 = add nsw i64 %65, 2
  %73 = shl i64 %14, 32
  %74 = ashr exact i64 %73, 32
  br label %75

75:                                               ; preds = %71, %79
  %76 = phi i64 [ %72, %71 ], [ %80, %79 ]
  %77 = getelementptr inbounds i16, ptr %5, i64 %76
  %78 = load i16, ptr %77, align 2, !tbaa !103
  switch i16 %78, label %79 [
    i16 63, label %82
    i16 47, label %82
    i16 35, label %82
  ]

79:                                               ; preds = %75
  %80 = add nsw i64 %76, 1
  %81 = icmp slt i64 %80, %74
  br i1 %81, label %75, label %84, !prof !190, !llvm.loop !191

82:                                               ; preds = %75, %75, %75
  %83 = trunc i64 %76 to i32
  br label %84

84:                                               ; preds = %79, %82
  %85 = phi i32 [ %83, %82 ], [ %13, %79 ]
  %86 = icmp sgt i32 %85, %69
  br i1 %86, label %87, label %92, !prof !192

87:                                               ; preds = %84
  %88 = sext i32 %69 to i64
  %89 = getelementptr inbounds i16, ptr %5, i64 %88
  %90 = sub nsw i32 %85, %69
  %91 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti(ptr noundef nonnull %89, i32 noundef %90) #14
  br i1 %91, label %92, label %101, !prof !174

92:                                               ; preds = %68, %84, %87, %64, %59
  %93 = phi i32 [ %85, %84 ], [ %85, %87 ], [ %61, %64 ], [ %61, %59 ], [ %69, %68 ]
  %94 = icmp slt i32 %93, %23
  br i1 %94, label %95, label %100, !prof !174

95:                                               ; preds = %92
  %96 = sext i32 %93 to i64
  %97 = getelementptr inbounds i16, ptr %5, i64 %96
  %98 = sub nsw i32 %23, %93
  %99 = tail call noundef zeroext i1 @_ZN11xercesc_2_76XMLUri11processPathEPKtib(ptr noundef nonnull %97, i32 noundef %98, i1 noundef zeroext %60) #14
  br i1 %99, label %100, label %101, !prof !174

100:                                              ; preds = %95, %92
  br label %101

101:                                              ; preds = %100, %87, %95, %50, %54, %48, %41
  %102 = phi i1 [ false, %41 ], [ false, %48 ], [ false, %54 ], [ false, %50 ], [ true, %100 ], [ false, %87 ], [ false, %95 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %103

103:                                              ; preds = %12, %101
  %104 = phi i1 [ %102, %101 ], [ %0, %12 ]
  ret i1 %104
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti(ptr nocapture noundef readonly %0, i32 noundef %1) local_unnamed_addr #2 align 2 !prof !150 {
  %3 = load i16, ptr %0, align 2, !tbaa !103
  %4 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString7isAlphaEt(i16 noundef zeroext %3) #14
  br i1 %4, label %5, label %24, !prof !174

5:                                                ; preds = %2
  %6 = icmp slt i32 %1, 2
  br i1 %6, label %24, label %7, !prof !152

7:                                                ; preds = %5
  %8 = zext nneg i32 %1 to i64
  %9 = zext nneg i32 %1 to i64
  br label %10

10:                                               ; preds = %7, %19
  %11 = phi i64 [ 1, %7 ], [ %20, %19 ]
  %12 = getelementptr inbounds i16, ptr %0, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !103
  %14 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLString10isAlphaNumEt(i16 noundef zeroext %13) #14
  br i1 %14, label %19, label %15, !prof !193

15:                                               ; preds = %10
  %16 = load i16, ptr %12, align 2, !tbaa !103
  %17 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri17SCHEME_CHARACTERSE, i16 noundef zeroext %16) #14
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %24, label %19

19:                                               ; preds = %10, %15
  %20 = add nuw nsw i64 %11, 1
  %21 = icmp eq i64 %20, %9
  br i1 %21, label %22, label %10, !prof !194, !llvm.loop !195

22:                                               ; preds = %19
  %23 = icmp uge i64 %20, %8
  br label %24

24:                                               ; preds = %15, %22, %5, %2
  %25 = phi i1 [ false, %2 ], [ true, %5 ], [ %23, %22 ], [ false, %15 ]
  ret i1 %25
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_76XMLUri19isReservedCharacterEt(i16 noundef zeroext %0) local_unnamed_addr #2 comdat align 2 !prof !79 {
  %2 = tail call noundef i32 @_ZN11xercesc_2_79XMLString7indexOfEPKtt(ptr noundef nonnull @_ZN11xercesc_2_76XMLUri19RESERVED_CHARACTERSE, i16 noundef zeroext %0) #14
  %3 = icmp ne i32 %2, -1
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE(ptr nocapture noundef readonly %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 !prof !196 {
  tail call void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #14
  br label %3

3:                                                ; preds = %18, %2
  %4 = phi ptr [ %0, %2 ], [ %19, %18 ]
  %5 = load i16, ptr %4, align 2, !tbaa !103
  switch i16 %5, label %16 [
    i16 0, label %20
    i16 37, label %6
  ], !prof !197

6:                                                ; preds = %3
  %7 = getelementptr inbounds i16, ptr %4, i64 1
  %8 = load i16, ptr %7, align 2, !tbaa !103
  %9 = icmp eq i16 %8, 50
  br i1 %9, label %10, label %16

10:                                               ; preds = %6
  %11 = getelementptr inbounds i16, ptr %4, i64 2
  %12 = load i16, ptr %11, align 2, !tbaa !103
  %13 = icmp eq i16 %12, 48
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = getelementptr inbounds i16, ptr %4, i64 3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext 32) #14
  br label %18

16:                                               ; preds = %3, %10, %6
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %5) #14
  %17 = getelementptr inbounds i16, ptr %4, i64 1
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi ptr [ %15, %14 ], [ %17, %16 ]
  br label %3, !llvm.loop !198

20:                                               ; preds = %3
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer5resetEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #0 comdat align 2 !prof !199 {
  store i32 0, ptr %0, align 8, !tbaa !200
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !203
  store i16 0, ptr %3, align 2, !tbaa !103
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !204 {
  %3 = load i32, ptr %0, align 8, !tbaa !200
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !205
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !206

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #14
  %8 = load i32, ptr %0, align 8, !tbaa !200
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !203
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !200
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !103
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_76XMLUri12createObjectEPNS_13MemoryManagerE(ptr noundef %0) #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 88, ptr noundef %0) #14
  tail call void @_ZN11xercesc_2_76XMLUriC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef %0) #14
  ret ptr %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_716XSerializeEngine9isStoringEv(ptr noundef nonnull align 8 dereferenceable(100) %0) local_unnamed_addr #0 comdat align 2 !prof !79 {
  %2 = load i16, ptr %0, align 8, !tbaa !207
  %3 = icmp eq i16 %2, 0
  ret i1 %3
}

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginelsEi(ptr noundef nonnull align 8 dereferenceable(100), i32 noundef) local_unnamed_addr #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine11writeStringEPKtib(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: optsize
declare noundef nonnull align 8 dereferenceable(100) ptr @_ZN11xercesc_2_716XSerializeEnginersERi(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #8

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716XSerializeEngine10readStringERPt(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #2 comdat align 2 !prof !79 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  call void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, i1 noundef zeroext false) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_716XSerializeEngine10readStringERPtRiS3_b(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_76XMLUriC2EPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef %1) unnamed_addr #0 align 2 !prof !79 {
  tail call void @_ZN11xercesc_2_713XSerializableC2Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) #14
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #14
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_76XMLUriE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !95
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 1
  store i32 -1, ptr %3, align 8, !tbaa !80
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLUri", ptr %0, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %4, i8 0, i64 64, i1 false)
  store ptr %1, ptr %5, align 8, !tbaa !97
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #11

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nosync nounwind memory(none) }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind optsize }
attributes #14 = { optsize }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!78}

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
!35 = distinct !{!36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77}
!36 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!37 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!38 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 503282}
!39 = !{ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 503282}
!40 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!41 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!42 = !{ptr @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 58100}
!43 = !{ptr @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 12832}
!44 = !{ptr @_ZN11xercesc_2_76XMLUri15isPathCharacterEt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 6404}
!45 = !{ptr @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 301}
!46 = !{ptr @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 51}
!47 = !{ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, ptr @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt, i64 165}
!48 = !{ptr @_ZN11xercesc_2_76XMLUri11isURIStringEPKt, ptr @_ZN11xercesc_2_79XMLString5isHexEt, i64 2}
!49 = !{ptr @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i, ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, i64 6402}
!50 = !{ptr @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i, ptr @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt, i64 1}
!51 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_76XMLUri25isWellFormedIPv6ReferenceEPKti, i64 1}
!52 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_79XMLString11lastIndexOfEtPKtj, i64 6398}
!53 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_79XMLString7isDigitEt, i64 6398}
!54 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_76XMLUri23isWellFormedIPv4AddressEPKti, i64 1}
!55 = !{ptr @_ZN11xercesc_2_76XMLUri19isWellFormedAddressEPKti, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 96693}
!56 = !{ptr @_ZN11xercesc_2_76XMLUri13processSchemeEPKtRi, ptr @_ZN11xercesc_2_79XMLString7findAnyEPKtS2_, i64 6402}
!57 = !{ptr @_ZN11xercesc_2_76XMLUri13processSchemeEPKtRi, ptr @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti, i64 6401}
!58 = !{ptr @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 12804}
!59 = !{ptr @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti, ptr @_ZN11xercesc_2_76XMLUri27isValidServerBasedAuthorityEPKtiiS2_i, i64 6402}
!60 = !{ptr @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti, ptr @_ZN11xercesc_2_76XMLUri29isValidRegistryBasedAuthorityEPKti, i64 1}
!61 = !{ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, ptr @_ZN11xercesc_2_76XMLUri21isUnreservedCharacterEt, i64 3033}
!62 = !{ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, ptr @_ZN11xercesc_2_76XMLUri15isPathCharacterEt, i64 334}
!63 = !{ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, ptr @_ZN11xercesc_2_79XMLString5isHexEt, i64 22257}
!64 = !{ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, ptr @_ZN11xercesc_2_76XMLUri31isReservedOrUnreservedCharacterEt, i64 11670}
!65 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_710XMLChar1_012isWhitespaceEt, i64 12805}
!66 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 6402}
!67 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 25604}
!68 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_76XMLUri13processSchemeEPKtRi, i64 6397}
!69 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_79XMLString10startsWithEPKtS2_, i64 6395}
!70 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_76XMLUri16processAuthorityEPKti, i64 6344}
!71 = !{ptr @_ZN11xercesc_2_76XMLUri10isValidURIEbPKt, ptr @_ZN11xercesc_2_76XMLUri11processPathEPKtib, i64 6394}
!72 = !{ptr @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti, ptr @_ZN11xercesc_2_79XMLString7isAlphaEt, i64 6402}
!73 = !{ptr @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti, ptr @_ZN11xercesc_2_79XMLString10isAlphaNumEt, i64 19201}
!74 = !{ptr @_ZN11xercesc_2_76XMLUri22isConformantSchemeNameEPKti, ptr @_ZN11xercesc_2_79XMLString7indexOfEPKtt, i64 1}
!75 = !{ptr @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer5resetEv, i64 1}
!76 = !{ptr @_ZN11xercesc_2_76XMLUri12normalizeURIEPKtRNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 5}
!77 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!78 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!79 = !{!"function_entry_count", i64 0}
!80 = !{!81, !83, i64 8}
!81 = !{!"_ZTSN11xercesc_2_76XMLUriE", !82, i64 0, !83, i64 8, !86, i64 16, !86, i64 24, !86, i64 32, !86, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80}
!82 = !{!"_ZTSN11xercesc_2_713XSerializableE"}
!83 = !{!"int", !84, i64 0}
!84 = !{!"omnipotent char", !85, i64 0}
!85 = !{!"Simple C++ TBAA"}
!86 = !{!"any pointer", !84, i64 0}
!87 = !{!81, !86, i64 16}
!88 = !{!81, !86, i64 24}
!89 = !{!81, !86, i64 32}
!90 = !{!81, !86, i64 40}
!91 = !{!81, !86, i64 48}
!92 = !{!81, !86, i64 56}
!93 = !{!81, !86, i64 64}
!94 = !{!81, !86, i64 72}
!95 = !{!96, !96, i64 0}
!96 = !{!"vtable pointer", !85, i64 0}
!97 = !{!81, !86, i64 80}
!98 = !{!"function_entry_count", i64 1068727}
!99 = !{!"function_entry_count", i64 5836268}
!100 = !{!101, !86, i64 0}
!101 = !{!"_ZTSN11xercesc_2_717JanitorMemFunCallINS_6XMLUriEEE", !86, i64 0, !84, i64 8}
!102 = !{!101, !84, i64 8}
!103 = !{!104, !104, i64 0}
!104 = !{!"short", !84, i64 0}
!105 = distinct !{!105, !106}
!106 = !{!"llvm.loop.mustprogress"}
!107 = distinct !{!107, !106}
!108 = distinct !{!108, !106}
!109 = !{}
!110 = !{!"function_entry_count", i64 1069174}
!111 = !{!"function_entry_count", i64 447}
!112 = !{!"function_entry_count", i64 558789}
!113 = !{!"branch_weights", i32 158605, i32 400186}
!114 = !{!"function_entry_count", i64 2453164456}
!115 = !{!"branch_weights", i32 1, i32 -1841802839}
!116 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!117 = !{!"branch_weights", i32 408669070, i32 -279908792}
!118 = distinct !{!118, !106}
!119 = !{!"function_entry_count", i64 52059}
!120 = !{!121, !86, i64 0}
!121 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !86, i64 0, !86, i64 8}
!122 = !{!121, !86, i64 8}
!123 = !{!"function_entry_count", i64 503282}
!124 = distinct !{!124, !106}
!125 = distinct !{!125, !106}
!126 = distinct !{!126, !106}
!127 = distinct !{!127, !106}
!128 = !{!"function_entry_count", i64 243874}
!129 = !{!130, !86, i64 40}
!130 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !131, i64 8, !86, i64 16, !83, i64 24, !86, i64 32, !86, i64 40}
!131 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !84, i64 0}
!132 = !{!"branch_weights", i32 191816, i32 52060}
!133 = !{!"branch_weights", i32 1, i32 52060}
!134 = distinct !{!134, !106}
!135 = !{!"function_entry_count", i64 2499163}
!136 = !{!"function_entry_count", i64 58100}
!137 = !{!"branch_weights", i32 45270, i32 12832}
!138 = !{!"function_entry_count", i64 6404}
!139 = !{!"function_entry_count", i64 301}
!140 = !{!"branch_weights", i32 252, i32 51}
!141 = distinct !{!141, !106}
!142 = distinct !{!142, !106}
!143 = distinct !{!143, !106}
!144 = distinct !{!144, !106}
!145 = !{!"function_entry_count", i64 4}
!146 = !{!"branch_weights", i32 1, i32 5}
!147 = !{!"branch_weights", i32 302, i32 1}
!148 = !{!"branch_weights", i32 5, i32 297}
!149 = distinct !{!149, !106}
!150 = !{!"function_entry_count", i64 6402}
!151 = !{!"branch_weights", i32 -1088462295, i32 1502501}
!152 = !{!"branch_weights", i32 1, i32 6402}
!153 = !{!"branch_weights", i32 0, i32 1}
!154 = distinct !{!154, !106}
!155 = !{!"branch_weights", i32 1, i32 6403}
!156 = !{!"branch_weights", i32 -193204596, i32 640800, i32 640700, i32 640600}
!157 = !{!"branch_weights", i32 12805, i32 71272}
!158 = !{!"branch_weights", i32 1, i32 12805}
!159 = !{!"branch_weights", i32 12805, i32 1}
!160 = !{!"branch_weights", i32 70859, i32 414}
!161 = !{!"branch_weights", i32 71687, i32 29506608}
!162 = !{!"branch_weights", i32 1, i32 71272}
!163 = !{!"branch_weights", i32 6402, i32 77674}
!164 = distinct !{!164, !106}
!165 = distinct !{!165, !106}
!166 = !{!83, !83, i64 0}
!167 = distinct !{!167, !106}
!168 = distinct !{!168, !106}
!169 = distinct !{!169, !106}
!170 = distinct !{!170, !106}
!171 = distinct !{!171, !106}
!172 = !{!"function_entry_count", i64 196710}
!173 = !{!84, !84, i64 0}
!174 = !{!"branch_weights", i32 6403, i32 1}
!175 = !{!"branch_weights", i32 2147253020, i32 230628}
!176 = !{!"branch_weights", i32 2147144237, i32 -2147144237}
!177 = distinct !{!177, !106}
!178 = !{!"branch_weights", i32 6402, i32 1}
!179 = !{!"branch_weights", i32 58101, i32 58102, i32 58102, i32 1}
!180 = !{!"branch_weights", i32 51697, i32 6405}
!181 = !{!"branch_weights", i32 6405, i32 1}
!182 = !{!"branch_weights", i32 6402, i32 51699}
!183 = distinct !{!183, !106}
!184 = distinct !{!184, !106}
!185 = distinct !{!185, !106}
!186 = distinct !{!186, !106}
!187 = !{!"branch_weights", i32 6403, i32 41004813}
!188 = !{!"branch_weights", i32 6403, i32 6405}
!189 = !{!"branch_weights", i32 127, i32 1}
!190 = !{!"branch_weights", i32 11581057, i32 127}
!191 = distinct !{!191, !106}
!192 = !{!"branch_weights", i32 -2147483648, i32 0}
!193 = !{!"branch_weights", i32 19207, i32 1}
!194 = !{!"branch_weights", i32 6402, i32 12805}
!195 = distinct !{!195, !106}
!196 = !{!"function_entry_count", i64 1}
!197 = !{!"branch_weights", i32 100, i32 22, i32 10}
!198 = distinct !{!198, !106}
!199 = !{!"function_entry_count", i64 8985736}
!200 = !{!201, !83, i64 0}
!201 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !83, i64 0, !83, i64 4, !83, i64 8, !202, i64 12, !86, i64 16, !86, i64 24, !86, i64 32}
!202 = !{!"bool", !84, i64 0}
!203 = !{!201, !86, i64 32}
!204 = !{!"function_entry_count", i64 7992849}
!205 = !{!201, !83, i64 4}
!206 = !{!"branch_weights", i32 1, i32 7992850}
!207 = !{!208, !104, i64 0}
!208 = !{!"_ZTSN11xercesc_2_716XSerializeEngineE", !104, i64 0, !104, i64 2, !86, i64 8, !86, i64 16, !86, i64 24, !209, i64 32, !209, i64 40, !86, i64 48, !86, i64 56, !86, i64 64, !86, i64 72, !86, i64 80, !86, i64 88, !83, i64 96}
!209 = !{!"long", !84, i64 0}
