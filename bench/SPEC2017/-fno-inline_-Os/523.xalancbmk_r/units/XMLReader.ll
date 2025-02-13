; ModuleID = 'XMLReader.cpp'
source_filename = "XMLReader.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt = comdat any

$_ZNK11xercesc_2_79XMLReader10isNameCharEt = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKtj = comdat any

$_ZNK11xercesc_2_79XMLBuffer7isEmptyEv = comdat any

$_ZNK11xercesc_2_79XMLReader17isFirstNCNameCharEt = comdat any

$_ZNK11xercesc_2_79XMLReader12isNCNameCharEt = comdat any

$_ZNK11xercesc_2_79XMLBuffer6getLenEv = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEt = comdat any

$_ZNK11xercesc_2_79XMLReader12isWhitespaceEt = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv = comdat any

$_ZN11xercesc_2_76BitOps9swapBytesEj = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_76BitOps9swapBytesEt = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_79XMLBuffer6appendEPKt = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTSN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTIN11xercesc_2_716RuntimeExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_716RuntimeExceptionE = comdat any

@_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [14 x i8] c"XMLReader.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant [34 x i8] c"N11xercesc_2_716RuntimeExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_716RuntimeExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_713XMLRecognizer12fgUTF8BOMLenE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713XMLRecognizer9fgUTF8BOME = external constant [0 x i8], align 1
@_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE = external constant [0 x i16], align 2
@_ZN11xercesc_2_713XMLRecognizer13fgASCIIPreLenE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713XMLRecognizer10fgASCIIPreE = external constant [0 x i8], align 1
@_ZN11xercesc_2_713XMLRecognizer13fgUTF16PreLenE = external local_unnamed_addr constant i32, align 4
@_ZN11xercesc_2_713XMLRecognizer11fgUTF16BPreE = external constant [0 x i8], align 1
@_ZN11xercesc_2_713XMLRecognizer11fgUTF16LPreE = external constant [0 x i8], align 1
@_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E = external global [65536 x i8], align 16
@_ZN11xercesc_2_710XMLChar1_09enableNELE = external local_unnamed_addr global i8, align 1
@_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E = external global [65536 x i8], align 16
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2
@_ZTVN11xercesc_2_716RuntimeExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_716RuntimeExceptionD0Ev, ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv, ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, i32, i1, i1, i32, ptr), ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE
@_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i1, i1, i32, ptr), ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE
@_ZN11xercesc_2_79XMLReaderC1EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, i32, i32, i1, i1, i32, ptr), ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE
@_ZN11xercesc_2_79XMLReaderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_79XMLReaderD2Ev

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !96 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds i16, ptr %1, i64 %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi ptr [ %1, %3 ], [ %12, %11 ]
  %10 = icmp uge ptr %9, %5
  br i1 %10, label %18, label %11, !prof !97

11:                                               ; preds = %8
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  %13 = load i16, ptr %9, align 2, !tbaa !98
  %14 = zext i16 %13 to i64
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !102
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %18, label %8, !prof !103, !llvm.loop !104

18:                                               ; preds = %8, %11
  ret i1 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !106 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds i16, ptr %1, i64 %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi ptr [ %1, %3 ], [ %12, %11 ]
  %10 = icmp ult ptr %9, %5
  br i1 %10, label %11, label %18, !prof !107

11:                                               ; preds = %8
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  %13 = load i16, ptr %9, align 2, !tbaa !98
  %14 = zext i16 %13 to i64
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !102
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %8, label %18, !prof !108, !llvm.loop !109

18:                                               ; preds = %8, %11
  ret i1 %10
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader14isPublicIdCharEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !110 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %4 = load i32, ptr %3, align 4, !tbaa !111
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isPublicIdCharEtt(i16 noundef zeroext %1, i16 noundef zeroext 0) #12
  br label %10

8:                                                ; preds = %2
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isPublicIdCharEtt(i16 noundef zeroext %1, i16 noundef zeroext 0) #12
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i1 [ %7, %6 ], [ %9, %8 ]
  ret i1 %11
}

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isPublicIdCharEtt(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isPublicIdCharEtt(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10) unnamed_addr #2 align 2 !prof !122 {
  %12 = zext i1 %7 to i8
  %13 = zext i1 %8 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i32 0, ptr %0, align 8, !tbaa !123
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !124
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %15, align 8, !tbaa !125
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  store i64 1, ptr %16, align 8, !tbaa !126
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  store ptr null, ptr %17, align 8, !tbaa !127
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  store i8 0, ptr %18, align 8, !tbaa !128
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  store i8 0, ptr %19, align 1, !tbaa !129
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %21 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #12
  store ptr %21, ptr %20, align 8, !tbaa !130
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  store i32 0, ptr %22, align 8, !tbaa !131
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  store i32 0, ptr %23, align 4, !tbaa !132
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  store i32 -1, ptr %24, align 8, !tbaa !133
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  store i32 %4, ptr %25, align 4, !tbaa !134
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  store i8 0, ptr %26, align 8, !tbaa !135
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  store i32 %6, ptr %27, align 4, !tbaa !136
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  store i32 0, ptr %28, align 8, !tbaa !137
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  store i8 0, ptr %29, align 4, !tbaa !138
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  store i8 %13, ptr %30, align 1, !tbaa !139
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %32 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %10) #12
  store ptr %32, ptr %31, align 8, !tbaa !140
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  store ptr %3, ptr %33, align 8, !tbaa !141
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %34, align 8, !tbaa !142
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %12, ptr %35, align 1, !tbaa !143
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr null, ptr %36, align 8, !tbaa !144
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  store i32 %5, ptr %37, align 8, !tbaa !145
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  store ptr %10, ptr %38, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(163992) %0, i32 noundef %9) #12
  tail call void @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %39 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  %40 = load ptr, ptr %39, align 8, !tbaa !148
  %41 = getelementptr inbounds ptr, ptr %40, i64 7
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef zeroext i1 %42(ptr noundef nonnull align 8 dereferenceable(8) %39) #12
  %44 = zext i1 %43 to i8
  store i8 %44, ptr %29, align 4, !tbaa !138
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %46 = load i32, ptr %23, align 4, !tbaa !132
  %47 = tail call noundef i32 @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj(ptr noundef nonnull %45, i32 noundef %46) #12
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 %47, ptr %48, align 8, !tbaa !150
  %49 = load ptr, ptr %38, align 8, !tbaa !146
  %50 = tail call noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef %47, ptr noundef %49) #12
  %51 = load ptr, ptr %38, align 8, !tbaa !146
  %52 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %50, ptr noundef %51) #12
  store ptr %52, ptr %17, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_79XMLReader15checkForSwappedEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  tail call void @_ZN11xercesc_2_79XMLReader12doInitDecodeEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #4 comdat align 2 !prof !151 {
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !152 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !153

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #12
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !148
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #12
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(163992) %0, i32 noundef %1) local_unnamed_addr #4 comdat align 2 !prof !154 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  store i32 %1, ptr %3, align 4, !tbaa !111
  %4 = icmp eq i32 %1, 1
  %5 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !range !155
  %6 = select i1 %4, i8 1, i8 %5, !prof !156
  %7 = select i1 %4, ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, !prof !156
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  store i8 %6, ptr %8, align 8
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  store ptr %7, ptr %9, align 8
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 !prof !157 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 4, !tbaa !132
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !131
  %6 = sub i32 %3, %5
  %7 = icmp eq i32 %3, %5
  %8 = zext i32 %6 to i64
  br i1 %7, label %9, label %19, !prof !158

9:                                                ; preds = %19, %1
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  %11 = load ptr, ptr %10, align 8, !tbaa !141
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %8
  %13 = sub i32 49152, %6
  %14 = load ptr, ptr %11, align 8, !tbaa !148
  %15 = getelementptr inbounds ptr, ptr %14, i64 3
  %16 = load ptr, ptr %15, align 8
  %17 = tail call noundef i32 %16(ptr noundef nonnull align 8 dereferenceable(8) %11, ptr noundef nonnull %12, i32 noundef %13) #12
  %18 = add i32 %17, %6
  store i32 %18, ptr %2, align 4, !tbaa !132
  store i32 0, ptr %4, align 8, !tbaa !131
  ret void

19:                                               ; preds = %1, %19
  %20 = phi i64 [ %27, %19 ], [ 0, %1 ]
  %21 = trunc i64 %20 to i32
  %22 = add i32 %5, %21
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !102
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %20
  store i8 %25, ptr %26, align 1, !tbaa !102
  %27 = add nuw nsw i64 %20, 1
  %28 = icmp eq i64 %27, %8
  br i1 %28, label %9, label %19, !prof !159, !llvm.loop !160
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader15checkForSwappedEv(ptr nocapture noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #5 align 2 !prof !122 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %2, align 8, !tbaa !142
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !150
  switch i32 %4, label %6 [
    i32 5, label %5
    i32 1, label %5
  ], !prof !161

5:                                                ; preds = %1, %1
  store i8 1, ptr %2, align 8, !tbaa !142
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader12doInitDecodeEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !150
  switch i32 %5, label %252 [
    i32 1, label %6
    i32 2, label %6
    i32 4, label %105
    i32 5, label %177
    i32 6, label %177
    i32 0, label %230
  ], !prof !162

6:                                                ; preds = %1, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %8 = load i8, ptr %7, align 4, !tbaa !102
  %9 = icmp eq i8 %8, 0
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 1
  %11 = load i8, ptr %10, align 1
  %12 = icmp eq i8 %11, 0
  %13 = select i1 %9, i1 %12, i1 false
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 2
  %15 = load i8, ptr %14, align 2
  %16 = icmp eq i8 %15, -2
  %17 = select i1 %13, i1 %16, i1 false
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 3
  %19 = load i8, ptr %18, align 1
  %20 = icmp eq i8 %19, -1
  %21 = select i1 %17, i1 %20, i1 false
  br i1 %21, label %30, label %22

22:                                               ; preds = %6
  %23 = icmp eq i8 %8, -1
  %24 = icmp eq i8 %11, -2
  %25 = select i1 %23, i1 %24, i1 false
  %26 = icmp eq i8 %15, 0
  %27 = select i1 %25, i1 %26, i1 false
  %28 = icmp eq i8 %19, 0
  %29 = select i1 %27, i1 %28, i1 false
  br i1 %29, label %30, label %49

30:                                               ; preds = %22, %6
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %32 = load i32, ptr %31, align 4, !tbaa !132
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %36, label %38

34:                                               ; preds = %38
  %35 = add i32 %46, -4
  br label %36

36:                                               ; preds = %34, %30
  %37 = phi i32 [ -4, %30 ], [ %35, %34 ]
  store i32 %37, ptr %31, align 4, !tbaa !132
  br label %49

38:                                               ; preds = %30, %38
  %39 = phi i64 [ %45, %38 ], [ 0, %30 ]
  %40 = add nuw nsw i64 %39, 4
  %41 = and i64 %40, 4294967295
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !102
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %39
  store i8 %43, ptr %44, align 1, !tbaa !102
  %45 = add nuw nsw i64 %39, 1
  %46 = load i32, ptr %31, align 4, !tbaa !132
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %38, label %34, !llvm.loop !163

49:                                               ; preds = %36, %22
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  br label %54

54:                                               ; preds = %97, %49
  %55 = phi ptr [ %7, %49 ], [ %60, %97 ]
  %56 = load i32, ptr %50, align 8, !tbaa !131
  %57 = load i32, ptr %51, align 4, !tbaa !132
  %58 = icmp ult i32 %56, %57
  br i1 %58, label %59, label %278

59:                                               ; preds = %54
  %60 = getelementptr inbounds i32, ptr %55, i64 1
  %61 = load i32, ptr %55, align 4, !tbaa !164
  %62 = add i32 %56, 4
  store i32 %62, ptr %50, align 8, !tbaa !131
  %63 = load i8, ptr %52, align 8, !tbaa !142, !range !155, !noundef !165
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %67, label %65

65:                                               ; preds = %59
  %66 = tail call noundef i32 @_ZN11xercesc_2_76BitOps9swapBytesEj(i32 noundef %61) #12
  br label %67

67:                                               ; preds = %65, %59
  %68 = phi i32 [ %66, %65 ], [ %61, %59 ]
  %69 = icmp ugt i32 %68, 65535
  br i1 %69, label %70, label %97

70:                                               ; preds = %67
  store i32 0, ptr %53, align 4, !tbaa !124
  store i32 0, ptr %50, align 8, !tbaa !131
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %72 = load ptr, ptr %71, align 8, !tbaa !146
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %74 = load ptr, ptr %73, align 8, !tbaa !130
  %75 = load ptr, ptr %72, align 8, !tbaa !148
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %74) #12
  %78 = load ptr, ptr %71, align 8, !tbaa !146
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !127
  %81 = load ptr, ptr %78, align 8, !tbaa !148
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %80) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #13
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %85 = load ptr, ptr %84, align 8, !tbaa !140
  %86 = load ptr, ptr %71, align 8, !tbaa !146
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %85, ptr noundef %86) #12
  %87 = call ptr @__cxa_allocate_exception(i64 48) #13
  %88 = load ptr, ptr %84, align 8, !tbaa !140
  %89 = load ptr, ptr %71, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %87, ptr noundef nonnull @.str, i32 noundef 1417, i32 noundef 71, ptr noundef %88, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %89) #12
          to label %90 unwind label %91

90:                                               ; preds = %70
  invoke void @__cxa_throw(ptr nonnull %87, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %317 unwind label %93

91:                                               ; preds = %70
  %92 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %87) #13
  br label %95

93:                                               ; preds = %90
  %94 = landingpad { ptr, i32 }
          cleanup
  br label %95

95:                                               ; preds = %93, %91
  %96 = phi { ptr, i32 } [ %94, %93 ], [ %92, %91 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #13
  br label %315

97:                                               ; preds = %67
  %98 = load i32, ptr %53, align 4, !tbaa !124
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %99
  store i8 4, ptr %100, align 1, !tbaa !102
  %101 = trunc i32 %68 to i16
  %102 = add i32 %98, 1
  store i32 %102, ptr %53, align 4, !tbaa !124
  %103 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %99
  store i16 %101, ptr %103, align 2, !tbaa !98
  %104 = icmp eq i32 %68, 62
  br i1 %104, label %278, label %54

105:                                              ; preds = %1
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %108 = load i32, ptr %107, align 4, !tbaa !132
  %109 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer12fgUTF8BOMLenE, align 4, !tbaa !164
  %110 = icmp ugt i32 %108, %109
  br i1 %110, label %111, label %120, !prof !166

111:                                              ; preds = %105
  %112 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef nonnull %106, ptr noundef nonnull @_ZN11xercesc_2_713XMLRecognizer9fgUTF8BOME, i32 noundef %109) #12
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %120, !prof !167

114:                                              ; preds = %111
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %116 = load i32, ptr %115, align 8, !tbaa !131
  %117 = add i32 %116, %109
  store i32 %117, ptr %115, align 8, !tbaa !131
  %118 = zext i32 %109 to i64
  %119 = getelementptr inbounds i8, ptr %106, i64 %118
  br label %120

120:                                              ; preds = %114, %111, %105
  %121 = phi ptr [ %119, %114 ], [ %106, %111 ], [ %106, %105 ]
  %122 = load i32, ptr %107, align 4, !tbaa !132
  %123 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer13fgASCIIPreLenE, align 4, !tbaa !164
  %124 = icmp ult i32 %122, %123
  br i1 %124, label %278, label %125, !prof !167

125:                                              ; preds = %120
  %126 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef nonnull %121, ptr noundef nonnull @_ZN11xercesc_2_713XMLRecognizer10fgASCIIPreE, i32 noundef %123) #12
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %278, !prof !168

128:                                              ; preds = %125
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !124
  br label %132

132:                                              ; preds = %128, %147
  %133 = phi i32 [ %144, %147 ], [ %131, %128 ]
  %134 = phi ptr [ %148, %147 ], [ %121, %128 ]
  %135 = load i32, ptr %129, align 8, !tbaa !131
  %136 = load i32, ptr %107, align 4, !tbaa !132
  %137 = icmp ult i32 %135, %136
  br i1 %137, label %138, label %278, !prof !169

138:                                              ; preds = %132
  %139 = load i8, ptr %134, align 1, !tbaa !102
  %140 = add nuw i32 %135, 1
  store i32 %140, ptr %129, align 8, !tbaa !131
  %141 = zext i32 %133 to i64
  %142 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %141
  store i8 1, ptr %142, align 1, !tbaa !102
  %143 = sext i8 %139 to i16
  %144 = add i32 %133, 1
  store i32 %144, ptr %130, align 4, !tbaa !124
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %141
  store i16 %143, ptr %145, align 2, !tbaa !98
  %146 = icmp eq i8 %139, 62
  br i1 %146, label %278, label %147, !prof !170

147:                                              ; preds = %138
  %148 = getelementptr inbounds i8, ptr %134, i64 1
  %149 = icmp sgt i8 %139, -1
  br i1 %149, label %132, label %150, !prof !171

150:                                              ; preds = %147
  store i32 0, ptr %130, align 4, !tbaa !124
  store i32 0, ptr %129, align 8, !tbaa !131
  %151 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %152 = load ptr, ptr %151, align 8, !tbaa !146
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %154 = load ptr, ptr %153, align 8, !tbaa !130
  %155 = load ptr, ptr %152, align 8, !tbaa !148
  %156 = getelementptr inbounds ptr, ptr %155, i64 3
  %157 = load ptr, ptr %156, align 8
  tail call void %157(ptr noundef nonnull align 8 dereferenceable(8) %152, ptr noundef %154) #12
  %158 = load ptr, ptr %151, align 8, !tbaa !146
  %159 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %160 = load ptr, ptr %159, align 8, !tbaa !127
  %161 = load ptr, ptr %158, align 8, !tbaa !148
  %162 = getelementptr inbounds ptr, ptr %161, i64 3
  %163 = load ptr, ptr %162, align 8
  tail call void %163(ptr noundef nonnull align 8 dereferenceable(8) %158, ptr noundef %160) #12
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #13
  %164 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %165 = load ptr, ptr %164, align 8, !tbaa !140
  %166 = load ptr, ptr %151, align 8, !tbaa !146
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %165, ptr noundef %166) #12
  %167 = call ptr @__cxa_allocate_exception(i64 48) #13
  %168 = load ptr, ptr %164, align 8, !tbaa !140
  %169 = load ptr, ptr %151, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %167, ptr noundef nonnull @.str, i32 noundef 1496, i32 noundef 71, ptr noundef %168, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %169) #12
          to label %170 unwind label %171

170:                                              ; preds = %150
  invoke void @__cxa_throw(ptr nonnull %167, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
          to label %317 unwind label %173

171:                                              ; preds = %150
  %172 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %167) #13
  br label %175

173:                                              ; preds = %170
  %174 = landingpad { ptr, i32 }
          cleanup
  br label %175

175:                                              ; preds = %173, %171
  %176 = phi { ptr, i32 } [ %174, %173 ], [ %172, %171 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #13
  br label %315

177:                                              ; preds = %1, %1
  %178 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %179 = load i32, ptr %178, align 4, !tbaa !132
  %180 = icmp ult i32 %179, 2
  br i1 %180, label %278, label %181

181:                                              ; preds = %177
  %182 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %183 = load i32, ptr %182, align 8, !tbaa !131
  %184 = zext i32 %183 to i64
  %185 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %184
  %186 = load i16, ptr %185, align 2, !tbaa !98
  switch i16 %186, label %190 [
    i16 -257, label %187
    i16 -2, label %187
  ]

187:                                              ; preds = %181, %181
  %188 = add i32 %183, 2
  store i32 %188, ptr %182, align 8, !tbaa !131
  %189 = getelementptr inbounds i16, ptr %185, i64 1
  br label %190

190:                                              ; preds = %181, %187
  %191 = phi i32 [ %188, %187 ], [ %183, %181 ]
  %192 = phi i32 [ %188, %187 ], [ 0, %181 ]
  %193 = phi ptr [ %189, %187 ], [ %185, %181 ]
  %194 = sub i32 %179, %191
  %195 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer13fgUTF16PreLenE, align 4, !tbaa !164
  %196 = icmp ult i32 %194, %195
  br i1 %196, label %277, label %197

197:                                              ; preds = %190
  %198 = icmp eq i32 %5, 5
  %199 = zext i32 %195 to i64
  br i1 %198, label %200, label %203

200:                                              ; preds = %197
  %201 = tail call i32 @bcmp(ptr nonnull %193, ptr nonnull @_ZN11xercesc_2_713XMLRecognizer11fgUTF16BPreE, i64 %199)
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %206, label %277

203:                                              ; preds = %197
  %204 = tail call i32 @bcmp(ptr nonnull %193, ptr nonnull @_ZN11xercesc_2_713XMLRecognizer11fgUTF16LPreE, i64 %199)
  %205 = icmp eq i32 %204, 0
  br i1 %205, label %206, label %277

206:                                              ; preds = %203, %200
  %207 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  %208 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  br label %209

209:                                              ; preds = %222, %206
  %210 = phi ptr [ %193, %206 ], [ %215, %222 ]
  %211 = load i32, ptr %182, align 8, !tbaa !131
  %212 = load i32, ptr %178, align 4, !tbaa !132
  %213 = icmp ult i32 %211, %212
  br i1 %213, label %214, label %278

214:                                              ; preds = %209
  %215 = getelementptr inbounds i16, ptr %210, i64 1
  %216 = load i16, ptr %210, align 2, !tbaa !98
  %217 = add i32 %211, 2
  store i32 %217, ptr %182, align 8, !tbaa !131
  %218 = load i8, ptr %207, align 8, !tbaa !142, !range !155, !noundef !165
  %219 = icmp eq i8 %218, 0
  br i1 %219, label %222, label %220

220:                                              ; preds = %214
  %221 = tail call noundef zeroext i16 @_ZN11xercesc_2_76BitOps9swapBytesEt(i16 noundef zeroext %216) #12
  br label %222

222:                                              ; preds = %220, %214
  %223 = phi i16 [ %221, %220 ], [ %216, %214 ]
  %224 = load i32, ptr %208, align 4, !tbaa !124
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %225
  store i8 2, ptr %226, align 1, !tbaa !102
  %227 = add i32 %224, 1
  store i32 %227, ptr %208, align 4, !tbaa !124
  %228 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %225
  store i16 %223, ptr %228, align 2, !tbaa !98
  %229 = icmp eq i16 %223, 62
  br i1 %229, label %278, label %209

230:                                              ; preds = %1
  %231 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %232 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %233 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %234 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  br label %235

235:                                              ; preds = %235, %230
  %236 = phi ptr [ %231, %230 ], [ %237, %235 ]
  %237 = getelementptr inbounds i8, ptr %236, i64 1
  %238 = load i8, ptr %236, align 1, !tbaa !102
  %239 = tail call noundef zeroext i16 @_ZN11xercesc_2_719XMLEBCDICTranscoder11xlatThisOneEh(i8 noundef zeroext %238) #12
  %240 = load i32, ptr %232, align 8, !tbaa !131
  %241 = add i32 %240, 1
  store i32 %241, ptr %232, align 8, !tbaa !131
  %242 = load i32, ptr %233, align 4, !tbaa !124
  %243 = zext i32 %242 to i64
  %244 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %243
  store i8 1, ptr %244, align 1, !tbaa !102
  %245 = add i32 %242, 1
  store i32 %245, ptr %233, align 4, !tbaa !124
  %246 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %243
  store i16 %239, ptr %246, align 2, !tbaa !98
  %247 = icmp ne i16 %239, 62
  %248 = load i32, ptr %232, align 8
  %249 = load i32, ptr %234, align 4
  %250 = icmp ne i32 %248, %249
  %251 = select i1 %247, i1 %250, i1 false
  br i1 %251, label %235, label %278

252:                                              ; preds = %1
  %253 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %254 = load ptr, ptr %253, align 8, !tbaa !146
  %255 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %256 = load ptr, ptr %255, align 8, !tbaa !130
  %257 = load ptr, ptr %254, align 8, !tbaa !148
  %258 = getelementptr inbounds ptr, ptr %257, i64 3
  %259 = load ptr, ptr %258, align 8
  tail call void %259(ptr noundef nonnull align 8 dereferenceable(8) %254, ptr noundef %256) #12
  %260 = load ptr, ptr %253, align 8, !tbaa !146
  %261 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %262 = load ptr, ptr %261, align 8, !tbaa !127
  %263 = load ptr, ptr %260, align 8, !tbaa !148
  %264 = getelementptr inbounds ptr, ptr %263, i64 3
  %265 = load ptr, ptr %264, align 8
  tail call void %265(ptr noundef nonnull align 8 dereferenceable(8) %260, ptr noundef %262) #12
  %266 = load ptr, ptr %253, align 8, !tbaa !146
  %267 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %268 = load ptr, ptr %267, align 8, !tbaa !140
  %269 = load ptr, ptr %266, align 8, !tbaa !148
  %270 = getelementptr inbounds ptr, ptr %269, i64 3
  %271 = load ptr, ptr %270, align 8
  tail call void %271(ptr noundef nonnull align 8 dereferenceable(8) %266, ptr noundef %268) #12
  %272 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %273 = load ptr, ptr %253, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %272, ptr noundef nonnull @.str, i32 noundef 1612, i32 noundef 70, ptr noundef %273) #12
          to label %274 unwind label %275

274:                                              ; preds = %252
  tail call void @__cxa_throw(ptr nonnull %272, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

275:                                              ; preds = %252
  %276 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %272) #13
  br label %315

277:                                              ; preds = %203, %200, %190
  store i32 %192, ptr %182, align 8, !tbaa !131
  br label %278

278:                                              ; preds = %235, %222, %209, %138, %132, %97, %54, %277, %120, %125, %177
  %279 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  %280 = load i32, ptr %279, align 8, !tbaa !145
  %281 = icmp eq i32 %280, 0
  %282 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  %283 = load i32, ptr %282, align 4
  %284 = icmp eq i32 %283, 1
  %285 = select i1 %281, i1 %284, i1 false
  br i1 %285, label %286, label %292, !prof !172

286:                                              ; preds = %278
  %287 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %288 = load i32, ptr %287, align 4, !tbaa !124
  %289 = add i32 %288, 1
  store i32 %289, ptr %287, align 4, !tbaa !124
  %290 = zext i32 %288 to i64
  %291 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %290
  store i16 32, ptr %291, align 2, !tbaa !98
  br label %292

292:                                              ; preds = %286, %278
  %293 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  %294 = load i8, ptr %293, align 1, !tbaa !139, !range !155, !noundef !165
  %295 = icmp eq i8 %294, 0
  br i1 %295, label %314, label %296, !prof !166

296:                                              ; preds = %292
  %297 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4
  store i32 0, ptr %297, align 8, !tbaa !164
  %298 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %299 = load i32, ptr %298, align 4, !tbaa !124
  %300 = icmp ugt i32 %299, 1
  br i1 %300, label %301, label %314

301:                                              ; preds = %296
  %302 = zext i32 %299 to i64
  br label %303

303:                                              ; preds = %301, %303
  %304 = phi i32 [ 0, %301 ], [ %310, %303 ]
  %305 = phi i64 [ 1, %301 ], [ %312, %303 ]
  %306 = add nsw i64 %305, -1
  %307 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %306
  %308 = load i8, ptr %307, align 1, !tbaa !102
  %309 = zext i8 %308 to i32
  %310 = add i32 %304, %309
  %311 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %305
  store i32 %310, ptr %311, align 4, !tbaa !164
  %312 = add nuw nsw i64 %305, 1
  %313 = icmp eq i64 %312, %302
  br i1 %313, label %314, label %303, !llvm.loop !173

314:                                              ; preds = %303, %296, %292
  ret void

315:                                              ; preds = %275, %175, %95
  %316 = phi { ptr, i32 } [ %276, %275 ], [ %176, %175 ], [ %96, %95 ]
  resume { ptr, i32 } %316

317:                                              ; preds = %170, %90
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10, ptr noundef %11) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %13 = alloca i32, align 4
  %14 = zext i1 %8 to i8
  %15 = zext i1 %9 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i32 0, ptr %0, align 8, !tbaa !123
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %16, align 4, !tbaa !124
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %17, align 8, !tbaa !125
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  store i64 1, ptr %18, align 8, !tbaa !126
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 4, ptr %19, align 8, !tbaa !150
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !127
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  store i8 1, ptr %21, align 8, !tbaa !128
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  store i8 0, ptr %22, align 1, !tbaa !129
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %24 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %11) #12
  store ptr %24, ptr %23, align 8, !tbaa !130
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  store i32 0, ptr %25, align 8, !tbaa !131
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  store i32 0, ptr %26, align 4, !tbaa !132
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  store i32 -1, ptr %27, align 8, !tbaa !133
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  store i32 %5, ptr %28, align 4, !tbaa !134
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  store i8 0, ptr %29, align 8, !tbaa !135
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  store i32 %7, ptr %30, align 4, !tbaa !136
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  store i32 0, ptr %31, align 8, !tbaa !137
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  store i8 0, ptr %32, align 4, !tbaa !138
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  store i8 %15, ptr %33, align 1, !tbaa !139
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %35 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %11) #12
  store ptr %35, ptr %34, align 8, !tbaa !140
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  store ptr %3, ptr %36, align 8, !tbaa !141
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %37, align 8, !tbaa !142
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %14, ptr %38, align 1, !tbaa !143
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr null, ptr %39, align 8, !tbaa !144
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  store i32 %6, ptr %40, align 8, !tbaa !145
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  store ptr %11, ptr %41, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(163992) %0, i32 noundef %10) #12
  tail call void @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %42 = load ptr, ptr %41, align 8, !tbaa !146
  %43 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %42) #12
  store ptr %43, ptr %20, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef %43) #12
  %44 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  %45 = load ptr, ptr %44, align 8, !tbaa !148
  %46 = getelementptr inbounds ptr, ptr %45, i64 7
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef zeroext i1 %47(ptr noundef nonnull align 8 dereferenceable(8) %44) #12
  %49 = zext i1 %48 to i8
  store i8 %49, ptr %32, align 4, !tbaa !138
  %50 = load ptr, ptr %20, align 8, !tbaa !127
  %51 = tail call noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef %50) #12
  store i32 %51, ptr %19, align 8, !tbaa !150
  tail call void @_ZN11xercesc_2_79XMLReader15checkForSwappedEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  %52 = load i32, ptr %19, align 8, !tbaa !150
  %53 = icmp eq i32 %52, 999
  %54 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  br i1 %53, label %55, label %59

55:                                               ; preds = %12
  %56 = load ptr, ptr %20, align 8, !tbaa !127
  %57 = load ptr, ptr %41, align 8, !tbaa !146
  %58 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %54, ptr noundef %56, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef 16384, ptr noundef %57) #12
  br label %62

59:                                               ; preds = %12
  %60 = load ptr, ptr %41, align 8, !tbaa !146
  %61 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %54, i32 noundef %52, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef 16384, ptr noundef %60) #12
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi ptr [ %61, %59 ], [ %58, %55 ]
  store ptr %63, ptr %39, align 8, !tbaa !144
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = call ptr @__cxa_allocate_exception(i64 48) #13
  %67 = load ptr, ptr %20, align 8, !tbaa !127
  %68 = load ptr, ptr %41, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %66, ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 98, ptr noundef %67, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %68) #12
          to label %69 unwind label %70

69:                                               ; preds = %65
  call void @__cxa_throw(ptr nonnull %66, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

70:                                               ; preds = %65
  %71 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %66) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  resume { ptr, i32 } %71

72:                                               ; preds = %62
  %73 = load i32, ptr %40, align 8, !tbaa !145
  %74 = icmp eq i32 %73, 0
  %75 = load i32, ptr %28, align 4
  %76 = icmp eq i32 %75, 1
  %77 = select i1 %74, i1 %76, i1 false
  br i1 %77, label %78, label %85

78:                                               ; preds = %72
  %79 = load i32, ptr %16, align 4, !tbaa !124
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %80
  store i8 0, ptr %81, align 1, !tbaa !102
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %80
  store i32 0, ptr %82, align 4, !tbaa !164
  %83 = add i32 %79, 1
  store i32 %83, ptr %16, align 4, !tbaa !124
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %80
  store i16 32, ptr %84, align 2, !tbaa !98
  br label %85

85:                                               ; preds = %78, %72
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #12
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %12
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10, ptr noundef %11) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %13 = alloca i32, align 4
  %14 = zext i1 %8 to i8
  %15 = zext i1 %9 to i8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store i32 0, ptr %0, align 8, !tbaa !123
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %16, align 4, !tbaa !124
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %17, align 8, !tbaa !125
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  store i64 1, ptr %18, align 8, !tbaa !126
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 4, ptr %19, align 8, !tbaa !150
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !127
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  store i8 1, ptr %21, align 8, !tbaa !128
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  store i8 0, ptr %22, align 1, !tbaa !129
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %24 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %11) #12
  store ptr %24, ptr %23, align 8, !tbaa !130
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  store i32 0, ptr %25, align 8, !tbaa !131
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  store i32 0, ptr %26, align 4, !tbaa !132
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  store i32 -1, ptr %27, align 8, !tbaa !133
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  store i32 %5, ptr %28, align 4, !tbaa !134
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  store i8 0, ptr %29, align 8, !tbaa !135
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  store i32 %7, ptr %30, align 4, !tbaa !136
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  store i32 0, ptr %31, align 8, !tbaa !137
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  store i8 0, ptr %32, align 4, !tbaa !138
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  store i8 %15, ptr %33, align 1, !tbaa !139
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %35 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %11) #12
  store ptr %35, ptr %34, align 8, !tbaa !140
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  store ptr %3, ptr %36, align 8, !tbaa !141
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %37, align 8, !tbaa !142
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %14, ptr %38, align 1, !tbaa !143
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr null, ptr %39, align 8, !tbaa !144
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  store i32 %6, ptr %40, align 8, !tbaa !145
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  store ptr %11, ptr %41, align 8, !tbaa !146
  tail call void @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE(ptr noundef nonnull align 8 dereferenceable(163992) %0, i32 noundef %10) #12
  tail call void @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %42 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  %43 = load ptr, ptr %42, align 8, !tbaa !148
  %44 = getelementptr inbounds ptr, ptr %43, i64 7
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef zeroext i1 %45(ptr noundef nonnull align 8 dereferenceable(8) %42) #12
  %47 = zext i1 %46 to i8
  store i8 %47, ptr %32, align 4, !tbaa !138
  store i32 %4, ptr %19, align 8, !tbaa !150
  %48 = load ptr, ptr %41, align 8, !tbaa !146
  %49 = tail call noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef %4, ptr noundef %48) #12
  %50 = load ptr, ptr %41, align 8, !tbaa !146
  %51 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %49, ptr noundef %50) #12
  store ptr %51, ptr %20, align 8, !tbaa !127
  tail call void @_ZN11xercesc_2_79XMLReader15checkForSwappedEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #13
  %52 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  %53 = load i32, ptr %19, align 8, !tbaa !150
  %54 = load ptr, ptr %41, align 8, !tbaa !146
  %55 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %52, i32 noundef %53, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef 16384, ptr noundef %54) #12
  store ptr %55, ptr %39, align 8, !tbaa !144
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %64

57:                                               ; preds = %12
  %58 = call ptr @__cxa_allocate_exception(i64 48) #13
  %59 = load ptr, ptr %20, align 8, !tbaa !127
  %60 = load ptr, ptr %41, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %58, ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 98, ptr noundef %59, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %60) #12
          to label %61 unwind label %62

61:                                               ; preds = %57
  call void @__cxa_throw(ptr nonnull %58, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

62:                                               ; preds = %57
  %63 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %58) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  resume { ptr, i32 } %63

64:                                               ; preds = %12
  %65 = load i32, ptr %40, align 8, !tbaa !145
  %66 = icmp eq i32 %65, 0
  %67 = load i32, ptr %28, align 4
  %68 = icmp eq i32 %67, 1
  %69 = select i1 %66, i1 %68, i1 false
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i32, ptr %16, align 4, !tbaa !124
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %72
  store i8 0, ptr %73, align 1, !tbaa !102
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %72
  store i32 0, ptr %74, align 4, !tbaa !164
  %75 = add i32 %71, 1
  store i32 %75, ptr %16, align 4, !tbaa !124
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %72
  store i16 32, ptr %76, align 2, !tbaa !98
  br label %77

77:                                               ; preds = %70, %64
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !122 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !146
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !127
  %6 = load ptr, ptr %3, align 8, !tbaa !148
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #12
          to label %9 unwind label %40

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !146
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !130
  %13 = load ptr, ptr %10, align 8, !tbaa !148
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #12
          to label %16 unwind label %40

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !146
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %19 = load ptr, ptr %18, align 8, !tbaa !140
  %20 = load ptr, ptr %17, align 8, !tbaa !148
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19) #12
          to label %23 unwind label %40

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !141
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !148
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25) #15
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %33 = load ptr, ptr %32, align 8, !tbaa !144
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !148
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(32) %33) #15
  br label %39

39:                                               ; preds = %35, %31
  ret void

40:                                               ; preds = %16, %9, %1
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #16
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #13
  tail call void @_ZSt9terminatev() #16
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 4, !tbaa !138, !range !155, !noundef !165
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  %6 = load i8, ptr %5, align 1, !range !155
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 74, ptr noundef %12) #12
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #13
  resume { ptr, i32 } %15

16:                                               ; preds = %1
  %17 = load i32, ptr %0, align 8, !tbaa !123
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  %21 = load i32, ptr %20, align 8, !tbaa !137
  br label %43

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !124
  %25 = icmp ult i32 %17, %24
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  %27 = load i32, ptr %26, align 8, !tbaa !137
  br i1 %25, label %28, label %33

28:                                               ; preds = %22
  %29 = zext i32 %17 to i64
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !164
  %32 = add i32 %31, %27
  br label %43

33:                                               ; preds = %22
  %34 = add i32 %17, -1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !164
  %38 = add i32 %37, %27
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %35
  %40 = load i8, ptr %39, align 1, !tbaa !102
  %41 = zext i8 %40 to i32
  %42 = add i32 %38, %41
  br label %43

43:                                               ; preds = %33, %28, %19
  %44 = phi i32 [ %21, %19 ], [ %32, %28 ], [ %42, %33 ]
  ret i32 %44
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !174 {
  %2 = alloca i32, align 4
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %4 = load i8, ptr %3, align 1, !tbaa !129, !range !155, !noundef !165
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %6, label %174, !prof !175

6:                                                ; preds = %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %8 = load i32, ptr %7, align 4, !tbaa !124
  %9 = load i32, ptr %0, align 8, !tbaa !123
  %10 = sub i32 %8, %9
  %11 = icmp eq i32 %10, 16384
  br i1 %11, label %174, label %12, !prof !176

12:                                               ; preds = %6
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %14 = load ptr, ptr %13, align 8, !tbaa !144
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %43, !prof !177

16:                                               ; preds = %12
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %18 = load i32, ptr %17, align 8, !tbaa !150
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !167

20:                                               ; preds = %16
  %21 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %23 = load ptr, ptr %22, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %21, ptr noundef nonnull @.str, i32 noundef 452, i32 noundef 75, ptr noundef %23) #12
          to label %24 unwind label %25

24:                                               ; preds = %20
  tail call void @__cxa_throw(ptr nonnull %21, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

25:                                               ; preds = %20
  %26 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %21) #13
  br label %172

27:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #13
  %28 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %30 = load ptr, ptr %29, align 8, !tbaa !127
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %32 = load ptr, ptr %31, align 8, !tbaa !146
  %33 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef %30, ptr noundef nonnull align 4 dereferenceable(4) %2, i32 noundef 16384, ptr noundef %32) #12
  store ptr %33, ptr %13, align 8, !tbaa !144
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %42, !prof !167

35:                                               ; preds = %27
  %36 = call ptr @__cxa_allocate_exception(i64 48) #13
  %37 = load ptr, ptr %29, align 8, !tbaa !127
  %38 = load ptr, ptr %31, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %36, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 98, ptr noundef %37, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %38) #12
          to label %39 unwind label %40

39:                                               ; preds = %35
  call void @__cxa_throw(ptr nonnull %36, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

40:                                               ; preds = %35
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %36) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %172

42:                                               ; preds = %27
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #13
  br label %43

43:                                               ; preds = %42, %12
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  %45 = load i8, ptr %44, align 1, !tbaa !139, !range !155, !noundef !165
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %63, label %47, !prof !178

47:                                               ; preds = %43
  %48 = load i32, ptr %0, align 8, !tbaa !123
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %63, label %50

50:                                               ; preds = %47
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  %52 = load i32, ptr %51, align 8, !tbaa !137
  %53 = zext i32 %48 to i64
  br label %54

54:                                               ; preds = %50, %54
  %55 = phi i64 [ 0, %50 ], [ %61, %54 ]
  %56 = phi i32 [ %52, %50 ], [ %60, %54 ]
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %55
  %58 = load i8, ptr %57, align 1, !tbaa !102
  %59 = zext i8 %58 to i32
  %60 = add i32 %56, %59
  store i32 %60, ptr %51, align 8, !tbaa !137
  %61 = add nuw nsw i64 %55, 1
  %62 = icmp eq i64 %61, %53
  br i1 %62, label %63, label %54, !llvm.loop !179

63:                                               ; preds = %54, %47, %43
  %64 = icmp eq i32 %8, %9
  br i1 %64, label %85, label %65, !prof !180

65:                                               ; preds = %63
  %66 = load i32, ptr %0, align 8, !tbaa !123
  %67 = load i32, ptr %7, align 4, !tbaa !124
  %68 = icmp ult i32 %66, %67
  br i1 %68, label %69, label %85, !prof !181

69:                                               ; preds = %65
  %70 = zext i32 %66 to i64
  %71 = sub i32 %67, %66
  br label %72

72:                                               ; preds = %69, %72
  %73 = phi i64 [ 0, %69 ], [ %81, %72 ]
  %74 = phi i64 [ %70, %69 ], [ %82, %72 ]
  %75 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %74
  %76 = load i16, ptr %75, align 2, !tbaa !98
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %73
  store i16 %76, ptr %77, align 2, !tbaa !98
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %74
  %79 = load i8, ptr %78, align 1, !tbaa !102
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %73
  store i8 %79, ptr %80, align 1, !tbaa !102
  %81 = add nuw nsw i64 %73, 1
  %82 = add nuw nsw i64 %74, 1
  %83 = trunc i64 %81 to i32
  %84 = icmp eq i32 %71, %83
  br i1 %84, label %85, label %72, !prof !182, !llvm.loop !183

85:                                               ; preds = %72, %65, %63
  %86 = phi i32 [ 0, %63 ], [ 0, %65 ], [ %71, %72 ]
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %88
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %88
  %91 = sub i32 16384, %10
  %92 = call noundef i32 @_ZN11xercesc_2_79XMLReader14xcodeMoreCharsEPtPhj(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull %89, ptr noundef nonnull %90, i32 noundef %91) #12
  %93 = add i32 %92, %10
  store i32 %93, ptr %7, align 4, !tbaa !124
  store i32 0, ptr %0, align 8, !tbaa !123
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %108, !prof !177

95:                                               ; preds = %85
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  %97 = load i32, ptr %96, align 8, !tbaa !145
  %98 = icmp eq i32 %97, 0
  %99 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  %100 = load i32, ptr %99, align 4
  %101 = icmp eq i32 %100, 1
  %102 = select i1 %98, i1 %101, i1 false
  br i1 %102, label %103, label %143, !prof !172

103:                                              ; preds = %95
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  %105 = load i8, ptr %104, align 8, !tbaa !135, !range !155, !noundef !165
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %143

107:                                              ; preds = %103
  store i16 32, ptr %87, align 4, !tbaa !98
  store i32 1, ptr %7, align 4, !tbaa !124
  store i8 1, ptr %104, align 8, !tbaa !135
  br label %108

108:                                              ; preds = %107, %85
  %109 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %110 = load i64, ptr %109, align 8
  %111 = icmp eq i64 %110, 1
  br i1 %111, label %112, label %143, !prof !184

112:                                              ; preds = %108
  %113 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %114 = load i64, ptr %113, align 8, !tbaa !125
  %115 = icmp eq i64 %114, 1
  br i1 %115, label %116, label %143, !prof !185

116:                                              ; preds = %112
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %118 = load i32, ptr %117, align 8, !tbaa !150
  %119 = icmp eq i32 %118, 6
  br i1 %119, label %124, label %120, !prof !186

120:                                              ; preds = %116
  %121 = icmp ne i32 %118, 5
  %122 = icmp ne i32 %86, 0
  %123 = or i1 %122, %121
  br i1 %123, label %128, label %126, !prof !187

124:                                              ; preds = %116
  %125 = icmp eq i32 %86, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %120, %124
  %127 = load i16, ptr %89, align 2, !tbaa !98
  switch i16 %127, label %143 [
    i16 -257, label %141
    i16 -2, label %141
  ]

128:                                              ; preds = %124, %120
  %129 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %130 = load i32, ptr %129, align 4, !tbaa !132
  %131 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer12fgUTF8BOMLenE, align 4, !tbaa !164
  %132 = icmp ugt i32 %130, %131
  br i1 %132, label %133, label %143, !prof !188

133:                                              ; preds = %128
  %134 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %135 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef nonnull %134, ptr noundef nonnull @_ZN11xercesc_2_713XMLRecognizer9fgUTF8BOME, i32 noundef %131) #12
  %136 = or i32 %135, %86
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %143, !prof !189

138:                                              ; preds = %133
  %139 = load i32, ptr %0, align 8, !tbaa !123
  %140 = add i32 %139, %131
  br label %141

141:                                              ; preds = %126, %126, %138
  %142 = phi i32 [ %140, %138 ], [ 1, %126 ], [ 1, %126 ]
  store i32 %142, ptr %0, align 8, !tbaa !123
  br label %143

143:                                              ; preds = %141, %95, %103, %128, %133, %126, %112, %108
  %144 = load i32, ptr %7, align 4, !tbaa !124
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %149, label %146, !prof !177

146:                                              ; preds = %143
  %147 = load i8, ptr %44, align 1, !tbaa !139, !range !155, !noundef !165
  %148 = icmp eq i8 %147, 0
  br i1 %148, label %170, label %154, !prof !178

149:                                              ; preds = %143
  store i8 1, ptr %3, align 1, !tbaa !129
  %150 = load i8, ptr %44, align 1, !tbaa !139, !range !155, !noundef !165
  %151 = icmp eq i8 %150, 0
  br i1 %151, label %170, label %152, !prof !178

152:                                              ; preds = %149
  %153 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4
  store i32 0, ptr %153, align 8, !tbaa !164
  br label %170

154:                                              ; preds = %146
  %155 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4
  store i32 0, ptr %155, align 8, !tbaa !164
  %156 = icmp eq i32 %144, 1
  br i1 %156, label %170, label %157

157:                                              ; preds = %154
  %158 = zext i32 %144 to i64
  br label %159

159:                                              ; preds = %157, %159
  %160 = phi i32 [ 0, %157 ], [ %166, %159 ]
  %161 = phi i64 [ 1, %157 ], [ %168, %159 ]
  %162 = add nsw i64 %161, -1
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %162
  %164 = load i8, ptr %163, align 1, !tbaa !102
  %165 = zext i8 %164 to i32
  %166 = add i32 %160, %165
  %167 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %161
  store i32 %166, ptr %167, align 4, !tbaa !164
  %168 = add nuw nsw i64 %161, 1
  %169 = icmp eq i64 %168, %158
  br i1 %169, label %170, label %159, !llvm.loop !190

170:                                              ; preds = %159, %152, %149, %154, %146
  %171 = icmp ne i32 %144, 0
  br label %174

172:                                              ; preds = %40, %25
  %173 = phi { ptr, i32 } [ %26, %25 ], [ %41, %40 ]
  resume { ptr, i32 } %173

174:                                              ; preds = %170, %6, %1
  %175 = phi i1 [ false, %1 ], [ %171, %170 ], [ true, %6 ]
  ret i1 %175
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79XMLReader14xcodeMoreCharsEPtPhj(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !191 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 4, !tbaa !132
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %34, label %9, !prof !176

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !131
  %12 = sub i32 %7, %11
  %13 = icmp ult i32 %12, 100
  br i1 %13, label %14, label %20, !prof !192

14:                                               ; preds = %9
  tail call void @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %15 = load i32, ptr %6, align 4, !tbaa !132
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %34, label %17, !prof !193

17:                                               ; preds = %14
  %18 = load i32, ptr %10, align 8, !tbaa !131
  %19 = sub i32 %15, %18
  br label %20

20:                                               ; preds = %17, %9
  %21 = phi i32 [ %19, %17 ], [ %12, %9 ]
  %22 = phi i32 [ %18, %17 ], [ %11, %9 ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #13
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %24 = load ptr, ptr %23, align 8, !tbaa !144
  %25 = zext i32 %22 to i64
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %25
  %27 = load ptr, ptr %24, align 8, !tbaa !148
  %28 = getelementptr inbounds ptr, ptr %27, i64 2
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(32) %24, ptr noundef nonnull %26, i32 noundef %21, ptr noundef %1, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef %2) #12
  %31 = load i32, ptr %5, align 4, !tbaa !164
  %32 = load i32, ptr %10, align 8, !tbaa !131
  %33 = add i32 %32, %31
  store i32 %33, ptr %10, align 8, !tbaa !131
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #13
  br label %34

34:                                               ; preds = %20, %14, %4
  %35 = phi i32 [ 0, %4 ], [ %30, %20 ], [ 0, %14 ]
  ret i32 %35
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !194 {
  %4 = load i32, ptr %0, align 8, !tbaa !123
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !124
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %12, !prof !195

8:                                                ; preds = %3
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %9, label %10, label %113

10:                                               ; preds = %8
  %11 = load i32, ptr %0, align 8, !tbaa !123
  br label %12

12:                                               ; preds = %10, %3
  %13 = phi i32 [ %11, %10 ], [ %4, %3 ]
  br i1 %2, label %40, label %14, !prof !195

14:                                               ; preds = %12
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %16 = load i32, ptr %15, align 4, !tbaa !111
  %17 = icmp eq i32 %16, 1
  %18 = zext i32 %13 to i64
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %18
  %20 = load i16, ptr %19, align 2, !tbaa !98
  br i1 %17, label %21, label %33, !prof !195

21:                                               ; preds = %14
  %22 = add i16 %20, 10240
  %23 = icmp ult i16 %22, 896
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = add i32 %13, 1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !98
  %29 = add i16 %28, 8192
  %30 = icmp ult i16 %29, -1024
  br i1 %30, label %113, label %31

31:                                               ; preds = %24
  %32 = add i32 %13, 2
  br label %38

33:                                               ; preds = %14, %21
  %34 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %20) #12
  br i1 %34, label %35, label %113, !prof !196

35:                                               ; preds = %33
  %36 = load i32, ptr %0, align 8, !tbaa !123
  %37 = add i32 %36, 1
  br label %38

38:                                               ; preds = %35, %31
  %39 = phi i32 [ %32, %31 ], [ %37, %35 ]
  store i32 %39, ptr %0, align 8, !tbaa !123
  br label %40

40:                                               ; preds = %38, %12
  %41 = phi i32 [ %13, %12 ], [ %39, %38 ]
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  br label %43

43:                                               ; preds = %108, %40
  %44 = phi i32 [ %41, %40 ], [ %109, %108 ]
  %45 = phi i32 [ %13, %40 ], [ %109, %108 ]
  %46 = load i32, ptr %42, align 4, !tbaa !111
  %47 = icmp eq i32 %46, 1
  %48 = load i32, ptr %5, align 4, !tbaa !124
  %49 = icmp ult i32 %44, %48
  br i1 %47, label %51, label %50, !prof !195

50:                                               ; preds = %43
  br i1 %49, label %79, label %90, !prof !197

51:                                               ; preds = %43
  br i1 %49, label %52, label %90

52:                                               ; preds = %51, %75
  %53 = phi i32 [ %76, %75 ], [ %48, %51 ]
  %54 = phi i32 [ %77, %75 ], [ %44, %51 ]
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !98
  %58 = add i16 %57, 10240
  %59 = icmp ult i16 %58, 896
  br i1 %59, label %60, label %69

60:                                               ; preds = %52
  %61 = add nuw i32 %54, 1
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !98
  %65 = add i16 %64, 8192
  %66 = icmp ult i16 %65, -1024
  br i1 %66, label %90, label %67

67:                                               ; preds = %60
  %68 = add i32 %54, 2
  br label %75

69:                                               ; preds = %52
  %70 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader10isNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %57) #12
  br i1 %70, label %71, label %90

71:                                               ; preds = %69
  %72 = load i32, ptr %0, align 8, !tbaa !123
  %73 = add i32 %72, 1
  %74 = load i32, ptr %5, align 4, !tbaa !124
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32 [ %74, %71 ], [ %53, %67 ]
  %77 = phi i32 [ %73, %71 ], [ %68, %67 ]
  store i32 %77, ptr %0, align 8, !tbaa !123
  %78 = icmp ult i32 %77, %76
  br i1 %78, label %52, label %90, !llvm.loop !198

79:                                               ; preds = %50, %85
  %80 = phi i32 [ %87, %85 ], [ %44, %50 ]
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %81
  %83 = load i16, ptr %82, align 2, !tbaa !98
  %84 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader10isNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %83) #12
  br i1 %84, label %85, label %90, !prof !199

85:                                               ; preds = %79
  %86 = load i32, ptr %0, align 8, !tbaa !123
  %87 = add i32 %86, 1
  store i32 %87, ptr %0, align 8, !tbaa !123
  %88 = load i32, ptr %5, align 4, !tbaa !124
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %79, label %90, !prof !200, !llvm.loop !201

90:                                               ; preds = %79, %85, %69, %60, %75, %50, %51
  %91 = load i32, ptr %0, align 8, !tbaa !123
  %92 = icmp eq i32 %91, %45
  br i1 %92, label %102, label %93, !prof !195

93:                                               ; preds = %90
  %94 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %95 = sub i32 %91, %45
  %96 = zext i32 %95 to i64
  %97 = load i64, ptr %94, align 8, !tbaa !125
  %98 = add nsw i64 %97, %96
  store i64 %98, ptr %94, align 8, !tbaa !125
  %99 = zext i32 %45 to i64
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %99
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %100, i32 noundef %95) #12
  %101 = load i32, ptr %0, align 8, !tbaa !123
  br label %102

102:                                              ; preds = %93, %90
  %103 = phi i32 [ %101, %93 ], [ %45, %90 ]
  %104 = load i32, ptr %5, align 4, !tbaa !124
  %105 = icmp ult i32 %103, %104
  br i1 %105, label %110, label %106, !prof !196

106:                                              ; preds = %102
  %107 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %107, label %108, label %110

108:                                              ; preds = %106
  %109 = load i32, ptr %0, align 8, !tbaa !123
  br label %43, !llvm.loop !202

110:                                              ; preds = %102, %106
  %111 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %112 = xor i1 %111, true
  br label %113

113:                                              ; preds = %110, %24, %33, %8
  %114 = phi i1 [ false, %8 ], [ %112, %110 ], [ false, %24 ], [ false, %33 ]
  ret i1 %114
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !194 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !102
  %8 = and i8 %7, 2
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader10isNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !204 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !102
  %8 = and i8 %7, 4
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 comdat align 2 !prof !205 {
  %4 = icmp eq i32 %2, 0
  br i1 %4, label %23, label %5, !prof !206

5:                                                ; preds = %3
  %6 = load i32, ptr %0, align 8, !tbaa !207
  %7 = add i32 %6, %2
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !209
  %10 = icmp ult i32 %7, %9
  br i1 %10, label %13, label %11, !prof !210

11:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %2) #12
  %12 = load i32, ptr %0, align 8, !tbaa !207
  br label %13

13:                                               ; preds = %11, %5
  %14 = phi i32 [ %12, %11 ], [ %6, %5 ]
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !211
  %17 = zext i32 %14 to i64
  %18 = getelementptr inbounds i16, ptr %16, i64 %17
  %19 = zext i32 %2 to i64
  %20 = shl nuw nsw i64 %19, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %18, ptr align 2 %1, i64 %20, i1 false)
  %21 = load i32, ptr %0, align 8, !tbaa !207
  %22 = add i32 %21, %2
  store i32 %22, ptr %0, align 8, !tbaa !207
  br label %24

23:                                               ; preds = %3
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) #12
  br label %24

24:                                               ; preds = %23, %13
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !212 {
  %2 = load i32, ptr %0, align 8, !tbaa !207
  %3 = icmp eq i32 %2, 0
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nocapture noundef %2) local_unnamed_addr #2 align 2 !prof !213 {
  store i32 -1, ptr %2, align 4, !tbaa !164
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %7 = load i32, ptr %0, align 8, !tbaa !123
  br label %8

8:                                                ; preds = %117, %3
  %9 = phi i32 [ %7, %3 ], [ %118, %117 ]
  %10 = phi i32 [ %7, %3 ], [ %119, %117 ]
  %11 = phi i8 [ 1, %3 ], [ %120, %117 ]
  %12 = load i32, ptr %4, align 4, !tbaa !124
  %13 = icmp eq i32 %10, %12
  br i1 %13, label %14, label %18, !prof !214

14:                                               ; preds = %8
  %15 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %15, label %16, label %121, !prof !215

16:                                               ; preds = %14
  %17 = load i32, ptr %0, align 8, !tbaa !123
  br label %18

18:                                               ; preds = %16, %8
  %19 = phi i32 [ %17, %16 ], [ %9, %8 ]
  %20 = phi i32 [ %17, %16 ], [ %10, %8 ]
  %21 = and i8 %11, 1
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %48, label %23, !prof !214

23:                                               ; preds = %18
  %24 = load i32, ptr %5, align 4, !tbaa !111
  %25 = icmp eq i32 %24, 1
  %26 = zext i32 %20 to i64
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %26
  %28 = load i16, ptr %27, align 2, !tbaa !98
  br i1 %25, label %29, label %41, !prof !216

29:                                               ; preds = %23
  %30 = add i16 %28, 10240
  %31 = icmp ult i16 %30, 896
  br i1 %31, label %32, label %41

32:                                               ; preds = %29
  %33 = add i32 %20, 1
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %34
  %36 = load i16, ptr %35, align 2, !tbaa !98
  %37 = add i16 %36, 8192
  %38 = icmp ult i16 %37, -1024
  br i1 %38, label %128, label %39

39:                                               ; preds = %32
  %40 = add i32 %20, 2
  br label %46

41:                                               ; preds = %23, %29
  %42 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader17isFirstNCNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %28) #12
  br i1 %42, label %43, label %128, !prof !217

43:                                               ; preds = %41
  %44 = load i32, ptr %0, align 8, !tbaa !123
  %45 = add i32 %44, 1
  br label %46

46:                                               ; preds = %43, %39
  %47 = phi i32 [ %40, %39 ], [ %45, %43 ]
  store i32 %47, ptr %0, align 8, !tbaa !123
  br label %48

48:                                               ; preds = %46, %18
  %49 = phi i32 [ %19, %18 ], [ %47, %46 ]
  %50 = phi i32 [ %20, %18 ], [ %47, %46 ]
  %51 = phi i8 [ %11, %18 ], [ 0, %46 ]
  %52 = load i32, ptr %4, align 4, !tbaa !124
  %53 = icmp ult i32 %50, %52
  br i1 %53, label %54, label %86, !prof !218

54:                                               ; preds = %48, %76
  %55 = phi i32 [ %78, %76 ], [ %49, %48 ]
  %56 = phi i32 [ %77, %76 ], [ %52, %48 ]
  %57 = phi i32 [ %78, %76 ], [ %50, %48 ]
  %58 = zext i32 %57 to i64
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %58
  %60 = load i16, ptr %59, align 2, !tbaa !98
  %61 = icmp ugt i16 %60, -10241
  br i1 %61, label %62, label %80, !prof !219

62:                                               ; preds = %54
  %63 = icmp ult i16 %60, -9344
  br i1 %63, label %64, label %80

64:                                               ; preds = %62
  %65 = load i32, ptr %5, align 4, !tbaa !111
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %64
  %68 = add nuw i32 %57, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !98
  %72 = add i16 %71, 8192
  %73 = icmp ult i16 %72, -1024
  br i1 %73, label %86, label %74

74:                                               ; preds = %67
  %75 = add i32 %57, 2
  br label %76

76:                                               ; preds = %74, %83
  %77 = phi i32 [ %85, %83 ], [ %56, %74 ]
  %78 = phi i32 [ %84, %83 ], [ %75, %74 ]
  store i32 %78, ptr %0, align 8, !tbaa !123
  %79 = icmp ult i32 %78, %77
  br i1 %79, label %54, label %86, !prof !220, !llvm.loop !221

80:                                               ; preds = %62, %54
  %81 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isNCNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %60) #12
  %82 = load i32, ptr %0, align 8, !tbaa !123
  br i1 %81, label %83, label %86, !prof !222

83:                                               ; preds = %80
  %84 = add i32 %82, 1
  %85 = load i32, ptr %4, align 4, !tbaa !124
  br label %76

86:                                               ; preds = %76, %67, %64, %80, %48
  %87 = phi i32 [ %49, %48 ], [ %78, %76 ], [ %55, %67 ], [ %55, %64 ], [ %82, %80 ]
  %88 = phi i32 [ %50, %48 ], [ %78, %76 ], [ %55, %67 ], [ %55, %64 ], [ %82, %80 ]
  %89 = icmp eq i32 %88, %20
  br i1 %89, label %98, label %90, !prof !223

90:                                               ; preds = %86
  %91 = sub i32 %88, %20
  %92 = zext i32 %91 to i64
  %93 = load i64, ptr %6, align 8, !tbaa !125
  %94 = add nsw i64 %93, %92
  store i64 %94, ptr %6, align 8, !tbaa !125
  %95 = zext i32 %20 to i64
  %96 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %95
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEPKtj(ptr noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %96, i32 noundef %91) #12
  %97 = load i32, ptr %0, align 8, !tbaa !123
  br label %98

98:                                               ; preds = %90, %86
  %99 = phi i32 [ %97, %90 ], [ %87, %86 ]
  %100 = phi i32 [ %97, %90 ], [ %20, %86 ]
  %101 = load i32, ptr %4, align 4, !tbaa !124
  %102 = icmp ult i32 %100, %101
  br i1 %102, label %103, label %117, !prof !224

103:                                              ; preds = %98
  %104 = zext i32 %100 to i64
  %105 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %104
  %106 = load i16, ptr %105, align 2, !tbaa !98
  %107 = icmp eq i16 %106, 58
  br i1 %107, label %108, label %121, !prof !225

108:                                              ; preds = %103
  %109 = load i32, ptr %2, align 4, !tbaa !164
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %128, !prof !166

111:                                              ; preds = %108
  %112 = tail call noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  store i32 %112, ptr %2, align 4, !tbaa !164
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext 58) #12
  %113 = load i32, ptr %0, align 8, !tbaa !123
  %114 = add i32 %113, 1
  store i32 %114, ptr %0, align 8, !tbaa !123
  %115 = load i64, ptr %6, align 8, !tbaa !125
  %116 = add nsw i64 %115, 1
  store i64 %116, ptr %6, align 8, !tbaa !125
  br label %117

117:                                              ; preds = %111, %98
  %118 = phi i32 [ %114, %111 ], [ %99, %98 ]
  %119 = phi i32 [ %114, %111 ], [ %100, %98 ]
  %120 = phi i8 [ 1, %111 ], [ %51, %98 ]
  br label %8, !llvm.loop !226

121:                                              ; preds = %103, %14
  %122 = phi i8 [ %51, %103 ], [ %11, %14 ]
  %123 = and i8 %122, 1
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %128, !prof !227

125:                                              ; preds = %121
  %126 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv(ptr noundef nonnull align 8 dereferenceable(40) %1) #12
  %127 = xor i1 %126, true
  br label %128

128:                                              ; preds = %108, %41, %32, %121, %125
  %129 = phi i1 [ %127, %125 ], [ false, %121 ], [ false, %32 ], [ false, %41 ], [ false, %108 ]
  ret i1 %129
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader17isFirstNCNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !228 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !102
  %8 = and i8 %7, 2
  %9 = icmp ne i8 %8, 0
  %10 = icmp ne i16 %1, 58
  %11 = and i1 %10, %9
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isNCNameCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !229 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !102
  %8 = and i8 %7, 1
  %9 = icmp ne i8 %8, 0
  ret i1 %9
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZNK11xercesc_2_79XMLBuffer6getLenEv(ptr noundef nonnull align 8 dereferenceable(40) %0) local_unnamed_addr #4 comdat align 2 !prof !230 {
  %2 = load i32, ptr %0, align 8, !tbaa !207
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %0, i16 noundef zeroext %1) local_unnamed_addr #2 comdat align 2 !prof !231 {
  %3 = load i32, ptr %0, align 8, !tbaa !207
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !209
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !232

7:                                                ; preds = %2
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef 1) #12
  %8 = load i32, ptr %0, align 8, !tbaa !207
  br label %9

9:                                                ; preds = %7, %2
  %10 = phi i32 [ %8, %7 ], [ %3, %2 ]
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %12 = load ptr, ptr %11, align 8, !tbaa !211
  %13 = add i32 %10, 1
  store i32 %13, ptr %0, align 8, !tbaa !207
  %14 = zext i32 %10 to i64
  %15 = getelementptr inbounds i16, ptr %12, i64 %14
  store i16 %1, ptr %15, align 2, !tbaa !98
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 !prof !233 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %32, %2
  %6 = load i32, ptr %0, align 8, !tbaa !123
  %7 = load i32, ptr %4, align 4, !tbaa !124
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %32, !prof !234

9:                                                ; preds = %5, %27
  %10 = phi i32 [ %29, %27 ], [ %6, %5 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #13
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !98
  store i16 %13, ptr %3, align 2, !tbaa !98
  %14 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %13) #12
  br i1 %14, label %16, label %15, !prof !235

15:                                               ; preds = %9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  br label %34

16:                                               ; preds = %9
  %17 = load i32, ptr %0, align 8, !tbaa !123
  %18 = add i32 %17, 1
  store i32 %18, ptr %0, align 8, !tbaa !123
  %19 = and i16 %13, 6
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %21, label %25, !prof !156

21:                                               ; preds = %16
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !125
  %24 = add nsw i64 %23, 1
  store i64 %24, ptr %22, align 8, !tbaa !125
  br label %27

25:                                               ; preds = %16
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext false) #12
  %26 = load i16, ptr %3, align 2, !tbaa !98
  br label %27

27:                                               ; preds = %21, %25
  %28 = phi i16 [ %13, %21 ], [ %26, %25 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %28) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #13
  %29 = load i32, ptr %0, align 8, !tbaa !123
  %30 = load i32, ptr %4, align 4, !tbaa !124
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %9, label %32, !prof !236

32:                                               ; preds = %27, %5
  %33 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %33, label %5, label %34, !prof !237, !llvm.loop !238

34:                                               ; preds = %32, %15
  %35 = phi i1 [ true, %15 ], [ false, %32 ]
  ret i1 %35
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #4 comdat align 2 !prof !239 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %4 = load ptr, ptr %3, align 8, !tbaa !203
  %5 = zext i16 %1 to i64
  %6 = getelementptr inbounds i8, ptr %4, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !102
  %8 = icmp slt i8 %7, 0
  ret i1 %8
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !240 {
  %4 = load i16, ptr %1, align 2, !tbaa !98
  switch i16 %4, label %66 [
    i16 13, label %5
    i16 10, label %34
    i16 133, label %39
    i16 8232, label %39
  ], !prof !241

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %6, align 8, !tbaa !125
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !126
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !126
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 4, !tbaa !136
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %70

13:                                               ; preds = %5
  %14 = load i32, ptr %0, align 8, !tbaa !123
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !124
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %13
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %19, label %20, label %33

20:                                               ; preds = %18
  %21 = load i32, ptr %0, align 8, !tbaa !123
  br label %22

22:                                               ; preds = %20, %13
  %23 = phi i32 [ %21, %20 ], [ %14, %13 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !98
  switch i16 %26, label %33 [
    i16 10, label %31
    i16 133, label %27
  ]

27:                                               ; preds = %22
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  %29 = load i8, ptr %28, align 8, !tbaa !242, !range !155, !noundef !165
  %30 = icmp eq i8 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %22, %27
  %32 = add i32 %23, 1
  store i32 %32, ptr %0, align 8, !tbaa !123
  br label %33

33:                                               ; preds = %22, %27, %31, %18
  store i16 10, ptr %1, align 2, !tbaa !98
  br label %70

34:                                               ; preds = %3
  %35 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %35, align 8, !tbaa !125
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %37 = load i64, ptr %36, align 8, !tbaa !126
  %38 = add nsw i64 %37, 1
  store i64 %38, ptr %36, align 8, !tbaa !126
  br label %70

39:                                               ; preds = %3, %3
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %41 = load i32, ptr %40, align 4
  %42 = icmp eq i32 %41, 1
  %43 = select i1 %2, i1 %42, i1 false
  br i1 %43, label %44, label %53

44:                                               ; preds = %39
  %45 = tail call ptr @__cxa_allocate_exception(i64 48) #13
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %47 = load ptr, ptr %46, align 8, !tbaa !140
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %49 = load ptr, ptr %48, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %45, ptr noundef nonnull @.str, i32 noundef 1800, i32 noundef 72, ptr noundef %47, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %49) #12
          to label %50 unwind label %51

50:                                               ; preds = %44
  tail call void @__cxa_throw(ptr nonnull %45, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

51:                                               ; preds = %44
  %52 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %45) #13
  resume { ptr, i32 } %52

53:                                               ; preds = %39
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  %55 = load i8, ptr %54, align 8, !tbaa !242, !range !155, !noundef !165
  %56 = icmp ne i8 %55, 0
  %57 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  %58 = load i32, ptr %57, align 4
  %59 = icmp eq i32 %58, 1
  %60 = select i1 %56, i1 %59, i1 false
  br i1 %60, label %61, label %70

61:                                               ; preds = %53
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %62, align 8, !tbaa !125
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %64 = load i64, ptr %63, align 8, !tbaa !126
  %65 = add nsw i64 %64, 1
  store i64 %65, ptr %63, align 8, !tbaa !126
  store i16 10, ptr %1, align 2, !tbaa !98
  br label %70

66:                                               ; preds = %3
  %67 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %68 = load i64, ptr %67, align 8, !tbaa !125
  %69 = add nsw i64 %68, 1
  store i64 %69, ptr %67, align 8, !tbaa !125
  br label %70

70:                                               ; preds = %34, %53, %61, %66, %5, %33
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !122 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  br label %7

7:                                                ; preds = %35, %3
  %8 = load i32, ptr %0, align 8, !tbaa !123
  %9 = load i32, ptr %5, align 4, !tbaa !124
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %35, !prof !197

11:                                               ; preds = %7, %30
  %12 = phi i32 [ %32, %30 ], [ %8, %7 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !98
  store i16 %15, ptr %4, align 2, !tbaa !98
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %15) #12
  %17 = icmp eq i16 %15, %2
  %18 = or i1 %17, %16
  br i1 %18, label %19, label %20, !prof !243

19:                                               ; preds = %11
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  br label %37

20:                                               ; preds = %11
  %21 = load i32, ptr %0, align 8, !tbaa !123
  %22 = add i32 %21, 1
  store i32 %22, ptr %0, align 8, !tbaa !123
  %23 = and i16 %15, -8366
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %28, label %25, !prof !244

25:                                               ; preds = %20
  %26 = load i64, ptr %6, align 8, !tbaa !125
  %27 = add nsw i64 %26, 1
  store i64 %27, ptr %6, align 8, !tbaa !125
  br label %30

28:                                               ; preds = %20
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext false) #12
  %29 = load i16, ptr %4, align 2, !tbaa !98
  br label %30

30:                                               ; preds = %25, %28
  %31 = phi i16 [ %15, %25 ], [ %29, %28 ]
  tail call void @_ZN11xercesc_2_79XMLBuffer6appendEt(ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %31) #12
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %32 = load i32, ptr %0, align 8, !tbaa !123
  %33 = load i32, ptr %5, align 4, !tbaa !124
  %34 = icmp ult i32 %32, %33
  br i1 %34, label %11, label %35, !prof !245

35:                                               ; preds = %30, %7
  %36 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %36, label %7, label %37, !llvm.loop !246

37:                                               ; preds = %35, %19
  %38 = phi i1 [ true, %19 ], [ false, %35 ]
  ret i1 %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %1) local_unnamed_addr #2 align 2 !prof !247 {
  %3 = load i32, ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !124
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %11, !prof !248

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %8, label %9, label %21

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8, !tbaa !123
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %3, %2 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !98
  switch i16 %15, label %21 [
    i16 34, label %16
    i16 39, label %16
  ], !prof !249

16:                                               ; preds = %11, %11
  store i16 %15, ptr %1, align 2, !tbaa !98
  %17 = add i32 %12, 1
  store i32 %17, ptr %0, align 8, !tbaa !123
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %19 = load i64, ptr %18, align 8, !tbaa !125
  %20 = add nsw i64 %19, 1
  store i64 %20, ptr %18, align 8, !tbaa !125
  br label %21

21:                                               ; preds = %16, %11, %7
  %22 = phi i1 [ false, %7 ], [ true, %16 ], [ false, %11 ]
  ret i1 %22
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10skipSpacesERbb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !250 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !126
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !125
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  br label %10

10:                                               ; preds = %37, %3
  %11 = load i32, ptr %0, align 8, !tbaa !123
  %12 = load i32, ptr %9, align 4, !tbaa !124
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %37, !prof !251

14:                                               ; preds = %10, %33
  %15 = phi i32 [ %34, %33 ], [ %11, %10 ]
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !98
  %19 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %18) #12
  br i1 %19, label %20, label %39, !prof !252

20:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #13
  %21 = load i32, ptr %0, align 8, !tbaa !123
  %22 = add i32 %21, 1
  store i32 %22, ptr %0, align 8, !tbaa !123
  %23 = zext i32 %21 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !98
  store i16 %25, ptr %4, align 2, !tbaa !98
  %26 = and i16 %25, 6
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %28, label %31, !prof !253

28:                                               ; preds = %20
  %29 = load i64, ptr %7, align 8, !tbaa !125
  %30 = add nsw i64 %29, 1
  store i64 %30, ptr %7, align 8, !tbaa !125
  br label %33

31:                                               ; preds = %20
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext %2) #12
  %32 = load i32, ptr %0, align 8, !tbaa !123
  br label %33

33:                                               ; preds = %31, %28
  %34 = phi i32 [ %32, %31 ], [ %22, %28 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #13
  %35 = load i32, ptr %9, align 4, !tbaa !124
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %14, label %37, !prof !254, !llvm.loop !255

37:                                               ; preds = %33, %10
  %38 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %38, label %10, label %39, !prof !171, !llvm.loop !256

39:                                               ; preds = %37, %14
  %40 = phi i1 [ true, %14 ], [ false, %37 ]
  %41 = load i64, ptr %5, align 8, !tbaa !126
  %42 = icmp ne i64 %6, %41
  %43 = load i64, ptr %7, align 8
  %44 = icmp ne i64 %8, %43
  %45 = select i1 %42, i1 true, i1 %44
  %46 = zext i1 %45 to i8
  store i8 %46, ptr %1, align 1, !tbaa !257
  ret i1 %40
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !258 {
  %3 = load i32, ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !124
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %11, !prof !259

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %8, label %9, label %22, !prof !260

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8, !tbaa !123
  br label %11

11:                                               ; preds = %9, %2
  %12 = phi i32 [ %10, %9 ], [ %3, %2 ]
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !98
  %16 = icmp eq i16 %15, %1
  br i1 %16, label %17, label %22, !prof !261

17:                                               ; preds = %11
  %18 = add i32 %12, 1
  store i32 %18, ptr %0, align 8, !tbaa !123
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !125
  %21 = add nsw i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !125
  br label %22

22:                                               ; preds = %11, %7, %17
  %23 = phi i1 [ true, %17 ], [ false, %7 ], [ false, %11 ]
  ret i1 %23
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 !prof !110 {
  %2 = alloca i16, align 2
  %3 = load i32, ptr %0, align 8, !tbaa !123
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !124
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  br i1 %8, label %9, label %28

9:                                                ; preds = %7
  %10 = load i32, ptr %0, align 8, !tbaa !123
  br label %11

11:                                               ; preds = %9, %1
  %12 = phi i32 [ %10, %9 ], [ %3, %1 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #13
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !98
  store i16 %15, ptr %2, align 2, !tbaa !98
  %16 = tail call noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %15) #12
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load i32, ptr %0, align 8, !tbaa !123
  %19 = add i32 %18, 1
  store i32 %19, ptr %0, align 8, !tbaa !123
  %20 = and i16 %15, 6
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %24 = load i64, ptr %23, align 8, !tbaa !125
  %25 = add nsw i64 %24, 1
  store i64 %25, ptr %23, align 8, !tbaa !125
  br label %27

26:                                               ; preds = %17
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false) #12
  br label %27

27:                                               ; preds = %11, %22, %26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #13
  br label %28

28:                                               ; preds = %7, %27
  %29 = phi i1 [ %16, %27 ], [ false, %7 ]
  ret i1 %29
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !262 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #12
  %4 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi i32 [ %5, %2 ], [ %12, %9 ]
  %8 = icmp ult i32 %7, %3
  br i1 %8, label %9, label %14, !prof !263

9:                                                ; preds = %6
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %11 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %27, label %6, !llvm.loop !264

14:                                               ; preds = %6
  %15 = load i32, ptr %0, align 8, !tbaa !123
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %16
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef nonnull %17, ptr noundef %1, i32 noundef %3) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27, !prof !265

20:                                               ; preds = %14
  %21 = zext i32 %3 to i64
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %23 = load i64, ptr %22, align 8, !tbaa !125
  %24 = add nsw i64 %23, %21
  store i64 %24, ptr %22, align 8, !tbaa !125
  %25 = load i32, ptr %0, align 8, !tbaa !123
  %26 = add i32 %25, %3
  store i32 %26, ptr %0, align 8, !tbaa !123
  br label %27

27:                                               ; preds = %9, %14, %20
  %28 = phi i1 [ true, %20 ], [ false, %14 ], [ false, %9 ]
  ret i1 %28
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #4 comdat align 2 !prof !266 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !267

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !98
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !268

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !98
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !269, !llvm.loop !270

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

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #4 comdat align 2 !prof !271 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %3 = load i32, ptr %2, align 4, !tbaa !124
  %4 = load i32, ptr %0, align 8, !tbaa !123
  %5 = sub i32 %3, %4
  %6 = zext i32 %5 to i64
  ret i64 %6
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !154 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #12
  %4 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %5 = trunc i64 %4 to i32
  br label %6

6:                                                ; preds = %9, %2
  %7 = phi i32 [ %5, %2 ], [ %12, %9 ]
  %8 = icmp ult i32 %7, %3
  br i1 %8, label %9, label %14, !prof !156

9:                                                ; preds = %6
  %10 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %11 = tail call noundef i64 @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) #12
  %12 = trunc i64 %11 to i32
  %13 = icmp eq i32 %7, %12
  br i1 %13, label %20, label %6, !llvm.loop !272

14:                                               ; preds = %6
  %15 = load i32, ptr %0, align 8, !tbaa !123
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %16
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef nonnull %17, ptr noundef %1, i32 noundef %3) #12
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %9, %14
  %21 = phi i1 [ %19, %14 ], [ false, %9 ]
  ret i1 %21
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !128, !range !155, !noundef !165
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %127

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !146
  %11 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %10) #12
  tail call void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef %11) #12
  %12 = tail call noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef %11) #12
  %13 = icmp eq i32 %12, 999
  br i1 %13, label %14, label %99

14:                                               ; preds = %8
  %15 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE) #12
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %35, label %17

17:                                               ; preds = %14
  %18 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E) #12
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %35, label %20

20:                                               ; preds = %17
  %21 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E) #12
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %20
  %24 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E) #12
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %23
  %27 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E) #12
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %35, label %29

29:                                               ; preds = %26
  %30 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E) #12
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %29
  %33 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E) #12
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %57

35:                                               ; preds = %32, %29, %26, %23, %20, %17, %14
  %36 = load ptr, ptr %9, align 8, !tbaa !146
  %37 = load ptr, ptr %36, align 8, !tbaa !148
  %38 = getelementptr inbounds ptr, ptr %37, i64 3
  %39 = load ptr, ptr %38, align 8
  tail call void %39(ptr noundef nonnull align 8 dereferenceable(8) %36, ptr noundef %11) #12
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %41 = load i32, ptr %40, align 8, !tbaa !150
  %42 = add i32 %41, -5
  %43 = icmp ult i32 %42, 2
  br i1 %43, label %44, label %127

44:                                               ; preds = %35
  %45 = icmp eq i32 %41, 6
  %46 = load ptr, ptr %9, align 8, !tbaa !146
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %48 = load ptr, ptr %47, align 8, !tbaa !127
  %49 = load ptr, ptr %46, align 8, !tbaa !148
  %50 = getelementptr inbounds ptr, ptr %49, i64 3
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(8) %46, ptr noundef %48) #12
  %52 = load ptr, ptr %9, align 8, !tbaa !146
  br i1 %45, label %53, label %55

53:                                               ; preds = %44
  %54 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, ptr noundef %52) #12
  store ptr %54, ptr %47, align 8, !tbaa !127
  br label %106

55:                                               ; preds = %44
  %56 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, ptr noundef %52) #12
  store ptr %56, ptr %47, align 8, !tbaa !127
  br label %106

57:                                               ; preds = %32
  %58 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE) #12
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %57
  %61 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E) #12
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %60
  %64 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %11, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E) #12
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %88

66:                                               ; preds = %63, %60, %57
  %67 = load ptr, ptr %9, align 8, !tbaa !146
  %68 = load ptr, ptr %67, align 8, !tbaa !148
  %69 = getelementptr inbounds ptr, ptr %68, i64 3
  %70 = load ptr, ptr %69, align 8
  tail call void %70(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %11) #12
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %72 = load i32, ptr %71, align 8, !tbaa !150
  %73 = add i32 %72, -1
  %74 = icmp ult i32 %73, 2
  br i1 %74, label %75, label %127

75:                                               ; preds = %66
  %76 = icmp eq i32 %72, 2
  %77 = load ptr, ptr %9, align 8, !tbaa !146
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !127
  %80 = load ptr, ptr %77, align 8, !tbaa !148
  %81 = getelementptr inbounds ptr, ptr %80, i64 3
  %82 = load ptr, ptr %81, align 8
  tail call void %82(ptr noundef nonnull align 8 dereferenceable(8) %77, ptr noundef %79) #12
  %83 = load ptr, ptr %9, align 8, !tbaa !146
  br i1 %76, label %84, label %86

84:                                               ; preds = %75
  %85 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, ptr noundef %83) #12
  store ptr %85, ptr %78, align 8, !tbaa !127
  br label %106

86:                                               ; preds = %75
  %87 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, ptr noundef %83) #12
  store ptr %87, ptr %78, align 8, !tbaa !127
  br label %106

88:                                               ; preds = %63
  %89 = load ptr, ptr %9, align 8, !tbaa !146
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !127
  %92 = load ptr, ptr %89, align 8, !tbaa !148
  %93 = getelementptr inbounds ptr, ptr %92, i64 3
  %94 = load ptr, ptr %93, align 8
  tail call void %94(ptr noundef nonnull align 8 dereferenceable(8) %89, ptr noundef %91) #12
  store ptr %11, ptr %90, align 8, !tbaa !127
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #13
  %95 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  %96 = load ptr, ptr %9, align 8, !tbaa !146
  %97 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %95, ptr noundef %11, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 16384, ptr noundef %96) #12
  %98 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr %97, ptr %98, align 8, !tbaa !144
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #13
  br label %106

99:                                               ; preds = %8
  %100 = load ptr, ptr %9, align 8, !tbaa !146
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !127
  %103 = load ptr, ptr %100, align 8, !tbaa !148
  %104 = getelementptr inbounds ptr, ptr %103, i64 3
  %105 = load ptr, ptr %104, align 8
  tail call void %105(ptr noundef nonnull align 8 dereferenceable(8) %100, ptr noundef %102) #12
  store ptr %11, ptr %101, align 8, !tbaa !127
  br label %106

106:                                              ; preds = %55, %53, %84, %86, %88, %99
  %107 = phi i32 [ 999, %88 ], [ 2, %84 ], [ 1, %86 ], [ 6, %53 ], [ 5, %55 ], [ %12, %99 ]
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %109 = load ptr, ptr %108, align 8, !tbaa !144
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %125

111:                                              ; preds = %106
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  %112 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !147
  %113 = load ptr, ptr %9, align 8, !tbaa !146
  %114 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %112, i32 noundef %107, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 16384, ptr noundef %113) #12
  store ptr %114, ptr %108, align 8, !tbaa !144
  %115 = icmp eq ptr %114, null
  br i1 %115, label %116, label %124

116:                                              ; preds = %111
  %117 = call ptr @__cxa_allocate_exception(i64 48) #13
  %118 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %119 = load ptr, ptr %118, align 8, !tbaa !127
  %120 = load ptr, ptr %9, align 8, !tbaa !146
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %117, ptr noundef nonnull @.str, i32 noundef 1320, i32 noundef 98, ptr noundef %119, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %120) #12
          to label %121 unwind label %122

121:                                              ; preds = %116
  call void @__cxa_throw(ptr nonnull %117, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #14
  unreachable

122:                                              ; preds = %116
  %123 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %117) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  resume { ptr, i32 } %123

124:                                              ; preds = %111
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  br label %125

125:                                              ; preds = %124, %106
  %126 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 %107, ptr %126, align 8, !tbaa !150
  br label %127

127:                                              ; preds = %66, %35, %125, %2
  %128 = phi i1 [ true, %2 ], [ true, %125 ], [ false, %35 ], [ false, %66 ]
  ret i1 %128
}

; Function Attrs: optsize
declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_76BitOps9swapBytesEj(i32 noundef %0) local_unnamed_addr #4 comdat align 2 !prof !110 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #4 comdat align 2 !prof !273 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #12
  store ptr %1, ptr %0, align 8, !tbaa !274
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !276
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 !prof !277 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #12
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #16
  unreachable
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i16 @_ZN11xercesc_2_76BitOps9swapBytesEt(i16 noundef zeroext %0) local_unnamed_addr #4 comdat align 2 !prof !110 {
  %2 = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %2
}

; Function Attrs: optsize
declare noundef zeroext i16 @_ZN11xercesc_2_719XMLEBCDICTranscoder11xlatThisOneEh(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #12
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !110 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #4 comdat align 2 !prof !110 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !110 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !278
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #12
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #12
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !110 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #12
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !148
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_79XMLBuffer6appendEPKt(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !281 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %31, label %4, !prof !282

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !98
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %31, label %7, !prof !283

7:                                                ; preds = %4, %7
  %8 = phi i32 [ %13, %7 ], [ 0, %4 ]
  %9 = zext i32 %8 to i64
  %10 = getelementptr inbounds i16, ptr %1, i64 %9
  %11 = load i16, ptr %10, align 2, !tbaa !98
  %12 = icmp eq i16 %11, 0
  %13 = add i32 %8, 1
  br i1 %12, label %14, label %7, !prof !284, !llvm.loop !285

14:                                               ; preds = %7
  %15 = load i32, ptr %0, align 8, !tbaa !207
  %16 = add i32 %15, %8
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !209
  %19 = icmp ult i32 %16, %18
  br i1 %19, label %22, label %20, !prof !286

20:                                               ; preds = %14
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %0, i32 noundef %8) #12
  %21 = load i32, ptr %0, align 8, !tbaa !207
  br label %22

22:                                               ; preds = %20, %14
  %23 = phi i32 [ %21, %20 ], [ %15, %14 ]
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %0, i64 0, i32 6
  %25 = load ptr, ptr %24, align 8, !tbaa !211
  %26 = zext i32 %23 to i64
  %27 = getelementptr inbounds i16, ptr %25, i64 %26
  %28 = shl nuw nsw i64 %9, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %27, ptr nonnull align 2 %1, i64 %28, i1 false)
  %29 = load i32, ptr %0, align 8, !tbaa !207
  %30 = add i32 %29, %8
  store i32 %30, ptr %0, align 8, !tbaa !207
  br label %31

31:                                               ; preds = %22, %4, %2
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !277 {
  %3 = load ptr, ptr %0, align 8, !tbaa !274
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !287

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !276
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !288

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !148
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #12
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #17
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !274
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !276
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #11

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #11

attributes #0 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind willreturn memory(argmem: read) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { optsize }
attributes #13 = { nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind optsize }
attributes #16 = { noreturn nounwind }
attributes #17 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!95}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94}
!35 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 3}
!36 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, i64 9}
!37 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLReader13setXMLVersionENS0_10XMLVersionE, i64 3}
!38 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv, i64 3}
!39 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj, i64 3}
!40 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE, i64 3}
!41 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLReader15checkForSwappedEv, i64 3}
!42 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLReader12doInitDecodeEv, i64 3}
!43 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!44 = !{ptr @_ZN11xercesc_2_79XMLReader12doInitDecodeEv, ptr @_ZN11xercesc_2_76BitOps9swapBytesEj, i64 6}
!45 = !{ptr @_ZN11xercesc_2_79XMLReader12doInitDecodeEv, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j, i64 2}
!46 = !{ptr @_ZN11xercesc_2_79XMLReader12doInitDecodeEv, ptr @_ZN11xercesc_2_76BitOps9swapBytesEt, i64 1}
!47 = !{ptr @_ZN11xercesc_2_79XMLReader12doInitDecodeEv, ptr @_ZN11xercesc_2_719XMLEBCDICTranscoder11xlatThisOneEh, i64 10}
!48 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @__cxa_allocate_exception, i64 2}
!49 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE, i64 1}
!50 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, i64 3}
!51 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE, i64 1}
!52 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @_ZN11xercesc_2_79XMLReader14xcodeMoreCharsEPtPhj, i64 3544}
!53 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j, i64 1}
!54 = !{ptr @_ZN11xercesc_2_79XMLReader14xcodeMoreCharsEPtPhj, ptr @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv, i64 1183}
!55 = !{ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2}
!56 = !{ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, ptr @_ZNK11xercesc_2_79XMLReader15isFirstNameCharEt, i64 610}
!57 = !{ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, ptr @_ZNK11xercesc_2_79XMLReader10isNameCharEt, i64 4096}
!58 = !{ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 610}
!59 = !{ptr @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb, ptr @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv, i64 610}
!60 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 5}
!61 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, i64 1}
!62 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 387}
!63 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZNK11xercesc_2_79XMLReader17isFirstNCNameCharEt, i64 1025278}
!64 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZNK11xercesc_2_79XMLReader12isNCNameCharEt, i64 6649334}
!65 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKtj, i64 1025606}
!66 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZNK11xercesc_2_79XMLBuffer6getLenEv, i64 3}
!67 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 3}
!68 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZNK11xercesc_2_79XMLBuffer7isEmptyEv, i64 1025273}
!69 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 1}
!70 = !{ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 8}
!71 = !{ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 4}
!72 = !{ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 5}
!73 = !{ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2}
!74 = !{ptr @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 18}
!75 = !{ptr @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 1}
!76 = !{ptr @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79XMLBuffer6appendEt, i64 15}
!77 = !{ptr @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 1}
!78 = !{ptr @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 1}
!79 = !{ptr @_ZN11xercesc_2_79XMLReader10skipSpacesERbb, ptr @_ZNK11xercesc_2_79XMLReader12isWhitespaceEt, i64 2090488}
!80 = !{ptr @_ZN11xercesc_2_79XMLReader10skipSpacesERbb, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 3}
!81 = !{ptr @_ZN11xercesc_2_79XMLReader10skipSpacesERbb, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 8231}
!82 = !{ptr @_ZN11xercesc_2_79XMLReader11skippedCharEt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 9}
!83 = !{ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 680336}
!84 = !{ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, ptr @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv, i64 680590}
!85 = !{ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 254}
!86 = !{ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 680328}
!87 = !{ptr @_ZN11xercesc_2_79XMLReader10peekStringEPKt, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 5}
!88 = !{ptr @_ZN11xercesc_2_79XMLReader10peekStringEPKt, ptr @_ZNK11xercesc_2_79XMLReader17charsLeftInBufferEv, i64 6}
!89 = !{ptr @_ZN11xercesc_2_79XMLReader10peekStringEPKt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 1}
!90 = !{ptr @_ZN11xercesc_2_79XMLReader10peekStringEPKt, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 5}
!91 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!92 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!93 = !{ptr @_ZN11xercesc_2_79XMLBuffer6appendEPKt, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 3}
!94 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!95 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!96 = !{!"function_entry_count", i64 1512181}
!97 = !{!"branch_weights", i32 926262, i32 1771791}
!98 = !{!99, !99, i64 0}
!99 = !{!"short", !100, i64 0}
!100 = !{!"omnipotent char", !101, i64 0}
!101 = !{!"Simple C++ TBAA"}
!102 = !{!100, !100, i64 0}
!103 = !{!"branch_weights", i32 585921, i32 1185871}
!104 = distinct !{!104, !105}
!105 = !{!"llvm.loop.mustprogress"}
!106 = !{!"function_entry_count", i64 1511514}
!107 = !{!"branch_weights", i32 3630906, i32 235640}
!108 = !{!"branch_weights", i32 2355031, i32 1275876}
!109 = distinct !{!109, !105}
!110 = !{!"function_entry_count", i64 0}
!111 = !{!112, !121, i64 163980}
!112 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !113, i64 0, !100, i64 4, !113, i64 32772, !100, i64 32776, !100, i64 49160, !114, i64 114696, !114, i64 114704, !115, i64 114712, !116, i64 114720, !117, i64 114728, !117, i64 114729, !116, i64 114736, !113, i64 114744, !100, i64 114748, !113, i64 163900, !113, i64 163904, !118, i64 163908, !117, i64 163912, !119, i64 163916, !113, i64 163920, !117, i64 163924, !117, i64 163925, !116, i64 163928, !116, i64 163936, !117, i64 163944, !117, i64 163945, !116, i64 163952, !120, i64 163960, !116, i64 163968, !117, i64 163976, !121, i64 163980, !116, i64 163984}
!113 = !{!"int", !100, i64 0}
!114 = !{!"long", !100, i64 0}
!115 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !100, i64 0}
!116 = !{!"any pointer", !100, i64 0}
!117 = !{!"bool", !100, i64 0}
!118 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !100, i64 0}
!119 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !100, i64 0}
!120 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !100, i64 0}
!121 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !100, i64 0}
!122 = !{!"function_entry_count", i64 3}
!123 = !{!112, !113, i64 0}
!124 = !{!112, !113, i64 32772}
!125 = !{!112, !114, i64 114696}
!126 = !{!112, !114, i64 114704}
!127 = !{!112, !116, i64 114720}
!128 = !{!112, !117, i64 114728}
!129 = !{!112, !117, i64 114729}
!130 = !{!112, !116, i64 114736}
!131 = !{!112, !113, i64 114744}
!132 = !{!112, !113, i64 163900}
!133 = !{!112, !113, i64 163904}
!134 = !{!112, !118, i64 163908}
!135 = !{!112, !117, i64 163912}
!136 = !{!112, !119, i64 163916}
!137 = !{!112, !113, i64 163920}
!138 = !{!112, !117, i64 163924}
!139 = !{!112, !117, i64 163925}
!140 = !{!112, !116, i64 163928}
!141 = !{!112, !116, i64 163936}
!142 = !{!112, !117, i64 163944}
!143 = !{!112, !117, i64 163945}
!144 = !{!112, !116, i64 163952}
!145 = !{!112, !120, i64 163960}
!146 = !{!112, !116, i64 163984}
!147 = !{!116, !116, i64 0}
!148 = !{!149, !149, i64 0}
!149 = !{!"vtable pointer", !101, i64 0}
!150 = !{!112, !115, i64 114712}
!151 = !{!"function_entry_count", i64 5836268}
!152 = !{!"function_entry_count", i64 558789}
!153 = !{!"branch_weights", i32 158605, i32 400186}
!154 = !{!"function_entry_count", i64 5}
!155 = !{i8 0, i8 2}
!156 = !{!"branch_weights", i32 1, i32 6}
!157 = !{!"function_entry_count", i64 1186}
!158 = !{!"branch_weights", i32 445, i32 742}
!159 = !{!"branch_weights", i32 742, i32 0}
!160 = distinct !{!160, !105}
!161 = !{!"branch_weights", i32 16, i32 5, i32 4}
!162 = !{!"branch_weights", i32 1, i32 1, i32 1, i32 4, i32 1, i32 1, i32 1}
!163 = distinct !{!163, !105}
!164 = !{!113, !113, i64 0}
!165 = !{}
!166 = !{!"branch_weights", i32 4, i32 1}
!167 = !{!"branch_weights", i32 1, i32 4}
!168 = !{!"branch_weights", i32 3, i32 2}
!169 = !{!"branch_weights", i32 60, i32 1}
!170 = !{!"branch_weights", i32 3, i32 58}
!171 = !{!"branch_weights", i32 58, i32 1}
!172 = !{!"branch_weights", i32 1, i32 9}
!173 = distinct !{!173, !105}
!174 = !{!"function_entry_count", i64 3549}
!175 = !{!"branch_weights", i32 3548, i32 3}
!176 = !{!"branch_weights", i32 1, i32 3548}
!177 = !{!"branch_weights", i32 4, i32 3545}
!178 = !{!"branch_weights", i32 3548, i32 1}
!179 = distinct !{!179, !105}
!180 = !{!"branch_weights", i32 3331, i32 218}
!181 = !{!"branch_weights", i32 217, i32 1}
!182 = !{!"branch_weights", i32 217, i32 525}
!183 = distinct !{!183, !105}
!184 = !{!"branch_weights", i32 2422327, i32 2145061321}
!185 = !{!"branch_weights", i32 2, i32 3}
!186 = !{!"branch_weights", i32 1, i32 2}
!187 = !{!"branch_weights", i32 5, i32 1}
!188 = !{!"branch_weights", i32 2, i32 1}
!189 = !{!"branch_weights", i32 1, i32 5}
!190 = distinct !{!190, !105}
!191 = !{!"function_entry_count", i64 3547}
!192 = !{!"branch_weights", i32 1184, i32 2365}
!193 = !{!"branch_weights", i32 4, i32 1181}
!194 = !{!"function_entry_count", i64 612}
!195 = !{!"branch_weights", i32 1, i32 613}
!196 = !{!"branch_weights", i32 613, i32 1}
!197 = !{!"branch_weights", i32 127, i32 1}
!198 = distinct !{!198, !105}
!199 = !{!"branch_weights", i32 3536, i32 613}
!200 = !{!"branch_weights", i32 530817, i32 127}
!201 = distinct !{!201, !105}
!202 = distinct !{!202, !105}
!203 = !{!112, !116, i64 163968}
!204 = !{!"function_entry_count", i64 4147}
!205 = !{!"function_entry_count", i64 2718768}
!206 = !{!"branch_weights", i32 1, i32 2718769}
!207 = !{!208, !113, i64 0}
!208 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !113, i64 0, !113, i64 4, !113, i64 8, !117, i64 12, !116, i64 16, !116, i64 24, !116, i64 32}
!209 = !{!208, !113, i64 4}
!210 = !{!"branch_weights", i32 2718765, i32 5}
!211 = !{!208, !116, i64 32}
!212 = !{!"function_entry_count", i64 2728090}
!213 = !{!"function_entry_count", i64 1025276}
!214 = !{!"branch_weights", i32 387, i32 1025280}
!215 = !{!"branch_weights", i32 387, i32 1}
!216 = !{!"branch_weights", i32 1, i32 1025280}
!217 = !{!"branch_weights", i32 1025280, i32 1}
!218 = !{!"branch_weights", i32 386, i32 1}
!219 = !{!"branch_weights", i32 1, i32 6666185}
!220 = !{!"branch_weights", i32 6665799, i32 386}
!221 = distinct !{!221, !105}
!222 = !{!"branch_weights", i32 5640906, i32 1025280}
!223 = !{!"branch_weights", i32 58, i32 1025609}
!224 = !{!"branch_weights", i32 1025280, i32 387}
!225 = !{!"branch_weights", i32 4, i32 1025277}
!226 = distinct !{!226, !105}
!227 = !{!"branch_weights", i32 1025277, i32 1}
!228 = !{!"function_entry_count", i64 1025279}
!229 = !{!"function_entry_count", i64 6666184}
!230 = !{!"function_entry_count", i64 3529098}
!231 = !{!"function_entry_count", i64 7992849}
!232 = !{!"branch_weights", i32 1, i32 7992850}
!233 = !{!"function_entry_count", i64 4}
!234 = !{!"branch_weights", i32 191, i32 1}
!235 = !{!"branch_weights", i32 6, i32 3}
!236 = !{!"branch_weights", i32 321, i32 191}
!237 = !{!"branch_weights", i32 1, i32 3}
!238 = distinct !{!238, !105}
!239 = !{!"function_entry_count", i64 5190970}
!240 = !{!"function_entry_count", i64 2054207}
!241 = !{!"branch_weights", i32 -249729419, i32 3907, i32 -311121874, i32 3908, i32 3908}
!242 = !{!112, !117, i64 163976}
!243 = !{!"branch_weights", i32 141, i32 700}
!244 = !{!"branch_weights", i32 1, i32 25}
!245 = !{!"branch_weights", i32 3457, i32 127}
!246 = distinct !{!246, !105}
!247 = !{!"function_entry_count", i64 192040}
!248 = !{!"branch_weights", i32 1, i32 192041}
!249 = !{!"branch_weights", i32 1, i32 384082, i32 1}
!250 = !{!"function_entry_count", i64 1900286}
!251 = !{!"branch_weights", i32 231, i32 1}
!252 = !{!"branch_weights", i32 190356, i32 1900287}
!253 = !{!"branch_weights", i32 190354, i32 3}
!254 = !{!"branch_weights", i32 8362337, i32 231}
!255 = distinct !{!255, !105}
!256 = distinct !{!256, !105}
!257 = !{!117, !117, i64 0}
!258 = !{!"function_entry_count", i64 1025895}
!259 = !{!"branch_weights", i32 9, i32 1025888}
!260 = !{!"branch_weights", i32 9, i32 1}
!261 = !{!"branch_weights", i32 1025896, i32 1}
!262 = !{!"function_entry_count", i64 680336}
!263 = !{!"branch_weights", i32 254, i32 680337}
!264 = distinct !{!264, !105}
!265 = !{!"branch_weights", i32 680328, i32 10}
!266 = !{!"function_entry_count", i64 2453164456}
!267 = !{!"branch_weights", i32 1, i32 -1841802839}
!268 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!269 = !{!"branch_weights", i32 408669070, i32 -279908794}
!270 = distinct !{!270, !105}
!271 = !{!"function_entry_count", i64 680594}
!272 = distinct !{!272, !105}
!273 = !{!"function_entry_count", i64 52059}
!274 = !{!275, !116, i64 0}
!275 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !116, i64 0, !116, i64 8}
!276 = !{!275, !116, i64 8}
!277 = !{!"function_entry_count", i64 243874}
!278 = !{!279, !116, i64 40}
!279 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !280, i64 8, !116, i64 16, !113, i64 24, !116, i64 32, !116, i64 40}
!280 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !100, i64 0}
!281 = !{!"function_entry_count", i64 789922}
!282 = !{!"branch_weights", i32 1, i32 789923}
!283 = !{!"branch_weights", i32 285, i32 789639}
!284 = !{!"branch_weights", i32 789639, i32 41628304}
!285 = distinct !{!285, !105}
!286 = !{!"branch_weights", i32 789637, i32 3}
!287 = !{!"branch_weights", i32 191816, i32 52060}
!288 = !{!"branch_weights", i32 1, i32 52060}
