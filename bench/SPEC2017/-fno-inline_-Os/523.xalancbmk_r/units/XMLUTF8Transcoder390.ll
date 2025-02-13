; ModuleID = 'XMLUTF8Transcoder390.cpp'
source_filename = "XMLUTF8Transcoder390.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv = comdat any

$_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_ = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@_ZTVN11xercesc_2_720XMLUTF8Transcoder390E = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720XMLUTF8Transcoder390E, ptr @_ZN11xercesc_2_720XMLUTF8Transcoder390D2Ev, ptr @_ZN11xercesc_2_720XMLUTF8Transcoder390D0Ev, ptr @_ZN11xercesc_2_720XMLUTF8Transcoder39013transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_720XMLUTF8Transcoder39011transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_720XMLUTF8Transcoder39014canTranscodeToEj] }, align 8
@.str = private unnamed_addr constant [25 x i8] c"XMLUTF8Transcoder390.cpp\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L14gFirstByteMarkE = internal unnamed_addr constant [7 x i8] c"\00\00\C0\E0\F0\F8\FC", align 1
@_ZTSN11xercesc_2_720XMLUTF8Transcoder390E = dso_local constant [38 x i8] c"N11xercesc_2_720XMLUTF8Transcoder390E\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_720XMLUTF8Transcoder390E = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720XMLUTF8Transcoder390E, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2

@_ZN11xercesc_2_720XMLUTF8Transcoder390C1EPKtjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_720XMLUTF8Transcoder390C2EPKtjPNS_13MemoryManagerE
@_ZN11xercesc_2_720XMLUTF8Transcoder390D1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_720XMLUTF8Transcoder390D2Ev

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_720XMLUTF8Transcoder390C2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_720XMLUTF8Transcoder390E, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #2

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720XMLUTF8Transcoder390D2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_720XMLUTF8Transcoder390D0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #3 align 2 {
  tail call void @_ZN11xercesc_2_720XMLUTF8Transcoder390D2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define dso_local noundef i32 @_ZN11xercesc_2_720XMLUTF8Transcoder39013transcodeFromEPKhjPtjRjPh(ptr nocapture nonnull readnone align 8 %0, ptr nocapture readnone %1, i32 noundef %2, ptr nocapture readnone %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = icmp ne i32 %2, 0
  %9 = icmp ne i32 %4, 0
  %10 = and i1 %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = tail call i32 @llvm.umin.i32(i32 %2, i32 %4)
  %13 = zext i32 %12 to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %6, i8 1, i64 %13, i1 false)
  store i32 %12, ptr %5, align 4, !tbaa !38
  br label %14

14:                                               ; preds = %7, %11
  %15 = phi i32 [ %12, %11 ], [ 0, %7 ]
  ret i32 %15
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !41
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #2

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_720XMLUTF8Transcoder39011transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 noundef %6) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %8 = alloca [17 x i16], align 16
  %9 = icmp ne i32 %2, 0
  %10 = icmp ne i32 %4, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %109

12:                                               ; preds = %7
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i16, ptr %1, i64 %13
  %15 = zext i32 %4 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  br label %17

17:                                               ; preds = %12, %93
  %18 = phi ptr [ %1, %12 ], [ %95, %93 ]
  %19 = phi ptr [ %3, %12 ], [ %94, %93 ]
  %20 = load i16, ptr %18, align 2, !tbaa !44
  %21 = zext i16 %20 to i32
  %22 = and i16 %20, -1024
  %23 = icmp eq i16 %22, -10240
  br i1 %23, label %24, label %33

24:                                               ; preds = %17
  %25 = getelementptr inbounds i16, ptr %18, i64 1
  %26 = icmp ult ptr %25, %14
  br i1 %26, label %27, label %97

27:                                               ; preds = %24
  %28 = shl nuw nsw i32 %21, 10
  %29 = load i16, ptr %25, align 2, !tbaa !44
  %30 = zext i16 %29 to i32
  %31 = add nsw i32 %28, -56613888
  %32 = add nuw nsw i32 %31, %30
  br label %33

33:                                               ; preds = %27, %17
  %34 = phi i32 [ %32, %27 ], [ %21, %17 ]
  %35 = phi i64 [ 2, %27 ], [ 1, %17 ]
  %36 = icmp ult i32 %34, 128
  br i1 %36, label %55, label %37

37:                                               ; preds = %33
  %38 = icmp ult i32 %34, 2048
  br i1 %38, label %55, label %39

39:                                               ; preds = %37
  %40 = icmp ult i32 %34, 65536
  br i1 %40, label %55, label %41

41:                                               ; preds = %39
  %42 = icmp ult i32 %34, 1114112
  br i1 %42, label %55, label %43

43:                                               ; preds = %41
  %44 = icmp eq i32 %6, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %8) #11
  %46 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %34, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 16, ptr noundef %46) #9
  %47 = call ptr @__cxa_allocate_exception(i64 48) #11
  %48 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %49 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %47, ptr noundef nonnull @.str, i32 noundef 581, i32 noundef 92, ptr noundef nonnull %8, ptr noundef %48, ptr noundef null, ptr noundef null, ptr noundef %49) #9
          to label %50 unwind label %51

50:                                               ; preds = %45
  call void @__cxa_throw(ptr nonnull %47, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #12
  unreachable

51:                                               ; preds = %45
  %52 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %47) #11
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %8) #11
  resume { ptr, i32 } %52

53:                                               ; preds = %43
  %54 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 32, ptr %19, align 1, !tbaa !46
  br label %93, !llvm.loop !47

55:                                               ; preds = %41, %39, %37, %33
  %56 = phi i32 [ 1, %33 ], [ 2, %37 ], [ 3, %39 ], [ 4, %41 ]
  %57 = zext nneg i32 %56 to i64
  %58 = getelementptr inbounds i8, ptr %19, i64 %57
  %59 = icmp ugt ptr %58, %16
  br i1 %59, label %97, label %60

60:                                               ; preds = %55
  switch i32 %56, label %92 [
    i32 1, label %83
    i32 2, label %75
    i32 4, label %61
    i32 3, label %67
  ]

61:                                               ; preds = %60
  %62 = trunc i32 %34 to i8
  %63 = and i8 %62, 63
  %64 = or disjoint i8 %63, -128
  %65 = getelementptr inbounds i8, ptr %58, i64 -1
  store i8 %64, ptr %65, align 1, !tbaa !46
  %66 = lshr i32 %34, 6
  br label %67

67:                                               ; preds = %60, %61
  %68 = phi ptr [ %58, %60 ], [ %65, %61 ]
  %69 = phi i32 [ %34, %60 ], [ %66, %61 ]
  %70 = trunc i32 %69 to i8
  %71 = and i8 %70, 63
  %72 = or disjoint i8 %71, -128
  %73 = getelementptr inbounds i8, ptr %68, i64 -1
  store i8 %72, ptr %73, align 1, !tbaa !46
  %74 = lshr i32 %69, 6
  br label %75

75:                                               ; preds = %60, %67
  %76 = phi ptr [ %58, %60 ], [ %73, %67 ]
  %77 = phi i32 [ %34, %60 ], [ %74, %67 ]
  %78 = trunc i32 %77 to i8
  %79 = and i8 %78, 63
  %80 = or disjoint i8 %79, -128
  %81 = getelementptr inbounds i8, ptr %76, i64 -1
  store i8 %80, ptr %81, align 1, !tbaa !46
  %82 = lshr i32 %77, 6
  br label %83

83:                                               ; preds = %60, %75
  %84 = phi ptr [ %58, %60 ], [ %81, %75 ]
  %85 = phi i32 [ %34, %60 ], [ %82, %75 ]
  %86 = getelementptr inbounds [7 x i8], ptr @_ZN11xercesc_2_7L14gFirstByteMarkE, i64 0, i64 %57
  %87 = load i8, ptr %86, align 1, !tbaa !46
  %88 = trunc i32 %85 to i8
  %89 = or i8 %87, %88
  %90 = getelementptr inbounds i8, ptr %84, i64 -1
  store i8 %89, ptr %90, align 1, !tbaa !46
  %91 = getelementptr inbounds i8, ptr %90, i64 %57
  br label %93

92:                                               ; preds = %60
  unreachable

93:                                               ; preds = %53, %83
  %94 = phi ptr [ %91, %83 ], [ %54, %53 ]
  %95 = getelementptr inbounds i16, ptr %18, i64 %35
  %96 = icmp ult ptr %95, %14
  br i1 %96, label %17, label %97

97:                                               ; preds = %93, %24, %55
  %98 = phi ptr [ %94, %93 ], [ %19, %24 ], [ %19, %55 ]
  %99 = phi ptr [ %95, %93 ], [ %18, %24 ], [ %18, %55 ]
  %100 = ptrtoint ptr %99 to i64
  %101 = ptrtoint ptr %1 to i64
  %102 = sub i64 %100, %101
  %103 = lshr exact i64 %102, 1
  %104 = trunc i64 %103 to i32
  store i32 %104, ptr %5, align 4, !tbaa !38
  %105 = ptrtoint ptr %98 to i64
  %106 = ptrtoint ptr %3 to i64
  %107 = sub i64 %105, %106
  %108 = trunc i64 %107 to i32
  br label %109

109:                                              ; preds = %7, %97
  %110 = phi i32 [ %108, %97 ], [ 0, %7 ]
  ret i32 %110
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !49
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  resume { ptr, i32 } %12
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_720XMLUTF8Transcoder39014canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #7 align 2 !prof !34 {
  %3 = icmp ult i32 %1, 1114112
  ret i1 %3
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #1

; Function Attrs: optsize
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #10
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #3 comdat align 2 !prof !34 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 !prof !34 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !50
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #10
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #0 comdat align 2 !prof !34 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !35
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #8

attributes #0 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { optsize }
attributes #10 = { nounwind optsize }
attributes #11 = { nounwind }
attributes #12 = { noreturn }

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
!38 = !{!39, !39, i64 0}
!39 = !{!"int", !40, i64 0}
!40 = !{!"omnipotent char", !37, i64 0}
!41 = !{!42, !43, i64 24}
!42 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !39, i64 8, !43, i64 16, !43, i64 24}
!43 = !{!"any pointer", !40, i64 0}
!44 = !{!45, !45, i64 0}
!45 = !{!"short", !40, i64 0}
!46 = !{!40, !40, i64 0}
!47 = distinct !{!47, !48}
!48 = !{!"llvm.loop.mustprogress"}
!49 = !{!42, !43, i64 16}
!50 = !{!51, !43, i64 40}
!51 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !52, i64 8, !43, i64 16, !39, i64 24, !43, i64 32, !43, i64 40}
!52 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !40, i64 0}
