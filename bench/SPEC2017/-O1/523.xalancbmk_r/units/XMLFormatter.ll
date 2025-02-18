; ModuleID = 'XMLFormatter.cpp'
source_filename = "XMLFormatter.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLFormatter" = type { i32, ptr, ptr, i32, ptr, [16388 x i8], ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i8, ptr }
%"class.xercesc_2_7::ArrayJanitor" = type { ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_712ArrayJanitorItED2Ev = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$__clang_call_terminate = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

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
@_ZN11xercesc_2_76XMLUni12fgVersion1_1E = external local_unnamed_addr constant [0 x i16], align 2
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

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable
define dso_local noundef zeroext i1 @_ZN11xercesc_2_712XMLFormatter12inEscapeListENS0_11EscapeFlagsEt(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16520) %0, i32 noundef %1, i16 noundef zeroext %2) local_unnamed_addr #0 align 2 !prof !34 {
  %4 = zext i32 %1 to i64
  %5 = getelementptr inbounds [4 x [6 x i16]], ptr @_ZN11xercesc_2_7L12gEscapeCharsE, i64 0, i64 %4
  br label %6

6:                                                ; preds = %10, %3
  %7 = phi ptr [ %5, %3 ], [ %11, %10 ]
  %8 = load i16, ptr %7, align 2, !tbaa !35
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i16, ptr %7, i64 1
  %12 = icmp eq i16 %8, %2
  br i1 %12, label %23, label %6, !llvm.loop !39

13:                                               ; preds = %6
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  %15 = load i8, ptr %14, align 4, !tbaa !42, !range !49, !noundef !50
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = zext i16 %2 to i64
  %19 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !51
  %21 = and i8 %20, -96
  %22 = icmp eq i8 %21, 32
  br label %23

23:                                               ; preds = %10, %17, %13
  %24 = phi i1 [ false, %13 ], [ %22, %17 ], [ true, %10 ]
  ret i1 %24
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKcS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = alloca i32, align 4
  %9 = alloca %"class.xercesc_2_7::ArrayJanitor", align 8
  store i32 %4, ptr %0, align 8, !tbaa !52
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !53
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %3, ptr %11, align 8, !tbaa !54
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %5, ptr %12, align 8, !tbaa !55
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %13, align 8, !tbaa !56
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %14, align 8, !tbaa !57
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %15, align 8, !tbaa !58
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %16, align 8, !tbaa !59
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %17, align 8, !tbaa !60
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %18, align 8, !tbaa !61
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %19, align 8, !tbaa !62
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %20, align 8, !tbaa !63
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %21, align 8, !tbaa !64
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %22, align 8, !tbaa !65
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %23, align 8, !tbaa !66
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %24, align 4, !tbaa !42
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %6, ptr %25, align 8, !tbaa !67
  %26 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %6)
  store ptr %26, ptr %10, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %27 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !68
  %28 = load ptr, ptr %25, align 8, !tbaa !67
  %29 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %27, ptr noundef %26, ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 16384, ptr noundef %28)
  store ptr %29, ptr %13, align 8, !tbaa !56
  %30 = icmp eq ptr %29, null
  %31 = load ptr, ptr %25, align 8, !tbaa !67
  br i1 %30, label %32, label %42

32:                                               ; preds = %7
  %33 = load ptr, ptr %10, align 8, !tbaa !53
  %34 = load ptr, ptr %31, align 8, !tbaa !69
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  call void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33)
  %37 = call ptr @__cxa_allocate_exception(i64 48) #12
  %38 = load ptr, ptr %25, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull @.str, i32 noundef 194, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %38)
          to label %39 unwind label %40

39:                                               ; preds = %32
  call void @__cxa_throw(ptr nonnull %37, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

40:                                               ; preds = %32
  %41 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %37) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  resume { ptr, i32 } %41

42:                                               ; preds = %7
  %43 = call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %2, ptr noundef %31)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %9) #12
  %44 = load ptr, ptr %25, align 8, !tbaa !67
  store ptr %43, ptr %9, align 8, !tbaa !71
  %45 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %9, i64 0, i32 1
  store ptr %44, ptr %45, align 8, !tbaa !73
  %46 = icmp eq ptr %43, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %42
  %48 = load i16, ptr %43, align 2, !tbaa !35
  %49 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !35
  %50 = icmp eq i16 %48, %49
  br i1 %50, label %55, label %66

51:                                               ; preds = %42
  %52 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !35
  %53 = icmp eq i16 %52, 0
  %54 = zext i1 %53 to i8
  br label %66

55:                                               ; preds = %47, %60
  %56 = phi i16 [ %63, %60 ], [ %48, %47 ]
  %57 = phi ptr [ %62, %60 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, %47 ]
  %58 = phi ptr [ %61, %60 ], [ %43, %47 ]
  %59 = icmp eq i16 %56, 0
  br i1 %59, label %66, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds i16, ptr %58, i64 1
  %62 = getelementptr inbounds i16, ptr %57, i64 1
  %63 = load i16, ptr %61, align 2, !tbaa !35
  %64 = load i16, ptr %62, align 2, !tbaa !35
  %65 = icmp eq i16 %63, %64
  br i1 %65, label %55, label %66, !llvm.loop !74

66:                                               ; preds = %55, %60, %47, %51
  %67 = phi i8 [ %54, %51 ], [ 0, %47 ], [ 0, %60 ], [ 1, %55 ]
  store i8 %67, ptr %24, align 4, !tbaa !42
  call void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %9) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %9) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

declare noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #3

declare noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 4 dereferenceable(4), i32 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_712ArrayJanitorItED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 !prof !75 {
  %2 = load ptr, ptr %0, align 8, !tbaa !71
  %3 = icmp eq ptr %2, null
  br i1 %3, label %13, label %4, !prof !76

4:                                                ; preds = %1
  %5 = getelementptr inbounds %"class.xercesc_2_7::ArrayJanitor", ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !73
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8, !prof !77

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !69
  %10 = getelementptr inbounds ptr, ptr %9, i64 3
  %11 = load ptr, ptr %10, align 8
  invoke void %11(ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull %2)
          to label %13 unwind label %14, !prof !78

12:                                               ; preds = %4
  tail call void @_ZdaPv(ptr noundef %2) #14
  br label %13

13:                                               ; preds = %8, %1, %12
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  ret void

14:                                               ; preds = %8
  %15 = landingpad { ptr, i32 }
          catch ptr null
  %16 = extractvalue { ptr, i32 } %15, 0
  tail call void @__clang_call_terminate(ptr %16) #15
  unreachable
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKtS2_PNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = alloca i32, align 4
  store i32 %4, ptr %0, align 8, !tbaa !52
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %9, align 8, !tbaa !53
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %3, ptr %10, align 8, !tbaa !54
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %5, ptr %11, align 8, !tbaa !55
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %12, align 8, !tbaa !56
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %13, align 8, !tbaa !57
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %14, align 8, !tbaa !58
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %15, align 8, !tbaa !59
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %16, align 8, !tbaa !60
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %17, align 8, !tbaa !61
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %18, align 8, !tbaa !62
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %19, align 8, !tbaa !63
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %20, align 8, !tbaa !64
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %21, align 8, !tbaa !65
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %22, align 8, !tbaa !66
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %23, align 4, !tbaa !42
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %6, ptr %24, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #12
  %25 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !68
  %26 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %8, i32 noundef 16384, ptr noundef %6)
  store ptr %26, ptr %12, align 8, !tbaa !56
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %34

28:                                               ; preds = %7
  %29 = call ptr @__cxa_allocate_exception(i64 48) #12
  %30 = load ptr, ptr %24, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %29, ptr noundef nonnull @.str, i32 noundef 245, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %30)
          to label %31 unwind label %32

31:                                               ; preds = %28
  call void @__cxa_throw(ptr nonnull %29, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

32:                                               ; preds = %28
  %33 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %29) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  resume { ptr, i32 } %33

34:                                               ; preds = %7
  %35 = load ptr, ptr %24, align 8, !tbaa !67
  %36 = icmp eq ptr %1, null
  br i1 %36, label %57, label %37

37:                                               ; preds = %34
  %38 = load i16, ptr %1, align 2, !tbaa !35
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %51, label %40

40:                                               ; preds = %37, %40
  %41 = phi ptr [ %42, %40 ], [ %1, %37 ]
  %42 = getelementptr inbounds i16, ptr %41, i64 1
  %43 = load i16, ptr %42, align 2, !tbaa !35
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %45, label %40, !llvm.loop !79

45:                                               ; preds = %40
  %46 = ptrtoint ptr %42 to i64
  %47 = ptrtoint ptr %1 to i64
  %48 = sub i64 %46, %47
  %49 = add i64 %48, 2
  %50 = and i64 %49, 8589934590
  br label %51

51:                                               ; preds = %45, %37
  %52 = phi i64 [ %50, %45 ], [ 2, %37 ]
  %53 = load ptr, ptr %35, align 8, !tbaa !69
  %54 = getelementptr inbounds ptr, ptr %53, i64 2
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(8) %35, i64 noundef %52)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %56, ptr nonnull align 2 %1, i64 %52, i1 false)
  br label %57

57:                                               ; preds = %34, %51
  %58 = phi ptr [ %56, %51 ], [ null, %34 ]
  store ptr %58, ptr %9, align 8, !tbaa !53
  %59 = icmp eq ptr %2, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i16, ptr %2, align 2, !tbaa !35
  %62 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !35
  %63 = icmp eq i16 %61, %62
  br i1 %63, label %68, label %79

64:                                               ; preds = %57
  %65 = load i16, ptr @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, align 2, !tbaa !35
  %66 = icmp eq i16 %65, 0
  %67 = zext i1 %66 to i8
  br label %79

68:                                               ; preds = %60, %73
  %69 = phi i16 [ %76, %73 ], [ %61, %60 ]
  %70 = phi ptr [ %75, %73 ], [ @_ZN11xercesc_2_76XMLUni12fgVersion1_1E, %60 ]
  %71 = phi ptr [ %74, %73 ], [ %2, %60 ]
  %72 = icmp eq i16 %69, 0
  br i1 %72, label %79, label %73

73:                                               ; preds = %68
  %74 = getelementptr inbounds i16, ptr %71, i64 1
  %75 = getelementptr inbounds i16, ptr %70, i64 1
  %76 = load i16, ptr %74, align 2, !tbaa !35
  %77 = load i16, ptr %75, align 2, !tbaa !35
  %78 = icmp eq i16 %76, %77
  br i1 %78, label %68, label %79, !llvm.loop !74

79:                                               ; preds = %68, %73, %60, %64
  %80 = phi i8 [ %67, %64 ], [ 0, %60 ], [ 0, %73 ], [ 1, %68 ]
  store i8 %80, ptr %23, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !69
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7)
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  resume { ptr, i32 } %12
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKcPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca i32, align 4
  store i32 %3, ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %11, align 8, !tbaa !56
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 8, !tbaa !58
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %17, align 8, !tbaa !62
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %18, align 8, !tbaa !63
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %20, align 8, !tbaa !65
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %21, align 8, !tbaa !66
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %22, align 4, !tbaa !42
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %5, ptr %23, align 8, !tbaa !67
  %24 = tail call noundef ptr @_ZN11xercesc_2_79XMLString9transcodeEPKcPNS_13MemoryManagerE(ptr noundef %1, ptr noundef %5)
  store ptr %24, ptr %8, align 8, !tbaa !53
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %25 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !68
  %26 = load ptr, ptr %23, align 8, !tbaa !67
  %27 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %25, ptr noundef %24, ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 16384, ptr noundef %26)
  store ptr %27, ptr %11, align 8, !tbaa !56
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %6
  %30 = load ptr, ptr %23, align 8, !tbaa !67
  %31 = load ptr, ptr %8, align 8, !tbaa !53
  %32 = load ptr, ptr %30, align 8, !tbaa !69
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  call void %34(ptr noundef nonnull align 8 dereferenceable(8) %30, ptr noundef %31)
  %35 = call ptr @__cxa_allocate_exception(i64 48) #12
  %36 = load ptr, ptr %23, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 302, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %36)
          to label %37 unwind label %38

37:                                               ; preds = %29
  call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

38:                                               ; preds = %29
  %39 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %35) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  resume { ptr, i32 } %39

40:                                               ; preds = %6
  store i8 0, ptr %22, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterC2EPKtPNS_15XMLFormatTargetENS0_11EscapeFlagsENS0_10UnRepFlagsEPNS_13MemoryManagerE(ptr nocapture noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %7 = alloca i32, align 4
  store i32 %3, ptr %0, align 8, !tbaa !52
  %8 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !53
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  store ptr %2, ptr %9, align 8, !tbaa !54
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 3
  store i32 %4, ptr %10, align 8, !tbaa !55
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  store ptr null, ptr %11, align 8, !tbaa !56
  %12 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  store ptr null, ptr %12, align 8, !tbaa !57
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  store i32 0, ptr %13, align 8, !tbaa !58
  %14 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  store ptr null, ptr %14, align 8, !tbaa !59
  %15 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  store i32 0, ptr %15, align 8, !tbaa !60
  %16 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  store ptr null, ptr %16, align 8, !tbaa !61
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  store i32 0, ptr %17, align 8, !tbaa !62
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  store ptr null, ptr %18, align 8, !tbaa !63
  %19 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  store i32 0, ptr %19, align 8, !tbaa !64
  %20 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  store ptr null, ptr %20, align 8, !tbaa !65
  %21 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  store i32 0, ptr %21, align 8, !tbaa !66
  %22 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  store i8 0, ptr %22, align 4, !tbaa !42
  %23 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  store ptr %5, ptr %23, align 8, !tbaa !67
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #12
  %24 = load ptr, ptr @_ZN11xercesc_2_716XMLPlatformUtils14fgTransServiceE, align 8, !tbaa !68
  %25 = call noundef ptr @_ZN11xercesc_2_715XMLTransService20makeNewTranscoderForEPKtRNS0_5CodesEjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %7, i32 noundef 16384, ptr noundef %5)
  store ptr %25, ptr %11, align 8, !tbaa !56
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %6
  %28 = call ptr @__cxa_allocate_exception(i64 48) #12
  %29 = load ptr, ptr %23, align 8, !tbaa !67
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %28, ptr noundef nonnull @.str, i32 noundef 355, i32 noundef 98, ptr noundef %1, ptr noundef null, ptr noundef null, ptr noundef null, ptr noundef %29)
          to label %30 unwind label %31

30:                                               ; preds = %27
  call void @__cxa_throw(ptr nonnull %28, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #13
  unreachable

31:                                               ; preds = %27
  %32 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %28) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  resume { ptr, i32 } %32

33:                                               ; preds = %6
  %34 = load ptr, ptr %23, align 8, !tbaa !67
  %35 = icmp eq ptr %1, null
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = load i16, ptr %1, align 2, !tbaa !35
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %36, %39
  %40 = phi ptr [ %41, %39 ], [ %1, %36 ]
  %41 = getelementptr inbounds i16, ptr %40, i64 1
  %42 = load i16, ptr %41, align 2, !tbaa !35
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %39, !llvm.loop !79

44:                                               ; preds = %39
  %45 = ptrtoint ptr %41 to i64
  %46 = ptrtoint ptr %1 to i64
  %47 = sub i64 %45, %46
  %48 = add i64 %47, 2
  %49 = and i64 %48, 8589934590
  br label %50

50:                                               ; preds = %44, %36
  %51 = phi i64 [ %49, %44 ], [ 2, %36 ]
  %52 = load ptr, ptr %34, align 8, !tbaa !69
  %53 = getelementptr inbounds ptr, ptr %52, i64 2
  %54 = load ptr, ptr %53, align 8
  %55 = call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(8) %34, i64 noundef %51)
  call void @llvm.memcpy.p0.p0.i64(ptr align 2 %55, ptr nonnull align 2 %1, i64 %51, i1 false)
  br label %56

56:                                               ; preds = %33, %50
  %57 = phi ptr [ %55, %50 ], [ null, %33 ]
  store ptr %57, ptr %8, align 8, !tbaa !53
  store i8 0, ptr %22, align 4, !tbaa !42
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatterD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(16520) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %3 = load ptr, ptr %2, align 8, !tbaa !67
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !57
  %6 = load ptr, ptr %3, align 8, !tbaa !69
  %7 = getelementptr inbounds ptr, ptr %6, i64 3
  %8 = load ptr, ptr %7, align 8
  invoke void %8(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %5)
          to label %9 unwind label %53

9:                                                ; preds = %1
  %10 = load ptr, ptr %2, align 8, !tbaa !67
  %11 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !59
  %13 = load ptr, ptr %10, align 8, !tbaa !69
  %14 = getelementptr inbounds ptr, ptr %13, i64 3
  %15 = load ptr, ptr %14, align 8
  invoke void %15(ptr noundef nonnull align 8 dereferenceable(8) %10, ptr noundef %12)
          to label %16 unwind label %53

16:                                               ; preds = %9
  %17 = load ptr, ptr %2, align 8, !tbaa !67
  %18 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !61
  %20 = load ptr, ptr %17, align 8, !tbaa !69
  %21 = getelementptr inbounds ptr, ptr %20, i64 3
  %22 = load ptr, ptr %21, align 8
  invoke void %22(ptr noundef nonnull align 8 dereferenceable(8) %17, ptr noundef %19)
          to label %23 unwind label %53

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !67
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  %26 = load ptr, ptr %25, align 8, !tbaa !63
  %27 = load ptr, ptr %24, align 8, !tbaa !69
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  invoke void %29(ptr noundef nonnull align 8 dereferenceable(8) %24, ptr noundef %26)
          to label %30 unwind label %53

30:                                               ; preds = %23
  %31 = load ptr, ptr %2, align 8, !tbaa !67
  %32 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  %33 = load ptr, ptr %32, align 8, !tbaa !65
  %34 = load ptr, ptr %31, align 8, !tbaa !69
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  invoke void %36(ptr noundef nonnull align 8 dereferenceable(8) %31, ptr noundef %33)
          to label %37 unwind label %53

37:                                               ; preds = %30
  %38 = load ptr, ptr %2, align 8, !tbaa !67
  %39 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !53
  %41 = load ptr, ptr %38, align 8, !tbaa !69
  %42 = getelementptr inbounds ptr, ptr %41, i64 3
  %43 = load ptr, ptr %42, align 8
  invoke void %43(ptr noundef nonnull align 8 dereferenceable(8) %38, ptr noundef %40)
          to label %44 unwind label %53

44:                                               ; preds = %37
  %45 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !56
  %47 = icmp eq ptr %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load ptr, ptr %46, align 8, !tbaa !69
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
  tail call void @__clang_call_terminate(ptr %55) #15
  unreachable
}

; Function Attrs: cold noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #7 comdat !prof !34 {
  %2 = tail call ptr @__cxa_begin_catch(ptr %0) #12
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

declare void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 align 2 !prof !34 {
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
  tail call void @_ZN11xercesc_2_712XMLFormatter13specialFormatEPKtjNS0_11EscapeFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %8)
  br label %125

15:                                               ; preds = %5
  %16 = zext i32 %2 to i64
  %17 = getelementptr inbounds i16, ptr %1, i64 %16
  %18 = icmp eq i32 %8, 0
  %19 = icmp eq i32 %2, 0
  br i1 %18, label %25, label %20

20:                                               ; preds = %15
  br i1 %19, label %125, label %21

21:                                               ; preds = %20
  %22 = zext i32 %8 to i64
  %23 = getelementptr inbounds [4 x [6 x i16]], ptr @_ZN11xercesc_2_7L12gEscapeCharsE, i64 0, i64 %22
  %24 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 16
  br label %28

25:                                               ; preds = %15
  br i1 %19, label %125, label %26

26:                                               ; preds = %25
  %27 = tail call noundef i32 @_ZN11xercesc_2_712XMLFormatter20handleUnEscapedCharsEPKtjNS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %12)
  br label %125

28:                                               ; preds = %21, %122
  %29 = phi ptr [ %1, %21 ], [ %123, %122 ]
  br label %30

30:                                               ; preds = %28, %50
  %31 = phi i1 [ true, %28 ], [ %52, %50 ]
  %32 = phi ptr [ %29, %28 ], [ %51, %50 ]
  %33 = load i16, ptr %32, align 2, !tbaa !35
  br label %34

34:                                               ; preds = %38, %30
  %35 = phi ptr [ %23, %30 ], [ %39, %38 ]
  %36 = load i16, ptr %35, align 2, !tbaa !35
  %37 = icmp eq i16 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds i16, ptr %35, i64 1
  %40 = icmp eq i16 %36, %33
  br i1 %40, label %53, label %34, !llvm.loop !39

41:                                               ; preds = %34
  %42 = load i8, ptr %24, align 4, !range !49
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %41
  %45 = zext i16 %33 to i64
  %46 = getelementptr inbounds [65536 x i8], ptr @_ZN11xercesc_2_710XMLChar1_119fgCharCharsTable1_1E, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !51
  %48 = and i8 %47, -96
  %49 = icmp eq i8 %48, 32
  br i1 %49, label %53, label %50

50:                                               ; preds = %41, %44
  %51 = getelementptr inbounds i16, ptr %32, i64 1
  %52 = icmp ult ptr %51, %17
  br i1 %52, label %30, label %53, !llvm.loop !80

53:                                               ; preds = %50, %44, %38
  %54 = phi ptr [ %32, %38 ], [ %51, %50 ], [ %32, %44 ]
  %55 = phi i1 [ %31, %38 ], [ %52, %50 ], [ %31, %44 ]
  %56 = icmp ugt ptr %54, %29
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = ptrtoint ptr %54 to i64
  %59 = ptrtoint ptr %29 to i64
  %60 = sub i64 %58, %59
  %61 = lshr exact i64 %60, 1
  %62 = trunc i64 %61 to i32
  %63 = tail call noundef i32 @_ZN11xercesc_2_712XMLFormatter20handleUnEscapedCharsEPKtjNS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %29, i32 noundef %62, i32 noundef %12)
  %64 = and i64 %61, 4294967295
  %65 = getelementptr inbounds i16, ptr %29, i64 %64
  br label %122

66:                                               ; preds = %53
  br i1 %55, label %67, label %122

67:                                               ; preds = %66
  %68 = load i16, ptr %29, align 2, !tbaa !35
  switch i16 %68, label %119 [
    i16 38, label %69
    i16 39, label %79
    i16 34, label %89
    i16 62, label %99
    i16 60, label %109
  ]

69:                                               ; preds = %67
  %70 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 9
  %71 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 8
  %72 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %73 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %70, ptr noundef nonnull align 8 dereferenceable(8) %71, ptr noundef nonnull @_ZN11xercesc_2_7L7gAmpRefE)
  %74 = load ptr, ptr %72, align 8, !tbaa !54
  %75 = load i32, ptr %70, align 8, !tbaa !60
  %76 = load ptr, ptr %74, align 8, !tbaa !69
  %77 = getelementptr inbounds ptr, ptr %76, i64 2
  %78 = load ptr, ptr %77, align 8
  tail call void %78(ptr noundef nonnull align 8 dereferenceable(8) %74, ptr noundef %73, i32 noundef %75, ptr noundef nonnull %0)
  br label %120

79:                                               ; preds = %67
  %80 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 7
  %81 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 6
  %82 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %83 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %80, ptr noundef nonnull align 8 dereferenceable(8) %81, ptr noundef nonnull @_ZN11xercesc_2_7L8gAposRefE)
  %84 = load ptr, ptr %82, align 8, !tbaa !54
  %85 = load i32, ptr %80, align 8, !tbaa !58
  %86 = load ptr, ptr %84, align 8, !tbaa !69
  %87 = getelementptr inbounds ptr, ptr %86, i64 2
  %88 = load ptr, ptr %87, align 8
  tail call void %88(ptr noundef nonnull align 8 dereferenceable(8) %84, ptr noundef %83, i32 noundef %85, ptr noundef nonnull %0)
  br label %120

89:                                               ; preds = %67
  %90 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 15
  %91 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 14
  %92 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %93 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %90, ptr noundef nonnull align 8 dereferenceable(8) %91, ptr noundef nonnull @_ZN11xercesc_2_7L9gQuoteRefE)
  %94 = load ptr, ptr %92, align 8, !tbaa !54
  %95 = load i32, ptr %90, align 8, !tbaa !66
  %96 = load ptr, ptr %94, align 8, !tbaa !69
  %97 = getelementptr inbounds ptr, ptr %96, i64 2
  %98 = load ptr, ptr %97, align 8
  tail call void %98(ptr noundef nonnull align 8 dereferenceable(8) %94, ptr noundef %93, i32 noundef %95, ptr noundef nonnull %0)
  br label %120

99:                                               ; preds = %67
  %100 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 11
  %101 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 10
  %102 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %103 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %100, ptr noundef nonnull align 8 dereferenceable(8) %101, ptr noundef nonnull @_ZN11xercesc_2_7L6gGTRefE)
  %104 = load ptr, ptr %102, align 8, !tbaa !54
  %105 = load i32, ptr %100, align 8, !tbaa !62
  %106 = load ptr, ptr %104, align 8, !tbaa !69
  %107 = getelementptr inbounds ptr, ptr %106, i64 2
  %108 = load ptr, ptr %107, align 8
  tail call void %108(ptr noundef nonnull align 8 dereferenceable(8) %104, ptr noundef %103, i32 noundef %105, ptr noundef nonnull %0)
  br label %120

109:                                              ; preds = %67
  %110 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 13
  %111 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 12
  %112 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %113 = tail call noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 4 dereferenceable(4) %110, ptr noundef nonnull align 8 dereferenceable(8) %111, ptr noundef nonnull @_ZN11xercesc_2_7L6gLTRefE)
  %114 = load ptr, ptr %112, align 8, !tbaa !54
  %115 = load i32, ptr %110, align 8, !tbaa !64
  %116 = load ptr, ptr %114, align 8, !tbaa !69
  %117 = getelementptr inbounds ptr, ptr %116, i64 2
  %118 = load ptr, ptr %117, align 8
  tail call void %118(ptr noundef nonnull align 8 dereferenceable(8) %114, ptr noundef %113, i32 noundef %115, ptr noundef nonnull %0)
  br label %120

119:                                              ; preds = %67
  tail call void @_ZN11xercesc_2_712XMLFormatter12writeCharRefERKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 2 dereferenceable(2) %29)
  br label %120

120:                                              ; preds = %119, %109, %99, %89, %79, %69
  %121 = getelementptr inbounds i16, ptr %29, i64 1
  br label %122

122:                                              ; preds = %66, %120, %57
  %123 = phi ptr [ %65, %57 ], [ %121, %120 ], [ %29, %66 ]
  %124 = icmp ult ptr %123, %17
  br i1 %124, label %28, label %125, !llvm.loop !81

125:                                              ; preds = %122, %20, %26, %25, %14
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter13specialFormatEPKtjNS0_11EscapeFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !34 {
  %5 = zext i32 %2 to i64
  %6 = getelementptr inbounds i16, ptr %1, i64 %5
  %7 = icmp eq i32 %2, 0
  br i1 %7, label %64, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  br label %11

11:                                               ; preds = %8, %61
  %12 = phi ptr [ %1, %8 ], [ %62, %61 ]
  br label %13

13:                                               ; preds = %11, %22
  %14 = phi ptr [ %12, %11 ], [ %23, %22 ]
  %15 = load ptr, ptr %9, align 8, !tbaa !56
  %16 = load i16, ptr %14, align 2, !tbaa !35
  %17 = zext i16 %16 to i32
  %18 = load ptr, ptr %15, align 8, !tbaa !69
  %19 = getelementptr inbounds ptr, ptr %18, i64 4
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef zeroext i1 %20(ptr noundef nonnull align 8 dereferenceable(32) %15, i32 noundef %17)
  br i1 %21, label %22, label %25

22:                                               ; preds = %13
  %23 = getelementptr inbounds i16, ptr %14, i64 1
  %24 = icmp ult ptr %23, %6
  br i1 %24, label %13, label %25, !llvm.loop !82

25:                                               ; preds = %13, %22
  %26 = phi ptr [ %14, %13 ], [ %23, %22 ]
  %27 = icmp ugt ptr %26, %12
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = ptrtoint ptr %26 to i64
  %30 = ptrtoint ptr %12 to i64
  %31 = sub i64 %29, %30
  %32 = lshr exact i64 %31, 1
  %33 = trunc i64 %32 to i32
  tail call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %12, i32 noundef %33, i32 noundef %3, i32 noundef 0)
  br label %61

34:                                               ; preds = %25, %51
  %35 = phi ptr [ %53, %51 ], [ %12, %25 ]
  %36 = icmp ult ptr %35, %6
  br i1 %36, label %37, label %61

37:                                               ; preds = %34
  %38 = load i16, ptr %35, align 2, !tbaa !35
  %39 = zext i16 %38 to i32
  %40 = and i32 %39, 64512
  %41 = icmp eq i32 %40, 55296
  br i1 %41, label %42, label %50

42:                                               ; preds = %37
  %43 = getelementptr inbounds i16, ptr %35, i64 1
  %44 = shl nuw nsw i32 %39, 10
  %45 = load i16, ptr %43, align 2, !tbaa !35
  %46 = zext i16 %45 to i32
  %47 = add nsw i32 %44, -56613888
  %48 = add nuw nsw i32 %47, %46
  %49 = zext nneg i32 %48 to i64
  tail call void @_ZN11xercesc_2_712XMLFormatter12writeCharRefEm(ptr noundef nonnull align 8 dereferenceable(16520) %0, i64 noundef %49)
  br label %51

50:                                               ; preds = %37
  tail call void @_ZN11xercesc_2_712XMLFormatter12writeCharRefERKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull align 2 dereferenceable(2) %35)
  br label %51

51:                                               ; preds = %50, %42
  %52 = phi ptr [ %43, %42 ], [ %35, %50 ]
  %53 = getelementptr inbounds i16, ptr %52, i64 1
  %54 = load ptr, ptr %10, align 8, !tbaa !56
  %55 = load i16, ptr %53, align 2, !tbaa !35
  %56 = zext i16 %55 to i32
  %57 = load ptr, ptr %54, align 8, !tbaa !69
  %58 = getelementptr inbounds ptr, ptr %57, i64 4
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef zeroext i1 %59(ptr noundef nonnull align 8 dereferenceable(32) %54, i32 noundef %56)
  br i1 %60, label %61, label %34, !llvm.loop !83

61:                                               ; preds = %51, %34, %28
  %62 = phi ptr [ %26, %28 ], [ %35, %34 ], [ %53, %51 ]
  %63 = icmp ult ptr %62, %6
  br i1 %63, label %11, label %64, !llvm.loop !84

64:                                               ; preds = %61, %4
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_712XMLFormatter20handleUnEscapedCharsEPKtjNS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef returned %2, i32 noundef %3) local_unnamed_addr #2 align 2 !prof !34 {
  %5 = alloca i32, align 4
  %6 = icmp eq i32 %3, 2
  %7 = zext i1 %6 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
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
  %17 = load ptr, ptr %10, align 8, !tbaa !56
  %18 = load ptr, ptr %17, align 8, !tbaa !69
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef %14, i32 noundef %16, ptr noundef nonnull %11, i32 noundef 16384, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef %7)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %13
  %24 = zext i32 %21 to i64
  %25 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %24
  store i8 0, ptr %25, align 1, !tbaa !51
  %26 = add i32 %21, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %27
  store i8 0, ptr %28, align 1, !tbaa !51
  %29 = add i32 %21, 2
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %30
  store i8 0, ptr %31, align 1, !tbaa !51
  %32 = add i32 %21, 3
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !51
  %35 = load ptr, ptr %12, align 8, !tbaa !54
  %36 = load ptr, ptr %35, align 8, !tbaa !69
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  call void %38(ptr noundef nonnull align 8 dereferenceable(8) %35, ptr noundef nonnull %11, i32 noundef %21, ptr noundef nonnull %0)
  br label %39

39:                                               ; preds = %23, %13
  %40 = load i32, ptr %5, align 4, !tbaa !85
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds i16, ptr %14, i64 %41
  %43 = sub i32 %15, %40
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %13, !llvm.loop !86

45:                                               ; preds = %39, %4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  ret i32 %2
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef ptr @_ZN11xercesc_2_712XMLFormatter10getCharRefERjRPhPKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %1, ptr nocapture noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #2 align 2 !prof !34 {
  %5 = alloca i32, align 4
  %6 = load ptr, ptr %2, align 8, !tbaa !68
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %52

8:                                                ; preds = %4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #12
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !56
  %11 = icmp eq ptr %3, null
  br i1 %11, label %26, label %12

12:                                               ; preds = %8
  %13 = load i16, ptr %3, align 2, !tbaa !35
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12, %15
  %16 = phi ptr [ %17, %15 ], [ %3, %12 ]
  %17 = getelementptr inbounds i16, ptr %16, i64 1
  %18 = load i16, ptr %17, align 2, !tbaa !35
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %20, label %15, !llvm.loop !79

20:                                               ; preds = %15
  %21 = ptrtoint ptr %17 to i64
  %22 = ptrtoint ptr %3 to i64
  %23 = sub i64 %21, %22
  %24 = lshr exact i64 %23, 1
  %25 = trunc i64 %24 to i32
  br label %26

26:                                               ; preds = %8, %12, %20
  %27 = phi i32 [ %25, %20 ], [ 0, %12 ], [ 0, %8 ]
  %28 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5
  %29 = load ptr, ptr %10, align 8, !tbaa !69
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef %3, i32 noundef %27, ptr noundef nonnull %28, i32 noundef 16384, ptr noundef nonnull align 4 dereferenceable(4) %5, i32 noundef 0)
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !51
  %35 = add i32 %32, 1
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %36
  store i8 0, ptr %37, align 1, !tbaa !51
  %38 = add i32 %32, 2
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %39
  store i8 0, ptr %40, align 1, !tbaa !51
  %41 = add i32 %32, 3
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 5, i64 %42
  store i8 0, ptr %43, align 1, !tbaa !51
  %44 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %45 = load ptr, ptr %44, align 8, !tbaa !67
  %46 = add i32 %32, 4
  %47 = zext i32 %46 to i64
  %48 = load ptr, ptr %45, align 8, !tbaa !69
  %49 = getelementptr inbounds ptr, ptr %48, i64 2
  %50 = load ptr, ptr %49, align 8
  %51 = call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(8) %45, i64 noundef %47)
  store ptr %51, ptr %2, align 8, !tbaa !68
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %51, ptr nonnull align 8 %28, i64 %47, i1 false)
  store i32 %32, ptr %1, align 4, !tbaa !85
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #12
  br label %52

52:                                               ; preds = %26, %4
  %53 = load ptr, ptr %2, align 8, !tbaa !68
  ret ptr %53
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter12writeCharRefERKt(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr nocapture noundef nonnull readonly align 2 dereferenceable(2) %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = alloca [32 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  store i16 38, ptr %3, align 16, !tbaa !35
  %4 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 1
  store i16 35, ptr %4, align 2, !tbaa !35
  %5 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 2
  store i16 120, ptr %5, align 4, !tbaa !35
  %6 = load i16, ptr %1, align 2, !tbaa !35
  %7 = zext i16 %6 to i32
  %8 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 3
  %9 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  call void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef %7, ptr noundef nonnull %8, i32 noundef 8, i32 noundef 16, ptr noundef %10)
  %11 = load i16, ptr %3, align 16, !tbaa !35
  %12 = icmp eq i16 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %2, %13
  %14 = phi ptr [ %15, %13 ], [ %3, %2 ]
  %15 = getelementptr inbounds i16, ptr %14, i64 1
  %16 = load i16, ptr %15, align 2, !tbaa !35
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %18, label %13, !llvm.loop !79

18:                                               ; preds = %13
  %19 = ptrtoint ptr %15 to i64
  %20 = ptrtoint ptr %3 to i64
  %21 = sub i64 %19, %20
  %22 = lshr exact i64 %21, 1
  %23 = trunc i64 %22 to i32
  br label %24

24:                                               ; preds = %2, %18
  %25 = phi i32 [ %23, %18 ], [ 0, %2 ]
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %26
  store i16 59, ptr %27, align 2, !tbaa !35
  %28 = add i32 %25, 1
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %29
  store i16 0, ptr %30, align 2, !tbaa !35
  call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull %3, i32 noundef %28, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16520) ptr @_ZN11xercesc_2_712XMLFormatterlsEPKt(ptr noundef nonnull returned align 8 dereferenceable(16520) %0, ptr noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %18, label %4

4:                                                ; preds = %2
  %5 = load i16, ptr %1, align 2, !tbaa !35
  %6 = icmp eq i16 %5, 0
  br i1 %6, label %18, label %7

7:                                                ; preds = %4, %7
  %8 = phi ptr [ %9, %7 ], [ %1, %4 ]
  %9 = getelementptr inbounds i16, ptr %8, i64 1
  %10 = load i16, ptr %9, align 2, !tbaa !35
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %12, label %7, !llvm.loop !79

12:                                               ; preds = %7
  %13 = ptrtoint ptr %9 to i64
  %14 = ptrtoint ptr %1 to i64
  %15 = sub i64 %13, %14
  %16 = lshr exact i64 %15, 1
  %17 = trunc i64 %16 to i32
  br label %18

18:                                               ; preds = %2, %4, %12
  %19 = phi i32 [ %17, %12 ], [ 0, %4 ], [ 0, %2 ]
  tail call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %19, i32 noundef 999, i32 noundef 999)
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local noundef nonnull align 8 dereferenceable(16520) ptr @_ZN11xercesc_2_712XMLFormatterlsEt(ptr noundef nonnull returned align 8 dereferenceable(16520) %0, i16 noundef zeroext %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = alloca [2 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #12
  store i16 %1, ptr %3, align 2, !tbaa !35
  %4 = getelementptr inbounds [2 x i16], ptr %3, i64 0, i64 1
  store i16 0, ptr %4, align 2, !tbaa !35
  call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull %3, i32 noundef 1, i32 noundef 999, i32 noundef 999)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #12
  ret ptr %0
}

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter8writeBOMEPKhj(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 align 2 !prof !34 {
  %4 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = load ptr, ptr %5, align 8, !tbaa !69
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %0)
  ret void
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEiPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_712XMLFormatter12writeCharRefEm(ptr noundef nonnull align 8 dereferenceable(16520) %0, i64 noundef %1) local_unnamed_addr #2 align 2 !prof !34 {
  %3 = alloca [32 x i16], align 16
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %3) #12
  store i16 38, ptr %3, align 16, !tbaa !35
  %4 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 1
  store i16 35, ptr %4, align 2, !tbaa !35
  %5 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 2
  store i16 120, ptr %5, align 4, !tbaa !35
  %6 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 3
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLFormatter", ptr %0, i64 0, i32 17
  %8 = load ptr, ptr %7, align 8, !tbaa !67
  call void @_ZN11xercesc_2_79XMLString9binToTextEmPtjjPNS_13MemoryManagerE(i64 noundef %1, ptr noundef nonnull %6, i32 noundef 8, i32 noundef 16, ptr noundef %8)
  %9 = load i16, ptr %3, align 16, !tbaa !35
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %2, %11
  %12 = phi ptr [ %13, %11 ], [ %3, %2 ]
  %13 = getelementptr inbounds i16, ptr %12, i64 1
  %14 = load i16, ptr %13, align 2, !tbaa !35
  %15 = icmp eq i16 %14, 0
  br i1 %15, label %16, label %11, !llvm.loop !79

16:                                               ; preds = %11
  %17 = ptrtoint ptr %13 to i64
  %18 = ptrtoint ptr %3 to i64
  %19 = sub i64 %17, %18
  %20 = lshr exact i64 %19, 1
  %21 = trunc i64 %20 to i32
  br label %22

22:                                               ; preds = %2, %16
  %23 = phi i32 [ %21, %16 ], [ 0, %2 ]
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %24
  store i16 59, ptr %25, align 2, !tbaa !35
  %26 = add i32 %23, 1
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds [32 x i16], ptr %3, i64 0, i64 %27
  store i16 0, ptr %28, align 2, !tbaa !35
  call void @_ZN11xercesc_2_712XMLFormatter9formatBufEPKtjNS0_11EscapeFlagsENS0_10UnRepFlagsE(ptr noundef nonnull align 8 dereferenceable(16520) %0, ptr noundef nonnull %3, i32 noundef %26, i32 noundef 0, i32 noundef 0)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %3) #12
  ret void
}

declare void @_ZN11xercesc_2_79XMLString9binToTextEmPtjjPNS_13MemoryManagerE(i64 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #12
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #12
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #6 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !87
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !69
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #12
  resume { ptr, i32 } %7
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #10

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #11

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { cold noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn }
attributes #14 = { builtin nounwind }
attributes #15 = { noreturn nounwind }

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
!36 = !{!"short", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C++ TBAA"}
!39 = distinct !{!39, !40, !41}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{!"llvm.loop.unroll.disable"}
!42 = !{!43, !48, i64 16508}
!43 = !{!"_ZTSN11xercesc_2_712XMLFormatterE", !44, i64 0, !45, i64 8, !45, i64 16, !46, i64 24, !45, i64 32, !37, i64 40, !45, i64 16432, !47, i64 16440, !45, i64 16448, !47, i64 16456, !45, i64 16464, !47, i64 16472, !45, i64 16480, !47, i64 16488, !45, i64 16496, !47, i64 16504, !48, i64 16508, !45, i64 16512}
!44 = !{!"_ZTSN11xercesc_2_712XMLFormatter11EscapeFlagsE", !37, i64 0}
!45 = !{!"any pointer", !37, i64 0}
!46 = !{!"_ZTSN11xercesc_2_712XMLFormatter10UnRepFlagsE", !37, i64 0}
!47 = !{!"int", !37, i64 0}
!48 = !{!"bool", !37, i64 0}
!49 = !{i8 0, i8 2}
!50 = !{}
!51 = !{!37, !37, i64 0}
!52 = !{!43, !44, i64 0}
!53 = !{!43, !45, i64 8}
!54 = !{!43, !45, i64 16}
!55 = !{!43, !46, i64 24}
!56 = !{!43, !45, i64 32}
!57 = !{!43, !45, i64 16432}
!58 = !{!43, !47, i64 16440}
!59 = !{!43, !45, i64 16448}
!60 = !{!43, !47, i64 16456}
!61 = !{!43, !45, i64 16464}
!62 = !{!43, !47, i64 16472}
!63 = !{!43, !45, i64 16480}
!64 = !{!43, !47, i64 16488}
!65 = !{!43, !45, i64 16496}
!66 = !{!43, !47, i64 16504}
!67 = !{!43, !45, i64 16512}
!68 = !{!45, !45, i64 0}
!69 = !{!70, !70, i64 0}
!70 = !{!"vtable pointer", !38, i64 0}
!71 = !{!72, !45, i64 0}
!72 = !{!"_ZTSN11xercesc_2_712ArrayJanitorItEE", !45, i64 0, !45, i64 8}
!73 = !{!72, !45, i64 8}
!74 = distinct !{!74, !40, !41}
!75 = !{!"function_entry_count", i64 243874}
!76 = !{!"branch_weights", i32 191815, i32 52059}
!77 = !{!"branch_weights", i32 0, i32 52059}
!78 = !{!"VP", i32 0, i64 52059, i64 -7405368087501025645, i64 52059}
!79 = distinct !{!79, !40, !41}
!80 = distinct !{!80, !40, !41}
!81 = distinct !{!81, !40, !41}
!82 = distinct !{!82, !40, !41}
!83 = distinct !{!83, !40, !41}
!84 = distinct !{!84, !40, !41}
!85 = !{!47, !47, i64 0}
!86 = distinct !{!86, !40, !41}
!87 = !{!88, !45, i64 40}
!88 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !89, i64 8, !45, i64 16, !47, i64 24, !45, i64 32, !45, i64 40}
!89 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !37, i64 0}
