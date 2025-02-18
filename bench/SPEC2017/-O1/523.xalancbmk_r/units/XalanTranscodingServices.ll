; ModuleID = 'XalanTranscodingServices.cpp'
source_filename = "XalanTranscodingServices.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xalanc_1_10::XalanVector" = type { ptr, i64, i64, ptr }
%"class.xalanc_1_10::XalanOutputTranscoder" = type { ptr, ptr }
%"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException" = type { %"class.xalanc_1_10::XSLException", i32, [4 x i8], %"class.xalanc_1_10::XalanDOMString" }
%"class.xalanc_1_10::XSLException" = type { ptr, %"class.xalanc_1_10::XalanDOMString", %"class.xalanc_1_10::XalanDOMString", i64, i64 }
%"class.xalanc_1_10::XalanDOMString" = type <{ %"class.xalanc_1_10::XalanVector", i32, [4 x i8] }>

$_ZNK11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException7getTypeEv = comdat any

$_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev = comdat any

$__clang_call_terminate = comdat any

@_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE = dso_local constant [6 x i16] [i16 85, i16 84, i16 70, i16 45, i16 56, i16 0], align 2
@_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE = dso_local constant [7 x i16] [i16 85, i16 84, i16 70, i16 45, i16 49, i16 54, i16 0], align 2
@_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16LEStringE = dso_local constant [9 x i16] [i16 85, i16 84, i16 70, i16 45, i16 49, i16 54, i16 76, i16 69, i16 0], align 16
@_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16BEStringE = dso_local constant [9 x i16] [i16 85, i16 84, i16 70, i16 45, i16 49, i16 54, i16 66, i16 69, i16 0], align 16
@_ZN11xalanc_1_1024XalanTranscodingServices13s_utf32StringE = dso_local constant [7 x i16] [i16 85, i16 84, i16 70, i16 45, i16 51, i16 50, i16 0], align 2
@_ZN11xalanc_1_1024XalanTranscodingServices13s_asciiStringE = dso_local constant [6 x i16] [i16 65, i16 83, i16 67, i16 73, i16 73, i16 0], align 2
@_ZN11xalanc_1_1024XalanTranscodingServices15s_usASCIIStringE = dso_local constant [9 x i16] [i16 85, i16 83, i16 45, i16 65, i16 83, i16 67, i16 73, i16 73, i16 0], align 16
@_ZN11xalanc_1_1024XalanTranscodingServices19s_windows1250StringE = dso_local constant [13 x i16] [i16 87, i16 73, i16 78, i16 68, i16 79, i16 87, i16 83, i16 45, i16 49, i16 50, i16 53, i16 48, i16 0], align 16
@_ZN11xalanc_1_1024XalanTranscodingServices16s_iso88591StringE = dso_local constant [11 x i16] [i16 73, i16 83, i16 79, i16 45, i16 56, i16 56, i16 53, i16 57, i16 45, i16 49, i16 0], align 16
@_ZN11xalanc_1_1024XalanTranscodingServices16s_shiftJISStringE = dso_local constant [10 x i16] [i16 83, i16 72, i16 73, i16 70, i16 84, i16 95, i16 74, i16 73, i16 83, i16 0], align 16
@_ZN11xalanc_1_1024XalanTranscodingServices20s_dummyByteOrderMarkE = dso_local constant [1 x i8] zeroinitializer, align 1
@_ZN11xalanc_1_1024XalanTranscodingServices19s_UTF8ByteOrderMarkE = dso_local local_unnamed_addr constant [4 x i8] c"\EF\BB\BF\00", align 1
@_ZN11xalanc_1_1024XalanTranscodingServices20s_UTF16ByteOrderMarkE = dso_local constant [2 x i16] [i16 -257, i16 0], align 2
@_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE = external local_unnamed_addr global ptr, align 8
@_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException6m_typeE = dso_local constant [31 x i16] [i16 85, i16 110, i16 112, i16 114, i16 101, i16 101, i16 110, i16 116, i16 97, i16 98, i16 108, i16 101, i16 67, i16 104, i16 97, i16 114, i16 97, i16 99, i16 116, i16 101, i16 114, i16 69, i16 120, i16 99, i16 101, i16 112, i16 116, i16 105, i16 111, i16 110, i16 0], align 16
@_ZTVN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD2Ev, ptr @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD0Ev, ptr @_ZNK11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException7getTypeEv] }, align 8
@_ZTVN11xalanc_1_1021XalanOutputTranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xalanc_1_1021XalanOutputTranscoderE, ptr @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev, ptr @_ZN11xalanc_1_1021XalanOutputTranscoderD0Ev, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual] }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE = dso_local constant [77 x i8] c"N11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE\00", align 1
@_ZTIN11xalanc_1_1012XSLExceptionE = external constant ptr
@_ZTIN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE, ptr @_ZTIN11xalanc_1_1012XSLExceptionE }, align 8
@_ZTSN11xalanc_1_1021XalanOutputTranscoderE = dso_local constant [39 x i8] c"N11xalanc_1_1021XalanOutputTranscoderE\00", align 1
@_ZTIN11xalanc_1_1021XalanOutputTranscoderE = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN11xalanc_1_1021XalanOutputTranscoderE }, align 8
@_ZN11xalanc_1_1014XalanDOMString7s_emptyE = external constant i16, align 2

@_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionC1EjRKNS_14XalanDOMStringERS2_ = dso_local unnamed_addr alias void (ptr, i32, ptr, ptr), ptr @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionC2EjRKNS_14XalanDOMStringERS2_
@_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD2Ev
@_ZN11xalanc_1_1021XalanOutputTranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %1, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %2, i32 noundef %3) local_unnamed_addr #1 align 2 !prof !44 {
  %5 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  store i32 0, ptr %5, align 4, !tbaa !45
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !49
  %8 = icmp eq i64 %7, 0
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8
  %11 = select i1 %8, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %10, !prof !53
  %12 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt(ptr noundef %11)
  br i1 %12, label %13, label %15, !prof !53

13:                                               ; preds = %4
  store i32 0, ptr %2, align 4, !tbaa !54
  %14 = tail call noundef ptr @_ZN11xalanc_1_1020XalanUTF16Transcoder6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %29

15:                                               ; preds = %4
  %16 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !56
  %17 = load i64, ptr %6, align 8, !tbaa !49
  %18 = icmp eq i64 %17, 0
  %19 = load ptr, ptr %9, align 8
  %20 = select i1 %18, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %19, !prof !53
  %21 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %16, ptr noundef %20, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %3, ptr noundef nonnull %0)
  %22 = load i32, ptr %5, align 4, !tbaa !45
  switch i32 %22, label %24 [
    i32 0, label %25
    i32 1, label %27
    i32 2, label %23
  ], !prof !57

23:                                               ; preds = %15
  br label %27

24:                                               ; preds = %15
  br label %27

25:                                               ; preds = %15
  store i32 0, ptr %2, align 4, !tbaa !54
  %26 = call noundef ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %21)
  br label %29

27:                                               ; preds = %15, %24, %23
  %28 = phi i32 [ 3, %24 ], [ 2, %23 ], [ %22, %15 ]
  store i32 %28, ptr %2, align 4, !tbaa !54
  br label %29

29:                                               ; preds = %27, %25, %13
  %30 = phi ptr [ %14, %13 ], [ %26, %25 ], [ null, %27 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret ptr %30
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16ERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6
  %8 = tail call noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt(ptr noundef %7)
  ret i1 %8
}

declare noundef ptr @_ZN11xalanc_1_1020XalanUTF16Transcoder6createERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices17destroyTranscoderEPNS_21XalanOutputTranscoderE(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !59 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3, !prof !60

3:                                                ; preds = %1
  %4 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputTranscoder", ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !61
  %6 = load ptr, ptr %0, align 8, !tbaa !63
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(16) %0) #12, !prof !65
  %8 = load ptr, ptr %5, align 8, !tbaa !63
  %9 = getelementptr inbounds ptr, ptr %8, i64 3
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull %0), !prof !66
  br label %11

11:                                               ; preds = %3, %1
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8EPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !58 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !67
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !llvm.loop !69

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %0, i32 noundef %12, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, i32 noundef 5)
  %14 = icmp eq i32 %13, 0
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !59 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6, !prof !72
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %7, %1 ], [ %12, %8 ]
  %10 = load i16, ptr %9, align 2, !tbaa !67
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  br i1 %11, label %13, label %8, !prof !73, !llvm.loop !69

13:                                               ; preds = %8
  %14 = ptrtoint ptr %9 to i64
  %15 = ptrtoint ptr %7 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %7, i32 noundef %18, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, i32 noundef 5)
  %20 = icmp eq i32 %19, 0
  ret i1 %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !44 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !67
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !prof !74, !llvm.loop !69

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %0, i32 noundef %12, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE, i32 noundef 6)
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %39, label %15, !prof !53

15:                                               ; preds = %7, %15
  %16 = phi ptr [ %19, %15 ], [ %0, %7 ]
  %17 = load i16, ptr %16, align 2, !tbaa !67
  %18 = icmp eq i16 %17, 0
  %19 = getelementptr inbounds i16, ptr %16, i64 1
  br i1 %18, label %20, label %15, !prof !74, !llvm.loop !69

20:                                               ; preds = %15
  %21 = ptrtoint ptr %16 to i64
  %22 = sub i64 %21, %9
  %23 = lshr exact i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %0, i32 noundef %24, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16LEStringE, i32 noundef 8)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27, !prof !53

27:                                               ; preds = %20, %27
  %28 = phi ptr [ %31, %27 ], [ %0, %20 ]
  %29 = load i16, ptr %28, align 2, !tbaa !67
  %30 = icmp eq i16 %29, 0
  %31 = getelementptr inbounds i16, ptr %28, i64 1
  br i1 %30, label %32, label %27, !prof !74, !llvm.loop !69

32:                                               ; preds = %27
  %33 = ptrtoint ptr %28 to i64
  %34 = sub i64 %33, %9
  %35 = lshr exact i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %0, i32 noundef %36, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16BEStringE, i32 noundef 8)
  %38 = icmp eq i32 %37, 0
  br label %39

39:                                               ; preds = %32, %20, %7
  %40 = phi i1 [ true, %20 ], [ true, %7 ], [ %38, %32 ]
  ret i1 %40
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32EPKt(ptr noundef %0) local_unnamed_addr #1 align 2 !prof !58 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi ptr [ %0, %1 ], [ %6, %2 ]
  %4 = load i16, ptr %3, align 2, !tbaa !67
  %5 = icmp eq i16 %4, 0
  %6 = getelementptr inbounds i16, ptr %3, i64 1
  br i1 %5, label %7, label %2, !llvm.loop !69

7:                                                ; preds = %2
  %8 = ptrtoint ptr %3 to i64
  %9 = ptrtoint ptr %0 to i64
  %10 = sub i64 %8, %9
  %11 = lshr exact i64 %10, 1
  %12 = trunc i64 %11 to i32
  %13 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %0, i32 noundef %12, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf32StringE, i32 noundef 6)
  %14 = icmp eq i32 %13, 0
  ret i1 %14
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF32ERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %7, %1 ], [ %12, %8 ]
  %10 = load i16, ptr %9, align 2, !tbaa !67
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  br i1 %11, label %13, label %8, !llvm.loop !69

13:                                               ; preds = %8
  %14 = ptrtoint ptr %9 to i64
  %15 = ptrtoint ptr %7 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %7, i32 noundef %18, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf32StringE, i32 noundef 6)
  %20 = icmp eq i32 %19, 0
  ret i1 %20
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !44 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6, !prof !53
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %7, %1 ], [ %12, %8 ]
  %10 = load i16, ptr %9, align 2, !tbaa !67
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  br i1 %11, label %13, label %8, !prof !74, !llvm.loop !69

13:                                               ; preds = %8
  %14 = ptrtoint ptr %9 to i64
  %15 = ptrtoint ptr %7 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %7, i32 noundef %18, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE, i32 noundef 6)
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @_ZN11xalanc_1_1024XalanTranscodingServices20s_UTF16ByteOrderMarkE, ptr @_ZN11xalanc_1_1024XalanTranscodingServices20s_dummyByteOrderMarkE, !prof !53
  ret ptr %21
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !75 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6, !prof !76
  br label %8

8:                                                ; preds = %8, %1
  %9 = phi ptr [ %7, %1 ], [ %12, %8 ]
  %10 = load i16, ptr %9, align 2, !tbaa !67
  %11 = icmp eq i16 %10, 0
  %12 = getelementptr inbounds i16, ptr %9, i64 1
  br i1 %11, label %13, label %8, !prof !77, !llvm.loop !69

13:                                               ; preds = %8
  %14 = ptrtoint ptr %9 to i64
  %15 = ptrtoint ptr %7 to i64
  %16 = sub i64 %14, %15
  %17 = lshr exact i64 %16, 1
  %18 = trunc i64 %17 to i32
  %19 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %7, i32 noundef %18, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices12s_utf8StringE, i32 noundef 5)
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %130, label %21, !prof !78

21:                                               ; preds = %13
  %22 = load i64, ptr %2, align 8, !tbaa !49
  %23 = icmp eq i64 %22, 0
  %24 = load ptr, ptr %5, align 8
  %25 = select i1 %23, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %24
  br label %26

26:                                               ; preds = %26, %21
  %27 = phi ptr [ %25, %21 ], [ %30, %26 ]
  %28 = load i16, ptr %27, align 2, !tbaa !67
  %29 = icmp eq i16 %28, 0
  %30 = getelementptr inbounds i16, ptr %27, i64 1
  br i1 %29, label %31, label %26, !llvm.loop !69

31:                                               ; preds = %26
  %32 = ptrtoint ptr %27 to i64
  %33 = ptrtoint ptr %25 to i64
  %34 = sub i64 %32, %33
  %35 = lshr exact i64 %34, 1
  %36 = trunc i64 %35 to i32
  %37 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %25, i32 noundef %36, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf16StringE, i32 noundef 6)
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %130, label %39

39:                                               ; preds = %31
  %40 = load i64, ptr %2, align 8, !tbaa !49
  %41 = icmp eq i64 %40, 0
  %42 = load ptr, ptr %5, align 8
  %43 = select i1 %41, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %42
  br label %44

44:                                               ; preds = %44, %39
  %45 = phi ptr [ %43, %39 ], [ %48, %44 ]
  %46 = load i16, ptr %45, align 2, !tbaa !67
  %47 = icmp eq i16 %46, 0
  %48 = getelementptr inbounds i16, ptr %45, i64 1
  br i1 %47, label %49, label %44, !llvm.loop !69

49:                                               ; preds = %44
  %50 = ptrtoint ptr %45 to i64
  %51 = ptrtoint ptr %43 to i64
  %52 = sub i64 %50, %51
  %53 = lshr exact i64 %52, 1
  %54 = trunc i64 %53 to i32
  %55 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %43, i32 noundef %54, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices16s_iso88591StringE, i32 noundef 10)
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %130, label %57

57:                                               ; preds = %49
  %58 = load i64, ptr %2, align 8, !tbaa !49
  %59 = icmp eq i64 %58, 0
  %60 = load ptr, ptr %5, align 8
  %61 = select i1 %59, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %60
  br label %62

62:                                               ; preds = %62, %57
  %63 = phi ptr [ %61, %57 ], [ %66, %62 ]
  %64 = load i16, ptr %63, align 2, !tbaa !67
  %65 = icmp eq i16 %64, 0
  %66 = getelementptr inbounds i16, ptr %63, i64 1
  br i1 %65, label %67, label %62, !llvm.loop !69

67:                                               ; preds = %62
  %68 = ptrtoint ptr %63 to i64
  %69 = ptrtoint ptr %61 to i64
  %70 = sub i64 %68, %69
  %71 = lshr exact i64 %70, 1
  %72 = trunc i64 %71 to i32
  %73 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %61, i32 noundef %72, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16LEStringE, i32 noundef 8)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %130, label %75

75:                                               ; preds = %67
  %76 = load i64, ptr %2, align 8, !tbaa !49
  %77 = icmp eq i64 %76, 0
  %78 = load ptr, ptr %5, align 8
  %79 = select i1 %77, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %78
  br label %80

80:                                               ; preds = %80, %75
  %81 = phi ptr [ %79, %75 ], [ %84, %80 ]
  %82 = load i16, ptr %81, align 2, !tbaa !67
  %83 = icmp eq i16 %82, 0
  %84 = getelementptr inbounds i16, ptr %81, i64 1
  br i1 %83, label %85, label %80, !llvm.loop !69

85:                                               ; preds = %80
  %86 = ptrtoint ptr %81 to i64
  %87 = ptrtoint ptr %79 to i64
  %88 = sub i64 %86, %87
  %89 = lshr exact i64 %88, 1
  %90 = trunc i64 %89 to i32
  %91 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %79, i32 noundef %90, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_utf16BEStringE, i32 noundef 8)
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %130, label %93

93:                                               ; preds = %85
  %94 = load i64, ptr %2, align 8, !tbaa !49
  %95 = icmp eq i64 %94, 0
  %96 = load ptr, ptr %5, align 8
  %97 = select i1 %95, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %96
  br label %98

98:                                               ; preds = %98, %93
  %99 = phi ptr [ %97, %93 ], [ %102, %98 ]
  %100 = load i16, ptr %99, align 2, !tbaa !67
  %101 = icmp eq i16 %100, 0
  %102 = getelementptr inbounds i16, ptr %99, i64 1
  br i1 %101, label %103, label %98, !llvm.loop !69

103:                                              ; preds = %98
  %104 = ptrtoint ptr %99 to i64
  %105 = ptrtoint ptr %97 to i64
  %106 = sub i64 %104, %105
  %107 = lshr exact i64 %106, 1
  %108 = trunc i64 %107 to i32
  %109 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %97, i32 noundef %108, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_utf32StringE, i32 noundef 6)
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %130, label %111

111:                                              ; preds = %103
  %112 = load i64, ptr %2, align 8, !tbaa !49
  %113 = icmp eq i64 %112, 0
  %114 = load ptr, ptr %5, align 8
  %115 = select i1 %113, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %114
  br label %116

116:                                              ; preds = %116, %111
  %117 = phi ptr [ %115, %111 ], [ %120, %116 ]
  %118 = load i16, ptr %117, align 2, !tbaa !67
  %119 = icmp eq i16 %118, 0
  %120 = getelementptr inbounds i16, ptr %117, i64 1
  br i1 %119, label %121, label %116, !llvm.loop !69

121:                                              ; preds = %116
  %122 = ptrtoint ptr %117 to i64
  %123 = ptrtoint ptr %115 to i64
  %124 = sub i64 %122, %123
  %125 = lshr exact i64 %124, 1
  %126 = trunc i64 %125 to i32
  %127 = tail call noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef %115, i32 noundef %126, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices16s_shiftJISStringE, i32 noundef 9)
  %128 = icmp eq i32 %127, 0
  %129 = select i1 %128, i16 -1, i16 127
  br label %130

130:                                              ; preds = %121, %67, %85, %103, %49, %13, %31
  %131 = phi i16 [ -1, %31 ], [ -1, %13 ], [ 255, %49 ], [ -1, %103 ], [ -1, %85 ], [ -1, %67 ], [ %129, %121 ]
  ret i16 %131
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i16 @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueEv() local_unnamed_addr #4 align 2 !prof !75 {
  ret i16 127
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN11xalanc_1_1024XalanTranscodingServices18getBytesEqualCharsERKNS_14XalanDOMStringE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(36) %0) local_unnamed_addr #1 align 2 !prof !58 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 1
  %3 = load i64, ptr %2, align 8, !tbaa !49
  %4 = icmp eq i64 %3, 0
  %5 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8
  %7 = select i1 %4, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %6
  %8 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %7)
  %9 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_asciiStringE)
  %10 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %7, i32 noundef %8, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices13s_asciiStringE, i32 noundef %9)
  br i1 %10, label %27, label %11

11:                                               ; preds = %1
  %12 = load i64, ptr %2, align 8, !tbaa !49
  %13 = icmp eq i64 %12, 0
  %14 = load ptr, ptr %5, align 8
  %15 = select i1 %13, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %14
  %16 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %15)
  %17 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_usASCIIStringE)
  %18 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %15, i32 noundef %16, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices15s_usASCIIStringE, i32 noundef %17)
  br i1 %18, label %27, label %19

19:                                               ; preds = %11
  %20 = load i64, ptr %2, align 8, !tbaa !49
  %21 = icmp eq i64 %20, 0
  %22 = load ptr, ptr %5, align 8
  %23 = select i1 %21, ptr @_ZN11xalanc_1_1014XalanDOMString7s_emptyE, ptr %22
  %24 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef %23)
  %25 = tail call noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices19s_windows1250StringE)
  %26 = tail call noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef %23, i32 noundef %24, ptr noundef nonnull @_ZN11xalanc_1_1024XalanTranscodingServices19s_windows1250StringE, i32 noundef %25)
  br label %27

27:                                               ; preds = %19, %11, %1
  %28 = phi i1 [ true, %11 ], [ true, %1 ], [ %26, %19 ]
  ret i1 %28
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionC2EjRKNS_14XalanDOMStringERS2_(ptr noundef nonnull align 8 dereferenceable(152) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(36) %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !58 {
  %5 = zext i32 %1 to i64
  %6 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef %5, ptr noundef nonnull align 8 dereferenceable(36) %3)
  %7 = tail call noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36) %3, i32 noundef 176, ptr noundef nonnull align 8 dereferenceable(36) %6, ptr noundef nonnull align 8 dereferenceable(36) %2)
  %8 = load ptr, ptr %3, align 8, !tbaa !79
  tail call void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104) %0, ptr noundef nonnull align 8 dereferenceable(36) %7, ptr noundef nonnull align 8 dereferenceable(8) %8)
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %9 = getelementptr inbounds %"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException", ptr %0, i64 0, i32 1
  store i32 %1, ptr %9, align 8, !tbaa !80
  %10 = load ptr, ptr %3, align 8, !tbaa !79
  %11 = getelementptr inbounds %"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException", ptr %0, i64 0, i32 3
  invoke void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36) %11, ptr noundef nonnull align 8 dereferenceable(36) %2, ptr noundef nonnull align 8 dereferenceable(8) %10, i32 noundef 0, i32 noundef -1)
          to label %12 unwind label %13

12:                                               ; preds = %4
  ret void

13:                                               ; preds = %4
  %14 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  resume { ptr, i32 } %14
}

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1018XalanMessageLoader10getMessageERNS_14XalanDOMStringENS_13XalanMessages5CodesERKS1_S6_(ptr noundef nonnull align 8 dereferenceable(36), i32 noundef, ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare noundef nonnull align 8 dereferenceable(36) ptr @_ZN11xalanc_1_1026UnsignedLongToHexDOMStringEmRNS_14XalanDOMStringE(i64 noundef, ptr noundef nonnull align 8 dereferenceable(36)) local_unnamed_addr #3

declare void @_ZN11xalanc_1_1012XSLExceptionC2ERKNS_14XalanDOMStringERN11xercesc_2_713MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(104), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare void @_ZN11xalanc_1_1014XalanDOMStringC1ERKS0_RN11xercesc_2_713MemoryManagerEjj(ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(36), ptr noundef nonnull align 8 dereferenceable(8), i32 noundef, i32 noundef) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104)) unnamed_addr #5

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 align 2 !prof !58 {
  store ptr getelementptr inbounds ({ [5 x ptr] }, ptr @_ZTVN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanTranscodingServices::UnrepresentableCharacterException", ptr %0, i64 0, i32 3
  tail call void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %2) #12
  tail call void @_ZN11xalanc_1_1012XSLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(104) %0) #12
  tail call void @_ZdlPv(ptr noundef %0) #13
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanOutputTranscoderC2ERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #7 align 2 !prof !44 {
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xalanc_1_1021XalanOutputTranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !63
  %3 = getelementptr inbounds %"class.xalanc_1_10::XalanOutputTranscoder", ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !56
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanOutputTranscoderD2Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #4 align 2 !prof !44 {
  ret void
}

; Function Attrs: cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable
define dso_local void @_ZN11xalanc_1_1021XalanOutputTranscoderD0Ev(ptr nocapture nonnull readnone align 8 %0) unnamed_addr #8 align 2 !prof !58 {
  tail call void @llvm.trap() #14
  unreachable
}

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #9

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices10initializeERN11xercesc_2_713MemoryManagerE(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8) %0) local_unnamed_addr #4 align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN11xalanc_1_1024XalanTranscodingServices9terminateEv() local_unnamed_addr #4 align 2 !prof !75 {
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(152) %0) unnamed_addr #6 comdat align 2 !prof !58 {
  ret ptr @_ZN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterException6m_typeE
}

declare void @__cxa_pure_virtual() unnamed_addr

declare noundef i32 @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef zeroext i1 @_ZN11xalanc_1_1014XalanDOMString6equalsEPKtjS2_j(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare noundef i32 @_ZN11xalanc_1_1014XalanDOMString6lengthEPKt(ptr noundef) local_unnamed_addr #3

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 !prof !85 {
  %2 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 2
  %3 = load i64, ptr %2, align 8, !tbaa !86
  %4 = icmp eq i64 %3, 0
  br i1 %4, label %12, label %5, !prof !87

5:                                                ; preds = %1
  %6 = getelementptr inbounds %"class.xalanc_1_10::XalanVector", ptr %0, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !88
  %8 = load ptr, ptr %0, align 8, !tbaa !79
  %9 = load ptr, ptr %8, align 8, !tbaa !63
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef %7)
          to label %12 unwind label %13, !prof !89

12:                                               ; preds = %5, %1
  ret void

13:                                               ; preds = %5
  %14 = landingpad { ptr, i32 }
          catch ptr null
  %15 = extractvalue { ptr, i32 } %14, 0
  tail call void @__clang_call_terminate(ptr %15) #14
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #11 comdat !prof !58 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

attributes #0 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold mustprogress noreturn nounwind memory(inaccessiblemem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #10 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !33}
!llvm.ident = !{!43}

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
!34 = distinct !{!35, !36, !37, !38, !39, !40, !41, !42}
!35 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt, i64 2}
!36 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE, i64 2}
!37 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices17makeNewTranscoderERN11xercesc_2_713MemoryManagerERKNS_14XalanDOMStringERNS0_5eCodeEj, ptr @_ZN11xalanc_1_1030XalanToXercesTranscoderWrapper6createERN11xercesc_2_713MemoryManagerERNS1_13XMLTranscoderE, i64 2}
!38 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices14encodingIsUTF8ERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j, i64 3}
!39 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15encodingIsUTF16EPKt, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j, i64 6}
!40 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices15getStreamPrologERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j, i64 2}
!41 = !{ptr @_ZN11xalanc_1_1024XalanTranscodingServices24getMaximumCharacterValueERKNS_14XalanDOMStringE, ptr @_ZN11xalanc_1_1022compareIgnoreCaseASCIIEPKtjS1_j, i64 1}
!42 = !{ptr @_ZN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEED2Ev, ptr @__clang_call_terminate, i64 40}
!43 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!44 = !{!"function_entry_count", i64 2}
!45 = !{!46, !46, i64 0}
!46 = !{!"_ZTSN11xercesc_2_715XMLTransService5CodesE", !47, i64 0}
!47 = !{!"omnipotent char", !48, i64 0}
!48 = !{!"Simple C++ TBAA"}
!49 = !{!50, !52, i64 8}
!50 = !{!"_ZTSN11xalanc_1_1011XalanVectorItNS_31MemoryManagedConstructionTraitsItEEEE", !51, i64 0, !52, i64 8, !52, i64 16, !51, i64 24}
!51 = !{!"any pointer", !47, i64 0}
!52 = !{!"long", !47, i64 0}
!53 = !{!"branch_weights", i32 0, i32 2}
!54 = !{!55, !55, i64 0}
!55 = !{!"_ZTSN11xalanc_1_1024XalanTranscodingServices5eCodeE", !47, i64 0}
!56 = !{!51, !51, i64 0}
!57 = !{!"branch_weights", i32 0, i32 2, i32 0, i32 0}
!58 = !{!"function_entry_count", i64 0}
!59 = !{!"function_entry_count", i64 3}
!60 = !{!"branch_weights", i32 1, i32 2}
!61 = !{!62, !51, i64 8}
!62 = !{!"_ZTSN11xalanc_1_1021XalanOutputTranscoderE", !51, i64 8}
!63 = !{!64, !64, i64 0}
!64 = !{!"vtable pointer", !48, i64 0}
!65 = !{!"VP", i32 0, i64 2, i64 -688962184800029256, i64 2}
!66 = !{!"VP", i32 0, i64 2, i64 -7405368087501025645, i64 2}
!67 = !{!68, !68, i64 0}
!68 = !{!"short", !47, i64 0}
!69 = distinct !{!69, !70, !71}
!70 = !{!"llvm.loop.mustprogress"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!"branch_weights", i32 0, i32 3}
!73 = !{!"branch_weights", i32 3, i32 15}
!74 = !{!"branch_weights", i32 2, i32 10}
!75 = !{!"function_entry_count", i64 1}
!76 = !{!"branch_weights", i32 0, i32 1}
!77 = !{!"branch_weights", i32 1, i32 5}
!78 = !{!"branch_weights", i32 1, i32 0}
!79 = !{!50, !51, i64 0}
!80 = !{!81, !84, i64 104}
!81 = !{!"_ZTSN11xalanc_1_1024XalanTranscodingServices33UnrepresentableCharacterExceptionE", !82, i64 0, !84, i64 104, !83, i64 112}
!82 = !{!"_ZTSN11xalanc_1_1012XSLExceptionE", !83, i64 8, !83, i64 48, !52, i64 88, !52, i64 96}
!83 = !{!"_ZTSN11xalanc_1_1014XalanDOMStringE", !50, i64 0, !84, i64 32}
!84 = !{!"int", !47, i64 0}
!85 = !{!"function_entry_count", i64 42470003}
!86 = !{!50, !52, i64 16}
!87 = !{!"branch_weights", i32 52000, i32 42418003}
!88 = !{!50, !51, i64 24}
!89 = !{!"VP", i32 0, i64 42418003, i64 -7405368087501025645, i64 42418003}
