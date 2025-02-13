; ModuleID = 'XMLUCSTranscoder.cpp'
source_filename = "XMLUCSTranscoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLUCS4Transcoder" = type <{ %"class.xercesc_2_7::XMLTranscoder", i8, [7 x i8] }>
%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_76BitOps9swapBytesEj = comdat any

$_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@_ZTVN11xercesc_2_717XMLUCS4TranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717XMLUCS4TranscoderE, ptr @_ZN11xercesc_2_717XMLUCS4TranscoderD2Ev, ptr @_ZN11xercesc_2_717XMLUCS4TranscoderD0Ev, ptr @_ZN11xercesc_2_717XMLUCS4Transcoder13transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_717XMLUCS4Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_717XMLUCS4Transcoder14canTranscodeToEj] }, align 8
@.str = private unnamed_addr constant [21 x i8] c"XMLUCSTranscoder.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTSN11xercesc_2_717XMLUCS4TranscoderE = dso_local constant [35 x i8] c"N11xercesc_2_717XMLUCS4TranscoderE\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_717XMLUCS4TranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717XMLUCS4TranscoderE, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_717XMLUCS4TranscoderC1EPKtjbPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, i1, ptr), ptr @_ZN11xercesc_2_717XMLUCS4TranscoderC2EPKtjbPNS_13MemoryManagerE
@_ZN11xercesc_2_717XMLUCS4TranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717XMLUCS4TranscoderD2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717XMLUCS4TranscoderC2EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !34 {
  %6 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_717XMLUCS4TranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUCS4Transcoder", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !38
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717XMLUCS4TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717XMLUCS4TranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_717XMLUCS4TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUCS4Transcoder13transcodeFromEPKhjPtjRjPh(ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #3 align 2 !prof !34 {
  %8 = lshr i32 %2, 2
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds i16, ptr %3, i64 %11
  %13 = icmp ne i32 %4, 0
  %14 = icmp ugt i32 %2, 3
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLUCS4Transcoder", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %48
  %19 = phi ptr [ %1, %16 ], [ %51, %48 ]
  %20 = phi ptr [ %3, %16 ], [ %50, %48 ]
  %21 = phi ptr [ %6, %16 ], [ %49, %48 ]
  %22 = load i32, ptr %19, align 4, !tbaa !45
  %23 = load i8, ptr %17, align 8, !tbaa !38, !range !46, !noundef !47
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %18
  %26 = tail call noundef i32 @_ZN11xercesc_2_76BitOps9swapBytesEj(i32 noundef %22) #6
  br label %27

27:                                               ; preds = %25, %18
  %28 = phi i32 [ %26, %25 ], [ %22, %18 ]
  %29 = icmp ult i32 %28, 65536
  br i1 %29, label %44, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds i16, ptr %20, i64 1
  %32 = icmp eq ptr %31, %12
  br i1 %32, label %55, label %33

33:                                               ; preds = %30
  %34 = add i32 %28, 67043328
  %35 = lshr i32 %34, 10
  %36 = trunc i32 %35 to i16
  %37 = add i16 %36, -10240
  %38 = trunc i32 %28 to i16
  %39 = and i16 %38, 1023
  %40 = or disjoint i16 %39, -9216
  %41 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 4, ptr %21, align 1, !tbaa !48
  store i16 %37, ptr %20, align 2, !tbaa !49
  %42 = getelementptr inbounds i8, ptr %21, i64 2
  store i8 0, ptr %41, align 1, !tbaa !48
  %43 = getelementptr inbounds i16, ptr %20, i64 2
  store i16 %40, ptr %31, align 2, !tbaa !49
  br label %48

44:                                               ; preds = %27
  %45 = getelementptr inbounds i8, ptr %21, i64 1
  store i8 4, ptr %21, align 1, !tbaa !48
  %46 = trunc i32 %28 to i16
  %47 = getelementptr inbounds i16, ptr %20, i64 1
  store i16 %46, ptr %20, align 2, !tbaa !49
  br label %48

48:                                               ; preds = %33, %44
  %49 = phi ptr [ %42, %33 ], [ %45, %44 ]
  %50 = phi ptr [ %43, %33 ], [ %47, %44 ]
  %51 = getelementptr inbounds i32, ptr %19, i64 1
  %52 = icmp ult ptr %50, %12
  %53 = icmp ult ptr %51, %10
  %54 = select i1 %52, i1 %53, i1 false
  br i1 %54, label %18, label %55

55:                                               ; preds = %48, %30, %7
  %56 = phi ptr [ %3, %7 ], [ %20, %30 ], [ %50, %48 ]
  %57 = phi ptr [ %1, %7 ], [ %19, %30 ], [ %51, %48 ]
  %58 = ptrtoint ptr %57 to i64
  %59 = ptrtoint ptr %1 to i64
  %60 = sub i64 %58, %59
  %61 = trunc i64 %60 to i32
  store i32 %61, ptr %5, align 4, !tbaa !45
  %62 = ptrtoint ptr %56 to i64
  %63 = ptrtoint ptr %3 to i64
  %64 = sub i64 %62, %63
  %65 = lshr exact i64 %64, 1
  %66 = trunc i64 %65 to i32
  ret i32 %66
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef i32 @_ZN11xercesc_2_76BitOps9swapBytesEj(i32 noundef %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %2
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUCS4Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = lshr i32 %4, 2
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %3, i64 %11
  %13 = icmp ugt i32 %4, 3
  %14 = icmp ne i32 %2, 0
  %15 = and i1 %13, %14
  br i1 %15, label %16, label %58

16:                                               ; preds = %7
  %17 = getelementptr inbounds %"class.xercesc_2_7::XMLUCS4Transcoder", ptr %0, i64 0, i32 1
  br label %18

18:                                               ; preds = %16, %52
  %19 = phi ptr [ %1, %16 ], [ %53, %52 ]
  %20 = phi ptr [ %3, %16 ], [ %54, %52 ]
  %21 = load i16, ptr %19, align 2, !tbaa !49
  %22 = zext i16 %21 to i32
  %23 = and i16 %21, -1024
  %24 = icmp eq i16 %23, -10240
  br i1 %24, label %25, label %44

25:                                               ; preds = %18
  %26 = getelementptr inbounds i16, ptr %19, i64 1
  %27 = icmp eq ptr %26, %9
  br i1 %27, label %58, label %28

28:                                               ; preds = %25
  %29 = load i16, ptr %26, align 2, !tbaa !49
  %30 = and i16 %29, -1024
  %31 = icmp eq i16 %30, -9216
  br i1 %31, label %38, label %32

32:                                               ; preds = %28
  %33 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %34 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #6
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %33, ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 97, ptr noundef %34) #6
          to label %35 unwind label %36

35:                                               ; preds = %32
  tail call void @__cxa_throw(ptr nonnull %33, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #9
  unreachable

36:                                               ; preds = %32
  %37 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %33) #8
  resume { ptr, i32 } %37

38:                                               ; preds = %28
  %39 = zext i16 %29 to i32
  %40 = getelementptr inbounds i16, ptr %19, i64 2
  %41 = shl nuw nsw i32 %22, 10
  %42 = add nsw i32 %41, -56613888
  %43 = add nuw nsw i32 %42, %39
  store i32 %43, ptr %20, align 4, !tbaa !45
  br label %52

44:                                               ; preds = %18
  %45 = load i8, ptr %17, align 8, !tbaa !38, !range !46, !noundef !47
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = tail call noundef i32 @_ZN11xercesc_2_76BitOps9swapBytesEj(i32 noundef %22) #6
  br label %49

49:                                               ; preds = %44, %47
  %50 = phi i32 [ %48, %47 ], [ %22, %44 ]
  store i32 %50, ptr %20, align 4, !tbaa !45
  %51 = getelementptr inbounds i16, ptr %19, i64 1
  br label %52

52:                                               ; preds = %38, %49
  %53 = phi ptr [ %40, %38 ], [ %51, %49 ]
  %54 = getelementptr inbounds i32, ptr %20, i64 1
  %55 = icmp ult ptr %54, %12
  %56 = icmp ult ptr %53, %9
  %57 = select i1 %55, i1 %56, i1 false
  br i1 %57, label %18, label %58

58:                                               ; preds = %52, %25, %7
  %59 = phi ptr [ %3, %7 ], [ %20, %25 ], [ %54, %52 ]
  %60 = phi ptr [ %1, %7 ], [ %19, %25 ], [ %53, %52 ]
  %61 = ptrtoint ptr %60 to i64
  %62 = ptrtoint ptr %1 to i64
  %63 = sub i64 %61, %62
  %64 = lshr exact i64 %63, 1
  %65 = trunc i64 %64 to i32
  store i32 %65, ptr %5, align 4, !tbaa !45
  %66 = ptrtoint ptr %59 to i64
  %67 = ptrtoint ptr %3 to i64
  %68 = sub i64 %66, %67
  %69 = trunc i64 %68 to i32
  ret i32 %69
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !51
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #6
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717XMLUCS4Transcoder14canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #4 align 2 !prof !34 {
  ret i1 true
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #6
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #6
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #6
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #5

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { optsize }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32}
!llvm.ident = !{!33}

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
!33 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!34 = !{!"function_entry_count", i64 0}
!35 = !{!36, !36, i64 0}
!36 = !{!"vtable pointer", !37, i64 0}
!37 = !{!"Simple C++ TBAA"}
!38 = !{!39, !44, i64 32}
!39 = !{!"_ZTSN11xercesc_2_717XMLUCS4TranscoderE", !40, i64 0, !44, i64 32}
!40 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !41, i64 8, !43, i64 16, !43, i64 24}
!41 = !{!"int", !42, i64 0}
!42 = !{!"omnipotent char", !37, i64 0}
!43 = !{!"any pointer", !42, i64 0}
!44 = !{!"bool", !42, i64 0}
!45 = !{!41, !41, i64 0}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!42, !42, i64 0}
!49 = !{!50, !50, i64 0}
!50 = !{!"short", !42, i64 0}
!51 = !{!40, !43, i64 24}
!52 = !{!53, !43, i64 40}
!53 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !54, i64 8, !43, i64 16, !41, i64 24, !43, i64 32, !43, i64 40}
!54 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !42, i64 0}
