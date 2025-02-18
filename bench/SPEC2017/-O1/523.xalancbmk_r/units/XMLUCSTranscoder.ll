; ModuleID = 'XMLUCSTranscoder.cpp'
source_filename = "XMLUCSTranscoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLUCS4Transcoder" = type <{ %"class.xercesc_2_7::XMLTranscoder", i8, [7 x i8] }>
%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

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

; Function Attrs: cold mustprogress uwtable
define dso_local void @_ZN11xercesc_2_717XMLUCS4TranscoderC2EPKtjbPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, i1 noundef zeroext %3, ptr noundef %4) unnamed_addr #0 align 2 !prof !34 {
  %6 = zext i1 %3 to i8
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_717XMLUCS4TranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  %7 = getelementptr inbounds %"class.xercesc_2_7::XMLUCS4Transcoder", ptr %0, i64 0, i32 1
  store i8 %6, ptr %7, align 8, !tbaa !38
  ret void
}

declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717XMLUCS4TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define dso_local void @_ZN11xercesc_2_717XMLUCS4TranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(33) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUCS4Transcoder13transcodeFromEPKhjPtjRjPh(ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #4 align 2 !prof !34 {
  %8 = lshr i32 %2, 2
  %9 = zext nneg i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %1, i64 %9
  %11 = zext i32 %4 to i64
  %12 = getelementptr inbounds i16, ptr %3, i64 %11
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLUCS4Transcoder", ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %50, %7
  %15 = phi ptr [ %6, %7 ], [ %51, %50 ]
  %16 = phi ptr [ %3, %7 ], [ %53, %50 ]
  %17 = phi ptr [ %1, %7 ], [ %54, %50 ]
  %18 = icmp ult ptr %16, %12
  %19 = icmp ult ptr %17, %10
  %20 = select i1 %18, i1 %19, i1 false
  br i1 %20, label %21, label %55

21:                                               ; preds = %14
  %22 = load i32, ptr %17, align 4, !tbaa !45
  %23 = load i8, ptr %13, align 8, !tbaa !38, !range !46, !noundef !47
  %24 = icmp eq i8 %23, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %22)
  %26 = select i1 %24, i32 %22, i32 %25
  %27 = icmp ult i32 %26, 65536
  br i1 %27, label %42, label %28

28:                                               ; preds = %21
  %29 = getelementptr inbounds i16, ptr %16, i64 1
  %30 = icmp eq ptr %29, %12
  br i1 %30, label %50, label %31

31:                                               ; preds = %28
  %32 = add i32 %26, 67043328
  %33 = lshr i32 %32, 10
  %34 = trunc i32 %33 to i16
  %35 = add i16 %34, -10240
  %36 = trunc i32 %26 to i16
  %37 = and i16 %36, 1023
  %38 = or disjoint i16 %37, -9216
  %39 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 4, ptr %15, align 1, !tbaa !48
  store i16 %35, ptr %16, align 2, !tbaa !49
  %40 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 0, ptr %39, align 1, !tbaa !48
  %41 = getelementptr inbounds i16, ptr %16, i64 2
  store i16 %38, ptr %29, align 2, !tbaa !49
  br label %46

42:                                               ; preds = %21
  %43 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 4, ptr %15, align 1, !tbaa !48
  %44 = trunc i32 %26 to i16
  %45 = getelementptr inbounds i16, ptr %16, i64 1
  store i16 %44, ptr %16, align 2, !tbaa !49
  br label %46

46:                                               ; preds = %42, %31
  %47 = phi ptr [ %40, %31 ], [ %43, %42 ]
  %48 = phi ptr [ %41, %31 ], [ %45, %42 ]
  %49 = getelementptr inbounds i32, ptr %17, i64 1
  br label %50

50:                                               ; preds = %28, %46
  %51 = phi ptr [ %47, %46 ], [ %15, %28 ]
  %52 = phi i1 [ true, %46 ], [ false, %28 ]
  %53 = phi ptr [ %48, %46 ], [ %16, %28 ]
  %54 = phi ptr [ %49, %46 ], [ %17, %28 ]
  br i1 %52, label %14, label %55

55:                                               ; preds = %50, %14
  %56 = phi ptr [ %16, %14 ], [ %53, %50 ]
  %57 = phi ptr [ %17, %14 ], [ %54, %50 ]
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

; Function Attrs: cold mustprogress uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUCS4Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr nocapture noundef nonnull readonly align 8 dereferenceable(33) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = zext i32 %2 to i64
  %9 = getelementptr inbounds i16, ptr %1, i64 %8
  %10 = lshr i32 %4, 2
  %11 = zext nneg i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %3, i64 %11
  %13 = getelementptr inbounds %"class.xercesc_2_7::XMLUCS4Transcoder", ptr %0, i64 0, i32 1
  %14 = load i8, ptr %13, align 8, !range !46
  %15 = icmp eq i8 %14, 0
  br label %16

16:                                               ; preds = %54, %7
  %17 = phi ptr [ %3, %7 ], [ %56, %54 ]
  %18 = phi ptr [ %1, %7 ], [ %57, %54 ]
  %19 = icmp ult ptr %17, %12
  %20 = icmp ult ptr %18, %9
  %21 = select i1 %19, i1 %20, i1 false
  br i1 %21, label %22, label %58

22:                                               ; preds = %16
  %23 = load i16, ptr %18, align 2, !tbaa !49
  %24 = zext i16 %23 to i32
  %25 = and i16 %23, -1024
  %26 = icmp eq i16 %25, -10240
  br i1 %26, label %27, label %47

27:                                               ; preds = %22
  %28 = getelementptr inbounds i16, ptr %18, i64 1
  %29 = icmp eq ptr %28, %9
  br i1 %29, label %54, label %30

30:                                               ; preds = %27
  %31 = load i16, ptr %28, align 2, !tbaa !49
  %32 = and i16 %31, -1024
  %33 = icmp eq i16 %32, -9216
  br i1 %33, label %41, label %34

34:                                               ; preds = %30
  %35 = tail call ptr @__cxa_allocate_exception(i64 48) #7
  %36 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !51
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull @.str, i32 noundef 214, i32 noundef 97, ptr noundef %37)
          to label %38 unwind label %39

38:                                               ; preds = %34
  tail call void @__cxa_throw(ptr nonnull %35, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #8
  unreachable

39:                                               ; preds = %34
  %40 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %35) #7
  resume { ptr, i32 } %40

41:                                               ; preds = %30
  %42 = zext i16 %31 to i32
  %43 = getelementptr inbounds i16, ptr %18, i64 2
  %44 = shl nuw nsw i32 %24, 10
  %45 = add nsw i32 %44, -56613888
  %46 = add nuw nsw i32 %45, %42
  store i32 %46, ptr %17, align 4, !tbaa !45
  br label %51

47:                                               ; preds = %22
  %48 = tail call i32 @llvm.bswap.i32(i32 %24)
  %49 = select i1 %15, i32 %24, i32 %48
  store i32 %49, ptr %17, align 4, !tbaa !45
  %50 = getelementptr inbounds i16, ptr %18, i64 1
  br label %51

51:                                               ; preds = %47, %41
  %52 = phi ptr [ %43, %41 ], [ %50, %47 ]
  %53 = getelementptr inbounds i32, ptr %17, i64 1
  br label %54

54:                                               ; preds = %27, %51
  %55 = phi i1 [ true, %51 ], [ false, %27 ]
  %56 = phi ptr [ %53, %51 ], [ %17, %27 ]
  %57 = phi ptr [ %52, %51 ], [ %18, %27 ]
  br i1 %55, label %16, label %58

58:                                               ; preds = %54, %16
  %59 = phi ptr [ %17, %16 ], [ %56, %54 ]
  %60 = phi ptr [ %18, %16 ], [ %57, %54 ]
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

declare i32 @__gxx_personality_v0(...)

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4)
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3)
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

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717XMLUCS4Transcoder14canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 %1) unnamed_addr #5 align 2 !prof !34 {
  ret i1 true
}

declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #1

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: cold mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: cold mustprogress uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !52
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3)
  invoke void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %5 unwind label %6

5:                                                ; preds = %1
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !35
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

attributes #0 = { cold mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noreturn }

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
