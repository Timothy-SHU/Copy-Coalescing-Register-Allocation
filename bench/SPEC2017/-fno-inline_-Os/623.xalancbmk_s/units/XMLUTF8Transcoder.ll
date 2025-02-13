; ModuleID = 'XMLUTF8Transcoder.cpp'
source_filename = "XMLUTF8Transcoder.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.xercesc_2_7::XMLTranscoder" = type { ptr, i32, ptr, ptr }
%"class.xercesc_2_7::XMLException" = type { ptr, i32, ptr, i32, ptr, ptr }

$_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv = comdat any

$_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE = comdat any

$_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE = comdat any

$_ZN11xercesc_2_722UTFDataFormatExceptionD0Ev = comdat any

$_ZNK11xercesc_2_722UTFDataFormatException7getTypeEv = comdat any

$_ZNK11xercesc_2_722UTFDataFormatException9duplicateEv = comdat any

$_ZN11xercesc_2_722UTFDataFormatExceptionC2ERKS0_ = comdat any

$_ZN11xercesc_2_720TranscodingExceptionD0Ev = comdat any

$_ZNK11xercesc_2_720TranscodingException7getTypeEv = comdat any

$_ZNK11xercesc_2_720TranscodingException9duplicateEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_ = comdat any

$_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv = comdat any

$_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE = comdat any

$_ZTSN11xercesc_2_722UTFDataFormatExceptionE = comdat any

$_ZTIN11xercesc_2_722UTFDataFormatExceptionE = comdat any

$_ZTSN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTIN11xercesc_2_720TranscodingExceptionE = comdat any

$_ZTVN11xercesc_2_722UTFDataFormatExceptionE = comdat any

$_ZTVN11xercesc_2_720TranscodingExceptionE = comdat any

@_ZTVN11xercesc_2_717XMLUTF8TranscoderE = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_717XMLUTF8TranscoderE, ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev, ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD0Ev, ptr @_ZN11xercesc_2_717XMLUTF8Transcoder13transcodeFromEPKhjPtjRjPh, ptr @_ZN11xercesc_2_717XMLUTF8Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE, ptr @_ZNK11xercesc_2_717XMLUTF8Transcoder14canTranscodeToEj] }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN11xercesc_2_717XMLUTF8TranscoderE = dso_local constant [35 x i8] c"N11xercesc_2_717XMLUTF8TranscoderE\00", align 1
@_ZTIN11xercesc_2_713XMLTranscoderE = external constant ptr
@_ZTIN11xercesc_2_717XMLUTF8TranscoderE = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_717XMLUTF8TranscoderE, ptr @_ZTIN11xercesc_2_713XMLTranscoderE }, align 8
@_ZN11xercesc_2_7L9gUTFBytesE = internal unnamed_addr constant [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\04\04\04\04\05\05\05\05", align 16
@_ZN11xercesc_2_7L21gUTFByteIndicatorTestE = internal unnamed_addr constant [6 x i8] c"\80\E0\F0\F8\FC\FE", align 1
@_ZN11xercesc_2_7L17gUTFByteIndicatorE = internal unnamed_addr constant [6 x i8] c"\00\C0\E0\F0\F8\FC", align 1
@.str = private unnamed_addr constant [22 x i8] c"XMLUTF8Transcoder.cpp\00", align 1
@_ZTSN11xercesc_2_722UTFDataFormatExceptionE = linkonce_odr dso_local constant [40 x i8] c"N11xercesc_2_722UTFDataFormatExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_712XMLExceptionE = external constant ptr
@_ZTIN11xercesc_2_722UTFDataFormatExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_722UTFDataFormatExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZN11xercesc_2_7L11gUTFOffsetsE = internal unnamed_addr constant [6 x i32] [i32 0, i32 12416, i32 925824, i32 63447168, i32 -100130688, i32 -2113396608], align 16
@_ZTSN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant [38 x i8] c"N11xercesc_2_720TranscodingExceptionE\00", comdat, align 1
@_ZTIN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN11xercesc_2_720TranscodingExceptionE, ptr @_ZTIN11xercesc_2_712XMLExceptionE }, comdat, align 8
@_ZTVN11xercesc_2_722UTFDataFormatExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_722UTFDataFormatExceptionD0Ev, ptr @_ZNK11xercesc_2_722UTFDataFormatException7getTypeEv, ptr @_ZNK11xercesc_2_722UTFDataFormatException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni29fgUTFDataFormatException_NameE = external constant [0 x i16], align 2
@.str.1 = private unnamed_addr constant [37 x i8] c"./xercesc/util/XMLUTF8Transcoder.hpp\00", align 1
@_ZTVN11xercesc_2_720TranscodingExceptionE = linkonce_odr dso_local unnamed_addr constant { [6 x ptr] } { [6 x ptr] [ptr null, ptr @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr @_ZN11xercesc_2_712XMLExceptionD2Ev, ptr @_ZN11xercesc_2_720TranscodingExceptionD0Ev, ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv, ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv] }, comdat, align 8
@_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE = external constant [0 x i16], align 2
@_ZN11xercesc_2_7L14gFirstByteMarkE = internal unnamed_addr constant [7 x i8] c"\00\00\C0\E0\F0\F8\FC", align 1

@_ZN11xercesc_2_717XMLUTF8TranscoderC1EPKtjPNS_13MemoryManagerE = dso_local unnamed_addr alias void (ptr, ptr, i32, ptr), ptr @_ZN11xercesc_2_717XMLUTF8TranscoderC2EPKtjPNS_13MemoryManagerE
@_ZN11xercesc_2_717XMLUTF8TranscoderD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717XMLUTF8TranscoderD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 {
  tail call void @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUTF8Transcoder13transcodeFromEPKhjPtjRjPh(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, ptr nocapture noundef writeonly %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !40 {
  %8 = alloca [2 x i8], align 2
  %9 = alloca [2 x i8], align 1
  %10 = alloca [2 x i8], align 1
  %11 = alloca [2 x i8], align 1
  %12 = alloca [2 x i8], align 1
  %13 = alloca [2 x i8], align 1
  %14 = alloca [2 x i8], align 1
  %15 = alloca [2 x i8], align 1
  %16 = alloca [2 x i8], align 1
  %17 = alloca [2 x i8], align 1
  %18 = alloca [2 x i8], align 1
  %19 = icmp ne i32 %2, 0
  %20 = icmp ne i32 %4, 0
  %21 = and i1 %19, %20
  br i1 %21, label %22, label %238, !prof !41

22:                                               ; preds = %7
  %23 = zext i32 %2 to i64
  %24 = getelementptr inbounds i8, ptr %1, i64 %23
  %25 = zext i32 %4 to i64
  %26 = getelementptr inbounds i16, ptr %3, i64 %25
  br label %27

27:                                               ; preds = %22, %218
  %28 = phi ptr [ %177, %218 ], [ %1, %22 ]
  %29 = phi ptr [ %220, %218 ], [ %6, %22 ]
  %30 = phi ptr [ %219, %218 ], [ %3, %22 ]
  %31 = load i8, ptr %28, align 1, !tbaa !42
  %32 = icmp sgt i8 %31, -1
  br i1 %32, label %33, label %54, !prof !45

33:                                               ; preds = %27, %33
  %34 = phi i8 [ %40, %33 ], [ %31, %27 ]
  %35 = phi ptr [ %39, %33 ], [ %30, %27 ]
  %36 = phi ptr [ %37, %33 ], [ %28, %27 ]
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  %38 = zext nneg i8 %34 to i16
  %39 = getelementptr inbounds i16, ptr %35, i64 1
  store i16 %38, ptr %35, align 2, !tbaa !46
  %40 = load i8, ptr %37, align 1, !tbaa !42
  %41 = icmp slt i8 %40, 0
  %42 = icmp eq ptr %37, %24
  %43 = or i1 %42, %41
  %44 = icmp eq ptr %39, %26
  %45 = select i1 %43, i1 true, i1 %44
  br i1 %45, label %46, label %33, !prof !48, !llvm.loop !49

46:                                               ; preds = %33
  %47 = ptrtoint ptr %37 to i64
  %48 = ptrtoint ptr %28 to i64
  %49 = sub i64 %47, %48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 1, i64 %49, i1 false)
  %50 = select i1 %42, i1 true, i1 %44
  br i1 %50, label %226, label %51, !prof !51

51:                                               ; preds = %46
  %52 = getelementptr inbounds i8, ptr %29, i64 %49
  %53 = load i8, ptr %37, align 1, !tbaa !42
  br label %54

54:                                               ; preds = %51, %27
  %55 = phi i8 [ %53, %51 ], [ %31, %27 ]
  %56 = phi ptr [ %39, %51 ], [ %30, %27 ]
  %57 = phi ptr [ %52, %51 ], [ %29, %27 ]
  %58 = phi ptr [ %37, %51 ], [ %28, %27 ]
  %59 = zext i8 %55 to i64
  %60 = getelementptr inbounds [256 x i8], ptr @_ZN11xercesc_2_7L9gUTFBytesE, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !42
  %62 = zext i8 %61 to i64
  %63 = getelementptr inbounds i8, ptr %58, i64 %62
  %64 = icmp ult ptr %63, %24
  br i1 %64, label %65, label %226

65:                                               ; preds = %54
  %66 = getelementptr inbounds [6 x i8], ptr @_ZN11xercesc_2_7L21gUTFByteIndicatorTestE, i64 0, i64 %62
  %67 = load i8, ptr %66, align 1, !tbaa !42
  %68 = and i8 %67, %55
  %69 = getelementptr inbounds [6 x i8], ptr @_ZN11xercesc_2_7L17gUTFByteIndicatorE, i64 0, i64 %62
  %70 = load i8, ptr %69, align 1, !tbaa !42
  %71 = icmp eq i8 %68, %70
  br i1 %71, label %82, label %72

72:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %8) #8
  store i16 49, ptr %8, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %9) #8
  %73 = add i8 %61, 49
  store i8 %73, ptr %9, align 1, !tbaa !42
  %74 = getelementptr inbounds i8, ptr %9, i64 1
  store i8 0, ptr %74, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %10) #8
  %75 = load i8, ptr %58, align 1, !tbaa !42
  store i8 %75, ptr %10, align 1, !tbaa !42
  %76 = getelementptr inbounds i8, ptr %10, i64 1
  store i8 0, ptr %76, align 1, !tbaa !42
  %77 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %78 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %77, ptr noundef nonnull @.str, i32 noundef 193, i32 noundef 110, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef null, ptr noundef %78) #9
          to label %79 unwind label %80

79:                                               ; preds = %72
  call void @__cxa_throw(ptr nonnull %77, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

80:                                               ; preds = %72
  %81 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %77) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %10) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %9) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %8) #8
  br label %224

82:                                               ; preds = %65
  switch i8 %61, label %163 [
    i8 1, label %83
    i8 2, label %89
    i8 3, label %129
  ]

83:                                               ; preds = %82
  %84 = getelementptr inbounds i8, ptr %58, i64 1
  %85 = load i8, ptr %84, align 1, !tbaa !42
  tail call void @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %85, i32 noundef 1, i32 noundef 1) #9
  %86 = load i8, ptr %58, align 1, !tbaa !42
  %87 = zext i8 %86 to i32
  %88 = shl nuw nsw i32 %87, 6
  br label %173

89:                                               ; preds = %82
  %90 = icmp eq i8 %55, -32
  %91 = getelementptr inbounds i8, ptr %58, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !42
  %93 = icmp ult i8 %92, -96
  %94 = select i1 %90, i1 %93, i1 false
  %95 = getelementptr inbounds i8, ptr %58, i64 1
  br i1 %94, label %96, label %105

96:                                               ; preds = %89
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %11) #8
  store i8 -32, ptr %11, align 1, !tbaa !42
  %97 = getelementptr inbounds i8, ptr %11, i64 1
  store i8 0, ptr %97, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %12) #8
  %98 = load i8, ptr %95, align 1, !tbaa !42
  store i8 %98, ptr %12, align 1, !tbaa !42
  %99 = getelementptr inbounds i8, ptr %12, i64 1
  store i8 0, ptr %99, align 1, !tbaa !42
  %100 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %101 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %100, ptr noundef nonnull @.str, i32 noundef 267, i32 noundef 112, ptr noundef nonnull %11, ptr noundef nonnull %12, ptr noundef null, ptr noundef null, ptr noundef %101) #9
          to label %102 unwind label %103

102:                                              ; preds = %96
  call void @__cxa_throw(ptr nonnull %100, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

103:                                              ; preds = %96
  %104 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %100) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %12) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %11) #8
  br label %224

105:                                              ; preds = %89
  tail call void @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %92, i32 noundef 2, i32 noundef 1) #9
  %106 = getelementptr inbounds i8, ptr %58, i64 2
  %107 = load i8, ptr %106, align 1, !tbaa !42
  tail call void @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %107, i32 noundef 2, i32 noundef 2) #9
  %108 = load i8, ptr %58, align 1, !tbaa !42
  %109 = icmp eq i8 %108, -19
  %110 = load i8, ptr %95, align 1, !tbaa !42
  %111 = icmp ugt i8 %110, -97
  %112 = select i1 %109, i1 %111, i1 false
  br i1 %112, label %113, label %123

113:                                              ; preds = %105
  %114 = getelementptr inbounds i8, ptr %58, i64 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %13) #8
  store i8 -19, ptr %13, align 1, !tbaa !42
  %115 = getelementptr inbounds i8, ptr %13, i64 1
  store i8 0, ptr %115, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %14) #8
  %116 = load i8, ptr %114, align 1, !tbaa !42
  store i8 %116, ptr %14, align 1, !tbaa !42
  %117 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 0, ptr %117, align 1, !tbaa !42
  %118 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %119 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %118, ptr noundef nonnull @.str, i32 noundef 305, i32 noundef 113, ptr noundef nonnull %13, ptr noundef nonnull %14, ptr noundef null, ptr noundef null, ptr noundef %119) #9
          to label %120 unwind label %121

120:                                              ; preds = %113
  call void @__cxa_throw(ptr nonnull %118, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

121:                                              ; preds = %113
  %122 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %118) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %14) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %13) #8
  br label %224

123:                                              ; preds = %105
  %124 = zext i8 %108 to i32
  %125 = zext i8 %110 to i32
  %126 = shl nuw nsw i32 %124, 12
  %127 = shl nuw nsw i32 %125, 6
  %128 = add nuw nsw i32 %127, %126
  br label %173

129:                                              ; preds = %82
  %130 = getelementptr inbounds i8, ptr %58, i64 1
  %131 = load i8, ptr %130, align 1, !tbaa !42
  switch i8 %55, label %146 [
    i8 -16, label %132
    i8 -12, label %134
  ]

132:                                              ; preds = %129
  %133 = icmp ult i8 %131, -112
  br i1 %133, label %136, label %146

134:                                              ; preds = %129
  %135 = icmp ugt i8 %131, -113
  br i1 %135, label %136, label %146

136:                                              ; preds = %134, %132
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %15) #8
  store i8 %55, ptr %15, align 1, !tbaa !42
  %137 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 0, ptr %137, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %16) #8
  %138 = getelementptr inbounds i8, ptr %58, i64 1
  %139 = load i8, ptr %138, align 1, !tbaa !42
  store i8 %139, ptr %16, align 1, !tbaa !42
  %140 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 0, ptr %140, align 1, !tbaa !42
  %141 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %142 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %141, ptr noundef nonnull @.str, i32 noundef 331, i32 noundef 114, ptr noundef nonnull %15, ptr noundef nonnull %16, ptr noundef null, ptr noundef null, ptr noundef %142) #9
          to label %143 unwind label %144

143:                                              ; preds = %136
  call void @__cxa_throw(ptr nonnull %141, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

144:                                              ; preds = %136
  %145 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %141) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %16) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %15) #8
  br label %224

146:                                              ; preds = %129, %132, %134
  %147 = getelementptr inbounds i8, ptr %58, i64 1
  tail call void @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %131, i32 noundef 3, i32 noundef 1) #9
  %148 = getelementptr inbounds i8, ptr %58, i64 2
  %149 = load i8, ptr %148, align 1, !tbaa !42
  tail call void @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %149, i32 noundef 3, i32 noundef 2) #9
  %150 = getelementptr inbounds i8, ptr %58, i64 3
  %151 = load i8, ptr %150, align 1, !tbaa !42
  tail call void @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %151, i32 noundef 3, i32 noundef 3) #9
  %152 = load i8, ptr %58, align 1, !tbaa !42
  %153 = zext i8 %152 to i32
  %154 = load i8, ptr %147, align 1, !tbaa !42
  %155 = zext i8 %154 to i32
  %156 = shl nuw nsw i32 %153, 12
  %157 = shl nuw nsw i32 %155, 6
  %158 = add nuw nsw i32 %157, %156
  %159 = load i8, ptr %148, align 1, !tbaa !42
  %160 = zext i8 %159 to i32
  %161 = add nuw nsw i32 %158, %160
  %162 = shl nuw nsw i32 %161, 6
  br label %173

163:                                              ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %17) #8
  %164 = add i8 %61, 49
  store i8 %164, ptr %17, align 1, !tbaa !42
  %165 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 0, ptr %165, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %18) #8
  %166 = load i8, ptr %58, align 1, !tbaa !42
  store i8 %166, ptr %18, align 1, !tbaa !42
  %167 = getelementptr inbounds i8, ptr %18, i64 1
  store i8 0, ptr %167, align 1, !tbaa !42
  %168 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %169 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %168, ptr noundef nonnull @.str, i32 noundef 364, i32 noundef 115, ptr noundef nonnull %18, ptr noundef nonnull %17, ptr noundef null, ptr noundef null, ptr noundef %169) #9
          to label %170 unwind label %171

170:                                              ; preds = %163
  call void @__cxa_throw(ptr nonnull %168, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

171:                                              ; preds = %163
  %172 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %168) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %18) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %17) #8
  br label %224

173:                                              ; preds = %146, %123, %83
  %174 = phi i64 [ 4, %146 ], [ 3, %123 ], [ 2, %83 ]
  %175 = phi ptr [ %150, %146 ], [ %106, %123 ], [ %84, %83 ]
  %176 = phi i32 [ %162, %146 ], [ %128, %123 ], [ %88, %83 ]
  %177 = getelementptr inbounds i8, ptr %58, i64 %174
  %178 = load i8, ptr %175, align 1, !tbaa !42
  %179 = zext i8 %178 to i32
  %180 = add nuw nsw i32 %176, %179
  %181 = getelementptr inbounds [6 x i32], ptr @_ZN11xercesc_2_7L11gUTFOffsetsE, i64 0, i64 %62
  %182 = load i32, ptr %181, align 4, !tbaa !52
  %183 = sub i32 %180, %182
  %184 = icmp ult i32 %183, 65536
  br i1 %184, label %185, label %190

185:                                              ; preds = %173
  %186 = add nuw nsw i8 %61, 1
  %187 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %186, ptr %57, align 1, !tbaa !42
  %188 = trunc i32 %183 to i16
  %189 = getelementptr inbounds i16, ptr %56, i64 1
  store i16 %188, ptr %56, align 2, !tbaa !46
  br label %218

190:                                              ; preds = %173
  %191 = icmp ugt i32 %183, 1114111
  br i1 %191, label %192, label %203

192:                                              ; preds = %190
  %193 = ptrtoint ptr %56 to i64
  %194 = ptrtoint ptr %3 to i64
  %195 = sub i64 %193, %194
  %196 = icmp sgt i64 %195, 64
  br i1 %196, label %226, label %197

197:                                              ; preds = %192
  %198 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %199 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %198, ptr noundef nonnull @.str, i32 noundef 398, i32 noundef 95, ptr noundef %199) #9
          to label %200 unwind label %201

200:                                              ; preds = %197
  tail call void @__cxa_throw(ptr nonnull %198, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

201:                                              ; preds = %197
  %202 = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_free_exception(ptr %198) #8
  br label %224

203:                                              ; preds = %190
  %204 = getelementptr inbounds i16, ptr %56, i64 1
  %205 = icmp ult ptr %204, %26
  br i1 %205, label %206, label %226

206:                                              ; preds = %203
  %207 = add nuw nsw i32 %183, 67043328
  %208 = add nuw nsw i8 %61, 1
  %209 = getelementptr inbounds i8, ptr %57, i64 1
  store i8 %208, ptr %57, align 1, !tbaa !42
  %210 = lshr i32 %207, 10
  %211 = trunc i32 %210 to i16
  %212 = add nuw nsw i16 %211, -10240
  store i16 %212, ptr %56, align 2, !tbaa !46
  %213 = getelementptr inbounds i8, ptr %57, i64 2
  store i8 0, ptr %209, align 1, !tbaa !42
  %214 = trunc i32 %183 to i16
  %215 = and i16 %214, 1023
  %216 = or disjoint i16 %215, -9216
  %217 = getelementptr inbounds i16, ptr %56, i64 2
  store i16 %216, ptr %204, align 2, !tbaa !46
  br label %218

218:                                              ; preds = %206, %185
  %219 = phi ptr [ %217, %206 ], [ %189, %185 ]
  %220 = phi ptr [ %213, %206 ], [ %187, %185 ]
  %221 = icmp ult ptr %177, %24
  %222 = icmp ult ptr %219, %26
  %223 = select i1 %221, i1 %222, i1 false, !prof !45
  br i1 %223, label %27, label %226, !prof !54

224:                                              ; preds = %103, %121, %144, %171, %201, %80
  %225 = phi { ptr, i32 } [ %81, %80 ], [ %172, %171 ], [ %145, %144 ], [ %202, %201 ], [ %104, %103 ], [ %122, %121 ]
  resume { ptr, i32 } %225

226:                                              ; preds = %218, %46, %54, %203, %192
  %227 = phi ptr [ %56, %192 ], [ %219, %218 ], [ %39, %46 ], [ %56, %54 ], [ %56, %203 ]
  %228 = phi ptr [ %177, %192 ], [ %177, %218 ], [ %37, %46 ], [ %58, %54 ], [ %177, %203 ]
  %229 = ptrtoint ptr %228 to i64
  %230 = ptrtoint ptr %1 to i64
  %231 = sub i64 %229, %230
  %232 = trunc i64 %231 to i32
  store i32 %232, ptr %5, align 4, !tbaa !52
  %233 = ptrtoint ptr %227 to i64
  %234 = ptrtoint ptr %3 to i64
  %235 = sub i64 %233, %234
  %236 = lshr exact i64 %235, 1
  %237 = trunc i64 %236 to i32
  br label %238

238:                                              ; preds = %7, %226
  %239 = phi i32 [ %237, %226 ], [ 0, %7 ]
  ret i32 %239
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local noundef i32 @_ZN11xercesc_2_717XMLUTF8Transcoder11transcodeToEPKtjPhjRjNS_13XMLTranscoder9UnRepOptsE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4, ptr nocapture noundef nonnull writeonly align 4 dereferenceable(4) %5, i32 noundef %6) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 !prof !55 {
  %8 = alloca [17 x i16], align 16
  %9 = icmp ne i32 %2, 0
  %10 = icmp ne i32 %4, 0
  %11 = and i1 %9, %10
  br i1 %11, label %12, label %110, !prof !56

12:                                               ; preds = %7
  %13 = zext i32 %2 to i64
  %14 = getelementptr inbounds i16, ptr %1, i64 %13
  %15 = zext i32 %4 to i64
  %16 = getelementptr inbounds i8, ptr %3, i64 %15
  br label %17

17:                                               ; preds = %12, %94
  %18 = phi ptr [ %1, %12 ], [ %96, %94 ]
  %19 = phi ptr [ %3, %12 ], [ %95, %94 ]
  %20 = load i16, ptr %18, align 2, !tbaa !46
  %21 = zext i16 %20 to i32
  %22 = icmp ugt i16 %20, -10241
  br i1 %22, label %23, label %34, !prof !57

23:                                               ; preds = %17
  %24 = icmp ult i16 %20, -9216
  br i1 %24, label %25, label %34

25:                                               ; preds = %23
  %26 = getelementptr inbounds i16, ptr %18, i64 1
  %27 = icmp ult ptr %26, %14
  br i1 %27, label %28, label %98

28:                                               ; preds = %25
  %29 = shl nuw nsw i32 %21, 10
  %30 = load i16, ptr %26, align 2, !tbaa !46
  %31 = zext i16 %30 to i32
  %32 = add nsw i32 %29, -56613888
  %33 = add nsw i32 %32, %31
  br label %34

34:                                               ; preds = %28, %23, %17
  %35 = phi i32 [ %33, %28 ], [ %21, %23 ], [ %21, %17 ]
  %36 = phi i64 [ 2, %28 ], [ 1, %23 ], [ 1, %17 ]
  %37 = icmp ult i32 %35, 128
  br i1 %37, label %56, label %38, !prof !58

38:                                               ; preds = %34
  %39 = icmp ult i32 %35, 2048
  br i1 %39, label %56, label %40

40:                                               ; preds = %38
  %41 = icmp ult i32 %35, 65536
  br i1 %41, label %56, label %42

42:                                               ; preds = %40
  %43 = icmp ult i32 %35, 1114112
  br i1 %43, label %56, label %44

44:                                               ; preds = %42
  %45 = icmp eq i32 %6, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %44
  call void @llvm.lifetime.start.p0(i64 34, ptr nonnull %8) #8
  %47 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  call void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef %35, ptr noundef nonnull %8, i32 noundef 16, i32 noundef 16, ptr noundef %47) #9
  %48 = call ptr @__cxa_allocate_exception(i64 48) #8
  %49 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  %50 = call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %48, ptr noundef nonnull @.str, i32 noundef 506, i32 noundef 92, ptr noundef nonnull %8, ptr noundef %49, ptr noundef null, ptr noundef null, ptr noundef %50) #9
          to label %51 unwind label %52

51:                                               ; preds = %46
  call void @__cxa_throw(ptr nonnull %48, ptr nonnull @_ZTIN11xercesc_2_720TranscodingExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

52:                                               ; preds = %46
  %53 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %48) #8
  call void @llvm.lifetime.end.p0(i64 34, ptr nonnull %8) #8
  resume { ptr, i32 } %53

54:                                               ; preds = %44
  %55 = getelementptr inbounds i8, ptr %19, i64 1
  store i8 32, ptr %19, align 1, !tbaa !42
  br label %94, !llvm.loop !59

56:                                               ; preds = %42, %40, %38, %34
  %57 = phi i32 [ 1, %34 ], [ 2, %38 ], [ 3, %40 ], [ 4, %42 ]
  %58 = zext nneg i32 %57 to i64
  %59 = getelementptr inbounds i8, ptr %19, i64 %58
  %60 = icmp ugt ptr %59, %16
  br i1 %60, label %98, label %61, !prof !57

61:                                               ; preds = %56
  switch i32 %57, label %93 [
    i32 1, label %84
    i32 2, label %76
    i32 4, label %62
    i32 3, label %68
  ], !prof !60

62:                                               ; preds = %61
  %63 = trunc i32 %35 to i8
  %64 = and i8 %63, 63
  %65 = or disjoint i8 %64, -128
  %66 = getelementptr inbounds i8, ptr %59, i64 -1
  store i8 %65, ptr %66, align 1, !tbaa !42
  %67 = lshr i32 %35, 6
  br label %68

68:                                               ; preds = %61, %62
  %69 = phi ptr [ %59, %61 ], [ %66, %62 ]
  %70 = phi i32 [ %35, %61 ], [ %67, %62 ]
  %71 = trunc i32 %70 to i8
  %72 = and i8 %71, 63
  %73 = or disjoint i8 %72, -128
  %74 = getelementptr inbounds i8, ptr %69, i64 -1
  store i8 %73, ptr %74, align 1, !tbaa !42
  %75 = lshr i32 %70, 6
  br label %76

76:                                               ; preds = %61, %68
  %77 = phi ptr [ %59, %61 ], [ %74, %68 ]
  %78 = phi i32 [ %35, %61 ], [ %75, %68 ]
  %79 = trunc i32 %78 to i8
  %80 = and i8 %79, 63
  %81 = or disjoint i8 %80, -128
  %82 = getelementptr inbounds i8, ptr %77, i64 -1
  store i8 %81, ptr %82, align 1, !tbaa !42
  %83 = lshr i32 %78, 6
  br label %84

84:                                               ; preds = %61, %76
  %85 = phi ptr [ %59, %61 ], [ %82, %76 ]
  %86 = phi i32 [ %35, %61 ], [ %83, %76 ]
  %87 = getelementptr inbounds [7 x i8], ptr @_ZN11xercesc_2_7L14gFirstByteMarkE, i64 0, i64 %58
  %88 = load i8, ptr %87, align 1, !tbaa !42
  %89 = trunc i32 %86 to i8
  %90 = or i8 %88, %89
  %91 = getelementptr inbounds i8, ptr %85, i64 -1
  store i8 %90, ptr %91, align 1, !tbaa !42
  %92 = getelementptr inbounds i8, ptr %91, i64 %58
  br label %94

93:                                               ; preds = %61
  unreachable

94:                                               ; preds = %54, %84
  %95 = phi ptr [ %92, %84 ], [ %55, %54 ]
  %96 = getelementptr inbounds i16, ptr %18, i64 %36
  %97 = icmp ult ptr %96, %14
  br i1 %97, label %17, label %98, !prof !61

98:                                               ; preds = %94, %25, %56
  %99 = phi ptr [ %95, %94 ], [ %19, %25 ], [ %19, %56 ]
  %100 = phi ptr [ %96, %94 ], [ %18, %25 ], [ %18, %56 ]
  %101 = ptrtoint ptr %100 to i64
  %102 = ptrtoint ptr %1 to i64
  %103 = sub i64 %101, %102
  %104 = lshr exact i64 %103, 1
  %105 = trunc i64 %104 to i32
  store i32 %105, ptr %5, align 4, !tbaa !52
  %106 = ptrtoint ptr %99 to i64
  %107 = ptrtoint ptr %3 to i64
  %108 = sub i64 %106, %107
  %109 = trunc i64 %108 to i32
  br label %110

110:                                              ; preds = %7, %98
  %111 = phi i32 [ %109, %98 ], [ 0, %7 ]
  ret i32 %111
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK11xercesc_2_717XMLUTF8Transcoder14canTranscodeToEj(ptr nocapture nonnull readnone align 8 %0, i32 noundef %1) unnamed_addr #2 align 2 !prof !62 {
  %3 = icmp ult i32 %1, 1114112
  ret i1 %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define dso_local void @_ZN11xercesc_2_717XMLUTF8TranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #1 align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #9
  store ptr getelementptr inbounds ({ [7 x ptr] }, ptr @_ZTVN11xercesc_2_717XMLUTF8TranscoderE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define dso_local void @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #0 align 2 !prof !63 {
  tail call void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #7
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_713XMLTranscoderD2Ev(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #4

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !66
  ret ptr %3
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UTFDataFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %12
}

declare void @__cxa_free_exception(ptr) local_unnamed_addr

declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj(ptr noundef nonnull align 8 dereferenceable(32) %0, i8 noundef zeroext %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = and i8 %1, -64
  %9 = icmp eq i8 %8, -128
  br i1 %9, label %23, label %10

10:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #8
  %11 = trunc i32 %2 to i8
  %12 = add i8 %11, 49
  store i8 %12, ptr %5, align 1, !tbaa !42
  %13 = getelementptr inbounds i8, ptr %5, i64 1
  store i8 0, ptr %13, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #8
  %14 = trunc i32 %3 to i8
  %15 = add i8 %14, 49
  store i8 %15, ptr %6, align 1, !tbaa !42
  %16 = getelementptr inbounds i8, ptr %6, i64 1
  store i8 0, ptr %16, align 1, !tbaa !42
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %7) #8
  store i8 %1, ptr %7, align 1, !tbaa !42
  %17 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 0, ptr %17, align 1, !tbaa !42
  %18 = tail call ptr @__cxa_allocate_exception(i64 48) #8
  %19 = tail call noundef ptr @_ZNK11xercesc_2_713XMLTranscoder16getMemoryManagerEv(ptr noundef nonnull align 8 dereferenceable(32) %0) #9
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2EPKcjNS_10XMLExcepts5CodesES2_S2_S2_S2_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %18, ptr noundef nonnull @.str.1, i32 noundef 106, i32 noundef 110, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %5, ptr noundef null, ptr noundef %19) #9
          to label %20 unwind label %21

20:                                               ; preds = %10
  call void @__cxa_throw(ptr nonnull %18, ptr nonnull @_ZTIN11xercesc_2_722UTFDataFormatExceptionE, ptr nonnull @_ZN11xercesc_2_712XMLExceptionD2Ev) #10
  unreachable

21:                                               ; preds = %10
  %22 = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr %18) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #8
  resume { ptr, i32 } %22

23:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %4) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3) #9
          to label %6 unwind label %7

6:                                                ; preds = %5
  ret void

7:                                                ; preds = %5
  %8 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %8
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, i32 noundef, ptr noundef) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKcS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UTFDataFormatExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UTFDataFormatException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni29fgUTFDataFormatException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_722UTFDataFormatException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_722UTFDataFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
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
declare noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_722UTFDataFormatExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_722UTFDataFormatExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: nounwind optsize
declare void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #3

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesE(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 {
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  tail call void @_ZN11xercesc_2_77XMemorydlEPv(ptr noundef nonnull %0) #7
  ret void
}

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException7getTypeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #0 comdat align 2 !prof !62 {
  ret ptr @_ZN11xercesc_2_76XMLUni27fgTranscodingException_NameE
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_720TranscodingException9duplicateEv(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLException", ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !69
  %4 = tail call noundef ptr @_ZN11xercesc_2_77XMemorynwEmPNS_13MemoryManagerE(i64 noundef 48, ptr noundef %3) #9
  invoke void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) %0) #9
          to label %5 unwind label %6

5:                                                ; preds = %1
  ret ptr %4

6:                                                ; preds = %1
  %7 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_77XMemorydlEPvPNS_13MemoryManagerE(ptr noundef %4, ptr noundef %3) #7
  resume { ptr, i32 } %7
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) unnamed_addr #1 comdat align 2 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  ret void
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_79XMLString9binToTextEjPtjjPNS_13MemoryManagerE(i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress noinline nounwind optsize uwtable
define linkonce_odr dso_local noundef ptr @_ZNK11xercesc_2_713XMLTranscoder15getEncodingNameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 comdat align 2 !prof !62 {
  %2 = getelementptr inbounds %"class.xercesc_2_7::XMLTranscoder", ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !72
  ret ptr %3
}

; Function Attrs: mustprogress noinline optsize uwtable
define linkonce_odr dso_local void @_ZN11xercesc_2_720TranscodingExceptionC2EPKcjNS_10XMLExcepts5CodesEPKtS6_S6_S6_PNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 !prof !62 {
  tail call void @_ZN11xercesc_2_712XMLExceptionC2EPKcjPNS_13MemoryManagerE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, ptr noundef %8) #9
  store ptr getelementptr inbounds ({ [6 x ptr] }, ptr @_ZTVN11xercesc_2_720TranscodingExceptionE, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !64
  invoke void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) #9
          to label %10 unwind label %11

10:                                               ; preds = %9
  ret void

11:                                               ; preds = %9
  %12 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN11xercesc_2_712XMLExceptionD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) #7
  resume { ptr, i32 } %12
}

; Function Attrs: optsize
declare void @_ZN11xercesc_2_712XMLException14loadExceptTextENS_10XMLExcepts5CodesEPKtS4_S4_S4_(ptr noundef nonnull align 8 dereferenceable(48), i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress noinline nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress noinline optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree noinline norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nounwind optsize }
attributes #8 = { nounwind }
attributes #9 = { optsize }
attributes #10 = { noreturn }

!llvm.module.flags = !{!0, !29, !30, !31, !32, !33, !34}
!llvm.ident = !{!39}

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
!35 = distinct !{!36, !37, !38}
!36 = !{ptr @_ZN11xercesc_2_717XMLUTF8Transcoder13transcodeFromEPKhjPtjRjPh, ptr @_ZNK11xercesc_2_717XMLUTF8Transcoder18checkTrailingBytesEhjj, i64 6}
!37 = !{ptr @_ZN11xercesc_2_717XMLUTF8TranscoderC2EPKtjPNS_13MemoryManagerE, ptr @_ZN11xercesc_2_713XMLTranscoderC2EPKtjPNS_13MemoryManagerE, i64 5}
!38 = !{ptr @_ZN11xercesc_2_717XMLUTF8TranscoderD2Ev, ptr @_ZN11xercesc_2_713XMLTranscoderD2Ev, i64 5}
!39 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!40 = !{!"function_entry_count", i64 3544}
!41 = !{!"branch_weights", i32 12567025, i32 7091}
!42 = !{!43, !43, i64 0}
!43 = !{!"omnipotent char", !44, i64 0}
!44 = !{!"Simple C++ TBAA"}
!45 = !{!"branch_weights", i32 3545, i32 1}
!46 = !{!47, !47, i64 0}
!47 = !{!"short", !43, i64 0}
!48 = !{!"branch_weights", i32 216892, i32 -1515980982}
!49 = distinct !{!49, !50}
!50 = !{!"llvm.loop.mustprogress"}
!51 = !{!"branch_weights", i32 9085836, i32 2562}
!52 = !{!53, !53, i64 0}
!53 = !{!"int", !43, i64 0}
!54 = !{!"branch_weights", i32 453633, i32 127}
!55 = !{!"function_entry_count", i64 122390}
!56 = !{!"branch_weights", i32 -550078076, i32 61195}
!57 = !{!"branch_weights", i32 1, i32 62663221}
!58 = !{!"branch_weights", i32 62663221, i32 1}
!59 = distinct !{!59, !50}
!60 = !{!"branch_weights", i32 1, i32 62663221, i32 1, i32 1, i32 1}
!61 = !{!"branch_weights", i32 62540831, i32 122390}
!62 = !{!"function_entry_count", i64 0}
!63 = !{!"function_entry_count", i64 5}
!64 = !{!65, !65, i64 0}
!65 = !{!"vtable pointer", !44, i64 0}
!66 = !{!67, !68, i64 24}
!67 = !{!"_ZTSN11xercesc_2_713XMLTranscoderE", !53, i64 8, !68, i64 16, !68, i64 24}
!68 = !{!"any pointer", !43, i64 0}
!69 = !{!70, !68, i64 40}
!70 = !{!"_ZTSN11xercesc_2_712XMLExceptionE", !71, i64 8, !68, i64 16, !53, i64 24, !68, i64 32, !68, i64 40}
!71 = !{!"_ZTSN11xercesc_2_710XMLExcepts5CodesE", !43, i64 0}
!72 = !{!67, !68, i64 16}
