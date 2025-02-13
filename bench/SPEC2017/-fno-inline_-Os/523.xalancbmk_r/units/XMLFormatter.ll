; ModuleID = 'XMLFormatter.cpp'
source_filename = "XMLFormatter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLFormatter" = type { i32, ptr, ptr, i32, ptr, [16388 x i8], ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_710XMLChar1_113isControlCharEtt = comdat any

$_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt = comdat any

$_ZN11xercesc_2_77XMemoryC2Ev = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString6equalsEPKtS2_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_79XMLString9stringLenEPKt = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_712ArrayJanitorItE5resetEPt = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@_ZN11xercesc_2_7L12gEscapeCharsE = internal unnamed_addr constant [4 x [6 x i16]] [[6 x i16] zeroinitializer, [6 x i16] [i16 38, i16 62, i16 34, i16 60, i16 39, i16 0], [6 x i16] [i16 38, i16 60, i16 34, i16 10, i16 0, i16 0], [6 x i16] [i16 38, i16 60, i16 62, i16 0, i16 0, i16 0]], align 16
@_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [17 x i8] c"XMLFormatter.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L7gAmpRefE = internal constant [6 x i16] [i16 38, i16 97, i16 109, i16 112, i16 59, i16 0], align 2
@_ZN11xercesc_2_7L8gAposRefE = internal constant [7 x i16] [i16 38, i16 97, i16 112, i16 111, i16 115, i16 59, i16 0], align 2
@_ZN11xercesc_2_7L9gQuoteRefE = internal constant [7 x i16] [i16 38, i16 113, i16 117, i16 111, i16 116, i16 59, i16 0], align 2
@_ZN11xercesc_2_7L6gGTRefE = internal constant [5 x i16] [i16 38, i16 103, i16 116, i16 59, i16 0], align 2
@_ZN11xercesc_2_7L6gLTRefE = internal constant [5 x i16] [i16 38, i16 108, i16 116, i16 59, i16 0], align 2
@_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E = external local_unnamed_addr global [65536 x i8], align 16
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_712XMLFormatterC1EPKcS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_712XMLFormatterC2EPKcS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE
@_ZN11xercesc_2_712XMLFormatterC1EPKtS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_712XMLFormatterC2EPKtS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE
@_ZN11xercesc_2_712XMLFormatterC1EPKcPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_712XMLFormatterC2EPKcPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE
@_ZN11xercesc_2_712XMLFormatterC1EPKtPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, ptr, i32, i32, ptr), ptr @_ZN11xercesc_2_712XMLFormatterC2EPKtPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE
@_ZN11xercesc_2_712XMLFormatterD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_712XMLFormatterD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712XMLFormatter12inEscapeListENS0_11EscapeFlagsEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16520) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 !prof !40 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [4 x [6 x i16]], ptr @_ZN11xercesc_2_7L12gEscapeCharsE, i64 0, i64 %4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %8 = load i16, ptr %7, align 2, !tbaa !41
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i16, ptr %7, i64 1
  %12 = icmp eq i16 %8, %2
  br i1 %12, label %22, label %6, !llvm.loop !45

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  %15 = load i8, ptr %14, align 4, !tbaa !47, !range !54, !noundef !55
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isControlCharEtt(i16 noundef zeroext %2, i16 noundef zeroext 0) #9
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = tail call noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt(i16 noundef zeroext %2, i16 noundef zeroext 0) #9
  br i1 %20, label %21, label %22

21:                                               ; preds = %19, %17
  br label %22

22:                                               ; preds = %10, %13, %19, %21
  %23 = phi i1 [ false, %21 ], [ true, %19 ], [ false, %13 ], [ true, %10 ]
  ret i1 %23
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_113isControlCharEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %10

4:                                                ; preds = %2
  %5 = zext i16 %0 to i64
  %6 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !56
  %8 = and i8 %7, 32
  %9 = icmp ne i8 %8, 0
  br label %10

10:                                               ; preds = %2, %4
  %11 = phi i1 [ %9, %4 ], [ false, %2 ]
  ret i1 %11
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_710XMLChar1_112isWhitespaceEtt(i16 noundef zeroext %0, i16 noundef zeroext %1) local_unnamed_addr #0 comdat align 2 !prof !40 {
  %3 = icmp eq i16 %1, 0
  br i1 %3, label %4, label %9

4:                                                ; preds = %2
  %5 = zext i16 %0 to i64
  %6 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %5
  %7 = load i8, ptr %6, align 1, !tbaa !56
  %8 = icmp slt i8 %7, 0
  br label %9

9:                                                ; preds = %2, %4
  %10 = phi i1 [ %8, %4 ], [ false, %2 ]
  ret i1 %10
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKcS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %8 = alloca i32, align 4
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i32 %4, ptr %0, align 8, !tbaa !57
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !58
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %3, ptr %11, align 8, !tbaa !59
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %5, ptr %12, align 8, !tbaa !60
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %13, align 8, !tbaa !61
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !62
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %15, align 8, !tbaa !63
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %16, align 8, !tbaa !64
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %17, align 8, !tbaa !65
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %18, align 8, !tbaa !66
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %19, align 8, !tbaa !67
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %20, align 8, !tbaa !68
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %21, align 8, !tbaa !69
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %22, align 8, !tbaa !70
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %23, align 8, !tbaa !71
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %24, align 4, !tbaa !47
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %6, ptr %25, align 8, !tbaa !72
  %26 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %6) #9
  store ptr %26, ptr %10, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !73
  %28 = load ptr, ptr %25, align 8, !tbaa !72
  %29 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26, ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 16384, ptr noundef %28) #9
  store ptr %29, ptr %13, align 8, !tbaa !61
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %25, align 8, !tbaa !72
  br i1 %30, label %32, label %42

32:                                               ; preds = %7
  %33 = load ptr, ptr %10, align 8, !tbaa !58
  %34 = load ptr, ptr %31, align 8, !tbaa !74
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33) #9
  %37 = call ptr @__cxa_allocate_exception(i64 48) #10
  %38 = load ptr, ptr %25, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %38) #9
          to label %39 unwind label %40

39:                                               ; preds = %32
  call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %37) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  resume { ptr, i32 } %41

42:                                               ; preds = %7
  %43 = call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %31) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #10
  %44 = load ptr, ptr %25, align 8, !tbaa !72
  call void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %43, ptr noundef %44) #9
  %45 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %43, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_1E) #9
  %46 = zext i1 %45 to i8
  store i8 %46, ptr %24, align 4, !tbaa !47
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) unnamed_addr #0 comdat align 2 !prof !76 {
  ret void
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 comdat align 2 !prof !77 {
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store ptr %1, ptr %0, align 8, !tbaa !78
  %4 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr %2, ptr %4, align 8, !tbaa !80
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 !prof !81 {
  %3 = icmp eq ptr %0, null
  %4 = icmp eq ptr %1, null
  %5 = or i1 %3, %4
  br i1 %5, label %10, label %6, !prof !82

6:                                                ; preds = %2
  %7 = load i16, ptr %0, align 2, !tbaa !41
  %8 = load i16, ptr %1, align 2, !tbaa !41
  %9 = icmp eq i16 %7, %8
  br i1 %9, label %19, label %30, !prof !83

10:                                               ; preds = %2
  br i1 %3, label %14, label %11, !prof !84

11:                                               ; preds = %10
  %12 = load i16, ptr %0, align 2, !tbaa !41
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %14, label %30, !prof !85

14:                                               ; preds = %11, %10
  br i1 %4, label %18, label %15, !prof !86

15:                                               ; preds = %14
  %16 = load i16, ptr %1, align 2, !tbaa !41
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %30, !prof !87

18:                                               ; preds = %15, %14
  br label %30

19:                                               ; preds = %6, %24
  %20 = phi i16 [ %27, %24 ], [ %7, %6 ]
  %21 = phi ptr [ %26, %24 ], [ %1, %6 ]
  %22 = phi ptr [ %25, %24 ], [ %0, %6 ]
  %23 = icmp eq i16 %20, 0
  br i1 %23, label %30, label %24, !prof !88

24:                                               ; preds = %19
  %25 = getelementptr inbounds i16, ptr %22, i64 1
  %26 = getelementptr inbounds i16, ptr %21, i64 1
  %27 = load i16, ptr %25, align 2, !tbaa !41
  %28 = load i16, ptr %26, align 2, !tbaa !41
  %29 = icmp eq i16 %27, %28
  br i1 %29, label %19, label %30, !prof !89, !llvm.loop !90

30:                                               ; preds = %19, %24, %6, %11, %15, %18
  %31 = phi i1 [ true, %18 ], [ false, %15 ], [ false, %11 ], [ false, %6 ], [ %23, %24 ], [ %23, %19 ]
  ret i1 %31
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !91 {
  invoke void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null) #9
          to label %2 unwind label %3

2:                                                ; preds = %1
  ret void

3:                                                ; preds = %1
  %4 = landingpad { ptr, i32 }
          catch ptr null
  %5 = extractvalue { ptr, i32 } %4, 0
  tail call void @__clang_call_terminate(ptr %5) #13
  unreachable
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKtS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %8 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i32 %4, ptr %0, align 8, !tbaa !57
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !58
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !59
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %5, ptr %11, align 8, !tbaa !60
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !61
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !62
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %14, align 8, !tbaa !63
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %15, align 8, !tbaa !64
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %16, align 8, !tbaa !65
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %17, align 8, !tbaa !66
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %18, align 8, !tbaa !67
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %19, align 8, !tbaa !68
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %20, align 8, !tbaa !69
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %21, align 8, !tbaa !70
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %22, align 8, !tbaa !71
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %23, align 4, !tbaa !47
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %6, ptr %24, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #10
  %25 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !73
  %26 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 16384, ptr noundef %6) #9
  store ptr %26, ptr %12, align 8, !tbaa !61
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = call ptr @__cxa_allocate_exception(i64 48) #10
  %30 = load ptr, ptr %24, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %30) #9
          to label %31 unwind label %32

31:                                               ; preds = %28
  call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  resume { ptr, i32 } %33

34:                                               ; preds = %7
  %35 = load ptr, ptr %24, align 8, !tbaa !72
  %36 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %35) #9
  store ptr %36, ptr %9, align 8, !tbaa !58
  %37 = call noundef zeroext i1 @_ZN11xercesc_2_79XMLString6equalsEPKtS2_(ptr noundef %2, ptr noundef nonnull @_ZN11xercesc_2_76XMLUni12fgVersion1_1E) #9
  %38 = zext i1 %37 to i8
  store i8 %38, ptr %23, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !74
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !92 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %13, label %4, !prof !93

4:                                                ; preds = %2
  %5 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %0) #9
  %6 = add i32 %5, 1
  %7 = zext i32 %6 to i64
  %8 = shl nuw nsw i64 %7, 1
  %9 = load ptr, ptr %1, align 8, !tbaa !74
  %10 = getelementptr inbounds ptr, ptr %9, i64 2
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %8) #9
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 2 %12, ptr nonnull align 2 %0, i64 %8, i1 false)
  br label %13

13:                                               ; preds = %4, %2
  %14 = phi ptr [ %12, %4 ], [ null, %2 ]
  ret ptr %14
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKcPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %7 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i32 %3, ptr %0, align 8, !tbaa !57
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 8, !tbaa !63
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !66
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %17, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %18, align 8, !tbaa !68
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %19, align 8, !tbaa !69
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %20, align 8, !tbaa !70
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %21, align 8, !tbaa !71
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %22, align 4, !tbaa !47
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %5, ptr %23, align 8, !tbaa !72
  %24 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5) #9
  store ptr %24, ptr %8, align 8, !tbaa !58
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %25 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !73
  %26 = load ptr, ptr %23, align 8, !tbaa !72
  %27 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %24, ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 16384, ptr noundef %26) #9
  store ptr %27, ptr %11, align 8, !tbaa !61
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %6
  %30 = load ptr, ptr %23, align 8, !tbaa !72
  %31 = load ptr, ptr %8, align 8, !tbaa !58
  %32 = load ptr, ptr %30, align 8, !tbaa !74
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31) #9
  %35 = call ptr @__cxa_allocate_exception(i64 48) #10
  %36 = load ptr, ptr %23, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 302, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %36) #9
          to label %37 unwind label %38

37:                                               ; preds = %29
  call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

38:                                               ; preds = %29
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  resume { ptr, i32 } %39

40:                                               ; preds = %6
  store i8 0, ptr %22, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKtPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %7 = alloca i32, align 4
  tail call void @_ZN11xercesc_2_77XMemoryC2Ev(ptr noundef nonnull align 1 dereferenceable(1) %0) #9
  store i32 %3, ptr %0, align 8, !tbaa !57
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !58
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !59
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !60
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %11, align 8, !tbaa !61
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !62
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 8, !tbaa !63
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !64
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !65
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !66
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %17, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %18, align 8, !tbaa !68
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %19, align 8, !tbaa !69
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %20, align 8, !tbaa !70
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %21, align 8, !tbaa !71
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %22, align 4, !tbaa !47
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %5, ptr %23, align 8, !tbaa !72
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #10
  %24 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !73
  %25 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 16384, ptr noundef %5) #9
  store ptr %25, ptr %11, align 8, !tbaa !61
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = call ptr @__cxa_allocate_exception(i64 48) #10
  %29 = load ptr, ptr %23, align 8, !tbaa !72
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 355, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %29) #9
          to label %30 unwind label %31

30:                                               ; preds = %27
  call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #11
  unreachable

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %28) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  resume { ptr, i32 } %32

33:                                               ; preds = %6
  %34 = load ptr, ptr %23, align 8, !tbaa !72
  %35 = call noundef ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %34) #9
  store ptr %35, ptr %8, align 8, !tbaa !58
  store i8 0, ptr %22, align 4, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16520) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !62
  %6 = load ptr, ptr %3, align 8, !tbaa !74
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5) #9
          to label %9 unwind label %53

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !72
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !64
  %13 = load ptr, ptr %10, align 8, !tbaa !74
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12) #9
          to label %16 unwind label %53

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !72
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !66
  %20 = load ptr, ptr %17, align 8, !tbaa !74
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19) #9
          to label %23 unwind label %53

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !72
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !68
  %27 = load ptr, ptr %24, align 8, !tbaa !74
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %26) #9
          to label %30 unwind label %53

30:                                               ; preds = %23
  %31 = load ptr, ptr %2, align 8, !tbaa !72
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !70
  %34 = load ptr, ptr %31, align 8, !tbaa !74
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33) #9
          to label %37 unwind label %53

37:                                               ; preds = %30
  %38 = load ptr, ptr %2, align 8, !tbaa !72
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !58
  %41 = load ptr, ptr %38, align 8, !tbaa !74
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40) #9
          to label %44 unwind label %53

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !74
  %50 = getelementptr inbounds ptr, ptr %49, i64 1
  %51 = load ptr, ptr %50, align 8
  tail call void %51(ptr noundef nonnull align 8 dereferenceable(32) %46) #12
  br label %52

52:                                               ; preds = %48, %44
  ret void

53:                                               ; preds = %37, %30, %23, %16, %9, %1
  %54 = landingpad { ptr, i32 }
          catch ptr null
  %55 = extractvalue { ptr, i32 } %54, 0
  tail call void @__clang_call_terminate(ptr %55) #13
  unreachable
}

; Function Attrs: noinline noreturn nounwind optsize uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #10
  tail call void @_ZSt9terminatev() #13
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 !prof !40 {
  %6 = icmp eq i32 %3, 999
  %7 = load i32, ptr %0, align 8
  %8 = select i1 %6, i32 %7, i32 %3
  %9 = icmp eq i32 %4, 999
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  %11 = load i32, ptr %10, align 8
  %12 = select i1 %9, i32 %11, i32 %4
  %13 = icmp eq i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  tail call void @_ZN11xercesc_2_712XMLFormatter13specialFormatEPKtjNS0_11EscapeFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %8) #9
  br label %98

15:                                               ; preds = %5
  %16 = zext i32 %2 to i64
  %17 = getelementptr inbounds i16, ptr %1, i64 %16
  %18 = icmp eq i32 %8, 0
  %19 = icmp eq i32 %2, 0
  br i1 %18, label %33, label %20

20:                                               ; preds = %15
  br i1 %19, label %98, label %21

21:                                               ; preds = %20
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  %26 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  %29 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  %30 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  br label %36

33:                                               ; preds = %15
  br i1 %19, label %98, label %34

34:                                               ; preds = %33
  %35 = tail call noundef i32 @_ZN11xercesc_2_712XMLFormatter20handleUnEscapedCharsEPKtjNS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %12) #9
  br label %98

36:                                               ; preds = %21, %94
  %37 = phi ptr [ %1, %21 ], [ %96, %94 ]
  br label %38

38:                                               ; preds = %36, %42
  %39 = phi ptr [ %37, %36 ], [ %43, %42 ]
  %40 = load i16, ptr %39, align 2, !tbaa !41
  %41 = tail call noundef zeroext i1 @_ZN11xercesc_2_712XMLFormatter12inEscapeListENS0_11EscapeFlagsEt(ptr noundef nonnull align 8 dereferenceable(16520) %0, i32 noundef %8, i16 noundef zeroext %40) #9
  br i1 %41, label %45, label %42

42:                                               ; preds = %38
  %43 = getelementptr inbounds i16, ptr %39, i64 1
  %44 = icmp ult ptr %43, %17
  br i1 %44, label %38, label %47, !llvm.loop !94

45:                                               ; preds = %38
  %46 = icmp ugt ptr %39, %37
  br i1 %46, label %47, label %56

47:                                               ; preds = %42, %45
  %48 = phi ptr [ %39, %45 ], [ %43, %42 ]
  %49 = ptrtoint ptr %48 to i64
  %50 = ptrtoint ptr %37 to i64
  %51 = sub i64 %49, %50
  %52 = lshr exact i64 %51, 1
  %53 = trunc i64 %52 to i32
  %54 = tail call noundef i32 @_ZN11xercesc_2_712XMLFormatter20handleUnEscapedCharsEPKtjNS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %37, i32 noundef %53, i32 noundef %12) #9
  %55 = and i64 %52, 4294967295
  br label %94

56:                                               ; preds = %45
  %57 = load i16, ptr %37, align 2, !tbaa !41
  switch i16 %57, label %93 [
    i16 38, label %58
    i16 39, label %65
    i16 34, label %72
    i16 62, label %79
    i16 60, label %86
  ]

58:                                               ; preds = %56
  %59 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %31, ptr noundef nonnull align 8 dereferenceable(8) %32, ptr noundef nonnull @_ZN11xercesc_2_7L7gAmpRefE) #9
  %60 = load ptr, ptr %24, align 8, !tbaa !59
  %61 = load i32, ptr %31, align 8, !tbaa !65
  %62 = load ptr, ptr %60, align 8, !tbaa !74
  %63 = getelementptr inbounds ptr, ptr %62, i64 2
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(8) %60, ptr noundef %59, i32 noundef %61, ptr noundef nonnull %0) #9
  br label %94

65:                                               ; preds = %56
  %66 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %29, ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef nonnull @_ZN11xercesc_2_7L8gAposRefE) #9
  %67 = load ptr, ptr %24, align 8, !tbaa !59
  %68 = load i32, ptr %29, align 8, !tbaa !63
  %69 = load ptr, ptr %67, align 8, !tbaa !74
  %70 = getelementptr inbounds ptr, ptr %69, i64 2
  %71 = load ptr, ptr %70, align 8
  tail call void %71(ptr noundef nonnull align 8 dereferenceable(8) %67, ptr noundef %66, i32 noundef %68, ptr noundef nonnull %0) #9
  br label %94

72:                                               ; preds = %56
  %73 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %27, ptr noundef nonnull align 8 dereferenceable(8) %28, ptr noundef nonnull @_ZN11xercesc_2_7L9gQuoteRefE) #9
  %74 = load ptr, ptr %24, align 8, !tbaa !59
  %75 = load i32, ptr %27, align 8, !tbaa !71
  %76 = load ptr, ptr %74, align 8, !tbaa !74
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %73, i32 noundef %75, ptr noundef nonnull %0) #9
  br label %94

79:                                               ; preds = %56
  %80 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %25, ptr noundef nonnull align 8 dereferenceable(8) %26, ptr noundef nonnull @_ZN11xercesc_2_7L6gGTRefE) #9
  %81 = load ptr, ptr %24, align 8, !tbaa !59
  %82 = load i32, ptr %25, align 8, !tbaa !67
  %83 = load ptr, ptr %81, align 8, !tbaa !74
  %84 = getelementptr inbounds ptr, ptr %83, i64 2
  %85 = load ptr, ptr %84, align 8
  tail call void %85(ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef %80, i32 noundef %82, ptr noundef nonnull %0) #9
  br label %94

86:                                               ; preds = %56
  %87 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %22, ptr noundef nonnull align 8 dereferenceable(8) %23, ptr noundef nonnull @_ZN11xercesc_2_7L6gLTRefE) #9
  %88 = load ptr, ptr %24, align 8, !tbaa !59
  %89 = load i32, ptr %22, align 8, !tbaa !69
  %90 = load ptr, ptr %88, align 8, !tbaa !74
  %91 = getelementptr inbounds ptr, ptr %90, i64 2
  %92 = load ptr, ptr %91, align 8
  tail call void %92(ptr noundef nonnull align 8 dereferenceable(8) %88, ptr noundef %87, i32 noundef %89, ptr noundef nonnull %0) #9
  br label %94

93:                                               ; preds = %56
  tail call void @_ZN11xercesc_2_712XMLFormatter12writeCharRefERKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 2 dereferenceable(2) %37) #9
  br label %94

94:                                               ; preds = %58, %65, %72, %79, %86, %93, %47
  %95 = phi i64 [ %55, %47 ], [ 1, %93 ], [ 1, %86 ], [ 1, %79 ], [ 1, %72 ], [ 1, %65 ], [ 1, %58 ]
  %96 = getelementptr inbounds i16, ptr %37, i64 %95
  %97 = icmp ult ptr %96, %17
  br i1 %97, label %36, label %98, !llvm.loop !95

98:                                               ; preds = %94, %20, %34, %33, %14
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter13specialFormatEPKtjNS0_11EscapeFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !40 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i16, ptr %1, i64 %5
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %63, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  br label %10

10:                                               ; preds = %8, %60
  %11 = phi ptr [ %1, %8 ], [ %61, %60 ]
  br label %12

12:                                               ; preds = %10, %21
  %13 = phi ptr [ %11, %10 ], [ %22, %21 ]
  %14 = load ptr, ptr %9, align 8, !tbaa !61
  %15 = load i16, ptr %13, align 2, !tbaa !41
  %16 = zext i16 %15 to i32
  %17 = load ptr, ptr %14, align 8, !tbaa !74
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef zeroext i1 %19(ptr noundef nonnull align 8 dereferenceable(32) %14, i32 noundef %16) #9
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = getelementptr inbounds i16, ptr %13, i64 1
  %23 = icmp ult ptr %22, %6
  br i1 %23, label %12, label %24, !llvm.loop !96

24:                                               ; preds = %12, %21
  %25 = phi ptr [ %13, %12 ], [ %22, %21 ]
  %26 = icmp ugt ptr %25, %11
  br i1 %26, label %27, label %33

27:                                               ; preds = %24
  %28 = ptrtoint ptr %25 to i64
  %29 = ptrtoint ptr %11 to i64
  %30 = sub i64 %28, %29
  %31 = lshr exact i64 %30, 1
  %32 = trunc i64 %31 to i32
  tail call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %11, i32 noundef %32, i32 noundef %3, i32 noundef 0) #9
  br label %60

33:                                               ; preds = %24, %50
  %34 = phi ptr [ %52, %50 ], [ %11, %24 ]
  %35 = icmp ult ptr %34, %6
  br i1 %35, label %36, label %60

36:                                               ; preds = %33
  %37 = load i16, ptr %34, align 2, !tbaa !41
  %38 = zext i16 %37 to i32
  %39 = and i32 %38, 64512
  %40 = icmp eq i32 %39, 55296
  br i1 %40, label %41, label %49

41:                                               ; preds = %36
  %42 = getelementptr inbounds i16, ptr %34, i64 1
  %43 = shl nuw nsw i32 %38, 10
  %44 = load i16, ptr %42, align 2, !tbaa !41
  %45 = zext i16 %44 to i32
  %46 = add nsw i32 %43, -56613888
  %47 = add nuw nsw i32 %46, %45
  %48 = zext nneg i32 %47 to i64
  tail call void @_ZN11xercesc_2_712XMLFormatter12writeCharRefEm(ptr noundef nonnull align 8 dereferenceable(16520) %0, i64 noundef %48) #9
  br label %50

49:                                               ; preds = %36
  tail call void @_ZN11xercesc_2_712XMLFormatter12writeCharRefERKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 2 dereferenceable(2) %34) #9
  br label %50

50:                                               ; preds = %49, %41
  %51 = phi ptr [ %42, %41 ], [ %34, %49 ]
  %52 = getelementptr inbounds i16, ptr %51, i64 1
  %53 = load ptr, ptr %9, align 8, !tbaa !61
  %54 = load i16, ptr %52, align 2, !tbaa !41
  %55 = zext i16 %54 to i32
  %56 = load ptr, ptr %53, align 8, !tbaa !74
  %57 = getelementptr inbounds ptr, ptr %56, i64 4
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef zeroext i1 %58(ptr noundef nonnull align 8 dereferenceable(32) %53, i32 noundef %55) #9
  br i1 %59, label %60, label %33, !llvm.loop !97

60:                                               ; preds = %33, %50, %27
  %61 = phi ptr [ %25, %27 ], [ %34, %33 ], [ %52, %50 ]
  %62 = icmp ult ptr %61, %6
  br i1 %62, label %10, label %63, !llvm.loop !98

63:                                               ; preds = %60, %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XMLFormatter20handleUnEscapedCharsEPKtjNS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !40 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, 2
  %7 = zext i1 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %45, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  br label %13

13:                                               ; preds = %9, %39
  %14 = phi ptr [ %1, %9 ], [ %42, %39 ]
  %15 = phi i32 [ %2, %9 ], [ %43, %39 ]
  %16 = call i32 @llvm.umin.i32(i32 %15, i32 16384)
  %17 = load ptr, ptr %10, align 8, !tbaa !61
  %18 = load ptr, ptr %17, align 8, !tbaa !74
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %11, i32 noundef 16384, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %7) #9
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %13
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %24
  store i8 0, ptr %25, align 1, !tbaa !56
  %26 = add i32 %21, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !56
  %29 = add i32 %21, 2
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %30
  store i8 0, ptr %31, align 1, !tbaa !56
  %32 = add i32 %21, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !56
  %35 = load ptr, ptr %12, align 8, !tbaa !59
  %36 = load ptr, ptr %35, align 8, !tbaa !74
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %11, i32 noundef %21, ptr noundef nonnull %0) #9
  br label %39

39:                                               ; preds = %23, %13
  %40 = load i32, ptr %5, align 4, !tbaa !99
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %14, i64 %41
  %43 = sub i32 %15, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %13, !llvm.loop !100

45:                                               ; preds = %39, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1, ptr nocapture noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !40 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %2, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %37

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #10
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !61
  %11 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %3) #9
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %10, align 8, !tbaa !74
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef i32 %15(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %3, i32 noundef %11, ptr noundef nonnull %12, i32 noundef 16384, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 0) #9
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %17
  store i8 0, ptr %18, align 1, !tbaa !56
  %19 = add i32 %16, 1
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %20
  store i8 0, ptr %21, align 1, !tbaa !56
  %22 = add i32 %16, 2
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %23
  store i8 0, ptr %24, align 1, !tbaa !56
  %25 = add i32 %16, 3
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %26
  store i8 0, ptr %27, align 1, !tbaa !56
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %29 = load ptr, ptr %28, align 8, !tbaa !72
  %30 = add i32 %16, 4
  %31 = zext i32 %30 to i64
  %32 = load ptr, ptr %29, align 8, !tbaa !74
  %33 = getelementptr inbounds ptr, ptr %32, i64 2
  %34 = load ptr, ptr %33, align 8
  %35 = call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(8) %29, i64 noundef %31) #9
  store ptr %35, ptr %2, align 8, !tbaa !73
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %35, ptr nonnull align 8 %12, i64 %31, i1 false)
  store i32 %16, ptr %1, align 4, !tbaa !99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #10
  %36 = load ptr, ptr %2, align 8, !tbaa !73
  br label %37

37:                                               ; preds = %8, %4
  %38 = phi ptr [ %36, %8 ], [ %6, %4 ]
  ret ptr %38
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter12writeCharRefERKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %1) local_unnamed_addr #2 align 2 !prof !40 {
  %3 = alloca [32 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  store i16 38, ptr %3, align 16, !tbaa !41
  %4 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 1
  store i16 35, ptr %4, align 2, !tbaa !41
  %5 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 2
  store i16 120, ptr %5, align 4, !tbaa !41
  %6 = load i16, ptr %1, align 2, !tbaa !41
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !72
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %7, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %10) #9
  %11 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %3) #9
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %12
  store i16 59, ptr %13, align 2, !tbaa !41
  %14 = add i32 %11, 1
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %15
  store i16 0, ptr %16, align 2, !tbaa !41
  call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull %3, i32 noundef %14, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(16520) ptr @_ZN11xercesc_2_712XMLFormatterlsEPKt(ptr noundef nonnull returned align 8 dereferenceable(16520) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !40 {
  %3 = tail call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %1) #9
  tail call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %3, i32 noundef 999, i32 noundef 999) #9
  ret ptr %0
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef %0) local_unnamed_addr #0 comdat align 2 !prof !101 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %17, label %3, !prof !102

3:                                                ; preds = %1
  %4 = load i16, ptr %0, align 2, !tbaa !41
  %5 = icmp eq i16 %4, 0
  br i1 %5, label %17, label %6, !prof !103

6:                                                ; preds = %3, %6
  %7 = phi ptr [ %8, %6 ], [ %0, %3 ]
  %8 = getelementptr inbounds i16, ptr %7, i64 1
  %9 = load i16, ptr %8, align 2, !tbaa !41
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %11, label %6, !prof !104, !llvm.loop !105

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

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef nonnull align 8 dereferenceable(16520) ptr @_ZN11xercesc_2_712XMLFormatterlsEt(ptr noundef nonnull returned align 8 dereferenceable(16520) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !40 {
  %3 = alloca [2 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #10
  store i16 %1, ptr %3, align 2, !tbaa !41
  %4 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  store i16 0, ptr %4, align 2, !tbaa !41
  call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 999, i32 noundef 999) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #10
  ret ptr %0
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter8writeBOMEPKhj(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !40 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !59
  %6 = load ptr, ptr %5, align 8, !tbaa !74
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter12writeCharRefEm(ptr noundef nonnull align 8 dereferenceable(16520) %0, i64 noundef %1) local_unnamed_addr #2 align 2 !prof !40 {
  %3 = alloca [32 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #10
  store i16 38, ptr %3, align 16, !tbaa !41
  %4 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 1
  store i16 35, ptr %4, align 2, !tbaa !41
  %5 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 2
  store i16 120, ptr %5, align 4, !tbaa !41
  %6 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !72
  call void @_ZN11xercesc_2_79XMLString9binToTextEmPtjjPNS_13MemoryManagerE(i64 noundef %1, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %8) #9
  %9 = call noundef i32 @_ZN11xercesc_2_79XMLString9stringLenEPKt(ptr noundef nonnull %3) #9
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %10
  store i16 59, ptr %11, align 2, !tbaa !41
  %12 = add i32 %9, 1
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %13
  store i16 0, ptr %14, align 2, !tbaa !41
  call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull %3, i32 noundef %12, i32 noundef 0, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #10
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEmPtjjPNS_13MemoryManagerE(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #6

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !40 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !106
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #2 comdat align 2 !prof !40 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !74
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) local_unnamed_addr #2 comdat align 2 !prof !91 {
  %3 = load ptr, ptr %0, align 8, !tbaa !78
  %4 = icmp eq ptr %3, null
  br i1 %4, label %14, label %5, !prof !109

5:                                                ; preds = %2
  %6 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !80
  %8 = icmp eq ptr %7, null
  br i1 %8, label %13, label %9, !prof !110

9:                                                ; preds = %5
  %10 = load ptr, ptr %7, align 8, !tbaa !74
  %11 = getelementptr inbounds ptr, ptr %10, i64 3
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull %3) #9
  br label %14

13:                                               ; preds = %5
  tail call void @_ZdaPv(ptr noundef nonnull %3) #14
  br label %14

14:                                               ; preds = %9, %13, %2
  store ptr %1, ptr %0, align 8, !tbaa !78
  %15 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !80
  ret void
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind optsize uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { nounwind optsize }
attributes #13 = { noreturn nounwind }
attributes #14 = { builtin nounwind optsize }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33}
!llvm.ident = !{!39}

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
!34 = distinct !{!35, !36, !37, !38}
!35 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItEC2EPtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_77XMemoryC2Ev, i64 52059}
!36 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItED2Ev, ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, i64 243874}
!37 = !{ptr @_ZN11xercesc_2_79XMLString9replicateEPKtPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_79XMLString9stringLenEPKt, i64 400185}
!38 = !{ptr @_ZN11xercesc_2_712ArrayJanitorItE5resetEPt, ptr @_ZdaPv, i64 1}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 0}
!41 = !{!42, !42, i64 0}
!42 = !{!"short", !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = distinct !{!45, !46}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!48, !53, i64 16508}
!48 = !{!"_ZTSN11xercesc_2_712XMLFormatterE", !49, i64 0, !50, i64 8, !50, i64 16, !51, i64 24, !50, i64 32, !43, i64 40, !50, i64 16432, !52, i64 16440, !50, i64 16448, !52, i64 16456, !50, i64 16464, !52, i64 16472, !50, i64 16480, !52, i64 16488, !50, i64 16496, !52, i64 16504, !53, i64 16508, !50, i64 16512}
!49 = !{!"_ZTSN11xercesc_2_712XMLFormatter11EscapeFlagsE", !43, i64 0}
!50 = !{!"any pointer", !43, i64 0}
!51 = !{!"_ZTSN11xercesc_2_712XMLFormatter10UnRepFlagsE", !43, i64 0}
!52 = !{!"int", !43, i64 0}
!53 = !{!"bool", !43, i64 0}
!54 = !{i8 0, i8 2}
!55 = !{}
!56 = !{!43, !43, i64 0}
!57 = !{!48, !49, i64 0}
!58 = !{!48, !50, i64 8}
!59 = !{!48, !50, i64 16}
!60 = !{!48, !51, i64 24}
!61 = !{!48, !50, i64 32}
!62 = !{!48, !50, i64 16432}
!63 = !{!48, !52, i64 16440}
!64 = !{!48, !50, i64 16448}
!65 = !{!48, !52, i64 16456}
!66 = !{!48, !50, i64 16464}
!67 = !{!48, !52, i64 16472}
!68 = !{!48, !50, i64 16480}
!69 = !{!48, !52, i64 16488}
!70 = !{!48, !50, i64 16496}
!71 = !{!48, !52, i64 16504}
!72 = !{!48, !50, i64 16512}
!73 = !{!50, !50, i64 0}
!74 = !{!75, !75, i64 0}
!75 = !{!"vtable pointer", !44, i64 0}
!76 = !{!"function_entry_count", i64 5836268}
!77 = !{!"function_entry_count", i64 52059}
!78 = !{!79, !50, i64 0}
!79 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !50, i64 0, !50, i64 8}
!80 = !{!79, !50, i64 8}
!81 = !{!"function_entry_count", i64 1231717351}
!82 = !{!"branch_weights", i32 621, i32 -1469098093}
!83 = !{!"branch_weights", i32 408901017, i32 1}
!84 = !{!"branch_weights", i32 267, i32 4}
!85 = !{!"branch_weights", i32 1, i32 4}
!86 = !{!"branch_weights", i32 156, i32 112}
!87 = !{!"branch_weights", i32 1, i32 112}
!88 = !{!"branch_weights", i32 1671344, i32 -1427472158}
!89 = !{!"branch_weights", i32 -1834701832, i32 408901017}
!90 = distinct !{!90, !46}
!91 = !{!"function_entry_count", i64 243874}
!92 = !{!"function_entry_count", i64 558789}
!93 = !{!"branch_weights", i32 158605, i32 400186}
!94 = distinct !{!94, !46}
!95 = distinct !{!95, !46}
!96 = distinct !{!96, !46}
!97 = distinct !{!97, !46}
!98 = distinct !{!98, !46}
!99 = !{!52, !52, i64 0}
!100 = distinct !{!100, !46}
!101 = !{!"function_entry_count", i64 2453164456}
!102 = !{!"branch_weights", i32 1, i32 -1841802839}
!103 = !{!"branch_weights", i32 1150041, i32 -1842952879}
!104 = !{!"branch_weights", i32 408669070, i32 -279908794}
!105 = distinct !{!105, !46}
!106 = !{!107, !50, i64 40}
!107 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !108, i64 8, !50, i64 16, !52, i64 24, !50, i64 32, !50, i64 40}
!108 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !43, i64 0}
!109 = !{!"branch_weights", i32 191816, i32 52060}
!110 = !{!"branch_weights", i32 1, i32 52060}
