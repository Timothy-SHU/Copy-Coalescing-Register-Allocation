; ModuleID = 'XMLReader.cpp'
source_filename = "XMLReader.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLReader" = type { i32, [16384 x i16], i32, [16384 x i8], [16384 x i32], i64, i64, i32, ptr, i8, i8, ptr, i32, [49152 x i8], i32, i32, i32, i8, i32, i32, i8, i8, ptr, ptr, i8, i8, ptr, i32, ptr, i8, i32, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLBuffer" = type { i32, i32, i32, i8, ptr, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_716RuntimeExceptionD0Ev = comdat any

$_ZNK11xercesc_2_716RuntimeException7getTypeEv = comdat any

$_ZNK11xercesc_2_716RuntimeException9duplicateEv = comdat any

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

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader11isAllSpacesEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !52 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds i16, ptr %1, i64 %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi ptr [ %1, %3 ], [ %12, %11 ]
  %10 = icmp uge ptr %9, %5
  br i1 %10, label %18, label %11, !prof !53

11:                                               ; preds = %8
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  %13 = load i16, ptr %9, align 2, !tbaa !54
  %14 = zext i16 %13 to i64
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !58
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %18, label %8, !prof !59, !llvm.loop !60

18:                                               ; preds = %11, %8
  ret i1 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader18containsWhiteSpaceEPKtj(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0, ptr noundef readonly %1, i32 noundef %2) local_unnamed_addr #0 align 2 !prof !63 {
  %4 = zext i32 %2 to i64
  %5 = getelementptr inbounds i16, ptr %1, i64 %4
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %7 = load ptr, ptr %6, align 8
  br label %8

8:                                                ; preds = %11, %3
  %9 = phi ptr [ %1, %3 ], [ %12, %11 ]
  %10 = icmp ult ptr %9, %5
  br i1 %10, label %11, label %18, !prof !64

11:                                               ; preds = %8
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  %13 = load i16, ptr %9, align 2, !tbaa !54
  %14 = zext i16 %13 to i64
  %15 = getelementptr inbounds i8, ptr %7, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !58
  %17 = icmp sgt i8 %16, -1
  br i1 %17, label %8, label %18, !prof !65, !llvm.loop !66

18:                                               ; preds = %11, %8
  ret i1 %10
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_79XMLReader14isPublicIdCharEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !67 {
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %4 = load i32, ptr %3, align 4, !tbaa !68
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %6, label %8

6:                                                ; preds = %2
  %7 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isPublicIdCharEtt(i16 noundef zeroext %1, i16 noundef zeroext 0)
  br label %10

8:                                                ; preds = %2
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isPublicIdCharEtt(i16 noundef zeroext %1, i16 noundef zeroext 0)
  br label %10

10:                                               ; preds = %8, %6
  %11 = phi i1 [ %7, %6 ], [ %9, %8 ]
  ret i1 %11
}

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_114isPublicIdCharEtt(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_014isPublicIdCharEtt(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i1 noundef zeroext %7, i1 noundef zeroext %8, i32 noundef %9, ptr noundef %10) unnamed_addr #2 align 2 !prof !79 {
  %12 = zext i1 %7 to i8
  %13 = zext i1 %8 to i8
  store i32 0, ptr %0, align 8, !tbaa !80
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %14, align 4, !tbaa !81
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %15, align 8, !tbaa !82
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  store i64 1, ptr %16, align 8, !tbaa !83
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  store ptr null, ptr %17, align 8, !tbaa !84
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  store i8 0, ptr %18, align 8, !tbaa !85
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  store i8 0, ptr %19, align 1, !tbaa !86
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %21 = icmp eq ptr %1, null
  br i1 %21, label %42, label %22, !prof !87

22:                                               ; preds = %11
  %23 = load i16, ptr %1, align 2, !tbaa !54
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %36, label %25

25:                                               ; preds = %22, %25
  %26 = phi ptr [ %27, %25 ], [ %1, %22 ]
  %27 = getelementptr inbounds i16, ptr %26, i64 1
  %28 = load i16, ptr %27, align 2, !tbaa !54
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %30, label %25, !llvm.loop !88

30:                                               ; preds = %25
  %31 = ptrtoint ptr %27 to i64
  %32 = ptrtoint ptr %1 to i64
  %33 = sub i64 %31, %32
  %34 = add i64 %33, 2
  %35 = and i64 %34, 8589934590
  br label %36

36:                                               ; preds = %30, %22
  %37 = phi i64 [ %35, %30 ], [ 2, %22 ]
  %38 = load ptr, ptr %10, align 8, !tbaa !89
  %39 = getelementptr inbounds ptr, ptr %38, i64 2
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %37)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %41, ptr nonnull align 2 %1, i64 %37, i1 false)
  br label %42

42:                                               ; preds = %11, %36
  %43 = phi ptr [ %41, %36 ], [ null, %11 ]
  store ptr %43, ptr %20, align 8, !tbaa !91
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  store i32 0, ptr %44, align 8, !tbaa !92
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  store i32 0, ptr %45, align 4, !tbaa !93
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  store i32 -1, ptr %46, align 8, !tbaa !94
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  store i32 %4, ptr %47, align 4, !tbaa !95
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  store i8 0, ptr %48, align 8, !tbaa !96
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  store i32 %6, ptr %49, align 4, !tbaa !97
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  store i32 0, ptr %50, align 8, !tbaa !98
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  store i8 0, ptr %51, align 4, !tbaa !99
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  store i8 %13, ptr %52, align 1, !tbaa !100
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %54 = icmp eq ptr %2, null
  br i1 %54, label %75, label %55, !prof !101

55:                                               ; preds = %42
  %56 = load i16, ptr %2, align 2, !tbaa !54
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %69, label %58, !prof !101

58:                                               ; preds = %55, %58
  %59 = phi ptr [ %60, %58 ], [ %2, %55 ]
  %60 = getelementptr inbounds i16, ptr %59, i64 1
  %61 = load i16, ptr %60, align 2, !tbaa !54
  %62 = icmp eq i16 %61, 0
  br i1 %62, label %63, label %58, !prof !102, !llvm.loop !88

63:                                               ; preds = %58
  %64 = ptrtoint ptr %60 to i64
  %65 = ptrtoint ptr %2 to i64
  %66 = sub i64 %64, %65
  %67 = add i64 %66, 2
  %68 = and i64 %67, 8589934590
  br label %69

69:                                               ; preds = %63, %55
  %70 = phi i64 [ %68, %63 ], [ 2, %55 ]
  %71 = load ptr, ptr %10, align 8, !tbaa !89
  %72 = getelementptr inbounds ptr, ptr %71, i64 2
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %70), !prof !103
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %74, ptr nonnull align 2 %2, i64 %70, i1 false), !prof !104
  br label %75

75:                                               ; preds = %42, %69
  %76 = phi ptr [ %74, %69 ], [ null, %42 ]
  store ptr %76, ptr %53, align 8, !tbaa !105
  %77 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  store ptr %3, ptr %77, align 8, !tbaa !106
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %78, align 8, !tbaa !107
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %12, ptr %79, align 1, !tbaa !108
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr null, ptr %80, align 8, !tbaa !109
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  store i32 %5, ptr %81, align 8, !tbaa !110
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  store ptr %10, ptr %82, align 8, !tbaa !111
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  store i32 %9, ptr %83, align 4, !tbaa !68
  %84 = icmp eq i32 %9, 1
  %85 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !range !112
  %86 = select i1 %84, i8 1, i8 %85, !prof !101
  %87 = select i1 %84, ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E, !prof !101
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  store i8 %86, ptr %88, align 8, !tbaa !113
  %89 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  store ptr %87, ptr %89, align 8, !tbaa !114
  %90 = load i32, ptr %45, align 4, !tbaa !93
  %91 = load i32, ptr %44, align 8, !tbaa !92
  %92 = sub i32 %90, %91
  %93 = icmp eq i32 %90, %91
  br i1 %93, label %105, label %94, !prof !115

94:                                               ; preds = %75, %94
  %95 = phi i64 [ %103, %94 ], [ 0, %75 ]
  %96 = zext i32 %92 to i64
  %97 = trunc i64 %95 to i32
  %98 = add i32 %91, %97
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !58
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %95
  store i8 %101, ptr %102, align 1, !tbaa !58
  %103 = add nuw nsw i64 %95, 1
  %104 = icmp eq i64 %103, %96
  br i1 %104, label %105, label %94, !prof !115, !llvm.loop !116

105:                                              ; preds = %94, %75
  %106 = load ptr, ptr %77, align 8, !tbaa !106
  %107 = zext i32 %92 to i64
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %107
  %109 = sub i32 49152, %92
  %110 = load ptr, ptr %106, align 8, !tbaa !89
  %111 = getelementptr inbounds ptr, ptr %110, i64 3
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef i32 %112(ptr noundef nonnull align 8 dereferenceable(8) %106, ptr noundef nonnull %108, i32 noundef %109), !prof !117
  %114 = add i32 %113, %92
  store i32 %114, ptr %45, align 4, !tbaa !93
  store i32 0, ptr %44, align 8, !tbaa !92
  %115 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  %116 = load ptr, ptr %115, align 8, !tbaa !89
  %117 = getelementptr inbounds ptr, ptr %116, i64 7
  %118 = load ptr, ptr %117, align 8
  %119 = tail call noundef zeroext i1 %118(ptr noundef nonnull align 8 dereferenceable(8) %115), !prof !119
  %120 = zext i1 %119 to i8
  store i8 %120, ptr %51, align 4, !tbaa !99
  %121 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %122 = load i32, ptr %45, align 4, !tbaa !93
  %123 = tail call noundef i32 @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj(ptr noundef nonnull %121, i32 noundef %122)
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 %123, ptr %124, align 8, !tbaa !120
  %125 = load ptr, ptr %82, align 8, !tbaa !111
  %126 = tail call noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef %123, ptr noundef %125)
  %127 = load ptr, ptr %82, align 8, !tbaa !111
  %128 = icmp eq ptr %126, null
  br i1 %128, label %149, label %129, !prof !101

129:                                              ; preds = %105
  %130 = load i16, ptr %126, align 2, !tbaa !54
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %143, label %132, !prof !101

132:                                              ; preds = %129, %132
  %133 = phi ptr [ %134, %132 ], [ %126, %129 ]
  %134 = getelementptr inbounds i16, ptr %133, i64 1
  %135 = load i16, ptr %134, align 2, !tbaa !54
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %132, !prof !121, !llvm.loop !88

137:                                              ; preds = %132
  %138 = ptrtoint ptr %134 to i64
  %139 = ptrtoint ptr %126 to i64
  %140 = sub i64 %138, %139
  %141 = add i64 %140, 2
  %142 = and i64 %141, 8589934590
  br label %143

143:                                              ; preds = %137, %129
  %144 = phi i64 [ %142, %137 ], [ 2, %129 ]
  %145 = load ptr, ptr %127, align 8, !tbaa !89
  %146 = getelementptr inbounds ptr, ptr %145, i64 2
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(8) %127, i64 noundef %144), !prof !103
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %148, ptr nonnull align 2 %126, i64 %144, i1 false), !prof !122
  br label %149

149:                                              ; preds = %105, %143
  %150 = phi ptr [ %148, %143 ], [ null, %105 ]
  store ptr %150, ptr %17, align 8, !tbaa !84
  store i8 0, ptr %78, align 8, !tbaa !107
  %151 = load i32, ptr %124, align 8, !tbaa !120
  switch i32 %151, label %153 [
    i32 5, label %152
    i32 1, label %152
  ], !prof !123

152:                                              ; preds = %149, %149
  store i8 1, ptr %78, align 8, !tbaa !107
  br label %153

153:                                              ; preds = %149, %152
  tail call void @_ZN11xercesc_2_79XMLReader12doInitDecodeEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader16refreshRawBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %3 = load i32, ptr %2, align 4, !tbaa !93
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 8, !tbaa !92
  %6 = sub i32 %3, %5
  %7 = icmp eq i32 %3, %5
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = zext i32 %6 to i64
  br label %21

10:                                               ; preds = %21, %1
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  %12 = load ptr, ptr %11, align 8, !tbaa !106
  %13 = zext i32 %6 to i64
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %13
  %15 = sub i32 49152, %6
  %16 = load ptr, ptr %12, align 8, !tbaa !89
  %17 = getelementptr inbounds ptr, ptr %16, i64 3
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef i32 %18(ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef nonnull %14, i32 noundef %15)
  %20 = add i32 %19, %6
  store i32 %20, ptr %2, align 4, !tbaa !93
  store i32 0, ptr %4, align 8, !tbaa !92
  ret void

21:                                               ; preds = %8, %21
  %22 = phi i64 [ 0, %8 ], [ %29, %21 ]
  %23 = trunc i64 %22 to i32
  %24 = add i32 %5, %23
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !58
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %22
  store i8 %27, ptr %28, align 1, !tbaa !58
  %29 = add nuw nsw i64 %22, 1
  %30 = icmp eq i64 %29, %9
  br i1 %30, label %10, label %21, !llvm.loop !116
}

declare noundef i32 @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj(ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader15checkForSwappedEv(ptr nocapture noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #4 align 2 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %2, align 8, !tbaa !107
  %3 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 8, !tbaa !120
  switch i32 %4, label %6 [
    i32 5, label %5
    i32 1, label %5
  ]

5:                                                ; preds = %1, %1
  store i8 1, ptr %2, align 8, !tbaa !107
  br label %6

6:                                                ; preds = %1, %5
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader12doInitDecodeEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %3 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 8, !tbaa !120
  switch i32 %5, label %255 [
    i32 1, label %6
    i32 2, label %6
    i32 4, label %106
    i32 5, label %181
    i32 6, label %181
    i32 0, label %233
  ], !prof !124

6:                                                ; preds = %1, %1
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %8 = load i8, ptr %7, align 4, !tbaa !58
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
  %32 = load i32, ptr %31, align 4, !tbaa !93
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %38, %30
  %35 = phi i32 [ %32, %30 ], [ %46, %38 ]
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %37 = add i32 %35, -4
  store i32 %37, ptr %36, align 4, !tbaa !93
  br label %49

38:                                               ; preds = %30, %38
  %39 = phi i64 [ %45, %38 ], [ 0, %30 ]
  %40 = add nuw i64 %39, 4
  %41 = and i64 %40, 4294967295
  %42 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !58
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %39
  store i8 %43, ptr %44, align 1, !tbaa !58
  %45 = add nuw nsw i64 %39, 1
  %46 = load i32, ptr %31, align 4, !tbaa !93
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %45, %47
  br i1 %48, label %38, label %34, !llvm.loop !125

49:                                               ; preds = %34, %22
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %54 = load i32, ptr %53, align 4, !tbaa !81
  br label %55

55:                                               ; preds = %98, %49
  %56 = phi i32 [ %54, %49 ], [ %103, %98 ]
  %57 = phi ptr [ %7, %49 ], [ %99, %98 ]
  %58 = load i32, ptr %50, align 8, !tbaa !92
  %59 = load i32, ptr %51, align 4, !tbaa !93
  %60 = icmp ult i32 %58, %59
  br i1 %60, label %61, label %281

61:                                               ; preds = %55
  %62 = load i32, ptr %57, align 4, !tbaa !126
  %63 = add i32 %58, 4
  store i32 %63, ptr %50, align 8, !tbaa !92
  %64 = load i8, ptr %52, align 8, !tbaa !107, !range !112, !noundef !127
  %65 = icmp eq i8 %64, 0
  %66 = tail call i32 @llvm.bswap.i32(i32 %62)
  %67 = select i1 %65, i32 %62, i32 %66
  %68 = icmp ugt i32 %67, 65535
  br i1 %68, label %69, label %98

69:                                               ; preds = %61
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %70, align 4, !tbaa !81
  store i32 0, ptr %50, align 8, !tbaa !92
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %72 = load ptr, ptr %71, align 8, !tbaa !111
  %73 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %74 = load ptr, ptr %73, align 8, !tbaa !91
  %75 = load ptr, ptr %72, align 8, !tbaa !89
  %76 = getelementptr inbounds ptr, ptr %75, i64 3
  %77 = load ptr, ptr %76, align 8
  tail call void %77(ptr noundef nonnull align 8 dereferenceable(8) %72, ptr noundef %74)
  %78 = load ptr, ptr %71, align 8, !tbaa !111
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %80 = load ptr, ptr %79, align 8, !tbaa !84
  %81 = load ptr, ptr %78, align 8, !tbaa !89
  %82 = getelementptr inbounds ptr, ptr %81, i64 3
  %83 = load ptr, ptr %82, align 8
  tail call void %83(ptr noundef nonnull align 8 dereferenceable(8) %78, ptr noundef %80)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #15
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %85 = load ptr, ptr %84, align 8, !tbaa !105
  %86 = load ptr, ptr %71, align 8, !tbaa !111
  store ptr %85, ptr %2, align 8, !tbaa !128
  %87 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %2, i64 0, i32 1
  store ptr %86, ptr %87, align 8, !tbaa !130
  %88 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %89 = load ptr, ptr %84, align 8, !tbaa !105
  %90 = load ptr, ptr %71, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %88, ptr noundef nonnull @.str, i32 noundef 1417, i32 noundef 71, ptr noundef %89, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %90)
          to label %91 unwind label %92

91:                                               ; preds = %69
  invoke void @__cxa_throw(ptr nonnull %88, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %322 unwind label %94

92:                                               ; preds = %69
  %93 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %88) #15
  br label %96

94:                                               ; preds = %91
  %95 = landingpad { ptr, i32 }
          cleanup
  br label %96

96:                                               ; preds = %94, %92
  %97 = phi { ptr, i32 } [ %95, %94 ], [ %93, %92 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %2) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #15
  br label %320

98:                                               ; preds = %61
  %99 = getelementptr inbounds i32, ptr %57, i64 1
  %100 = zext i32 %56 to i64
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %100
  store i8 4, ptr %101, align 1, !tbaa !58
  %102 = trunc i32 %67 to i16
  %103 = add i32 %56, 1
  store i32 %103, ptr %53, align 4, !tbaa !81
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %100
  store i16 %102, ptr %104, align 2, !tbaa !54
  %105 = icmp eq i32 %67, 62
  br i1 %105, label %281, label %55

106:                                              ; preds = %1
  %107 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %109 = load i32, ptr %108, align 4, !tbaa !93
  %110 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer12fgUTF8BOMLenE, align 4, !tbaa !126
  %111 = icmp ugt i32 %109, %110
  br i1 %111, label %112, label %121, !prof !87

112:                                              ; preds = %106
  %113 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef nonnull %107, ptr noundef nonnull @_ZN11xercesc_2_713XMLRecognizer9fgUTF8BOME, i32 noundef %110)
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %121, !prof !101

115:                                              ; preds = %112
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %117 = load i32, ptr %116, align 8, !tbaa !92
  %118 = add i32 %117, %110
  store i32 %118, ptr %116, align 8, !tbaa !92
  %119 = zext i32 %110 to i64
  %120 = getelementptr inbounds i8, ptr %107, i64 %119
  br label %121

121:                                              ; preds = %115, %112, %106
  %122 = phi ptr [ %120, %115 ], [ %107, %112 ], [ %107, %106 ]
  %123 = load i32, ptr %108, align 4, !tbaa !93
  %124 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer13fgASCIIPreLenE, align 4, !tbaa !126
  %125 = icmp ult i32 %123, %124
  br i1 %125, label %281, label %126, !prof !101

126:                                              ; preds = %121
  %127 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef %122, ptr noundef nonnull @_ZN11xercesc_2_713XMLRecognizer10fgASCIIPreE, i32 noundef %124)
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %281, !prof !131

129:                                              ; preds = %126
  %130 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !81
  br label %133

133:                                              ; preds = %129, %178
  %134 = phi i32 [ %145, %178 ], [ %132, %129 ]
  %135 = phi ptr [ %180, %178 ], [ %122, %129 ]
  %136 = load i32, ptr %130, align 8, !tbaa !92
  %137 = load i32, ptr %108, align 4, !tbaa !93
  %138 = icmp ult i32 %136, %137
  br i1 %138, label %139, label %281, !prof !132

139:                                              ; preds = %133
  %140 = load i8, ptr %135, align 1, !tbaa !58
  %141 = add i32 %136, 1
  store i32 %141, ptr %130, align 8, !tbaa !92
  %142 = zext i32 %134 to i64
  %143 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %142
  store i8 1, ptr %143, align 1, !tbaa !58
  %144 = sext i8 %140 to i16
  %145 = add i32 %134, 1
  store i32 %145, ptr %131, align 4, !tbaa !81
  %146 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %142
  store i16 %144, ptr %146, align 2, !tbaa !54
  %147 = icmp sgt i8 %140, -1
  br i1 %147, label %178, label %148, !prof !133

148:                                              ; preds = %139
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %149, align 4, !tbaa !81
  store i32 0, ptr %130, align 8, !tbaa !92
  %150 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %151 = load ptr, ptr %150, align 8, !tbaa !111
  %152 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %153 = load ptr, ptr %152, align 8, !tbaa !91
  %154 = load ptr, ptr %151, align 8, !tbaa !89
  %155 = getelementptr inbounds ptr, ptr %154, i64 3
  %156 = load ptr, ptr %155, align 8
  tail call void %156(ptr noundef nonnull align 8 dereferenceable(8) %151, ptr noundef %153)
  %157 = load ptr, ptr %150, align 8, !tbaa !111
  %158 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %159 = load ptr, ptr %158, align 8, !tbaa !84
  %160 = load ptr, ptr %157, align 8, !tbaa !89
  %161 = getelementptr inbounds ptr, ptr %160, i64 3
  %162 = load ptr, ptr %161, align 8
  tail call void %162(ptr noundef nonnull align 8 dereferenceable(8) %157, ptr noundef %159)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #15
  %163 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %164 = load ptr, ptr %163, align 8, !tbaa !105
  %165 = load ptr, ptr %150, align 8, !tbaa !111
  store ptr %164, ptr %3, align 8, !tbaa !128
  %166 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %3, i64 0, i32 1
  store ptr %165, ptr %166, align 8, !tbaa !130
  %167 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %168 = load ptr, ptr %163, align 8, !tbaa !105
  %169 = load ptr, ptr %150, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %167, ptr noundef nonnull @.str, i32 noundef 1496, i32 noundef 71, ptr noundef %168, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %169)
          to label %170 unwind label %172

170:                                              ; preds = %148
  invoke void @__cxa_throw(ptr nonnull %167, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
          to label %171 unwind label %174

171:                                              ; preds = %170
  unreachable

172:                                              ; preds = %148
  %173 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %167) #15
  br label %176

174:                                              ; preds = %170
  %175 = landingpad { ptr, i32 }
          cleanup
  br label %176

176:                                              ; preds = %174, %172
  %177 = phi { ptr, i32 } [ %175, %174 ], [ %173, %172 ]
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %3) #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #15
  br label %320

178:                                              ; preds = %139
  %179 = icmp eq i8 %140, 62
  %180 = getelementptr inbounds i8, ptr %135, i64 1
  br i1 %179, label %281, label %133, !prof !134

181:                                              ; preds = %1, %1
  %182 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %183 = load i32, ptr %182, align 4, !tbaa !93
  %184 = icmp ult i32 %183, 2
  br i1 %184, label %281, label %185

185:                                              ; preds = %181
  %186 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %187 = load i32, ptr %186, align 8, !tbaa !92
  %188 = zext i32 %187 to i64
  %189 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %188
  %190 = load i16, ptr %189, align 2, !tbaa !54
  switch i16 %190, label %194 [
    i16 -257, label %191
    i16 -2, label %191
  ]

191:                                              ; preds = %185, %185
  %192 = add i32 %187, 2
  store i32 %192, ptr %186, align 8, !tbaa !92
  %193 = getelementptr inbounds i16, ptr %189, i64 1
  br label %194

194:                                              ; preds = %185, %191
  %195 = phi i32 [ %192, %191 ], [ 0, %185 ]
  %196 = phi ptr [ %193, %191 ], [ %189, %185 ]
  %197 = load i32, ptr %186, align 8, !tbaa !92
  %198 = sub i32 %183, %197
  %199 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer13fgUTF16PreLenE, align 4, !tbaa !126
  %200 = icmp ult i32 %198, %199
  br i1 %200, label %280, label %201

201:                                              ; preds = %194
  %202 = icmp eq i32 %5, 5
  %203 = zext i32 %199 to i64
  br i1 %202, label %204, label %207

204:                                              ; preds = %201
  %205 = tail call i32 @bcmp(ptr nonnull %196, ptr nonnull @_ZN11xercesc_2_713XMLRecognizer11fgUTF16BPreE, i64 %203)
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %210, label %280

207:                                              ; preds = %201
  %208 = tail call i32 @bcmp(ptr nonnull %196, ptr nonnull @_ZN11xercesc_2_713XMLRecognizer11fgUTF16LPreE, i64 %203)
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %280

210:                                              ; preds = %207, %204
  %211 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  %212 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %213 = load i32, ptr %212, align 4, !tbaa !81
  br label %214

214:                                              ; preds = %220, %210
  %215 = phi i32 [ %213, %210 ], [ %230, %220 ]
  %216 = phi ptr [ %196, %210 ], [ %221, %220 ]
  %217 = load i32, ptr %186, align 8, !tbaa !92
  %218 = load i32, ptr %182, align 4, !tbaa !93
  %219 = icmp ult i32 %217, %218
  br i1 %219, label %220, label %281

220:                                              ; preds = %214
  %221 = getelementptr inbounds i16, ptr %216, i64 1
  %222 = load i16, ptr %216, align 2, !tbaa !54
  %223 = add i32 %217, 2
  store i32 %223, ptr %186, align 8, !tbaa !92
  %224 = load i8, ptr %211, align 8, !tbaa !107, !range !112, !noundef !127
  %225 = icmp eq i8 %224, 0
  %226 = tail call i16 @llvm.bswap.i16(i16 %222)
  %227 = select i1 %225, i16 %222, i16 %226
  %228 = zext i32 %215 to i64
  %229 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %228
  store i8 2, ptr %229, align 1, !tbaa !58
  %230 = add i32 %215, 1
  store i32 %230, ptr %212, align 4, !tbaa !81
  %231 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %228
  store i16 %227, ptr %231, align 2, !tbaa !54
  %232 = icmp eq i16 %227, 62
  br i1 %232, label %281, label %214

233:                                              ; preds = %1
  %234 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %235 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %236 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %237 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  br label %238

238:                                              ; preds = %238, %233
  %239 = phi ptr [ %234, %233 ], [ %240, %238 ]
  %240 = getelementptr inbounds i8, ptr %239, i64 1
  %241 = load i8, ptr %239, align 1, !tbaa !58
  %242 = tail call noundef zeroext i16 @_ZN11xercesc_2_719XMLEBCDICTranscoder11xlatThisOneEh(i8 noundef zeroext %241)
  %243 = load i32, ptr %235, align 8, !tbaa !92
  %244 = add i32 %243, 1
  store i32 %244, ptr %235, align 8, !tbaa !92
  %245 = load i32, ptr %236, align 4, !tbaa !81
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %246
  store i8 1, ptr %247, align 1, !tbaa !58
  %248 = add i32 %245, 1
  store i32 %248, ptr %236, align 4, !tbaa !81
  %249 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %246
  store i16 %242, ptr %249, align 2, !tbaa !54
  %250 = icmp ne i16 %242, 62
  %251 = load i32, ptr %235, align 8
  %252 = load i32, ptr %237, align 4
  %253 = icmp ne i32 %251, %252
  %254 = select i1 %250, i1 %253, i1 false
  br i1 %254, label %238, label %281

255:                                              ; preds = %1
  %256 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %257 = load ptr, ptr %256, align 8, !tbaa !111
  %258 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %259 = load ptr, ptr %258, align 8, !tbaa !91
  %260 = load ptr, ptr %257, align 8, !tbaa !89
  %261 = getelementptr inbounds ptr, ptr %260, i64 3
  %262 = load ptr, ptr %261, align 8
  tail call void %262(ptr noundef nonnull align 8 dereferenceable(8) %257, ptr noundef %259)
  %263 = load ptr, ptr %256, align 8, !tbaa !111
  %264 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %265 = load ptr, ptr %264, align 8, !tbaa !84
  %266 = load ptr, ptr %263, align 8, !tbaa !89
  %267 = getelementptr inbounds ptr, ptr %266, i64 3
  %268 = load ptr, ptr %267, align 8
  tail call void %268(ptr noundef nonnull align 8 dereferenceable(8) %263, ptr noundef %265)
  %269 = load ptr, ptr %256, align 8, !tbaa !111
  %270 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %271 = load ptr, ptr %270, align 8, !tbaa !105
  %272 = load ptr, ptr %269, align 8, !tbaa !89
  %273 = getelementptr inbounds ptr, ptr %272, i64 3
  %274 = load ptr, ptr %273, align 8
  tail call void %274(ptr noundef nonnull align 8 dereferenceable(8) %269, ptr noundef %271)
  %275 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %276 = load ptr, ptr %256, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %275, ptr noundef nonnull @.str, i32 noundef 1612, i32 noundef 70, ptr noundef %276)
          to label %277 unwind label %278

277:                                              ; preds = %255
  tail call void @__cxa_throw(ptr nonnull %275, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

278:                                              ; preds = %255
  %279 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %275) #15
  br label %320

280:                                              ; preds = %207, %204, %194
  store i32 %195, ptr %186, align 8, !tbaa !92
  br label %281

281:                                              ; preds = %238, %220, %214, %178, %133, %98, %55, %280, %121, %126, %181
  %282 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  %283 = load i32, ptr %282, align 8, !tbaa !110
  %284 = icmp eq i32 %283, 0
  %285 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  %286 = load i32, ptr %285, align 4
  %287 = icmp eq i32 %286, 1
  %288 = select i1 %284, i1 %287, i1 false, !prof !101
  br i1 %288, label %289, label %295, !prof !101

289:                                              ; preds = %281
  %290 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %291 = load i32, ptr %290, align 4, !tbaa !81
  %292 = add i32 %291, 1
  store i32 %292, ptr %290, align 4, !tbaa !81
  %293 = zext i32 %291 to i64
  %294 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %293
  store i16 32, ptr %294, align 2, !tbaa !54
  br label %295

295:                                              ; preds = %289, %281
  %296 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  %297 = load i8, ptr %296, align 1, !tbaa !100, !range !112, !noundef !127
  %298 = icmp eq i8 %297, 0
  br i1 %298, label %319, label %299, !prof !87

299:                                              ; preds = %295
  %300 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4
  store i32 0, ptr %300, align 8, !tbaa !126
  %301 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %302 = load i32, ptr %301, align 4, !tbaa !81
  %303 = icmp ugt i32 %302, 1
  br i1 %303, label %304, label %319

304:                                              ; preds = %299
  %305 = zext i32 %302 to i64
  %306 = getelementptr inbounds i8, ptr %0, i64 49160
  %307 = load i32, ptr %306, align 8
  br label %308

308:                                              ; preds = %304, %308
  %309 = phi i32 [ %307, %304 ], [ %315, %308 ]
  %310 = phi i64 [ 1, %304 ], [ %317, %308 ]
  %311 = add nsw i64 %310, -1
  %312 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %311
  %313 = load i8, ptr %312, align 1, !tbaa !58
  %314 = zext i8 %313 to i32
  %315 = add i32 %309, %314
  %316 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %310
  store i32 %315, ptr %316, align 4, !tbaa !126
  %317 = add nuw nsw i64 %310, 1
  %318 = icmp eq i64 %317, %305
  br i1 %318, label %319, label %308, !llvm.loop !135

319:                                              ; preds = %308, %299, %295
  ret void

320:                                              ; preds = %278, %176, %96
  %321 = phi { ptr, i32 } [ %279, %278 ], [ %177, %176 ], [ %97, %96 ]
  resume { ptr, i32 } %321

322:                                              ; preds = %91
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamES2_NS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10, ptr noundef %11) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %13 = alloca i32, align 4
  %14 = zext i1 %8 to i8
  %15 = zext i1 %9 to i8
  store i32 0, ptr %0, align 8, !tbaa !80
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %16, align 4, !tbaa !81
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %17, align 8, !tbaa !82
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  store i64 1, ptr %18, align 8, !tbaa !83
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 4, ptr %19, align 8, !tbaa !120
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !84
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  store i8 1, ptr %21, align 8, !tbaa !85
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  store i8 0, ptr %22, align 1, !tbaa !86
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %24 = icmp eq ptr %1, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %12
  %26 = load i16, ptr %1, align 2, !tbaa !54
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %1, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !54
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !88

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %1 to i64
  %36 = sub i64 %34, %35
  %37 = add i64 %36, 2
  %38 = and i64 %37, 8589934590
  br label %39

39:                                               ; preds = %33, %25
  %40 = phi i64 [ %38, %33 ], [ 2, %25 ]
  %41 = load ptr, ptr %11, align 8, !tbaa !89
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %40)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 %1, i64 %40, i1 false)
  br label %45

45:                                               ; preds = %12, %39
  %46 = phi ptr [ %44, %39 ], [ null, %12 ]
  store ptr %46, ptr %23, align 8, !tbaa !91
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  store i32 0, ptr %47, align 8, !tbaa !92
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  store i32 0, ptr %48, align 4, !tbaa !93
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  store i32 -1, ptr %49, align 8, !tbaa !94
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  store i32 %5, ptr %50, align 4, !tbaa !95
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  store i8 0, ptr %51, align 8, !tbaa !96
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  store i32 %7, ptr %52, align 4, !tbaa !97
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  store i32 0, ptr %53, align 8, !tbaa !98
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  store i8 0, ptr %54, align 4, !tbaa !99
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  store i8 %15, ptr %55, align 1, !tbaa !100
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %57 = icmp eq ptr %2, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %45
  %59 = load i16, ptr %2, align 2, !tbaa !54
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %58, %61
  %62 = phi ptr [ %63, %61 ], [ %2, %58 ]
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !54
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %61, !llvm.loop !88

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i64
  %68 = ptrtoint ptr %2 to i64
  %69 = sub i64 %67, %68
  %70 = add i64 %69, 2
  %71 = and i64 %70, 8589934590
  br label %72

72:                                               ; preds = %66, %58
  %73 = phi i64 [ %71, %66 ], [ 2, %58 ]
  %74 = load ptr, ptr %11, align 8, !tbaa !89
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %73)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %77, ptr nonnull align 2 %2, i64 %73, i1 false)
  br label %78

78:                                               ; preds = %45, %72
  %79 = phi ptr [ %77, %72 ], [ null, %45 ]
  store ptr %79, ptr %56, align 8, !tbaa !105
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  store ptr %3, ptr %80, align 8, !tbaa !106
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %81, align 8, !tbaa !107
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %14, ptr %82, align 1, !tbaa !108
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr null, ptr %83, align 8, !tbaa !109
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  store i32 %6, ptr %84, align 8, !tbaa !110
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  store ptr %11, ptr %85, align 8, !tbaa !111
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  store i32 %10, ptr %86, align 4, !tbaa !68
  %87 = icmp eq i32 %10, 1
  %88 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !range !112
  %89 = select i1 %87, i8 1, i8 %88
  %90 = select i1 %87, ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  store i8 %89, ptr %91, align 8, !tbaa !113
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  store ptr %90, ptr %92, align 8, !tbaa !114
  %93 = load i32, ptr %48, align 4, !tbaa !93
  %94 = load i32, ptr %47, align 8, !tbaa !92
  %95 = sub i32 %93, %94
  %96 = icmp eq i32 %93, %94
  br i1 %96, label %109, label %97

97:                                               ; preds = %78
  %98 = zext i32 %95 to i64
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ 0, %97 ], [ %107, %99 ]
  %101 = trunc i64 %100 to i32
  %102 = add i32 %94, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !58
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %100
  store i8 %105, ptr %106, align 1, !tbaa !58
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, %98
  br i1 %108, label %109, label %99, !llvm.loop !116

109:                                              ; preds = %99, %78
  %110 = load ptr, ptr %80, align 8, !tbaa !106
  %111 = zext i32 %95 to i64
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %111
  %113 = sub i32 49152, %95
  %114 = load ptr, ptr %110, align 8, !tbaa !89
  %115 = getelementptr inbounds ptr, ptr %114, i64 3
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef i32 %116(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull %112, i32 noundef %113)
  %118 = add i32 %117, %95
  store i32 %118, ptr %48, align 4, !tbaa !93
  store i32 0, ptr %47, align 8, !tbaa !92
  %119 = load ptr, ptr %85, align 8, !tbaa !111
  %120 = icmp eq ptr %4, null
  br i1 %120, label %141, label %121

121:                                              ; preds = %109
  %122 = load i16, ptr %4, align 2, !tbaa !54
  %123 = icmp eq i16 %122, 0
  br i1 %123, label %135, label %124

124:                                              ; preds = %121, %124
  %125 = phi ptr [ %126, %124 ], [ %4, %121 ]
  %126 = getelementptr inbounds i16, ptr %125, i64 1
  %127 = load i16, ptr %126, align 2, !tbaa !54
  %128 = icmp eq i16 %127, 0
  br i1 %128, label %129, label %124, !llvm.loop !88

129:                                              ; preds = %124
  %130 = ptrtoint ptr %126 to i64
  %131 = ptrtoint ptr %4 to i64
  %132 = sub i64 %130, %131
  %133 = add i64 %132, 2
  %134 = and i64 %133, 8589934590
  br label %135

135:                                              ; preds = %129, %121
  %136 = phi i64 [ %134, %129 ], [ 2, %121 ]
  %137 = load ptr, ptr %119, align 8, !tbaa !89
  %138 = getelementptr inbounds ptr, ptr %137, i64 2
  %139 = load ptr, ptr %138, align 8
  %140 = tail call noundef ptr %139(ptr noundef nonnull align 8 dereferenceable(8) %119, i64 noundef %136)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %140, ptr nonnull align 2 %4, i64 %136, i1 false)
  br label %141

141:                                              ; preds = %109, %135
  %142 = phi ptr [ %140, %135 ], [ null, %109 ]
  store ptr %142, ptr %20, align 8, !tbaa !84
  tail call void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef %142)
  %143 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  %144 = load ptr, ptr %143, align 8, !tbaa !89
  %145 = getelementptr inbounds ptr, ptr %144, i64 7
  %146 = load ptr, ptr %145, align 8
  %147 = tail call noundef zeroext i1 %146(ptr noundef nonnull align 8 dereferenceable(8) %143)
  %148 = zext i1 %147 to i8
  store i8 %148, ptr %54, align 4, !tbaa !99
  %149 = load ptr, ptr %20, align 8, !tbaa !84
  %150 = tail call noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef %149)
  store i32 %150, ptr %19, align 8, !tbaa !120
  store i8 0, ptr %81, align 8, !tbaa !107
  switch i32 %150, label %152 [
    i32 5, label %151
    i32 1, label %151
  ]

151:                                              ; preds = %141, %141
  store i8 1, ptr %81, align 8, !tbaa !107
  br label %152

152:                                              ; preds = %141, %151
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  %153 = icmp eq i32 %150, 999
  %154 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  br i1 %153, label %155, label %159

155:                                              ; preds = %152
  %156 = load ptr, ptr %20, align 8, !tbaa !84
  %157 = load ptr, ptr %85, align 8, !tbaa !111
  %158 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %154, ptr noundef %156, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef 16384, ptr noundef %157)
  br label %162

159:                                              ; preds = %152
  %160 = load ptr, ptr %85, align 8, !tbaa !111
  %161 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %154, i32 noundef %150, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef 16384, ptr noundef %160)
  br label %162

162:                                              ; preds = %159, %155
  %163 = phi ptr [ %161, %159 ], [ %158, %155 ]
  store ptr %163, ptr %83, align 8, !tbaa !109
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %172

165:                                              ; preds = %162
  %166 = call ptr @__cxa_allocate_exception(i64 48) #15
  %167 = load ptr, ptr %20, align 8, !tbaa !84
  %168 = load ptr, ptr %85, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %166, ptr noundef nonnull @.str, i32 noundef 273, i32 noundef 98, ptr noundef %167, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %168)
          to label %169 unwind label %170

169:                                              ; preds = %165
  call void @__cxa_throw(ptr nonnull %166, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

170:                                              ; preds = %165
  %171 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %166) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  resume { ptr, i32 } %171

172:                                              ; preds = %162
  %173 = load i32, ptr %84, align 8, !tbaa !110
  %174 = icmp eq i32 %173, 0
  %175 = load i32, ptr %50, align 4
  %176 = icmp eq i32 %175, 1
  %177 = select i1 %174, i1 %176, i1 false
  br i1 %177, label %178, label %185

178:                                              ; preds = %172
  %179 = load i32, ptr %16, align 4, !tbaa !81
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %180
  store i8 0, ptr %181, align 1, !tbaa !58
  %182 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %180
  store i32 0, ptr %182, align 4, !tbaa !126
  %183 = add i32 %179, 1
  store i32 %183, ptr %16, align 4, !tbaa !81
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %180
  store i16 32, ptr %184, align 2, !tbaa !54
  br label %185

185:                                              ; preds = %178, %172
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  ret void
}

declare void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS_13XMLRecognizer9EncodingsENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i1 noundef zeroext %8, i1 noundef zeroext %9, i32 noundef %10, ptr noundef %11) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %13 = alloca i32, align 4
  %14 = zext i1 %8 to i8
  %15 = zext i1 %9 to i8
  store i32 0, ptr %0, align 8, !tbaa !80
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  store i32 0, ptr %16, align 4, !tbaa !81
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %17, align 8, !tbaa !82
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  store i64 1, ptr %18, align 8, !tbaa !83
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 4, ptr %19, align 8, !tbaa !120
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  store ptr null, ptr %20, align 8, !tbaa !84
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  store i8 1, ptr %21, align 8, !tbaa !85
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  store i8 0, ptr %22, align 1, !tbaa !86
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %24 = icmp eq ptr %1, null
  br i1 %24, label %45, label %25

25:                                               ; preds = %12
  %26 = load i16, ptr %1, align 2, !tbaa !54
  %27 = icmp eq i16 %26, 0
  br i1 %27, label %39, label %28

28:                                               ; preds = %25, %28
  %29 = phi ptr [ %30, %28 ], [ %1, %25 ]
  %30 = getelementptr inbounds i16, ptr %29, i64 1
  %31 = load i16, ptr %30, align 2, !tbaa !54
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !88

33:                                               ; preds = %28
  %34 = ptrtoint ptr %30 to i64
  %35 = ptrtoint ptr %1 to i64
  %36 = sub i64 %34, %35
  %37 = add i64 %36, 2
  %38 = and i64 %37, 8589934590
  br label %39

39:                                               ; preds = %33, %25
  %40 = phi i64 [ %38, %33 ], [ 2, %25 ]
  %41 = load ptr, ptr %11, align 8, !tbaa !89
  %42 = getelementptr inbounds ptr, ptr %41, i64 2
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %40)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %44, ptr nonnull align 2 %1, i64 %40, i1 false)
  br label %45

45:                                               ; preds = %12, %39
  %46 = phi ptr [ %44, %39 ], [ null, %12 ]
  store ptr %46, ptr %23, align 8, !tbaa !91
  %47 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  store i32 0, ptr %47, align 8, !tbaa !92
  %48 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  store i32 0, ptr %48, align 4, !tbaa !93
  %49 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 15
  store i32 -1, ptr %49, align 8, !tbaa !94
  %50 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  store i32 %5, ptr %50, align 4, !tbaa !95
  %51 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  store i8 0, ptr %51, align 8, !tbaa !96
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  store i32 %7, ptr %52, align 4, !tbaa !97
  %53 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  store i32 0, ptr %53, align 8, !tbaa !98
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  store i8 0, ptr %54, align 4, !tbaa !99
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  store i8 %15, ptr %55, align 1, !tbaa !100
  %56 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %57 = icmp eq ptr %2, null
  br i1 %57, label %78, label %58

58:                                               ; preds = %45
  %59 = load i16, ptr %2, align 2, !tbaa !54
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %72, label %61

61:                                               ; preds = %58, %61
  %62 = phi ptr [ %63, %61 ], [ %2, %58 ]
  %63 = getelementptr inbounds i16, ptr %62, i64 1
  %64 = load i16, ptr %63, align 2, !tbaa !54
  %65 = icmp eq i16 %64, 0
  br i1 %65, label %66, label %61, !llvm.loop !88

66:                                               ; preds = %61
  %67 = ptrtoint ptr %63 to i64
  %68 = ptrtoint ptr %2 to i64
  %69 = sub i64 %67, %68
  %70 = add i64 %69, 2
  %71 = and i64 %70, 8589934590
  br label %72

72:                                               ; preds = %66, %58
  %73 = phi i64 [ %71, %66 ], [ 2, %58 ]
  %74 = load ptr, ptr %11, align 8, !tbaa !89
  %75 = getelementptr inbounds ptr, ptr %74, i64 2
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(8) %11, i64 noundef %73)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %77, ptr nonnull align 2 %2, i64 %73, i1 false)
  br label %78

78:                                               ; preds = %45, %72
  %79 = phi ptr [ %77, %72 ], [ null, %45 ]
  store ptr %79, ptr %56, align 8, !tbaa !105
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  store ptr %3, ptr %80, align 8, !tbaa !106
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 24
  store i8 0, ptr %81, align 8, !tbaa !107
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 25
  store i8 %14, ptr %82, align 1, !tbaa !108
  %83 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr null, ptr %83, align 8, !tbaa !109
  %84 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  store i32 %6, ptr %84, align 8, !tbaa !110
  %85 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  store ptr %11, ptr %85, align 8, !tbaa !111
  %86 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  store i32 %10, ptr %86, align 4, !tbaa !68
  %87 = icmp eq i32 %10, 1
  %88 = load i8, ptr @_ZN11xercesc_2_710XMLChar1_09enableNELE, align 1, !range !112
  %89 = select i1 %87, i8 1, i8 %88
  %90 = select i1 %87, ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, ptr @_ZN11xercesc_2_710XMLChar1_019fgCharCharsTable1_0E
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  store i8 %89, ptr %91, align 8, !tbaa !113
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  store ptr %90, ptr %92, align 8, !tbaa !114
  %93 = load i32, ptr %48, align 4, !tbaa !93
  %94 = load i32, ptr %47, align 8, !tbaa !92
  %95 = sub i32 %93, %94
  %96 = icmp eq i32 %93, %94
  br i1 %96, label %109, label %97

97:                                               ; preds = %78
  %98 = zext i32 %95 to i64
  br label %99

99:                                               ; preds = %97, %99
  %100 = phi i64 [ 0, %97 ], [ %107, %99 ]
  %101 = trunc i64 %100 to i32
  %102 = add i32 %94, %101
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %103
  %105 = load i8, ptr %104, align 1, !tbaa !58
  %106 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %100
  store i8 %105, ptr %106, align 1, !tbaa !58
  %107 = add nuw nsw i64 %100, 1
  %108 = icmp eq i64 %107, %98
  br i1 %108, label %109, label %99, !llvm.loop !116

109:                                              ; preds = %99, %78
  %110 = load ptr, ptr %80, align 8, !tbaa !106
  %111 = zext i32 %95 to i64
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %111
  %113 = sub i32 49152, %95
  %114 = load ptr, ptr %110, align 8, !tbaa !89
  %115 = getelementptr inbounds ptr, ptr %114, i64 3
  %116 = load ptr, ptr %115, align 8
  %117 = tail call noundef i32 %116(ptr noundef nonnull align 8 dereferenceable(8) %110, ptr noundef nonnull %112, i32 noundef %113)
  %118 = add i32 %117, %95
  store i32 %118, ptr %48, align 4, !tbaa !93
  store i32 0, ptr %47, align 8, !tbaa !92
  %119 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  %120 = load ptr, ptr %119, align 8, !tbaa !89
  %121 = getelementptr inbounds ptr, ptr %120, i64 7
  %122 = load ptr, ptr %121, align 8
  %123 = tail call noundef zeroext i1 %122(ptr noundef nonnull align 8 dereferenceable(8) %119)
  %124 = zext i1 %123 to i8
  store i8 %124, ptr %54, align 4, !tbaa !99
  store i32 %4, ptr %19, align 8, !tbaa !120
  %125 = load ptr, ptr %85, align 8, !tbaa !111
  %126 = tail call noundef ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE(i32 noundef %4, ptr noundef %125)
  %127 = load ptr, ptr %85, align 8, !tbaa !111
  %128 = icmp eq ptr %126, null
  br i1 %128, label %149, label %129

129:                                              ; preds = %109
  %130 = load i16, ptr %126, align 2, !tbaa !54
  %131 = icmp eq i16 %130, 0
  br i1 %131, label %143, label %132

132:                                              ; preds = %129, %132
  %133 = phi ptr [ %134, %132 ], [ %126, %129 ]
  %134 = getelementptr inbounds i16, ptr %133, i64 1
  %135 = load i16, ptr %134, align 2, !tbaa !54
  %136 = icmp eq i16 %135, 0
  br i1 %136, label %137, label %132, !llvm.loop !88

137:                                              ; preds = %132
  %138 = ptrtoint ptr %134 to i64
  %139 = ptrtoint ptr %126 to i64
  %140 = sub i64 %138, %139
  %141 = add i64 %140, 2
  %142 = and i64 %141, 8589934590
  br label %143

143:                                              ; preds = %137, %129
  %144 = phi i64 [ %142, %137 ], [ 2, %129 ]
  %145 = load ptr, ptr %127, align 8, !tbaa !89
  %146 = getelementptr inbounds ptr, ptr %145, i64 2
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(8) %127, i64 noundef %144)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %148, ptr nonnull align 2 %126, i64 %144, i1 false)
  br label %149

149:                                              ; preds = %109, %143
  %150 = phi ptr [ %148, %143 ], [ null, %109 ]
  store ptr %150, ptr %20, align 8, !tbaa !84
  store i8 0, ptr %81, align 8, !tbaa !107
  %151 = load i32, ptr %19, align 8, !tbaa !120
  switch i32 %151, label %153 [
    i32 5, label %152
    i32 1, label %152
  ]

152:                                              ; preds = %149, %149
  store i8 1, ptr %81, align 8, !tbaa !107
  br label %153

153:                                              ; preds = %149, %152
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %13) #15
  %154 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  %155 = load ptr, ptr %85, align 8, !tbaa !111
  %156 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %154, i32 noundef %151, ptr noundef nonnull align 4 dereferenceable(4) %13, i32 noundef 16384, ptr noundef %155)
  store ptr %156, ptr %83, align 8, !tbaa !109
  %157 = icmp eq ptr %156, null
  br i1 %157, label %158, label %165

158:                                              ; preds = %153
  %159 = call ptr @__cxa_allocate_exception(i64 48) #15
  %160 = load ptr, ptr %20, align 8, !tbaa !84
  %161 = load ptr, ptr %85, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %159, ptr noundef nonnull @.str, i32 noundef 369, i32 noundef 98, ptr noundef %160, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %161)
          to label %162 unwind label %163

162:                                              ; preds = %158
  call void @__cxa_throw(ptr nonnull %159, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

163:                                              ; preds = %158
  %164 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %159) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  resume { ptr, i32 } %164

165:                                              ; preds = %153
  %166 = load i32, ptr %84, align 8, !tbaa !110
  %167 = icmp eq i32 %166, 0
  %168 = load i32, ptr %50, align 4
  %169 = icmp eq i32 %168, 1
  %170 = select i1 %167, i1 %169, i1 false
  br i1 %170, label %171, label %178

171:                                              ; preds = %165
  %172 = load i32, ptr %16, align 4, !tbaa !81
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %173
  store i8 0, ptr %174, align 1, !tbaa !58
  %175 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %173
  store i32 0, ptr %175, align 4, !tbaa !126
  %176 = add i32 %172, 1
  store i32 %176, ptr %16, align 4, !tbaa !81
  %177 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %173
  store i16 32, ptr %177, align 2, !tbaa !54
  br label %178

178:                                              ; preds = %171, %165
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %13) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_79XMLReaderD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 !prof !79 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %3 = load ptr, ptr %2, align 8, !tbaa !111
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !84
  %6 = load ptr, ptr %3, align 8, !tbaa !89
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %40, !prof !136

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !111
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !91
  %13 = load ptr, ptr %10, align 8, !tbaa !89
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %40, !prof !136

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !111
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %19 = load ptr, ptr %18, align 8, !tbaa !105
  %20 = load ptr, ptr %17, align 8, !tbaa !89
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %23 unwind label %40, !prof !136

23:                                               ; preds = %16
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  %25 = load ptr, ptr %24, align 8, !tbaa !106
  %26 = icmp eq ptr %25, null
  br i1 %26, label %31, label %27, !prof !101

27:                                               ; preds = %23
  %28 = load ptr, ptr %25, align 8, !tbaa !89
  %29 = getelementptr inbounds ptr, ptr %28, i64 1
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(8) %25) #15, !prof !137
  br label %31

31:                                               ; preds = %27, %23
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %33 = load ptr, ptr %32, align 8, !tbaa !109
  %34 = icmp eq ptr %33, null
  br i1 %34, label %39, label %35, !prof !101

35:                                               ; preds = %31
  %36 = load ptr, ptr %33, align 8, !tbaa !89
  %37 = getelementptr inbounds ptr, ptr %36, i64 1
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(32) %33) #15, !prof !138
  br label %39

39:                                               ; preds = %35, %31
  ret void

40:                                               ; preds = %16, %9, %1
  %41 = landingpad { ptr, i32 }
          catch ptr null
  %42 = extractvalue { ptr, i32 } %41, 0
  tail call void @__clang_call_terminate(ptr %42) #17
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #6 comdat !prof !67 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #15
  tail call void @_ZSt9terminatev() #17
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZNK11xercesc_2_79XMLReader12getSrcOffsetEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 20
  %3 = load i8, ptr %2, align 4, !tbaa !99, !range !112, !noundef !127
  %4 = icmp eq i8 %3, 0
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  %6 = load i8, ptr %5, align 1, !range !112
  %7 = icmp eq i8 %6, 0
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %12 = load ptr, ptr %11, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %10, ptr noundef nonnull @.str, i32 noundef 406, i32 noundef 74, ptr noundef %12)
          to label %13 unwind label %14

13:                                               ; preds = %9
  tail call void @__cxa_throw(ptr nonnull %10, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

14:                                               ; preds = %9
  %15 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %10) #15
  resume { ptr, i32 } %15

16:                                               ; preds = %1
  %17 = load i32, ptr %0, align 8, !tbaa !80
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  %21 = load i32, ptr %20, align 8, !tbaa !98
  br label %43

22:                                               ; preds = %16
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %24 = load i32, ptr %23, align 4, !tbaa !81
  %25 = icmp ult i32 %17, %24
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  %27 = load i32, ptr %26, align 8, !tbaa !98
  br i1 %25, label %28, label %33

28:                                               ; preds = %22
  %29 = zext i32 %17 to i64
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !126
  %32 = add i32 %31, %27
  br label %43

33:                                               ; preds = %22
  %34 = add i32 %17, -1
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !126
  %38 = add i32 %37, %27
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %35
  %40 = load i8, ptr %39, align 1, !tbaa !58
  %41 = zext i8 %40 to i32
  %42 = add i32 %38, %41
  br label %43

43:                                               ; preds = %33, %28, %19
  %44 = phi i32 [ %21, %19 ], [ %32, %28 ], [ %42, %33 ]
  ret i32 %44
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #7

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !139 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 10
  %5 = load i8, ptr %4, align 1, !tbaa !86, !range !112, !noundef !127
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %7, label %224, !prof !140

7:                                                ; preds = %1
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %9 = load i32, ptr %8, align 4, !tbaa !81
  %10 = load i32, ptr %0, align 8, !tbaa !80
  %11 = sub i32 %9, %10
  %12 = icmp eq i32 %11, 16384
  br i1 %12, label %224, label %13, !prof !141

13:                                               ; preds = %7
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %15 = load ptr, ptr %14, align 8, !tbaa !109
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %44, !prof !142

17:                                               ; preds = %13
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %19 = load i32, ptr %18, align 8, !tbaa !120
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %28, !prof !101

21:                                               ; preds = %17
  %22 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %24 = load ptr, ptr %23, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_716RuntimeExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %22, ptr noundef nonnull @.str, i32 noundef 452, i32 noundef 75, ptr noundef %24)
          to label %25 unwind label %26

25:                                               ; preds = %21
  tail call void @__cxa_throw(ptr nonnull %22, ptr nonnull @_ZTIN11xercesc_2_716RuntimeExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

26:                                               ; preds = %21
  %27 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %22) #15
  br label %222

28:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %29 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !84
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %33 = load ptr, ptr %32, align 8, !tbaa !111
  %34 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %29, ptr noundef %31, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 16384, ptr noundef %33)
  store ptr %34, ptr %14, align 8, !tbaa !109
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %43, !prof !101

36:                                               ; preds = %28
  %37 = call ptr @__cxa_allocate_exception(i64 48) #15
  %38 = load ptr, ptr %30, align 8, !tbaa !84
  %39 = load ptr, ptr %32, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 472, i32 noundef 98, ptr noundef %38, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %39)
          to label %40 unwind label %41

40:                                               ; preds = %36
  call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

41:                                               ; preds = %36
  %42 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %37) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %222

43:                                               ; preds = %28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %44

44:                                               ; preds = %43, %13
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 21
  %46 = load i8, ptr %45, align 1, !tbaa !100, !range !112, !noundef !127
  %47 = icmp eq i8 %46, 0
  br i1 %47, label %64, label %48, !prof !143

48:                                               ; preds = %44
  %49 = load i32, ptr %0, align 8, !tbaa !80
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 19
  %53 = load i32, ptr %52, align 8, !tbaa !98
  %54 = zext i32 %49 to i64
  br label %55

55:                                               ; preds = %51, %55
  %56 = phi i64 [ 0, %51 ], [ %62, %55 ]
  %57 = phi i32 [ %53, %51 ], [ %61, %55 ]
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %56
  %59 = load i8, ptr %58, align 1, !tbaa !58
  %60 = zext i8 %59 to i32
  %61 = add i32 %57, %60
  store i32 %61, ptr %52, align 8, !tbaa !98
  %62 = add nuw nsw i64 %56, 1
  %63 = icmp eq i64 %62, %54
  br i1 %63, label %64, label %55, !llvm.loop !144

64:                                               ; preds = %55, %48, %44
  %65 = icmp eq i32 %9, %10
  br i1 %65, label %86, label %66, !prof !145

66:                                               ; preds = %64
  %67 = load i32, ptr %0, align 8, !tbaa !80
  %68 = load i32, ptr %8, align 4, !tbaa !81
  %69 = icmp ult i32 %67, %68
  br i1 %69, label %70, label %86, !prof !146

70:                                               ; preds = %66
  %71 = zext i32 %67 to i64
  %72 = sub i32 %68, %67
  br label %73

73:                                               ; preds = %70, %73
  %74 = phi i64 [ 0, %70 ], [ %82, %73 ]
  %75 = phi i64 [ %71, %70 ], [ %83, %73 ]
  %76 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %75
  %77 = load i16, ptr %76, align 2, !tbaa !54
  %78 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %74
  store i16 %77, ptr %78, align 2, !tbaa !54
  %79 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %75
  %80 = load i8, ptr %79, align 1, !tbaa !58
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %74
  store i8 %80, ptr %81, align 1, !tbaa !58
  %82 = add nuw nsw i64 %74, 1
  %83 = add nuw nsw i64 %75, 1
  %84 = trunc i64 %82 to i32
  %85 = icmp eq i32 %72, %84
  br i1 %85, label %86, label %73, !prof !147, !llvm.loop !148

86:                                               ; preds = %73, %66, %64
  %87 = phi i32 [ 0, %64 ], [ 0, %66 ], [ %72, %73 ]
  %88 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1
  %89 = zext i32 %87 to i64
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %89
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %89
  %92 = sub i32 16384, %11
  %93 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %94 = load i32, ptr %93, align 4, !tbaa !93
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %141, label %96, !prof !141

96:                                               ; preds = %86
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %98 = load i32, ptr %97, align 8, !tbaa !92
  %99 = sub i32 %94, %98
  %100 = icmp ult i32 %99, 100
  br i1 %100, label %101, label %127, !prof !149

101:                                              ; preds = %96
  %102 = icmp eq i32 %94, %98
  br i1 %102, label %115, label %103, !prof !150

103:                                              ; preds = %101
  %104 = zext nneg i32 %99 to i64
  br label %105

105:                                              ; preds = %105, %103
  %106 = phi i64 [ 0, %103 ], [ %113, %105 ]
  %107 = trunc i64 %106 to i32
  %108 = add i32 %98, %107
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !58
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %106
  store i8 %111, ptr %112, align 1, !tbaa !58
  %113 = add nuw nsw i64 %106, 1
  %114 = icmp eq i64 %113, %104
  br i1 %114, label %115, label %105, !prof !151, !llvm.loop !116

115:                                              ; preds = %105, %101
  %116 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  %117 = load ptr, ptr %116, align 8, !tbaa !106
  %118 = zext nneg i32 %99 to i64
  %119 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %118
  %120 = sub nuw nsw i32 49152, %99
  %121 = load ptr, ptr %117, align 8, !tbaa !89
  %122 = getelementptr inbounds ptr, ptr %121, i64 3
  %123 = load ptr, ptr %122, align 8
  %124 = call noundef i32 %123(ptr noundef nonnull align 8 dereferenceable(8) %117, ptr noundef nonnull %119, i32 noundef %120), !prof !152
  %125 = add i32 %124, %99
  store i32 %125, ptr %93, align 4, !tbaa !93
  store i32 0, ptr %97, align 8, !tbaa !92
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %141, label %127, !prof !153

127:                                              ; preds = %115, %96
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #15
  %128 = load ptr, ptr %14, align 8, !tbaa !109
  %129 = load i32, ptr %97, align 8, !tbaa !92
  %130 = zext i32 %129 to i64
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %130
  %132 = load i32, ptr %93, align 4, !tbaa !93
  %133 = sub i32 %132, %129
  %134 = load ptr, ptr %128, align 8, !tbaa !89
  %135 = getelementptr inbounds ptr, ptr %134, i64 2
  %136 = load ptr, ptr %135, align 8
  %137 = call noundef i32 %136(ptr noundef nonnull align 8 dereferenceable(32) %128, ptr noundef nonnull %131, i32 noundef %133, ptr noundef nonnull %90, i32 noundef %92, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull %91), !prof !154
  %138 = load i32, ptr %2, align 4, !tbaa !126
  %139 = load i32, ptr %97, align 8, !tbaa !92
  %140 = add i32 %139, %138
  store i32 %140, ptr %97, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #15
  br label %141

141:                                              ; preds = %86, %115, %127
  %142 = phi i32 [ 0, %86 ], [ %137, %127 ], [ 0, %115 ]
  %143 = add i32 %142, %11
  store i32 %143, ptr %8, align 4, !tbaa !81
  store i32 0, ptr %0, align 8, !tbaa !80
  %144 = icmp eq i32 %143, 0
  %145 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 27
  %146 = load i32, ptr %145, align 8
  %147 = icmp eq i32 %146, 0
  %148 = select i1 %144, i1 %147, i1 false, !prof !142
  %149 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 16
  %150 = load i32, ptr %149, align 4
  %151 = icmp eq i32 %150, 1
  %152 = select i1 %148, i1 %151, i1 false, !prof !141
  br i1 %152, label %153, label %158, !prof !141

153:                                              ; preds = %141
  %154 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 17
  %155 = load i8, ptr %154, align 8, !tbaa !96, !range !112, !noundef !127
  %156 = icmp eq i8 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %153
  store i16 32, ptr %88, align 4, !tbaa !54
  store i32 1, ptr %8, align 4, !tbaa !81
  store i8 1, ptr %154, align 8, !tbaa !96
  br label %158

158:                                              ; preds = %157, %153, %141
  %159 = load i32, ptr %8, align 4, !tbaa !81
  %160 = icmp ne i32 %159, 0
  %161 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %162 = load i64, ptr %161, align 8
  %163 = icmp eq i64 %162, 1
  %164 = select i1 %160, i1 %163, i1 false, !prof !155
  %165 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %166 = load i64, ptr %165, align 8
  %167 = icmp eq i64 %166, 1
  %168 = select i1 %164, i1 %167, i1 false, !prof !142
  br i1 %168, label %169, label %195, !prof !156

169:                                              ; preds = %158
  %170 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %171 = load i32, ptr %170, align 8, !tbaa !120
  %172 = icmp eq i32 %171, 6
  br i1 %172, label %177, label %173, !prof !157

173:                                              ; preds = %169
  %174 = icmp ne i32 %171, 5
  %175 = icmp ne i32 %87, 0
  %176 = or i1 %175, %174
  br i1 %176, label %181, label %179, !prof !115

177:                                              ; preds = %169
  %178 = icmp eq i32 %87, 0
  br i1 %178, label %179, label %181

179:                                              ; preds = %177, %173
  %180 = load i16, ptr %90, align 2, !tbaa !54
  switch i16 %180, label %195 [
    i16 -257, label %193
    i16 -2, label %193
  ]

181:                                              ; preds = %177, %173
  %182 = load i32, ptr %93, align 4, !tbaa !93
  %183 = load i32, ptr @_ZN11xercesc_2_713XMLRecognizer12fgUTF8BOMLenE, align 4, !tbaa !126
  %184 = icmp ugt i32 %182, %183
  br i1 %184, label %185, label %195, !prof !115

185:                                              ; preds = %181
  %186 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13
  %187 = call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef nonnull %186, ptr noundef nonnull @_ZN11xercesc_2_713XMLRecognizer9fgUTF8BOME, i32 noundef %183)
  %188 = or i32 %187, %87
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %195, !prof !157

190:                                              ; preds = %185
  %191 = load i32, ptr %0, align 8, !tbaa !80
  %192 = add i32 %191, %183
  br label %193

193:                                              ; preds = %179, %179, %190
  %194 = phi i32 [ %192, %190 ], [ 1, %179 ], [ 1, %179 ]
  store i32 %194, ptr %0, align 8, !tbaa !80
  br label %195

195:                                              ; preds = %193, %179, %181, %185, %158
  %196 = load i32, ptr %8, align 4, !tbaa !81
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %198, label %199, !prof !142

198:                                              ; preds = %195
  store i8 1, ptr %4, align 1, !tbaa !86
  br label %199

199:                                              ; preds = %198, %195
  %200 = load i8, ptr %45, align 1, !tbaa !100, !range !112, !noundef !127
  %201 = icmp eq i8 %200, 0
  br i1 %201, label %220, label %202, !prof !143

202:                                              ; preds = %199
  %203 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4
  store i32 0, ptr %203, align 8, !tbaa !126
  %204 = icmp ugt i32 %196, 1
  br i1 %204, label %205, label %220

205:                                              ; preds = %202
  %206 = zext i32 %196 to i64
  %207 = getelementptr inbounds i8, ptr %0, i64 49160
  %208 = load i32, ptr %207, align 8
  br label %209

209:                                              ; preds = %205, %209
  %210 = phi i32 [ %208, %205 ], [ %216, %209 ]
  %211 = phi i64 [ 1, %205 ], [ %218, %209 ]
  %212 = add nsw i64 %211, -1
  %213 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 3, i64 %212
  %214 = load i8, ptr %213, align 1, !tbaa !58
  %215 = zext i8 %214 to i32
  %216 = add i32 %210, %215
  %217 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 4, i64 %211
  store i32 %216, ptr %217, align 4, !tbaa !126
  %218 = add nuw nsw i64 %211, 1
  %219 = icmp eq i64 %218, %206
  br i1 %219, label %220, label %209, !llvm.loop !158

220:                                              ; preds = %209, %202, %199
  %221 = icmp ne i32 %196, 0
  br label %224

222:                                              ; preds = %41, %26
  %223 = phi { ptr, i32 } [ %27, %26 ], [ %42, %41 ]
  resume { ptr, i32 } %223

224:                                              ; preds = %220, %7, %1
  %225 = phi i1 [ false, %1 ], [ %221, %220 ], [ true, %7 ]
  ret i1 %225
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_79XMLReader14xcodeMoreCharsEPtPhj(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #8 align 2 !prof !67 {
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 14
  %7 = load i32, ptr %6, align 4, !tbaa !93
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %55, label %9, !prof !141

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 8, !tbaa !92
  %12 = sub i32 %7, %11
  %13 = icmp ult i32 %12, 100
  br i1 %13, label %14, label %40, !prof !149

14:                                               ; preds = %9
  %15 = icmp eq i32 %7, %11
  br i1 %15, label %28, label %16, !prof !150

16:                                               ; preds = %14
  %17 = zext nneg i32 %12 to i64
  br label %18

18:                                               ; preds = %16, %18
  %19 = phi i64 [ 0, %16 ], [ %26, %18 ]
  %20 = trunc i64 %19 to i32
  %21 = add i32 %11, %20
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !58
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %19
  store i8 %24, ptr %25, align 1, !tbaa !58
  %26 = add nuw nsw i64 %19, 1
  %27 = icmp eq i64 %26, %17
  br i1 %27, label %28, label %18, !prof !151, !llvm.loop !116

28:                                               ; preds = %18, %14
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 23
  %30 = load ptr, ptr %29, align 8, !tbaa !106
  %31 = zext nneg i32 %12 to i64
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %31
  %33 = sub nuw nsw i32 49152, %12
  %34 = load ptr, ptr %30, align 8, !tbaa !89
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull %32, i32 noundef %33), !prof !159
  %38 = add i32 %37, %12
  store i32 %38, ptr %6, align 4, !tbaa !93
  store i32 0, ptr %10, align 8, !tbaa !92
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %55, label %40, !prof !153

40:                                               ; preds = %28, %9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #15
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %42 = load ptr, ptr %41, align 8, !tbaa !109
  %43 = load i32, ptr %10, align 8, !tbaa !92
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 13, i64 %44
  %46 = load i32, ptr %6, align 4, !tbaa !93
  %47 = sub i32 %46, %43
  %48 = load ptr, ptr %42, align 8, !tbaa !89
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef i32 %50(ptr noundef nonnull align 8 dereferenceable(32) %42, ptr noundef nonnull %45, i32 noundef %47, ptr noundef %1, i32 noundef %3, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef %2), !prof !160
  %52 = load i32, ptr %5, align 4, !tbaa !126
  %53 = load i32, ptr %10, align 8, !tbaa !92
  %54 = add i32 %53, %52
  store i32 %54, ptr %10, align 8, !tbaa !92
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #15
  br label %55

55:                                               ; preds = %40, %28, %4
  %56 = phi i32 [ 0, %4 ], [ %51, %40 ], [ 0, %28 ]
  ret i32 %56
}

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader7getNameERNS_9XMLBufferEb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 !prof !161 {
  %4 = load i32, ptr %0, align 8, !tbaa !80
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = load i32, ptr %5, align 4, !tbaa !81
  %7 = icmp eq i32 %4, %6
  br i1 %7, label %8, label %10, !prof !162

8:                                                ; preds = %3
  %9 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %9, label %10, label %134

10:                                               ; preds = %8, %3
  %11 = load i32, ptr %0, align 8, !tbaa !80
  br i1 %2, label %43, label %12, !prof !162

12:                                               ; preds = %10
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %14 = load i32, ptr %13, align 4, !tbaa !68
  %15 = icmp eq i32 %14, 1
  br i1 %15, label %16, label %29, !prof !162

16:                                               ; preds = %12
  %17 = zext i32 %11 to i64
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %17
  %19 = load i16, ptr %18, align 2, !tbaa !54
  %20 = add i16 %19, 10240
  %21 = icmp ult i16 %20, 896
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = add i32 %11, 1
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %24
  %26 = load i16, ptr %25, align 2, !tbaa !54
  %27 = add i16 %26, 8192
  %28 = icmp ult i16 %27, -1024
  br i1 %28, label %134, label %40

29:                                               ; preds = %16, %12
  %30 = zext i32 %11 to i64
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %30
  %32 = load i16, ptr %31, align 2, !tbaa !54
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %34 = load ptr, ptr %33, align 8, !tbaa !114
  %35 = zext i16 %32 to i64
  %36 = getelementptr inbounds i8, ptr %34, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !58
  %38 = and i8 %37, 2
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %134, label %40, !prof !162

40:                                               ; preds = %29, %22
  %41 = phi i32 [ 2, %22 ], [ 1, %29 ]
  %42 = add i32 %11, %41
  store i32 %42, ptr %0, align 8, !tbaa !80
  br label %43

43:                                               ; preds = %40, %10
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  br label %45

45:                                               ; preds = %129, %43
  %46 = phi i32 [ %11, %43 ], [ %130, %129 ]
  %47 = load i32, ptr %44, align 4, !tbaa !68
  %48 = icmp eq i32 %47, 1
  %49 = load i32, ptr %5, align 4, !tbaa !81
  %50 = load i32, ptr %0, align 8, !tbaa !80
  %51 = icmp ult i32 %50, %49
  br i1 %48, label %56, label %52, !prof !162

52:                                               ; preds = %45
  br i1 %51, label %53, label %97, !prof !115

53:                                               ; preds = %52
  %54 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %55 = load ptr, ptr %54, align 8, !tbaa !114
  br label %84

56:                                               ; preds = %45
  br i1 %51, label %57, label %97

57:                                               ; preds = %56
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %59 = load ptr, ptr %58, align 8
  br label %60

60:                                               ; preds = %57, %80
  %61 = phi i32 [ %50, %57 ], [ %82, %80 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %62
  %64 = load i16, ptr %63, align 2, !tbaa !54
  %65 = add i16 %64, 10240
  %66 = icmp ult i16 %65, 896
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = add i32 %61, 1
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %69
  %71 = load i16, ptr %70, align 2, !tbaa !54
  %72 = add i16 %71, 8192
  %73 = icmp ult i16 %72, -1024
  br i1 %73, label %97, label %80

74:                                               ; preds = %60
  %75 = zext i16 %64 to i64
  %76 = getelementptr inbounds i8, ptr %59, i64 %75
  %77 = load i8, ptr %76, align 1, !tbaa !58
  %78 = and i8 %77, 4
  %79 = icmp eq i8 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %74, %67
  %81 = phi i32 [ 2, %67 ], [ 1, %74 ]
  %82 = add i32 %61, %81
  store i32 %82, ptr %0, align 8, !tbaa !80
  %83 = icmp ult i32 %82, %49
  br i1 %83, label %60, label %97, !llvm.loop !163

84:                                               ; preds = %53, %94
  %85 = phi i32 [ %50, %53 ], [ %95, %94 ]
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %86
  %88 = load i16, ptr %87, align 2, !tbaa !54
  %89 = zext i16 %88 to i64
  %90 = getelementptr inbounds i8, ptr %55, i64 %89
  %91 = load i8, ptr %90, align 1, !tbaa !58
  %92 = and i8 %91, 4
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %97, label %94, !prof !164

94:                                               ; preds = %84
  %95 = add nuw i32 %85, 1
  store i32 %95, ptr %0, align 8, !tbaa !80
  %96 = icmp eq i32 %95, %49
  br i1 %96, label %97, label %84, !prof !165, !llvm.loop !166

97:                                               ; preds = %84, %94, %74, %67, %80, %52, %56
  %98 = load i32, ptr %0, align 8, !tbaa !80
  %99 = icmp eq i32 %98, %46
  br i1 %99, label %123, label %100, !prof !162

100:                                              ; preds = %97
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %103 = sub i32 %98, %46
  %104 = zext i32 %103 to i64
  %105 = load i64, ptr %101, align 8, !tbaa !82
  %106 = add nsw i64 %105, %104
  store i64 %106, ptr %101, align 8, !tbaa !82
  %107 = zext i32 %46 to i64
  %108 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %107
  %109 = load i32, ptr %1, align 8, !tbaa !167
  %110 = add i32 %109, %103
  %111 = load i32, ptr %102, align 4, !tbaa !169
  %112 = icmp ult i32 %110, %111
  br i1 %112, label %114, label %113, !prof !170

113:                                              ; preds = %100
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %103)
  br label %114

114:                                              ; preds = %113, %100
  %115 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %116 = load ptr, ptr %115, align 8, !tbaa !171
  %117 = load i32, ptr %1, align 8, !tbaa !167
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i16, ptr %116, i64 %118
  %120 = shl nuw nsw i64 %104, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %119, ptr nonnull align 2 %108, i64 %120, i1 false), !prof !172
  %121 = load i32, ptr %1, align 8, !tbaa !167
  %122 = add i32 %121, %103
  store i32 %122, ptr %1, align 8, !tbaa !167
  br label %123

123:                                              ; preds = %114, %97
  %124 = load i32, ptr %0, align 8, !tbaa !80
  %125 = load i32, ptr %5, align 4, !tbaa !81
  %126 = icmp ult i32 %124, %125
  br i1 %126, label %131, label %127, !prof !173

127:                                              ; preds = %123
  %128 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %128, label %129, label %131

129:                                              ; preds = %127
  %130 = load i32, ptr %0, align 8, !tbaa !80
  br label %45, !llvm.loop !174

131:                                              ; preds = %123, %127
  %132 = load i32, ptr %1, align 8, !tbaa !167
  %133 = icmp ne i32 %132, 0
  br label %134

134:                                              ; preds = %131, %22, %29, %8
  %135 = phi i1 [ false, %8 ], [ %133, %131 ], [ false, %22 ], [ false, %29 ]
  ret i1 %135
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, ptr nocapture noundef %2) local_unnamed_addr #8 align 2 !prof !175 {
  store i32 -1, ptr %2, align 4, !tbaa !126
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %142, %3
  %11 = phi i8 [ 1, %3 ], [ %143, %142 ]
  %12 = load i32, ptr %0, align 8, !tbaa !80
  %13 = load i32, ptr %4, align 4, !tbaa !81
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17, !prof !176

15:                                               ; preds = %10
  %16 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %16, label %17, label %144, !prof !177

17:                                               ; preds = %15, %10
  %18 = load i32, ptr %0, align 8, !tbaa !80
  %19 = and i8 %11, 1
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %52, label %21, !prof !176

21:                                               ; preds = %17
  %22 = load i32, ptr %5, align 4, !tbaa !68
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %37, !prof !178

24:                                               ; preds = %21
  %25 = zext i32 %18 to i64
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !54
  %28 = add i16 %27, 10240
  %29 = icmp ult i16 %28, 896
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = add i32 %18, 1
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %32
  %34 = load i16, ptr %33, align 2, !tbaa !54
  %35 = add i16 %34, 8192
  %36 = icmp ult i16 %35, -1024
  br i1 %36, label %151, label %49

37:                                               ; preds = %24, %21
  %38 = zext i32 %18 to i64
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !54
  %41 = load ptr, ptr %6, align 8, !tbaa !114
  %42 = zext i16 %40 to i64
  %43 = getelementptr inbounds i8, ptr %41, i64 %42
  %44 = load i8, ptr %43, align 1, !tbaa !58
  %45 = and i8 %44, 2
  %46 = icmp ne i8 %45, 0
  %47 = icmp ne i16 %40, 58
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %151, !prof !179

49:                                               ; preds = %37, %30
  %50 = phi i32 [ 2, %30 ], [ 1, %37 ]
  %51 = add i32 %18, %50
  store i32 %51, ptr %0, align 8, !tbaa !80
  br label %52

52:                                               ; preds = %49, %17
  %53 = phi i8 [ %11, %17 ], [ 0, %49 ]
  %54 = load i32, ptr %4, align 4, !tbaa !81
  %55 = load i32, ptr %0, align 8, !tbaa !80
  %56 = icmp ult i32 %55, %54
  br i1 %56, label %57, label %88, !prof !180

57:                                               ; preds = %52
  %58 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %59 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %60 = load ptr, ptr %58, align 8
  %61 = load i32, ptr %59, align 4
  br label %62

62:                                               ; preds = %57, %78
  %63 = phi i32 [ %55, %57 ], [ %80, %78 ]
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !54
  %67 = add i16 %66, 10240
  %68 = icmp ult i16 %67, 896
  br i1 %68, label %69, label %82, !prof !181

69:                                               ; preds = %62
  %70 = icmp eq i32 %61, 0
  br i1 %70, label %88, label %71

71:                                               ; preds = %69
  %72 = add i32 %63, 1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %73
  %75 = load i16, ptr %74, align 2, !tbaa !54
  %76 = add i16 %75, 8192
  %77 = icmp ult i16 %76, -1024
  br i1 %77, label %88, label %78

78:                                               ; preds = %71, %82
  %79 = phi i32 [ 1, %82 ], [ 2, %71 ]
  %80 = add i32 %63, %79
  store i32 %80, ptr %0, align 8, !tbaa !80
  %81 = icmp ult i32 %80, %54
  br i1 %81, label %62, label %88, !prof !182, !llvm.loop !183

82:                                               ; preds = %62
  %83 = zext i16 %66 to i64
  %84 = getelementptr inbounds i8, ptr %60, i64 %83
  %85 = load i8, ptr %84, align 1, !tbaa !58
  %86 = and i8 %85, 1
  %87 = icmp eq i8 %86, 0
  br i1 %87, label %88, label %78, !prof !184

88:                                               ; preds = %78, %71, %69, %82, %52
  %89 = phi i32 [ %55, %52 ], [ %80, %78 ], [ %63, %71 ], [ %63, %69 ], [ %63, %82 ]
  %90 = icmp eq i32 %89, %18
  br i1 %90, label %111, label %91, !prof !185

91:                                               ; preds = %88
  %92 = sub i32 %89, %18
  %93 = zext i32 %92 to i64
  %94 = load i64, ptr %7, align 8, !tbaa !82
  %95 = add nsw i64 %94, %93
  store i64 %95, ptr %7, align 8, !tbaa !82
  %96 = zext i32 %18 to i64
  %97 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %96
  %98 = load i32, ptr %1, align 8, !tbaa !167
  %99 = add i32 %98, %92
  %100 = load i32, ptr %8, align 4, !tbaa !169
  %101 = icmp ult i32 %99, %100
  br i1 %101, label %103, label %102, !prof !170

102:                                              ; preds = %91
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef %92)
  br label %103

103:                                              ; preds = %102, %91
  %104 = load ptr, ptr %9, align 8, !tbaa !171
  %105 = load i32, ptr %1, align 8, !tbaa !167
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds i16, ptr %104, i64 %106
  %108 = shl nuw nsw i64 %93, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %107, ptr nonnull align 2 %97, i64 %108, i1 false), !prof !186
  %109 = load i32, ptr %1, align 8, !tbaa !167
  %110 = add i32 %109, %92
  store i32 %110, ptr %1, align 8, !tbaa !167
  br label %111

111:                                              ; preds = %103, %88
  %112 = load i32, ptr %0, align 8, !tbaa !80
  %113 = load i32, ptr %4, align 4, !tbaa !81
  %114 = icmp ult i32 %112, %113
  br i1 %114, label %115, label %142, !prof !187

115:                                              ; preds = %111
  %116 = zext i32 %112 to i64
  %117 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %116
  %118 = load i16, ptr %117, align 2, !tbaa !54
  %119 = icmp eq i16 %118, 58
  br i1 %119, label %120, label %144, !prof !188

120:                                              ; preds = %115
  %121 = load i32, ptr %2, align 4, !tbaa !126
  %122 = icmp eq i32 %121, -1
  br i1 %122, label %123, label %151, !prof !87

123:                                              ; preds = %120
  %124 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %125 = load i32, ptr %1, align 8, !tbaa !167
  store i32 %125, ptr %2, align 4, !tbaa !126
  %126 = load i32, ptr %1, align 8, !tbaa !167
  %127 = load i32, ptr %124, align 4, !tbaa !169
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %130, !prof !101

129:                                              ; preds = %123
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %130

130:                                              ; preds = %123, %129
  %131 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %133 = load ptr, ptr %131, align 8, !tbaa !171
  %134 = load i32, ptr %1, align 8, !tbaa !167
  %135 = add i32 %134, 1
  store i32 %135, ptr %1, align 8, !tbaa !167
  %136 = zext i32 %134 to i64
  %137 = getelementptr inbounds i16, ptr %133, i64 %136
  store i16 58, ptr %137, align 2, !tbaa !54
  %138 = load i32, ptr %0, align 8, !tbaa !80
  %139 = add i32 %138, 1
  store i32 %139, ptr %0, align 8, !tbaa !80
  %140 = load i64, ptr %132, align 8, !tbaa !82
  %141 = add nsw i64 %140, 1
  store i64 %141, ptr %132, align 8, !tbaa !82
  br label %142

142:                                              ; preds = %130, %111
  %143 = phi i8 [ 1, %130 ], [ %53, %111 ]
  br label %10, !llvm.loop !189

144:                                              ; preds = %115, %15
  %145 = phi i8 [ %53, %115 ], [ %11, %15 ]
  %146 = and i8 %145, 1
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %151, !prof !190

148:                                              ; preds = %144
  %149 = load i32, ptr %1, align 8, !tbaa !167
  %150 = icmp ne i32 %149, 0
  br label %151

151:                                              ; preds = %120, %37, %30, %144, %148
  %152 = phi i1 [ %150, %148 ], [ false, %144 ], [ false, %30 ], [ false, %37 ], [ false, %120 ]
  ret i1 %152
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #2 align 2 !prof !191 {
  %3 = alloca i16, align 2
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  br label %5

5:                                                ; preds = %57, %2
  %6 = load i32, ptr %0, align 8, !tbaa !80
  %7 = load i32, ptr %4, align 4, !tbaa !81
  %8 = icmp ult i32 %6, %7
  br i1 %8, label %9, label %57, !prof !192

9:                                                ; preds = %5
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  %11 = zext i32 %6 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !54
  store i16 %13, ptr %3, align 2, !tbaa !54
  %14 = load ptr, ptr %10, align 8, !tbaa !114
  %15 = zext i16 %13 to i64
  %16 = getelementptr inbounds i8, ptr %14, i64 %15
  %17 = load i8, ptr %16, align 1, !tbaa !58
  %18 = icmp slt i8 %17, 0
  br i1 %18, label %19, label %60, !prof !192

19:                                               ; preds = %9
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  br label %31

22:                                               ; preds = %48
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #15
  %23 = zext i32 %54 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %23
  %25 = load i16, ptr %24, align 2, !tbaa !54
  store i16 %25, ptr %3, align 2, !tbaa !54
  %26 = load ptr, ptr %10, align 8, !tbaa !114
  %27 = zext i16 %25 to i64
  %28 = getelementptr inbounds i8, ptr %26, i64 %27
  %29 = load i8, ptr %28, align 1, !tbaa !58
  %30 = icmp slt i8 %29, 0
  br i1 %30, label %31, label %60, !prof !193

31:                                               ; preds = %19, %22
  %32 = phi i16 [ %25, %22 ], [ %13, %19 ]
  %33 = phi i32 [ %54, %22 ], [ %6, %19 ]
  %34 = add i32 %33, 1
  store i32 %34, ptr %0, align 8, !tbaa !80
  %35 = and i16 %32, 6
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %37, label %41, !prof !194

37:                                               ; preds = %31
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %39 = load i64, ptr %38, align 8, !tbaa !82
  %40 = add nsw i64 %39, 1
  store i64 %40, ptr %38, align 8, !tbaa !82
  br label %42

41:                                               ; preds = %31
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %3, i1 noundef zeroext false)
  br label %42

42:                                               ; preds = %41, %37
  %43 = load i16, ptr %3, align 2, !tbaa !54
  %44 = load i32, ptr %1, align 8, !tbaa !167
  %45 = load i32, ptr %20, align 4, !tbaa !169
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %48, !prof !194

47:                                               ; preds = %42
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %48

48:                                               ; preds = %42, %47
  %49 = load ptr, ptr %21, align 8, !tbaa !171
  %50 = load i32, ptr %1, align 8, !tbaa !167
  %51 = add i32 %50, 1
  store i32 %51, ptr %1, align 8, !tbaa !167
  %52 = zext i32 %50 to i64
  %53 = getelementptr inbounds i16, ptr %49, i64 %52
  store i16 %43, ptr %53, align 2, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  %54 = load i32, ptr %0, align 8, !tbaa !80
  %55 = load i32, ptr %4, align 4, !tbaa !81
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %22, label %57, !prof !195

57:                                               ; preds = %48, %5
  %58 = phi i1 [ %8, %5 ], [ %56, %48 ]
  %59 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %59, label %5, label %62, !prof !196, !llvm.loop !197

60:                                               ; preds = %9, %22
  %61 = phi i1 [ %56, %22 ], [ %8, %9 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #15
  br label %62

62:                                               ; preds = %57, %60
  %63 = phi i1 [ %61, %60 ], [ %58, %57 ]
  ret i1 %63
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr nocapture noundef nonnull align 2 dereferenceable(2) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 !prof !198 {
  %4 = load i16, ptr %1, align 2, !tbaa !54
  switch i16 %4, label %64 [
    i16 13, label %5
    i16 10, label %32
    i16 133, label %37
    i16 8232, label %37
  ], !prof !199

5:                                                ; preds = %3
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %6, align 8, !tbaa !82
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %8 = load i64, ptr %7, align 8, !tbaa !83
  %9 = add nsw i64 %8, 1
  store i64 %9, ptr %7, align 8, !tbaa !83
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  %11 = load i32, ptr %10, align 4, !tbaa !97
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %68

13:                                               ; preds = %5
  %14 = load i32, ptr %0, align 8, !tbaa !80
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %16 = load i32, ptr %15, align 4, !tbaa !81
  %17 = icmp ult i32 %14, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %13
  %19 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %19, label %20, label %31

20:                                               ; preds = %18, %13
  %21 = load i32, ptr %0, align 8, !tbaa !80
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !54
  switch i16 %24, label %31 [
    i16 10, label %29
    i16 133, label %25
  ]

25:                                               ; preds = %20
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  %27 = load i8, ptr %26, align 8, !tbaa !113, !range !112, !noundef !127
  %28 = icmp eq i8 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %20, %25
  %30 = add i32 %21, 1
  store i32 %30, ptr %0, align 8, !tbaa !80
  br label %31

31:                                               ; preds = %25, %18, %20, %29
  store i16 10, ptr %1, align 2, !tbaa !54
  br label %68

32:                                               ; preds = %3
  %33 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %33, align 8, !tbaa !82
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %35 = load i64, ptr %34, align 8, !tbaa !83
  %36 = add nsw i64 %35, 1
  store i64 %36, ptr %34, align 8, !tbaa !83
  br label %68

37:                                               ; preds = %3, %3
  %38 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 30
  %39 = load i32, ptr %38, align 4
  %40 = icmp eq i32 %39, 1
  %41 = select i1 %2, i1 %40, i1 false
  br i1 %41, label %42, label %51

42:                                               ; preds = %37
  %43 = tail call ptr @__cxa_allocate_exception(i64 48) #15
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 22
  %45 = load ptr, ptr %44, align 8, !tbaa !105
  %46 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %47 = load ptr, ptr %46, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull @.str, i32 noundef 1800, i32 noundef 72, ptr noundef %45, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %47)
          to label %48 unwind label %49

48:                                               ; preds = %42
  tail call void @__cxa_throw(ptr nonnull %43, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

49:                                               ; preds = %42
  %50 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %43) #15
  resume { ptr, i32 } %50

51:                                               ; preds = %37
  %52 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 29
  %53 = load i8, ptr %52, align 8, !tbaa !113, !range !112, !noundef !127
  %54 = icmp ne i8 %53, 0
  %55 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 18
  %56 = load i32, ptr %55, align 4
  %57 = icmp eq i32 %56, 1
  %58 = select i1 %54, i1 %57, i1 false
  br i1 %58, label %59, label %68

59:                                               ; preds = %51
  %60 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  store i64 1, ptr %60, align 8, !tbaa !82
  %61 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %62 = load i64, ptr %61, align 8, !tbaa !83
  %63 = add nsw i64 %62, 1
  store i64 %63, ptr %61, align 8, !tbaa !83
  store i16 10, ptr %1, align 2, !tbaa !54
  br label %68

64:                                               ; preds = %3
  %65 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %66 = load i64, ptr %65, align 8, !tbaa !82
  %67 = add nsw i64 %66, 1
  store i64 %67, ptr %65, align 8, !tbaa !82
  br label %68

68:                                               ; preds = %32, %51, %59, %64, %5, %31
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader15getUpToCharOrWSERNS_9XMLBufferEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 8 dereferenceable(40) %1, i16 noundef zeroext %2) local_unnamed_addr #2 align 2 !prof !79 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %6 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLBuffer", ptr %1, i64 0, i32 6
  br label %10

10:                                               ; preds = %45, %3
  %11 = load i32, ptr %0, align 8, !tbaa !80
  %12 = load i32, ptr %5, align 4, !tbaa !81
  %13 = icmp ult i32 %11, %12
  br i1 %13, label %14, label %46, !prof !200

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  %15 = zext i32 %11 to i64
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %15
  %17 = load i16, ptr %16, align 2, !tbaa !54
  store i16 %17, ptr %4, align 2, !tbaa !54
  %18 = load ptr, ptr %6, align 8, !tbaa !114
  %19 = zext i16 %17 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !58
  %22 = icmp sgt i8 %21, -1
  %23 = icmp ne i16 %17, %2
  %24 = and i1 %23, %22
  br i1 %24, label %25, label %48, !prof !201

25:                                               ; preds = %14
  %26 = add i32 %11, 1
  store i32 %26, ptr %0, align 8, !tbaa !80
  %27 = and i16 %17, -8366
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %32, label %29, !prof !202

29:                                               ; preds = %25
  %30 = load i64, ptr %7, align 8, !tbaa !82
  %31 = add nsw i64 %30, 1
  store i64 %31, ptr %7, align 8, !tbaa !82
  br label %33

32:                                               ; preds = %25
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext false)
  br label %33

33:                                               ; preds = %32, %29
  %34 = load i16, ptr %4, align 2, !tbaa !54
  %35 = load i32, ptr %1, align 8, !tbaa !167
  %36 = load i32, ptr %8, align 4, !tbaa !169
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %39, !prof !202

38:                                               ; preds = %33
  tail call void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40) %1, i32 noundef 1)
  br label %39

39:                                               ; preds = %33, %38
  %40 = load ptr, ptr %9, align 8, !tbaa !171
  %41 = load i32, ptr %1, align 8, !tbaa !167
  %42 = add i32 %41, 1
  store i32 %42, ptr %1, align 8, !tbaa !167
  %43 = zext i32 %41 to i64
  %44 = getelementptr inbounds i16, ptr %40, i64 %43
  store i16 %34, ptr %44, align 2, !tbaa !54
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br i1 %24, label %45, label %49, !prof !201

45:                                               ; preds = %39, %46
  br label %10, !llvm.loop !203

46:                                               ; preds = %10
  %47 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %47, label %45, label %49

48:                                               ; preds = %14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  br label %49

49:                                               ; preds = %46, %39, %48
  ret i1 %13
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skipIfQuoteERt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr nocapture noundef nonnull writeonly align 2 dereferenceable(2) %1) local_unnamed_addr #8 align 2 !prof !204 {
  %3 = load i32, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !81
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !205

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %8, label %9, label %22

9:                                                ; preds = %7, %2
  %10 = load i32, ptr %0, align 8, !tbaa !80
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !54
  %14 = icmp eq i16 %13, 34
  %15 = icmp eq i16 %13, 39
  %16 = or i1 %14, %15
  switch i16 %13, label %22 [
    i16 39, label %17
    i16 34, label %17
  ], !prof !206

17:                                               ; preds = %9, %9
  store i16 %13, ptr %1, align 2, !tbaa !54
  %18 = add i32 %10, 1
  store i32 %18, ptr %0, align 8, !tbaa !80
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %20 = load i64, ptr %19, align 8, !tbaa !82
  %21 = add nsw i64 %20, 1
  store i64 %21, ptr %19, align 8, !tbaa !82
  br label %22

22:                                               ; preds = %7, %17, %9
  %23 = phi i1 [ %16, %9 ], [ %16, %17 ], [ false, %7 ]
  ret i1 %23
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10skipSpacesERbb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr nocapture noundef nonnull writeonly align 1 dereferenceable(1) %1, i1 noundef zeroext %2) local_unnamed_addr #8 align 2 !prof !207 {
  %4 = alloca i16, align 2
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 6
  %6 = load i64, ptr %5, align 8, !tbaa !83
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %8 = load i64, ptr %7, align 8, !tbaa !82
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  br label %11

11:                                               ; preds = %47, %3
  %12 = load i32, ptr %0, align 8, !tbaa !80
  %13 = load i32, ptr %9, align 4, !tbaa !81
  %14 = icmp ult i32 %12, %13
  br i1 %14, label %15, label %47, !prof !208

15:                                               ; preds = %11
  %16 = zext i32 %12 to i64
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %16
  %18 = load i16, ptr %17, align 2, !tbaa !54
  %19 = load ptr, ptr %10, align 8, !tbaa !114
  %20 = zext i16 %18 to i64
  %21 = getelementptr inbounds i8, ptr %19, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !58
  %23 = icmp slt i8 %22, 0
  br i1 %23, label %33, label %50, !prof !209

24:                                               ; preds = %43
  %25 = zext i32 %44 to i64
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !54
  %28 = load ptr, ptr %10, align 8, !tbaa !114
  %29 = zext i16 %27 to i64
  %30 = getelementptr inbounds i8, ptr %28, i64 %29
  %31 = load i8, ptr %30, align 1, !tbaa !58
  %32 = icmp slt i8 %31, 0
  br i1 %32, label %33, label %50, !prof !210, !llvm.loop !211

33:                                               ; preds = %15, %24
  %34 = phi i16 [ %27, %24 ], [ %18, %15 ]
  %35 = phi i32 [ %44, %24 ], [ %12, %15 ]
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #15
  %36 = add i32 %35, 1
  store i32 %36, ptr %0, align 8, !tbaa !80
  store i16 %34, ptr %4, align 2, !tbaa !54
  %37 = and i16 %34, 6
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %42, !prof !212

39:                                               ; preds = %33
  %40 = load i64, ptr %7, align 8, !tbaa !82
  %41 = add nsw i64 %40, 1
  store i64 %41, ptr %7, align 8, !tbaa !82
  br label %43

42:                                               ; preds = %33
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %4, i1 noundef zeroext %2)
  br label %43

43:                                               ; preds = %42, %39
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #15
  %44 = load i32, ptr %0, align 8, !tbaa !80
  %45 = load i32, ptr %9, align 4, !tbaa !81
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %24, label %47, !prof !213, !llvm.loop !211

47:                                               ; preds = %43, %11
  %48 = phi i1 [ %14, %11 ], [ %46, %43 ]
  %49 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %49, label %11, label %50, !prof !214, !llvm.loop !215

50:                                               ; preds = %47, %15, %24
  %51 = phi i1 [ %46, %24 ], [ %48, %47 ], [ %14, %15 ]
  %52 = load i64, ptr %5, align 8, !tbaa !83
  %53 = icmp ne i64 %6, %52
  %54 = load i64, ptr %7, align 8
  %55 = icmp ne i64 %8, %54
  %56 = select i1 %53, i1 true, i1 %55
  %57 = zext i1 %56 to i8
  store i8 %57, ptr %1, align 1, !tbaa !216
  ret i1 %51
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11skippedCharEt(ptr noundef nonnull align 8 dereferenceable(163992) %0, i16 noundef zeroext %1) local_unnamed_addr #8 align 2 !prof !217 {
  %3 = load i32, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !81
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9, !prof !218

7:                                                ; preds = %2
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %8, label %9, label %20, !prof !219

9:                                                ; preds = %7, %2
  %10 = load i32, ptr %0, align 8, !tbaa !80
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !54
  %14 = icmp eq i16 %13, %1
  br i1 %14, label %15, label %20, !prof !220

15:                                               ; preds = %9
  %16 = add i32 %10, 1
  store i32 %16, ptr %0, align 8, !tbaa !80
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %18 = load i64, ptr %17, align 8, !tbaa !82
  %19 = add nsw i64 %18, 1
  store i64 %19, ptr %17, align 8, !tbaa !82
  br label %20

20:                                               ; preds = %7, %9, %15
  %21 = phi i1 [ true, %15 ], [ false, %9 ], [ false, %7 ]
  ret i1 %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader12skippedSpaceEv(ptr noundef nonnull align 8 dereferenceable(163992) %0) local_unnamed_addr #2 align 2 !prof !67 {
  %2 = alloca i16, align 2
  %3 = load i32, ptr %0, align 8, !tbaa !80
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !81
  %6 = icmp eq i32 %3, %5
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  br i1 %8, label %9, label %30

9:                                                ; preds = %7, %1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %2) #15
  %10 = load i32, ptr %0, align 8, !tbaa !80
  %11 = zext i32 %10 to i64
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %11
  %13 = load i16, ptr %12, align 2, !tbaa !54
  store i16 %13, ptr %2, align 2, !tbaa !54
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 28
  %15 = load ptr, ptr %14, align 8, !tbaa !114
  %16 = zext i16 %13 to i64
  %17 = getelementptr inbounds i8, ptr %15, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !58
  %19 = icmp slt i8 %18, 0
  br i1 %19, label %20, label %29

20:                                               ; preds = %9
  %21 = add i32 %10, 1
  store i32 %21, ptr %0, align 8, !tbaa !80
  %22 = and i16 %13, 6
  %23 = icmp eq i16 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %26 = load i64, ptr %25, align 8, !tbaa !82
  %27 = add nsw i64 %26, 1
  store i64 %27, ptr %25, align 8, !tbaa !82
  br label %29

28:                                               ; preds = %20
  call void @_ZN11xercesc_2_79XMLReader9handleEOLERtb(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef nonnull align 2 dereferenceable(2) %2, i1 noundef zeroext false)
  br label %29

29:                                               ; preds = %9, %24, %28
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %2) #15
  br label %30

30:                                               ; preds = %7, %29
  %31 = phi i1 [ %19, %29 ], [ false, %7 ]
  ret i1 %31
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader13skippedStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1) local_unnamed_addr #8 align 2 !prof !221 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !222

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !54
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !222

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !54
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !223, !llvm.loop !88

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ], [ 0, %2 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !81
  %22 = load i32, ptr %0, align 8, !tbaa !80
  %23 = sub i32 %21, %22
  br label %24

24:                                               ; preds = %27, %18
  %25 = phi i32 [ %23, %18 ], [ %31, %27 ]
  %26 = icmp ult i32 %25, %19
  br i1 %26, label %27, label %33, !prof !224

27:                                               ; preds = %24
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  %29 = load i32, ptr %20, align 4, !tbaa !81
  %30 = load i32, ptr %0, align 8, !tbaa !80
  %31 = sub i32 %29, %30
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %46, label %24, !prof !225, !llvm.loop !226

33:                                               ; preds = %24
  %34 = load i32, ptr %0, align 8, !tbaa !80
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %35
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef nonnull %36, ptr noundef %1, i32 noundef %19)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %46, !prof !227

39:                                               ; preds = %33
  %40 = zext i32 %19 to i64
  %41 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 5
  %42 = load i64, ptr %41, align 8, !tbaa !82
  %43 = add nsw i64 %42, %40
  store i64 %43, ptr %41, align 8, !tbaa !82
  %44 = load i32, ptr %0, align 8, !tbaa !80
  %45 = add i32 %44, %19
  store i32 %45, ptr %0, align 8, !tbaa !80
  br label %46

46:                                               ; preds = %27, %33, %39
  %47 = phi i1 [ true, %39 ], [ false, %33 ], [ false, %27 ]
  ret i1 %47
}

declare noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader10peekStringEPKt(ptr noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !228 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4, !prof !194

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !54
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7, !prof !194

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !54
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !prof !229, !llvm.loop !88

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ], [ 0, %2 ]
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !81
  %22 = load i32, ptr %0, align 8, !tbaa !80
  %23 = sub i32 %21, %22
  br label %24

24:                                               ; preds = %27, %18
  %25 = phi i32 [ %23, %18 ], [ %31, %27 ]
  %26 = icmp ult i32 %25, %19
  br i1 %26, label %27, label %33, !prof !194

27:                                               ; preds = %24
  %28 = tail call noundef zeroext i1 @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv(ptr noundef nonnull align 8 dereferenceable(163992) %0)
  %29 = load i32, ptr %20, align 4, !tbaa !81
  %30 = load i32, ptr %0, align 8, !tbaa !80
  %31 = sub i32 %29, %30
  %32 = icmp eq i32 %25, %31
  br i1 %32, label %39, label %24, !llvm.loop !230

33:                                               ; preds = %24
  %34 = load i32, ptr %0, align 8, !tbaa !80
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 1, i64 %35
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j(ptr noundef nonnull %36, ptr noundef %1, i32 noundef %19)
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %27, %33
  %40 = phi i1 [ %38, %33 ], [ false, %27 ]
  ret i1 %40
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLReader11setEncodingEPKt(ptr nocapture noundef nonnull align 8 dereferenceable(163992) %0, ptr noundef %1) local_unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 9
  %6 = load i8, ptr %5, align 8, !tbaa !85, !range !112, !noundef !127
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %8, label %213

8:                                                ; preds = %2
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 31
  %10 = load ptr, ptr %9, align 8, !tbaa !111
  %11 = icmp eq ptr %1, null
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  %13 = load i16, ptr %1, align 2, !tbaa !54
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %1, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !54
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !88

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %1 to i64
  %23 = sub i64 %21, %22
  %24 = add i64 %23, 2
  %25 = and i64 %24, 8589934590
  br label %26

26:                                               ; preds = %20, %12
  %27 = phi i64 [ %25, %20 ], [ 2, %12 ]
  %28 = load ptr, ptr %10, align 8, !tbaa !89
  %29 = getelementptr inbounds ptr, ptr %28, i64 2
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(8) %10, i64 noundef %27)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %31, ptr nonnull align 2 %1, i64 %27, i1 false)
  br label %32

32:                                               ; preds = %8, %26
  %33 = phi ptr [ %31, %26 ], [ null, %8 ]
  tail call void @_ZN11xercesc_2_79XMLString14upperCaseASCIIEPt(ptr noundef %33)
  %34 = tail call noundef i32 @_ZN11xercesc_2_713XMLRecognizer15encodingForNameEPKt(ptr noundef %33)
  %35 = icmp eq i32 %34, 999
  br i1 %35, label %36, label %185

36:                                               ; preds = %32
  %37 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUTF16EncodingStringE)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %57, label %39

39:                                               ; preds = %36
  %40 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString2E)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %39
  %43 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString3E)
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %57, label %45

45:                                               ; preds = %42
  %46 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString4E)
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %57, label %48

48:                                               ; preds = %45
  %49 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString5E)
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %48
  %52 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString6E)
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %51
  %55 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni22fgUTF16EncodingString7E)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %111

57:                                               ; preds = %54, %51, %48, %45, %42, %39, %36
  %58 = load ptr, ptr %9, align 8, !tbaa !111
  %59 = load ptr, ptr %58, align 8, !tbaa !89
  %60 = getelementptr inbounds ptr, ptr %59, i64 3
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(8) %58, ptr noundef %33)
  %62 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %63 = load i32, ptr %62, align 8, !tbaa !120
  %64 = add i32 %63, -5
  %65 = icmp ult i32 %64, 2
  br i1 %65, label %66, label %213

66:                                               ; preds = %57
  %67 = icmp eq i32 %63, 6
  %68 = load ptr, ptr %9, align 8, !tbaa !111
  %69 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %70 = load ptr, ptr %69, align 8, !tbaa !84
  %71 = load ptr, ptr %68, align 8, !tbaa !89
  %72 = getelementptr inbounds ptr, ptr %71, i64 3
  %73 = load ptr, ptr %72, align 8
  tail call void %73(ptr noundef nonnull align 8 dereferenceable(8) %68, ptr noundef %70)
  %74 = load ptr, ptr %9, align 8, !tbaa !111
  br i1 %67, label %75, label %93

75:                                               ; preds = %66
  %76 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, align 2, !tbaa !54
  %77 = icmp eq i16 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %75, %78
  %79 = phi ptr [ %80, %78 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, %75 ]
  %80 = getelementptr inbounds i16, ptr %79, i64 1
  %81 = load i16, ptr %80, align 2, !tbaa !54
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %83, label %78, !llvm.loop !88

83:                                               ; preds = %78
  %84 = ptrtoint ptr %80 to i64
  %85 = add i64 %84, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE to i64)), i64 2)
  %86 = and i64 %85, 8589934590
  br label %87

87:                                               ; preds = %75, %83
  %88 = phi i64 [ %86, %83 ], [ 2, %75 ]
  %89 = load ptr, ptr %74, align 8, !tbaa !89
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8
  %92 = tail call noundef ptr %91(ptr noundef nonnull align 8 dereferenceable(8) %74, i64 noundef %88)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %92, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16LEncodingStringE, i64 %88, i1 false)
  store ptr %92, ptr %69, align 8, !tbaa !84
  br label %192

93:                                               ; preds = %66
  %94 = load i16, ptr @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, align 2, !tbaa !54
  %95 = icmp eq i16 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93, %96
  %97 = phi ptr [ %98, %96 ], [ @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, %93 ]
  %98 = getelementptr inbounds i16, ptr %97, i64 1
  %99 = load i16, ptr %98, align 2, !tbaa !54
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %101, label %96, !llvm.loop !88

101:                                              ; preds = %96
  %102 = ptrtoint ptr %98 to i64
  %103 = add i64 %102, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE to i64)), i64 2)
  %104 = and i64 %103, 8589934590
  br label %105

105:                                              ; preds = %93, %101
  %106 = phi i64 [ %104, %101 ], [ 2, %93 ]
  %107 = load ptr, ptr %74, align 8, !tbaa !89
  %108 = getelementptr inbounds ptr, ptr %107, i64 2
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(8) %74, i64 noundef %106)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %110, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni22fgUTF16BEncodingStringE, i64 %106, i1 false)
  store ptr %110, ptr %69, align 8, !tbaa !84
  br label %192

111:                                              ; preds = %54
  %112 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni20fgUCS4EncodingStringE)
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString2E)
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %120, label %117

117:                                              ; preds = %114
  %118 = tail call noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef %33, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni21fgUCS4EncodingString3E)
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %174

120:                                              ; preds = %117, %114, %111
  %121 = load ptr, ptr %9, align 8, !tbaa !111
  %122 = load ptr, ptr %121, align 8, !tbaa !89
  %123 = getelementptr inbounds ptr, ptr %122, i64 3
  %124 = load ptr, ptr %123, align 8
  tail call void %124(ptr noundef nonnull align 8 dereferenceable(8) %121, ptr noundef %33)
  %125 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  %126 = load i32, ptr %125, align 8, !tbaa !120
  %127 = add i32 %126, -1
  %128 = icmp ult i32 %127, 2
  br i1 %128, label %129, label %213

129:                                              ; preds = %120
  %130 = icmp eq i32 %126, 2
  %131 = load ptr, ptr %9, align 8, !tbaa !111
  %132 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %133 = load ptr, ptr %132, align 8, !tbaa !84
  %134 = load ptr, ptr %131, align 8, !tbaa !89
  %135 = getelementptr inbounds ptr, ptr %134, i64 3
  %136 = load ptr, ptr %135, align 8
  tail call void %136(ptr noundef nonnull align 8 dereferenceable(8) %131, ptr noundef %133)
  %137 = load ptr, ptr %9, align 8, !tbaa !111
  br i1 %130, label %138, label %156

138:                                              ; preds = %129
  %139 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, align 2, !tbaa !54
  %140 = icmp eq i16 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %138, %141
  %142 = phi ptr [ %143, %141 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, %138 ]
  %143 = getelementptr inbounds i16, ptr %142, i64 1
  %144 = load i16, ptr %143, align 2, !tbaa !54
  %145 = icmp eq i16 %144, 0
  br i1 %145, label %146, label %141, !llvm.loop !88

146:                                              ; preds = %141
  %147 = ptrtoint ptr %143 to i64
  %148 = add i64 %147, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE to i64)), i64 2)
  %149 = and i64 %148, 8589934590
  br label %150

150:                                              ; preds = %138, %146
  %151 = phi i64 [ %149, %146 ], [ 2, %138 ]
  %152 = load ptr, ptr %137, align 8, !tbaa !89
  %153 = getelementptr inbounds ptr, ptr %152, i64 2
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(8) %137, i64 noundef %151)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %155, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4LEncodingStringE, i64 %151, i1 false)
  store ptr %155, ptr %132, align 8, !tbaa !84
  br label %192

156:                                              ; preds = %129
  %157 = load i16, ptr @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, align 2, !tbaa !54
  %158 = icmp eq i16 %157, 0
  br i1 %158, label %168, label %159

159:                                              ; preds = %156, %159
  %160 = phi ptr [ %161, %159 ], [ @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, %156 ]
  %161 = getelementptr inbounds i16, ptr %160, i64 1
  %162 = load i16, ptr %161, align 2, !tbaa !54
  %163 = icmp eq i16 %162, 0
  br i1 %163, label %164, label %159, !llvm.loop !88

164:                                              ; preds = %159
  %165 = ptrtoint ptr %161 to i64
  %166 = add i64 %165, add (i64 sub (i64 0, i64 ptrtoint (ptr @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE to i64)), i64 2)
  %167 = and i64 %166, 8589934590
  br label %168

168:                                              ; preds = %156, %164
  %169 = phi i64 [ %167, %164 ], [ 2, %156 ]
  %170 = load ptr, ptr %137, align 8, !tbaa !89
  %171 = getelementptr inbounds ptr, ptr %170, i64 2
  %172 = load ptr, ptr %171, align 8
  %173 = tail call noundef ptr %172(ptr noundef nonnull align 8 dereferenceable(8) %137, i64 noundef %169)
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %173, ptr nonnull align 2 @_ZN11xercesc_2_76XMLUni21fgUCS4BEncodingStringE, i64 %169, i1 false)
  store ptr %173, ptr %132, align 8, !tbaa !84
  br label %192

174:                                              ; preds = %117
  %175 = load ptr, ptr %9, align 8, !tbaa !111
  %176 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %177 = load ptr, ptr %176, align 8, !tbaa !84
  %178 = load ptr, ptr %175, align 8, !tbaa !89
  %179 = getelementptr inbounds ptr, ptr %178, i64 3
  %180 = load ptr, ptr %179, align 8
  tail call void %180(ptr noundef nonnull align 8 dereferenceable(8) %175, ptr noundef %177)
  store ptr %33, ptr %176, align 8, !tbaa !84
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #15
  %181 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  %182 = load ptr, ptr %9, align 8, !tbaa !111
  %183 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %181, ptr noundef %33, ptr noundef nonnull align 4 dereferenceable(4) %3, i32 noundef 16384, ptr noundef %182)
  %184 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  store ptr %183, ptr %184, align 8, !tbaa !109
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #15
  br label %192

185:                                              ; preds = %32
  %186 = load ptr, ptr %9, align 8, !tbaa !111
  %187 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %188 = load ptr, ptr %187, align 8, !tbaa !84
  %189 = load ptr, ptr %186, align 8, !tbaa !89
  %190 = getelementptr inbounds ptr, ptr %189, i64 3
  %191 = load ptr, ptr %190, align 8
  tail call void %191(ptr noundef nonnull align 8 dereferenceable(8) %186, ptr noundef %188)
  store ptr %33, ptr %187, align 8, !tbaa !84
  br label %192

192:                                              ; preds = %105, %87, %150, %168, %174, %185
  %193 = phi i32 [ 999, %174 ], [ 2, %150 ], [ %126, %168 ], [ 6, %87 ], [ %63, %105 ], [ %34, %185 ]
  %194 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 26
  %195 = load ptr, ptr %194, align 8, !tbaa !109
  %196 = icmp eq ptr %195, null
  br i1 %196, label %197, label %211

197:                                              ; preds = %192
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #15
  %198 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !118
  %199 = load ptr, ptr %9, align 8, !tbaa !111
  %200 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForENS_13XMLRecognizer9EncodingsERNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %198, i32 noundef %193, ptr noundef nonnull align 4 dereferenceable(4) %4, i32 noundef 16384, ptr noundef %199)
  store ptr %200, ptr %194, align 8, !tbaa !109
  %201 = icmp eq ptr %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %197
  %203 = call ptr @__cxa_allocate_exception(i64 48) #15
  %204 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 8
  %205 = load ptr, ptr %204, align 8, !tbaa !84
  %206 = load ptr, ptr %9, align 8, !tbaa !111
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %203, ptr noundef nonnull @.str, i32 noundef 1320, i32 noundef 98, ptr noundef %205, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %206)
          to label %207 unwind label %208

207:                                              ; preds = %202
  call void @__cxa_throw(ptr nonnull %203, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #16
  unreachable

208:                                              ; preds = %202
  %209 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %203) #15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  resume { ptr, i32 } %209

210:                                              ; preds = %197
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #15
  br label %211

211:                                              ; preds = %210, %192
  %212 = getelementptr inbounds %"class.xercesc_2_7::XMLReader", ptr %0, i64 0, i32 7
  store i32 %193, ptr %212, align 8, !tbaa !120
  br label %213

213:                                              ; preds = %120, %57, %211, %2
  %214 = phi i1 [ true, %2 ], [ true, %211 ], [ false, %57 ], [ false, %120 ]
  ret i1 %214
}

declare noundef i32 @_ZN11xercesc_2_79XMLString13compareStringEPKtS2_(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 !prof !231 {
  %2 = load ptr, ptr %0, align 8, !tbaa !128
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !232

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !130
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !233

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !89
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !234

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #18
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #17
  unreachable
}

declare noundef zeroext i16 @_ZN11xercesc_2_719XMLEBCDICTranscoder11xlatThisOneEh(i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !89
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !67 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !89
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #7

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #7

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_716RuntimeExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !67 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #15
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #5 comdat align 2 !prof !67 {
  ret ptr @_ZN11xercesc_2_76XMLUni23fgRuntimeException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_716RuntimeException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !67 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_716RuntimeExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !89
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #15
  resume { ptr, i32 } %7
}

declare void @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj(ptr noundef nonnull align 8 dereferenceable(40), i32 noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #13

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.bswap.i16(i16) #13

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { noreturn nounwind }
attributes #18 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!51}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42, !43, !44, !45, !46, !47, !48, !49, !50}
!35 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLRecognizer18basicEncodingProbeEPKhj, i64 3}
!36 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLRecognizer15nameForEncodingENS0_9EncodingsEPNS_13MemoryManagerE, i64 3}
!37 = !{ptr @_ZN11xercesc_2_79XMLReaderC2EPKtS2_PNS_14BinInputStreamENS0_7RefFromENS0_5TypesENS0_7SourcesEbbNS0_10XMLVersionEPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLReader12doInitDecodeEv, i64 3}
!38 = !{ptr @_ZN11xercesc_2_79XMLReader12doInitDecodeEv, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j, i64 6}
!39 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, i64 3}
!40 = !{ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKcS2_j, i64 1}
!41 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 386}
!42 = !{ptr @_ZN11xercesc_2_79XMLReader8getQNameERNS_9XMLBufferEPi, ptr @_ZN11xercesc_2_79XMLBuffer14insureCapacityEj, i64 2}
!43 = !{ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 7}
!44 = !{ptr @_ZN11xercesc_2_79XMLReader9getSpacesERNS_9XMLBufferE, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 2}
!45 = !{ptr @_ZN11xercesc_2_79XMLReader10skipSpacesERbb, ptr @_ZN11xercesc_2_79XMLReader9handleEOLERtb, i64 2}
!46 = !{ptr @_ZN11xercesc_2_79XMLReader10skipSpacesERbb, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 8376}
!47 = !{ptr @_ZN11xercesc_2_79XMLReader11skippedCharEt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 8}
!48 = !{ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLReader17refreshCharBufferEv, i64 253}
!49 = !{ptr @_ZN11xercesc_2_79XMLReader13skippedStringEPKt, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 680336}
!50 = !{ptr @_ZN11xercesc_2_79XMLReader10peekStringEPKt, ptr @_ZN11xercesc_2_79XMLString14compareNStringEPKtS2_j, i64 5}
!51 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!52 = !{!"function_entry_count", i64 1512181}
!53 = !{!"branch_weights", i32 926261, i32 1771790}
!54 = !{!55, !55, i64 0}
!55 = !{!"short", !56, i64 0}
!56 = !{!"omnipotent char", !57, i64 0}
!57 = !{!"Simple C++ TBAA"}
!58 = !{!56, !56, i64 0}
!59 = !{!"branch_weights", i32 585920, i32 1185870}
!60 = distinct !{!60, !61, !62}
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = !{!"function_entry_count", i64 1511514}
!64 = !{!"branch_weights", i32 3630905, i32 235639}
!65 = !{!"branch_weights", i32 2355030, i32 1275875}
!66 = distinct !{!66, !61, !62}
!67 = !{!"function_entry_count", i64 0}
!68 = !{!69, !78, i64 163980}
!69 = !{!"_ZTSN11xercesc_2_79XMLReaderE", !70, i64 0, !56, i64 4, !70, i64 32772, !56, i64 32776, !56, i64 49160, !71, i64 114696, !71, i64 114704, !72, i64 114712, !73, i64 114720, !74, i64 114728, !74, i64 114729, !73, i64 114736, !70, i64 114744, !56, i64 114748, !70, i64 163900, !70, i64 163904, !75, i64 163908, !74, i64 163912, !76, i64 163916, !70, i64 163920, !74, i64 163924, !74, i64 163925, !73, i64 163928, !73, i64 163936, !74, i64 163944, !74, i64 163945, !73, i64 163952, !77, i64 163960, !73, i64 163968, !74, i64 163976, !78, i64 163980, !73, i64 163984}
!70 = !{!"int", !56, i64 0}
!71 = !{!"long", !56, i64 0}
!72 = !{!"_ZTSN11xercesc_2_713XMLRecognizer9EncodingsE", !56, i64 0}
!73 = !{!"any pointer", !56, i64 0}
!74 = !{!"bool", !56, i64 0}
!75 = !{!"_ZTSN11xercesc_2_79XMLReader7RefFromE", !56, i64 0}
!76 = !{!"_ZTSN11xercesc_2_79XMLReader7SourcesE", !56, i64 0}
!77 = !{!"_ZTSN11xercesc_2_79XMLReader5TypesE", !56, i64 0}
!78 = !{!"_ZTSN11xercesc_2_79XMLReader10XMLVersionE", !56, i64 0}
!79 = !{!"function_entry_count", i64 3}
!80 = !{!69, !70, i64 0}
!81 = !{!69, !70, i64 32772}
!82 = !{!69, !71, i64 114696}
!83 = !{!69, !71, i64 114704}
!84 = !{!69, !73, i64 114720}
!85 = !{!69, !74, i64 114728}
!86 = !{!69, !74, i64 114729}
!87 = !{!"branch_weights", i32 3, i32 0}
!88 = distinct !{!88, !61, !62}
!89 = !{!90, !90, i64 0}
!90 = !{!"vtable pointer", !57, i64 0}
!91 = !{!69, !73, i64 114736}
!92 = !{!69, !70, i64 114744}
!93 = !{!69, !70, i64 163900}
!94 = !{!69, !70, i64 163904}
!95 = !{!69, !75, i64 163908}
!96 = !{!69, !74, i64 163912}
!97 = !{!69, !76, i64 163916}
!98 = !{!69, !70, i64 163920}
!99 = !{!69, !74, i64 163924}
!100 = !{!69, !74, i64 163925}
!101 = !{!"branch_weights", i32 0, i32 3}
!102 = !{!"branch_weights", i32 3, i32 22}
!103 = !{!"VP", i32 0, i64 3, i64 8345045103670217670, i64 3}
!104 = !{!"VP", i32 1, i64 3, i64 17, i64 2, i64 9, i64 1}
!105 = !{!69, !73, i64 163928}
!106 = !{!69, !73, i64 163936}
!107 = !{!69, !74, i64 163944}
!108 = !{!69, !74, i64 163945}
!109 = !{!69, !73, i64 163952}
!110 = !{!69, !77, i64 163960}
!111 = !{!69, !73, i64 163984}
!112 = !{i8 0, i8 2}
!113 = !{!69, !74, i64 163976}
!114 = !{!69, !73, i64 163968}
!115 = !{!"branch_weights", i32 1, i32 0}
!116 = distinct !{!116, !61, !62}
!117 = !{!"VP", i32 0, i64 3, i64 15097562501899216, i64 3}
!118 = !{!73, !73, i64 0}
!119 = !{!"VP", i32 0, i64 3, i64 611212045945782116, i64 3}
!120 = !{!69, !72, i64 114712}
!121 = !{!"branch_weights", i32 3, i32 12}
!122 = !{!"VP", i32 1, i64 3, i64 9, i64 3}
!123 = !{!"branch_weights", i32 3, i32 0, i32 0}
!124 = !{!"branch_weights", i32 0, i32 0, i32 0, i32 3, i32 0, i32 0, i32 0}
!125 = distinct !{!125, !61, !62}
!126 = !{!70, !70, i64 0}
!127 = !{}
!128 = !{!129, !73, i64 0}
!129 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !73, i64 0, !73, i64 8}
!130 = !{!129, !73, i64 8}
!131 = !{!"branch_weights", i32 2, i32 1}
!132 = !{!"branch_weights", i32 59, i32 0}
!133 = !{!"branch_weights", i32 3363, i32 0}
!134 = !{!"branch_weights", i32 2, i32 57}
!135 = distinct !{!135, !61, !62}
!136 = !{!"VP", i32 0, i64 3, i64 -7405368087501025645, i64 3}
!137 = !{!"VP", i32 0, i64 3, i64 -3619262104930847407, i64 3}
!138 = !{!"VP", i32 0, i64 3, i64 5173589852935072985, i64 3}
!139 = !{!"function_entry_count", i64 3549}
!140 = !{!"branch_weights", i32 3547, i32 2}
!141 = !{!"branch_weights", i32 0, i32 3547}
!142 = !{!"branch_weights", i32 3, i32 3544}
!143 = !{!"branch_weights", i32 3547, i32 0}
!144 = distinct !{!144, !61, !62}
!145 = !{!"branch_weights", i32 3330, i32 217}
!146 = !{!"branch_weights", i32 216, i32 1}
!147 = !{!"branch_weights", i32 216, i32 525}
!148 = distinct !{!148, !61, !62}
!149 = !{!"branch_weights", i32 1183, i32 2364}
!150 = !{!"branch_weights", i32 442, i32 741}
!151 = !{!"branch_weights", i32 741, i32 0}
!152 = !{!"VP", i32 0, i64 1183, i64 15097562501899216, i64 1183}
!153 = !{!"branch_weights", i32 3, i32 1180}
!154 = !{!"VP", i32 0, i64 3544, i64 2016751972698457045, i64 3544}
!155 = !{!"branch_weights", i32 3544, i32 3}
!156 = !{!"branch_weights", i32 1, i32 3546}
!157 = !{!"branch_weights", i32 0, i32 1}
!158 = distinct !{!158, !61, !62}
!159 = !{!"VP", i32 0, i64 0, i64 15097562501899216, i64 0}
!160 = !{!"VP", i32 0, i64 0, i64 2016751972698457045, i64 0}
!161 = !{!"function_entry_count", i64 612}
!162 = !{!"branch_weights", i32 0, i32 612}
!163 = distinct !{!163, !61, !62}
!164 = !{!"branch_weights", i32 612, i32 3535}
!165 = !{!"branch_weights", i32 0, i32 4147}
!166 = distinct !{!166, !61, !62}
!167 = !{!168, !70, i64 0}
!168 = !{!"_ZTSN11xercesc_2_79XMLBufferE", !70, i64 0, !70, i64 4, !70, i64 8, !74, i64 12, !73, i64 16, !73, i64 24, !73, i64 32}
!169 = !{!168, !70, i64 4}
!170 = !{!"branch_weights", i32 2718764, i32 4}
!171 = !{!168, !73, i64 32}
!172 = !{!"VP", i32 1, i64 612, i64 33, i64 148, i64 9, i64 98, i64 17, i64 92, i64 8, i64 72}
!173 = !{!"branch_weights", i32 612, i32 0}
!174 = distinct !{!174, !61, !62}
!175 = !{!"function_entry_count", i64 1025276}
!176 = !{!"branch_weights", i32 386, i32 1025279}
!177 = !{!"branch_weights", i32 386, i32 0}
!178 = !{!"branch_weights", i32 0, i32 1025279}
!179 = !{!"branch_weights", i32 1025279, i32 0}
!180 = !{!"branch_weights", i32 385, i32 1}
!181 = !{!"branch_weights", i32 0, i32 6666184}
!182 = !{!"branch_weights", i32 6665799, i32 385}
!183 = distinct !{!183, !61, !62}
!184 = !{!"branch_weights", i32 1025279, i32 5640905}
!185 = !{!"branch_weights", i32 57, i32 1025608}
!186 = !{!"VP", i32 1, i64 1025608, i64 33, i64 248524, i64 9, i64 164263, i64 17, i64 154676, i64 8, i64 120720}
!187 = !{!"branch_weights", i32 1025279, i32 386}
!188 = !{!"branch_weights", i32 3, i32 1025276}
!189 = distinct !{!189, !61, !62}
!190 = !{!"branch_weights", i32 1025276, i32 0}
!191 = !{!"function_entry_count", i64 4}
!192 = !{!"branch_weights", i32 127, i32 1}
!193 = !{!"branch_weights", i32 193, i32 127}
!194 = !{!"branch_weights", i32 0, i32 5}
!195 = !{!"branch_weights", i32 321, i32 127}
!196 = !{!"branch_weights", i32 0, i32 2}
!197 = distinct !{!197, !61, !62}
!198 = !{!"function_entry_count", i64 2054207}
!199 = !{!"branch_weights", i32 1034958, i32 0, i32 1019249, i32 0, i32 0}
!200 = !{!"branch_weights", i32 27, i32 0}
!201 = !{!"branch_weights", i32 24, i32 3}
!202 = !{!"branch_weights", i32 0, i32 24}
!203 = distinct !{!203, !61, !62}
!204 = !{!"function_entry_count", i64 192040}
!205 = !{!"branch_weights", i32 0, i32 192040}
!206 = !{!"branch_weights", i32 0, i32 0, i32 192040}
!207 = !{!"function_entry_count", i64 1900286}
!208 = !{!"branch_weights", i32 227, i32 1}
!209 = !{!"branch_weights", i32 190355, i32 1709931}
!210 = !{!"branch_weights", i32 0, i32 190355}
!211 = distinct !{!211, !61, !62}
!212 = !{!"branch_weights", i32 190353, i32 2}
!213 = !{!"branch_weights", i32 8362337, i32 227}
!214 = !{!"branch_weights", i32 57, i32 0}
!215 = distinct !{!215, !61, !62}
!216 = !{!74, !74, i64 0}
!217 = !{!"function_entry_count", i64 1025895}
!218 = !{!"branch_weights", i32 8, i32 1025887}
!219 = !{!"branch_weights", i32 8, i32 0}
!220 = !{!"branch_weights", i32 1025895, i32 0}
!221 = !{!"function_entry_count", i64 680336}
!222 = !{!"branch_weights", i32 0, i32 680336}
!223 = !{!"branch_weights", i32 680336, i32 3515905}
!224 = !{!"branch_weights", i32 253, i32 680336}
!225 = !{!"branch_weights", i32 0, i32 253}
!226 = distinct !{!226, !61, !62}
!227 = !{!"branch_weights", i32 680327, i32 9}
!228 = !{!"function_entry_count", i64 5}
!229 = !{!"branch_weights", i32 5, i32 20}
!230 = distinct !{!230, !61, !62}
!231 = !{!"function_entry_count", i64 243874}
!232 = !{!"branch_weights", i32 191815, i32 52059}
!233 = !{!"branch_weights", i32 0, i32 52059}
!234 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!235 = !{!236, !73, i64 40}
!236 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !237, i64 8, !73, i64 16, !70, i64 24, !73, i64 32, !73, i64 40}
!237 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !56, i64 0}
